package com.google.firebase.crashlytics;

import android.os.Bundle;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.analytics.BlockingAnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.analytics.BreadcrumbAnalyticsEventReceiver;
import com.google.firebase.crashlytics.internal.analytics.CrashlyticsOriginAnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.analytics.UnavailableAnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbHandler;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource;
import com.google.firebase.crashlytics.internal.breadcrumbs.DisabledBreadcrumbSource;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsDeferredProxy {
    private final Deferred analyticsConnectorDeferred;
    private volatile AnalyticsEventLogger analyticsEventLogger;
    private final List breadcrumbHandlerList;
    private volatile BreadcrumbSource breadcrumbSource;

    public AnalyticsDeferredProxy(Deferred deferred) {
        this(deferred, new DisabledBreadcrumbSource(), new UnavailableAnalyticsEventLogger());
    }

    public AnalyticsDeferredProxy(Deferred deferred, BreadcrumbSource breadcrumbSource, AnalyticsEventLogger analyticsEventLogger) {
        this.analyticsConnectorDeferred = deferred;
        this.breadcrumbSource = breadcrumbSource;
        this.breadcrumbHandlerList = new ArrayList();
        this.analyticsEventLogger = analyticsEventLogger;
        init();
    }

    public BreadcrumbSource getDeferredBreadcrumbSource() {
        return new BreadcrumbSource() { // from class: com.google.firebase.crashlytics.AnalyticsDeferredProxy$$ExternalSyntheticLambda0
            @Override // com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource
            public final void registerBreadcrumbHandler(BreadcrumbHandler breadcrumbHandler) {
                AnalyticsDeferredProxy.$r8$lambda$jxPNZIoMD5TUXCrnSLExogZZxg0(this.f$0, breadcrumbHandler);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$jxPNZIoMD5TUXCrnSLExogZZxg0(AnalyticsDeferredProxy analyticsDeferredProxy, BreadcrumbHandler breadcrumbHandler) {
        synchronized (analyticsDeferredProxy) {
            try {
                if (analyticsDeferredProxy.breadcrumbSource instanceof DisabledBreadcrumbSource) {
                    analyticsDeferredProxy.breadcrumbHandlerList.add(breadcrumbHandler);
                }
                analyticsDeferredProxy.breadcrumbSource.registerBreadcrumbHandler(breadcrumbHandler);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public AnalyticsEventLogger getAnalyticsEventLogger() {
        return new AnalyticsEventLogger() { // from class: com.google.firebase.crashlytics.AnalyticsDeferredProxy$$ExternalSyntheticLambda1
            @Override // com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger
            public final void logEvent(String str, Bundle bundle) {
                this.f$0.analyticsEventLogger.logEvent(str, bundle);
            }
        };
    }

    private void init() {
        this.analyticsConnectorDeferred.whenAvailable(new Deferred.DeferredHandler() { // from class: com.google.firebase.crashlytics.AnalyticsDeferredProxy$$ExternalSyntheticLambda2
            @Override // com.google.firebase.inject.Deferred.DeferredHandler
            public final void handle(Provider provider) {
                AnalyticsDeferredProxy.$r8$lambda$9OFGxA2N0nOG8dDPC_xdm7JYRUo(this.f$0, provider);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$9OFGxA2N0nOG8dDPC_xdm7JYRUo(AnalyticsDeferredProxy analyticsDeferredProxy, Provider provider) {
        analyticsDeferredProxy.getClass();
        Logger.getLogger().m501d("AnalyticsConnector now available.");
        AnalyticsConnector analyticsConnector = (AnalyticsConnector) provider.get();
        CrashlyticsOriginAnalyticsEventLogger crashlyticsOriginAnalyticsEventLogger = new CrashlyticsOriginAnalyticsEventLogger(analyticsConnector);
        CrashlyticsAnalyticsListener crashlyticsAnalyticsListener = new CrashlyticsAnalyticsListener();
        if (subscribeToAnalyticsEvents(analyticsConnector, crashlyticsAnalyticsListener) != null) {
            Logger.getLogger().m501d("Registered Firebase Analytics listener.");
            BreadcrumbAnalyticsEventReceiver breadcrumbAnalyticsEventReceiver = new BreadcrumbAnalyticsEventReceiver();
            BlockingAnalyticsEventLogger blockingAnalyticsEventLogger = new BlockingAnalyticsEventLogger(crashlyticsOriginAnalyticsEventLogger, 500, TimeUnit.MILLISECONDS);
            synchronized (analyticsDeferredProxy) {
                try {
                    Iterator it = analyticsDeferredProxy.breadcrumbHandlerList.iterator();
                    while (it.hasNext()) {
                        breadcrumbAnalyticsEventReceiver.registerBreadcrumbHandler((BreadcrumbHandler) it.next());
                    }
                    crashlyticsAnalyticsListener.setBreadcrumbEventReceiver(breadcrumbAnalyticsEventReceiver);
                    crashlyticsAnalyticsListener.setCrashlyticsOriginEventReceiver(blockingAnalyticsEventLogger);
                    analyticsDeferredProxy.breadcrumbSource = breadcrumbAnalyticsEventReceiver;
                    analyticsDeferredProxy.analyticsEventLogger = blockingAnalyticsEventLogger;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        Logger.getLogger().m509w("Could not register Firebase Analytics listener; a listener is already registered.");
    }

    private static AnalyticsConnector.AnalyticsConnectorHandle subscribeToAnalyticsEvents(AnalyticsConnector analyticsConnector, CrashlyticsAnalyticsListener crashlyticsAnalyticsListener) {
        AnalyticsConnector.AnalyticsConnectorHandle analyticsConnectorHandleRegisterAnalyticsConnectorListener = analyticsConnector.registerAnalyticsConnectorListener("clx", crashlyticsAnalyticsListener);
        if (analyticsConnectorHandleRegisterAnalyticsConnectorListener != null) {
            return analyticsConnectorHandleRegisterAnalyticsConnectorListener;
        }
        Logger.getLogger().m501d("Could not register AnalyticsConnectorListener with Crashlytics origin.");
        AnalyticsConnector.AnalyticsConnectorHandle analyticsConnectorHandleRegisterAnalyticsConnectorListener2 = analyticsConnector.registerAnalyticsConnectorListener("crash", crashlyticsAnalyticsListener);
        if (analyticsConnectorHandleRegisterAnalyticsConnectorListener2 != null) {
            Logger.getLogger().m509w("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
        }
        return analyticsConnectorHandleRegisterAnalyticsConnectorListener2;
    }
}
