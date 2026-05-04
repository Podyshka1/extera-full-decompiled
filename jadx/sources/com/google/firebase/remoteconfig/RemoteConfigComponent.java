package com.google.firebase.remoteconfig;

import android.app.Application;
import android.content.Context;
import com.google.android.exoplayer2.mediacodec.AbstractC1272xa830b30;
import com.google.android.gms.common.api.internal.BackgroundDetector;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.abt.FirebaseABTesting;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.remoteconfig.internal.ConfigCacheClient;
import com.google.firebase.remoteconfig.internal.ConfigContainer;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import com.google.firebase.remoteconfig.internal.ConfigGetParameterHandler;
import com.google.firebase.remoteconfig.internal.ConfigRealtimeHandler;
import com.google.firebase.remoteconfig.internal.ConfigSharedPrefsClient;
import com.google.firebase.remoteconfig.internal.ConfigStorageClient;
import com.google.firebase.remoteconfig.internal.Personalization;
import com.google.firebase.remoteconfig.internal.rollouts.RolloutsStateFactory;
import com.google.firebase.remoteconfig.internal.rollouts.RolloutsStateSubscriptionsHandler;
import com.google.firebase.remoteconfig.interop.FirebaseRemoteConfigInterop;
import com.google.firebase.remoteconfig.interop.rollouts.RolloutsStateSubscriber;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class RemoteConfigComponent implements FirebaseRemoteConfigInterop {
    private static final Clock DEFAULT_CLOCK = DefaultClock.getInstance();
    private static final Random DEFAULT_RANDOM = new Random();
    private static final Map frcNamespaceInstancesStatic = new HashMap();
    private final Provider analyticsConnector;
    private final String appId;
    private final Context context;
    private Map customHeaders;
    private final ScheduledExecutorService executor;
    private final FirebaseABTesting firebaseAbt;
    private final FirebaseApp firebaseApp;
    private final FirebaseInstallationsApi firebaseInstallations;
    private final Map frcNamespaceInstances;

    RemoteConfigComponent(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, FirebaseABTesting firebaseABTesting, Provider provider) {
        this(context, scheduledExecutorService, firebaseApp, firebaseInstallationsApi, firebaseABTesting, provider, true);
    }

    protected RemoteConfigComponent(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, FirebaseABTesting firebaseABTesting, Provider provider, boolean z) {
        this.frcNamespaceInstances = new HashMap();
        this.customHeaders = new HashMap();
        this.context = context;
        this.executor = scheduledExecutorService;
        this.firebaseApp = firebaseApp;
        this.firebaseInstallations = firebaseInstallationsApi;
        this.firebaseAbt = firebaseABTesting;
        this.analyticsConnector = provider;
        this.appId = firebaseApp.getOptions().getApplicationId();
        GlobalBackgroundListener.ensureBackgroundListenerIsRegistered(context);
        if (z) {
            Tasks.call(scheduledExecutorService, new Callable() { // from class: com.google.firebase.remoteconfig.RemoteConfigComponent$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f$0.getDefault();
                }
            });
        }
    }

    FirebaseRemoteConfig getDefault() {
        return get("firebase");
    }

    public synchronized FirebaseRemoteConfig get(String str) throws Throwable {
        Throwable th;
        try {
            try {
                ConfigCacheClient cacheClient = getCacheClient(str, "fetch");
                ConfigCacheClient cacheClient2 = getCacheClient(str, "activate");
                ConfigCacheClient cacheClient3 = getCacheClient(str, "defaults");
                ConfigSharedPrefsClient sharedPrefsClient = getSharedPrefsClient(this.context, this.appId, str);
                ConfigGetParameterHandler getHandler = getGetHandler(cacheClient2, cacheClient3);
                final Personalization personalization = getPersonalization(this.firebaseApp, str, this.analyticsConnector);
                if (personalization != null) {
                    try {
                        getHandler.addListener(new BiConsumer() { // from class: com.google.firebase.remoteconfig.RemoteConfigComponent$$ExternalSyntheticLambda1
                            @Override // com.google.android.gms.common.util.BiConsumer
                            public final void accept(Object obj, Object obj2) {
                                personalization.logArmActive((String) obj, (ConfigContainer) obj2);
                            }
                        });
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                return get(this.firebaseApp, str, this.firebaseInstallations, this.firebaseAbt, this.executor, cacheClient, cacheClient2, cacheClient3, getFetchHandler(str, cacheClient, sharedPrefsClient), getHandler, sharedPrefsClient, getRolloutsStateSubscriptionsHandler(cacheClient2, cacheClient3));
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    synchronized FirebaseRemoteConfig get(FirebaseApp firebaseApp, String str, FirebaseInstallationsApi firebaseInstallationsApi, FirebaseABTesting firebaseABTesting, Executor executor, ConfigCacheClient configCacheClient, ConfigCacheClient configCacheClient2, ConfigCacheClient configCacheClient3, ConfigFetchHandler configFetchHandler, ConfigGetParameterHandler configGetParameterHandler, ConfigSharedPrefsClient configSharedPrefsClient, RolloutsStateSubscriptionsHandler rolloutsStateSubscriptionsHandler) throws Throwable {
        RemoteConfigComponent remoteConfigComponent;
        String str2;
        try {
            try {
                if (this.frcNamespaceInstances.containsKey(str)) {
                    remoteConfigComponent = this;
                    str2 = str;
                } else {
                    remoteConfigComponent = this;
                    str2 = str;
                    FirebaseRemoteConfig firebaseRemoteConfig = new FirebaseRemoteConfig(this.context, firebaseApp, firebaseInstallationsApi, isAbtSupported(firebaseApp, str) ? firebaseABTesting : null, executor, configCacheClient, configCacheClient2, configCacheClient3, configFetchHandler, configGetParameterHandler, configSharedPrefsClient, getRealtime(firebaseApp, firebaseInstallationsApi, configFetchHandler, configCacheClient2, this.context, str, configSharedPrefsClient), rolloutsStateSubscriptionsHandler);
                    firebaseRemoteConfig.startLoadingConfigsFromDisk();
                    remoteConfigComponent.frcNamespaceInstances.put(str2, firebaseRemoteConfig);
                    frcNamespaceInstancesStatic.put(str2, firebaseRemoteConfig);
                }
                return (FirebaseRemoteConfig) remoteConfigComponent.frcNamespaceInstances.get(str2);
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    private ConfigCacheClient getCacheClient(String str, String str2) {
        return ConfigCacheClient.getInstance(this.executor, ConfigStorageClient.getInstance(this.context, String.format("%s_%s_%s_%s.json", "frc", this.appId, str, str2)));
    }

    ConfigFetchHttpClient getFrcBackendApiClient(String str, String str2, ConfigSharedPrefsClient configSharedPrefsClient) {
        return new ConfigFetchHttpClient(this.context, this.firebaseApp.getOptions().getApplicationId(), str, str2, configSharedPrefsClient.getFetchTimeoutInSeconds(), configSharedPrefsClient.getFetchTimeoutInSeconds());
    }

    synchronized ConfigFetchHandler getFetchHandler(String str, ConfigCacheClient configCacheClient, ConfigSharedPrefsClient configSharedPrefsClient) {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return new ConfigFetchHandler(this.firebaseInstallations, isPrimaryApp(this.firebaseApp) ? this.analyticsConnector : new Provider() { // from class: com.google.firebase.remoteconfig.RemoteConfigComponent$$ExternalSyntheticLambda2
            @Override // com.google.firebase.inject.Provider
            public final Object get() {
                return RemoteConfigComponent.m3553$r8$lambda$Sf9RT1RfRnHdNJXG7KvWeBAHSc();
            }
        }, this.executor, DEFAULT_CLOCK, DEFAULT_RANDOM, configCacheClient, getFrcBackendApiClient(this.firebaseApp.getOptions().getApiKey(), str, configSharedPrefsClient), configSharedPrefsClient, this.customHeaders);
    }

    /* JADX INFO: renamed from: $r8$lambda$Sf9RT1RfRnHdNJXG7KvWe-BAHSc, reason: not valid java name */
    public static /* synthetic */ AnalyticsConnector m3553$r8$lambda$Sf9RT1RfRnHdNJXG7KvWeBAHSc() {
        return null;
    }

    synchronized ConfigRealtimeHandler getRealtime(FirebaseApp firebaseApp, FirebaseInstallationsApi firebaseInstallationsApi, ConfigFetchHandler configFetchHandler, ConfigCacheClient configCacheClient, Context context, String str, ConfigSharedPrefsClient configSharedPrefsClient) {
        return new ConfigRealtimeHandler(firebaseApp, firebaseInstallationsApi, configFetchHandler, configCacheClient, context, str, configSharedPrefsClient, this.executor);
    }

    private ConfigGetParameterHandler getGetHandler(ConfigCacheClient configCacheClient, ConfigCacheClient configCacheClient2) {
        return new ConfigGetParameterHandler(this.executor, configCacheClient, configCacheClient2);
    }

    static ConfigSharedPrefsClient getSharedPrefsClient(Context context, String str, String str2) {
        return new ConfigSharedPrefsClient(context.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", str, str2, "settings"), 0));
    }

    private static Personalization getPersonalization(FirebaseApp firebaseApp, String str, Provider provider) {
        if (isPrimaryApp(firebaseApp) && str.equals("firebase")) {
            return new Personalization(provider);
        }
        return null;
    }

    private RolloutsStateSubscriptionsHandler getRolloutsStateSubscriptionsHandler(ConfigCacheClient configCacheClient, ConfigCacheClient configCacheClient2) {
        return new RolloutsStateSubscriptionsHandler(configCacheClient, RolloutsStateFactory.create(configCacheClient, configCacheClient2), this.executor);
    }

    private static boolean isAbtSupported(FirebaseApp firebaseApp, String str) {
        return str.equals("firebase") && isPrimaryApp(firebaseApp);
    }

    private static boolean isPrimaryApp(FirebaseApp firebaseApp) {
        return firebaseApp.getName().equals("[DEFAULT]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void notifyRCInstances(boolean z) {
        Iterator it = frcNamespaceInstancesStatic.values().iterator();
        while (it.hasNext()) {
            ((FirebaseRemoteConfig) it.next()).setConfigUpdateBackgroundState(z);
        }
    }

    @Override // com.google.firebase.remoteconfig.interop.FirebaseRemoteConfigInterop
    public void registerRolloutsStateSubscriber(String str, RolloutsStateSubscriber rolloutsStateSubscriber) {
        get(str).getRolloutsStateSubscriptionsHandler().registerRolloutsStateSubscriber(rolloutsStateSubscriber);
    }

    private static class GlobalBackgroundListener implements BackgroundDetector.BackgroundStateChangeListener {
        private static final AtomicReference INSTANCE = new AtomicReference();

        private GlobalBackgroundListener() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void ensureBackgroundListenerIsRegistered(Context context) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference atomicReference = INSTANCE;
            if (atomicReference.get() == null) {
                GlobalBackgroundListener globalBackgroundListener = new GlobalBackgroundListener();
                if (AbstractC1272xa830b30.m315m(atomicReference, null, globalBackgroundListener)) {
                    BackgroundDetector.initialize(application);
                    BackgroundDetector.getInstance().addListener(globalBackgroundListener);
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
        public void onBackgroundStateChanged(boolean z) {
            RemoteConfigComponent.notifyRCInstances(z);
        }
    }
}
