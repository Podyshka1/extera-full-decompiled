package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.datatransport.TransportFactory;
import com.google.android.gms.cloudmessaging.CloudMessage;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.inject.Provider;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.RequestDeduplicator;
import com.google.firebase.messaging.Store;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public class FirebaseMessaging {
    private static Store store;
    static ScheduledExecutorService syncExecutor;
    private final AutoInit autoInit;
    private final Context context;
    private final Executor fileExecutor;
    private final FirebaseApp firebaseApp;
    private final GmsRpc gmsRpc;
    private final Executor initExecutor;
    private final Application.ActivityLifecycleCallbacks lifecycleCallbacks;
    private final Metadata metadata;
    private final RequestDeduplicator requestDeduplicator;
    private boolean syncScheduledOrRunning;
    private final Task<TopicsSubscriber> topicsSubscriberTask;
    private static final long MAX_DELAY_SEC = 28800;
    static Provider<TransportFactory> transportFactory = new Provider() { // from class: com.google.firebase.messaging.FirebaseMessaging$$ExternalSyntheticLambda0
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            return FirebaseMessaging.$r8$lambda$LFn9_qtEIJ6bEv_Ds1y45k5yLjU();
        }
    };

    public static /* synthetic */ TransportFactory $r8$lambda$LFn9_qtEIJ6bEv_Ds1y45k5yLjU() {
        return null;
    }

    public static synchronized FirebaseMessaging getInstance() {
        return getInstance(FirebaseApp.getInstance());
    }

    private static synchronized Store getStore(Context context) {
        try {
            if (store == null) {
                store = new Store(context);
            }
        } catch (Throwable th) {
            throw th;
        }
        return store;
    }

    @Keep
    public static synchronized FirebaseMessaging getInstance(FirebaseApp firebaseApp) {
        FirebaseMessaging firebaseMessaging;
        firebaseMessaging = (FirebaseMessaging) firebaseApp.get(FirebaseMessaging.class);
        Preconditions.checkNotNull(firebaseMessaging, "Firebase Messaging component is not present");
        return firebaseMessaging;
    }

    public FirebaseMessaging(FirebaseApp firebaseApp, FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi, Provider<TransportFactory> provider3, Subscriber subscriber) {
        this(firebaseApp, firebaseInstanceIdInternal, provider, provider2, firebaseInstallationsApi, provider3, subscriber, new Metadata(firebaseApp.getApplicationContext()));
    }

    public FirebaseMessaging(FirebaseApp firebaseApp, FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider<UserAgentPublisher> provider, Provider<HeartBeatInfo> provider2, FirebaseInstallationsApi firebaseInstallationsApi, Provider<TransportFactory> provider3, Subscriber subscriber, Metadata metadata) {
        this(firebaseApp, firebaseInstanceIdInternal, provider3, subscriber, metadata, new GmsRpc(firebaseApp, metadata, provider, provider2, firebaseInstallationsApi), FcmExecutors.newTaskExecutor(), FcmExecutors.newInitExecutor(), FcmExecutors.newFileIOExecutor());
    }

    public FirebaseMessaging(FirebaseApp firebaseApp, FirebaseInstanceIdInternal firebaseInstanceIdInternal, Provider<TransportFactory> provider, Subscriber subscriber, Metadata metadata, GmsRpc gmsRpc, Executor executor, Executor executor2, Executor executor3) {
        this.syncScheduledOrRunning = false;
        transportFactory = provider;
        this.firebaseApp = firebaseApp;
        this.autoInit = new AutoInit(subscriber);
        Context applicationContext = firebaseApp.getApplicationContext();
        this.context = applicationContext;
        FcmLifecycleCallbacks fcmLifecycleCallbacks = new FcmLifecycleCallbacks();
        this.lifecycleCallbacks = fcmLifecycleCallbacks;
        this.metadata = metadata;
        this.gmsRpc = gmsRpc;
        this.requestDeduplicator = new RequestDeduplicator(executor);
        this.initExecutor = executor2;
        this.fileExecutor = executor3;
        Context applicationContext2 = firebaseApp.getApplicationContext();
        if (applicationContext2 instanceof Application) {
            ((Application) applicationContext2).registerActivityLifecycleCallbacks(fcmLifecycleCallbacks);
        } else {
            Log.w("FirebaseMessaging", "Context " + applicationContext2 + " was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
        }
        if (firebaseInstanceIdInternal != null) {
            firebaseInstanceIdInternal.addNewTokenListener(new FirebaseInstanceIdInternal.NewTokenListener() { // from class: com.google.firebase.messaging.FirebaseMessaging$$ExternalSyntheticLambda1
            });
        }
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.FirebaseMessaging$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.$r8$lambda$1nhtjkCrUhCs9GWF4GUswtwa0NE(this.f$0);
            }
        });
        Task<TopicsSubscriber> taskCreateInstance = TopicsSubscriber.createInstance(this, metadata, gmsRpc, applicationContext, FcmExecutors.newTopicsSyncExecutor());
        this.topicsSubscriberTask = taskCreateInstance;
        taskCreateInstance.addOnSuccessListener(executor2, new OnSuccessListener() { // from class: com.google.firebase.messaging.FirebaseMessaging$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                FirebaseMessaging.$r8$lambda$a8px3lkAMr3zVas70YwWM0xYYCI(this.f$0, (TopicsSubscriber) obj);
            }
        });
        executor2.execute(new Runnable() { // from class: com.google.firebase.messaging.FirebaseMessaging$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.initializeProxyNotifications();
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$1nhtjkCrUhCs9GWF4GUswtwa0NE(FirebaseMessaging firebaseMessaging) {
        if (firebaseMessaging.isAutoInitEnabled()) {
            firebaseMessaging.startSyncIfNecessary();
        }
    }

    public static /* synthetic */ void $r8$lambda$a8px3lkAMr3zVas70YwWM0xYYCI(FirebaseMessaging firebaseMessaging, TopicsSubscriber topicsSubscriber) {
        if (firebaseMessaging.isAutoInitEnabled()) {
            topicsSubscriber.startTopicsSyncIfNecessary();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializeProxyNotifications() {
        ProxyNotificationInitializer.initialize(this.context);
        ProxyNotificationPreferences.setProxyRetention(this.context, this.gmsRpc, shouldRetainProxyNotifications());
        if (shouldRetainProxyNotifications()) {
            handleProxiedNotificationData();
        }
    }

    private boolean shouldRetainProxyNotifications() {
        ProxyNotificationInitializer.initialize(this.context);
        if (!ProxyNotificationInitializer.isProxyNotificationEnabled(this.context)) {
            return false;
        }
        if (this.firebaseApp.get(AnalyticsConnector.class) != null) {
            return true;
        }
        return MessagingAnalytics.deliveryMetricsExportToBigQueryEnabled() && transportFactory != null;
    }

    private void handleProxiedNotificationData() {
        this.gmsRpc.getProxyNotificationData().addOnSuccessListener(this.initExecutor, new OnSuccessListener() { // from class: com.google.firebase.messaging.FirebaseMessaging$$ExternalSyntheticLambda6
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                FirebaseMessaging.m3239$r8$lambda$OcHVRAfKigQNKnoW0h_KJWqi8(this.f$0, (CloudMessage) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Oc-HVRAfKigQNKnoW0h_K-JWqi8, reason: not valid java name */
    public static /* synthetic */ void m3239$r8$lambda$OcHVRAfKigQNKnoW0h_KJWqi8(FirebaseMessaging firebaseMessaging, CloudMessage cloudMessage) {
        firebaseMessaging.getClass();
        if (cloudMessage != null) {
            MessagingAnalytics.logNotificationReceived(cloudMessage.getIntent());
            firebaseMessaging.handleProxiedNotificationData();
        }
    }

    public boolean isAutoInitEnabled() {
        return this.autoInit.isEnabled();
    }

    public Task<String> getToken() {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.initExecutor.execute(new Runnable() { // from class: com.google.firebase.messaging.FirebaseMessaging$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                FirebaseMessaging.m3238$r8$lambda$BDlJxll8ZplUMRagiuAzBf5hpo(this.f$0, taskCompletionSource);
            }
        });
        return taskCompletionSource.getTask();
    }

    /* JADX INFO: renamed from: $r8$lambda$BDlJxll8ZplUMRagiuAzBf5hp-o, reason: not valid java name */
    public static /* synthetic */ void m3238$r8$lambda$BDlJxll8ZplUMRagiuAzBf5hpo(FirebaseMessaging firebaseMessaging, TaskCompletionSource taskCompletionSource) {
        firebaseMessaging.getClass();
        try {
            taskCompletionSource.setResult(firebaseMessaging.blockingGetToken());
        } catch (Exception e) {
            taskCompletionSource.setException(e);
        }
    }

    public static TransportFactory getTransportFactory() {
        return transportFactory.get();
    }

    public boolean isGmsCorePresent() {
        return this.metadata.isGmscorePresent();
    }

    public Context getApplicationContext() {
        return this.context;
    }

    public synchronized void setSyncScheduledOrRunning(boolean z) {
        this.syncScheduledOrRunning = z;
    }

    public synchronized void syncWithDelaySecondsInternal(long j) {
        enqueueTaskWithDelaySeconds(new SyncTask(this, Math.min(Math.max(30L, 2 * j), MAX_DELAY_SEC)), j);
        this.syncScheduledOrRunning = true;
    }

    @SuppressLint({"ThreadPoolCreation"})
    public void enqueueTaskWithDelaySeconds(Runnable runnable, long j) {
        synchronized (FirebaseMessaging.class) {
            try {
                if (syncExecutor == null) {
                    syncExecutor = new ScheduledThreadPoolExecutor(1, new NamedThreadFactory("TAG"));
                }
                syncExecutor.schedule(runnable, j, TimeUnit.SECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSyncIfNecessary() {
        if (tokenNeedsRefresh(getTokenWithoutTriggeringSync())) {
            startSync();
        }
    }

    private synchronized void startSync() {
        if (!this.syncScheduledOrRunning) {
            syncWithDelaySecondsInternal(0L);
        }
    }

    public Store.Token getTokenWithoutTriggeringSync() {
        return getStore(this.context).getToken(getSubtype(), Metadata.getDefaultSenderId(this.firebaseApp));
    }

    public String blockingGetToken() throws IOException {
        final Store.Token tokenWithoutTriggeringSync = getTokenWithoutTriggeringSync();
        if (!tokenNeedsRefresh(tokenWithoutTriggeringSync)) {
            return tokenWithoutTriggeringSync.token;
        }
        final String defaultSenderId = Metadata.getDefaultSenderId(this.firebaseApp);
        try {
            return (String) Tasks.await(this.requestDeduplicator.getOrStartGetTokenRequest(defaultSenderId, new RequestDeduplicator.GetTokenRequest() { // from class: com.google.firebase.messaging.FirebaseMessaging$$ExternalSyntheticLambda7
                @Override // com.google.firebase.messaging.RequestDeduplicator.GetTokenRequest
                public final Task start() {
                    FirebaseMessaging firebaseMessaging = this.f$0;
                    return firebaseMessaging.gmsRpc.getToken().onSuccessTask(firebaseMessaging.fileExecutor, new SuccessContinuation() { // from class: com.google.firebase.messaging.FirebaseMessaging$$ExternalSyntheticLambda8
                        @Override // com.google.android.gms.tasks.SuccessContinuation
                        public final Task then(Object obj) {
                            return FirebaseMessaging.$r8$lambda$18Bi2lR_evoAeqzxkpgS4a1btBs(firebaseMessaging, str, token, (String) obj);
                        }
                    });
                }
            }));
        } catch (InterruptedException | ExecutionException e) {
            throw new IOException(e);
        }
    }

    public static /* synthetic */ Task $r8$lambda$18Bi2lR_evoAeqzxkpgS4a1btBs(FirebaseMessaging firebaseMessaging, String str, Store.Token token, String str2) {
        getStore(firebaseMessaging.context).saveToken(firebaseMessaging.getSubtype(), str, str2, firebaseMessaging.metadata.getAppVersionCode());
        if (token == null || !str2.equals(token.token)) {
            firebaseMessaging.invokeOnTokenRefresh(str2);
        }
        return Tasks.forResult(str2);
    }

    private String getSubtype() {
        if ("[DEFAULT]".equals(this.firebaseApp.getName())) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return this.firebaseApp.getPersistenceKey();
    }

    public boolean tokenNeedsRefresh(Store.Token token) {
        return token == null || token.needsRefresh(this.metadata.getAppVersionCode());
    }

    private void invokeOnTokenRefresh(String str) {
        if ("[DEFAULT]".equals(this.firebaseApp.getName())) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Invoking onNewToken for app: " + this.firebaseApp.getName());
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", str);
            new FcmBroadcastProcessor(this.context).process(intent);
        }
    }

    public class AutoInit {
        private Boolean autoInitEnabled;
        private EventHandler<DataCollectionDefaultChange> dataCollectionDefaultChangeEventHandler;
        private boolean initialized;
        private final Subscriber subscriber;

        public AutoInit(Subscriber subscriber) {
            this.subscriber = subscriber;
        }

        public synchronized void initialize() {
            try {
                if (this.initialized) {
                    return;
                }
                Boolean enabled = readEnabled();
                this.autoInitEnabled = enabled;
                if (enabled == null) {
                    EventHandler<DataCollectionDefaultChange> eventHandler = new EventHandler() { // from class: com.google.firebase.messaging.FirebaseMessaging$AutoInit$$ExternalSyntheticLambda0
                        @Override // com.google.firebase.events.EventHandler
                        public final void handle(Event event) {
                            FirebaseMessaging.AutoInit.$r8$lambda$RHbnQNQxeZwzPe_AKfWLj3vsXZc(this.f$0, event);
                        }
                    };
                    this.dataCollectionDefaultChangeEventHandler = eventHandler;
                    this.subscriber.subscribe(DataCollectionDefaultChange.class, eventHandler);
                }
                this.initialized = true;
            } catch (Throwable th) {
                throw th;
            }
        }

        public static /* synthetic */ void $r8$lambda$RHbnQNQxeZwzPe_AKfWLj3vsXZc(AutoInit autoInit, Event event) {
            if (autoInit.isEnabled()) {
                FirebaseMessaging.this.startSyncIfNecessary();
            }
        }

        public synchronized boolean isEnabled() {
            boolean zIsDataCollectionDefaultEnabled;
            try {
                initialize();
                Boolean bool = this.autoInitEnabled;
                if (bool == null) {
                    zIsDataCollectionDefaultEnabled = FirebaseMessaging.this.firebaseApp.isDataCollectionDefaultEnabled();
                } else {
                    zIsDataCollectionDefaultEnabled = bool.booleanValue();
                }
            } catch (Throwable th) {
                throw th;
            }
            return zIsDataCollectionDefaultEnabled;
        }

        private Boolean readEnabled() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            Context applicationContext = FirebaseMessaging.this.firebaseApp.getApplicationContext();
            SharedPreferences sharedPreferences = applicationContext.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = applicationContext.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
    }
}
