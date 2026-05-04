package com.google.firebase.crashlytics;

import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.annotations.concurrent.Background;
import com.google.firebase.annotations.concurrent.Blocking;
import com.google.firebase.annotations.concurrent.Lightweight;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Qualified;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.remoteconfig.interop.FirebaseRemoteConfigInterop;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class CrashlyticsRegistrar implements ComponentRegistrar {
    private final Qualified backgroundExecutorService = Qualified.qualified(Background.class, ExecutorService.class);
    private final Qualified blockingExecutorService = Qualified.qualified(Blocking.class, ExecutorService.class);
    private final Qualified lightweightExecutorService = Qualified.qualified(Lightweight.class, ExecutorService.class);

    static {
        FirebaseSessionsDependencies.addDependency(SessionSubscriber.Name.CRASHLYTICS);
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List getComponents() {
        return Arrays.asList(Component.builder(FirebaseCrashlytics.class).name("fire-cls").add(Dependency.required(FirebaseApp.class)).add(Dependency.required(FirebaseInstallationsApi.class)).add(Dependency.required(this.backgroundExecutorService)).add(Dependency.required(this.blockingExecutorService)).add(Dependency.required(this.lightweightExecutorService)).add(Dependency.deferred(CrashlyticsNativeComponent.class)).add(Dependency.deferred(AnalyticsConnector.class)).add(Dependency.deferred(FirebaseRemoteConfigInterop.class)).factory(new ComponentFactory() { // from class: com.google.firebase.crashlytics.CrashlyticsRegistrar$$ExternalSyntheticLambda0
            @Override // com.google.firebase.components.ComponentFactory
            public final Object create(ComponentContainer componentContainer) {
                return this.f$0.buildCrashlytics(componentContainer);
            }
        }).eagerInDefaultApp().build(), LibraryVersionComponent.create("fire-cls", "20.0.3"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FirebaseCrashlytics buildCrashlytics(ComponentContainer componentContainer) {
        CrashlyticsWorkers.setEnforcement(false);
        long jCurrentTimeMillis = System.currentTimeMillis();
        FirebaseCrashlytics firebaseCrashlyticsInit = FirebaseCrashlytics.init((FirebaseApp) componentContainer.get(FirebaseApp.class), (FirebaseInstallationsApi) componentContainer.get(FirebaseInstallationsApi.class), componentContainer.getDeferred(CrashlyticsNativeComponent.class), componentContainer.getDeferred(AnalyticsConnector.class), componentContainer.getDeferred(FirebaseRemoteConfigInterop.class), (ExecutorService) componentContainer.get(this.backgroundExecutorService), (ExecutorService) componentContainer.get(this.blockingExecutorService), (ExecutorService) componentContainer.get(this.lightweightExecutorService));
        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
        if (jCurrentTimeMillis2 > 16) {
            Logger.getLogger().m501d("Initializing Crashlytics blocked main for " + jCurrentTimeMillis2 + " ms");
        }
        return firebaseCrashlyticsInit;
    }
}
