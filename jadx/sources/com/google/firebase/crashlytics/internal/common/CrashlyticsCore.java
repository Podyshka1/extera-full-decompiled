package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.RemoteConfigDeferredProxy;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbHandler;
import com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbSource;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.metadata.LogFileManager;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.settings.SettingsProvider;
import com.google.firebase.crashlytics.internal.stacktrace.MiddleOutFallbackStrategy;
import com.google.firebase.crashlytics.internal.stacktrace.RemoveRepeatsStrategy;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class CrashlyticsCore {
    private final AnalyticsEventLogger analyticsEventLogger;
    private final FirebaseApp app;
    public final BreadcrumbSource breadcrumbSource;
    private final Context context;
    private CrashlyticsController controller;
    private CrashlyticsFileMarker crashMarker;
    private final CrashlyticsWorkers crashlyticsWorkers;
    private final DataCollectionArbiter dataCollectionArbiter;
    private boolean didCrashOnPreviousExecution;
    private final FileStore fileStore;
    private final IdManager idManager;
    private CrashlyticsFileMarker initializationMarker;
    private final CrashlyticsNativeComponent nativeComponent;
    private final RemoteConfigDeferredProxy remoteConfigDeferredProxy;
    private final CrashlyticsAppQualitySessionsSubscriber sessionsSubscriber;
    private final long startTime = System.currentTimeMillis();
    private final OnDemandCounter onDemandCounter = new OnDemandCounter();

    public CrashlyticsCore(FirebaseApp firebaseApp, IdManager idManager, CrashlyticsNativeComponent crashlyticsNativeComponent, DataCollectionArbiter dataCollectionArbiter, BreadcrumbSource breadcrumbSource, AnalyticsEventLogger analyticsEventLogger, FileStore fileStore, CrashlyticsAppQualitySessionsSubscriber crashlyticsAppQualitySessionsSubscriber, RemoteConfigDeferredProxy remoteConfigDeferredProxy, CrashlyticsWorkers crashlyticsWorkers) {
        this.app = firebaseApp;
        this.dataCollectionArbiter = dataCollectionArbiter;
        this.context = firebaseApp.getApplicationContext();
        this.idManager = idManager;
        this.nativeComponent = crashlyticsNativeComponent;
        this.breadcrumbSource = breadcrumbSource;
        this.analyticsEventLogger = analyticsEventLogger;
        this.fileStore = fileStore;
        this.sessionsSubscriber = crashlyticsAppQualitySessionsSubscriber;
        this.remoteConfigDeferredProxy = remoteConfigDeferredProxy;
        this.crashlyticsWorkers = crashlyticsWorkers;
    }

    public boolean onPreExecute(AppData appData, SettingsProvider settingsProvider) {
        if (!isBuildIdValid(appData.buildId, CommonUtils.getBooleanResourceValue(this.context, "com.crashlytics.RequireBuildId", true))) {
            throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
        }
        String sessionId = new CLSUUID().getSessionId();
        try {
            this.crashMarker = new CrashlyticsFileMarker("crash_marker", this.fileStore);
            this.initializationMarker = new CrashlyticsFileMarker("initialization_marker", this.fileStore);
            UserMetadata userMetadata = new UserMetadata(sessionId, this.fileStore, this.crashlyticsWorkers);
            LogFileManager logFileManager = new LogFileManager(this.fileStore);
            MiddleOutFallbackStrategy middleOutFallbackStrategy = new MiddleOutFallbackStrategy(1024, new RemoveRepeatsStrategy(10));
            this.remoteConfigDeferredProxy.setupListener(userMetadata);
            this.controller = new CrashlyticsController(this.context, this.idManager, this.dataCollectionArbiter, this.fileStore, this.crashMarker, appData, userMetadata, logFileManager, SessionReportingCoordinator.create(this.context, this.idManager, this.fileStore, appData, logFileManager, userMetadata, middleOutFallbackStrategy, settingsProvider, this.onDemandCounter, this.sessionsSubscriber, this.crashlyticsWorkers), this.nativeComponent, this.analyticsEventLogger, this.sessionsSubscriber, this.crashlyticsWorkers);
            boolean zDidPreviousInitializationFail = didPreviousInitializationFail();
            checkForPreviousCrash();
            this.controller.enableExceptionHandling(sessionId, Thread.getDefaultUncaughtExceptionHandler(), settingsProvider);
            if (zDidPreviousInitializationFail && CommonUtils.canTryConnection(this.context)) {
                Logger.getLogger().m501d("Crashlytics did not finish previous background initialization. Initializing synchronously.");
                finishInitSynchronously(settingsProvider);
                return false;
            }
            Logger.getLogger().m501d("Successfully configured exception handler.");
            return true;
        } catch (Exception e) {
            Logger.getLogger().m504e("Crashlytics was not started due to an exception during initialization", e);
            this.controller = null;
            return false;
        }
    }

    public Task doBackgroundInitializationAsync(final SettingsProvider settingsProvider) {
        return this.crashlyticsWorkers.common.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.doBackgroundInitialization(settingsProvider);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doBackgroundInitialization(SettingsProvider settingsProvider) {
        CrashlyticsWorkers.checkBackgroundThread();
        markInitializationStarted();
        try {
            try {
                this.breadcrumbSource.registerBreadcrumbHandler(new BreadcrumbHandler() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore$$ExternalSyntheticLambda3
                    @Override // com.google.firebase.crashlytics.internal.breadcrumbs.BreadcrumbHandler
                    public final void handleBreadcrumb(String str) {
                        this.f$0.log(str);
                    }
                });
                this.controller.saveVersionControlInfo();
                if (!settingsProvider.getSettingsSync().featureFlagData.collectReports) {
                    Logger.getLogger().m501d("Collection of crash reports disabled in Crashlytics settings.");
                    throw new RuntimeException("Collection of crash reports disabled in Crashlytics settings.");
                }
                if (!this.controller.finalizeSessions(settingsProvider)) {
                    Logger.getLogger().m509w("Previous sessions could not be finalized.");
                }
                this.controller.submitAllReports(settingsProvider.getSettingsAsync());
                markInitializationComplete();
            } catch (Exception e) {
                Logger.getLogger().m504e("Crashlytics encountered a problem during asynchronous initialization.", e);
                markInitializationComplete();
            }
        } catch (Throwable th) {
            markInitializationComplete();
            throw th;
        }
    }

    public void setCrashlyticsCollectionEnabled(Boolean bool) {
        this.dataCollectionArbiter.setCrashlyticsDataCollectionEnabled(bool);
    }

    public static String getVersion() {
        return "20.0.3";
    }

    public void logException(final Throwable th, final Map map) {
        this.crashlyticsWorkers.common.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.controller.writeNonFatalException(Thread.currentThread(), th, map);
            }
        });
    }

    public void log(final String str) {
        final long jCurrentTimeMillis = System.currentTimeMillis() - this.startTime;
        this.crashlyticsWorkers.common.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CrashlyticsCore crashlyticsCore = this.f$0;
                crashlyticsCore.crashlyticsWorkers.diskWrite.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        crashlyticsCore.controller.writeToLog(j, str);
                    }
                });
            }
        });
    }

    private void finishInitSynchronously(final SettingsProvider settingsProvider) {
        Future<?> futureSubmit = this.crashlyticsWorkers.common.getExecutor().submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.doBackgroundInitialization(settingsProvider);
            }
        });
        Logger.getLogger().m501d("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            futureSubmit.get(3L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Logger.getLogger().m504e("Crashlytics was interrupted during initialization.", e);
            Thread.currentThread().interrupt();
        } catch (ExecutionException e2) {
            Logger.getLogger().m504e("Crashlytics encountered a problem during initialization.", e2);
        } catch (TimeoutException e3) {
            Logger.getLogger().m504e("Crashlytics timed out during initialization.", e3);
        }
    }

    void markInitializationStarted() {
        CrashlyticsWorkers.checkBackgroundThread();
        this.initializationMarker.create();
        Logger.getLogger().m507v("Initialization marker file was created.");
    }

    void markInitializationComplete() {
        CrashlyticsWorkers.checkBackgroundThread();
        try {
            if (this.initializationMarker.remove()) {
                return;
            }
            Logger.getLogger().m509w("Initialization marker file was not properly removed.");
        } catch (Exception e) {
            Logger.getLogger().m504e("Problem encountered deleting Crashlytics initialization marker.", e);
        }
    }

    boolean didPreviousInitializationFail() {
        return this.initializationMarker.isPresent();
    }

    private void checkForPreviousCrash() {
        try {
            this.didCrashOnPreviousExecution = Boolean.TRUE.equals((Boolean) this.crashlyticsWorkers.common.getExecutor().submit(new Callable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsCore$$ExternalSyntheticLambda1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return Boolean.valueOf(this.f$0.controller.didCrashOnPreviousExecution());
                }
            }).get(3L, TimeUnit.SECONDS));
        } catch (Exception unused) {
            this.didCrashOnPreviousExecution = false;
        }
    }

    static boolean isBuildIdValid(String str, boolean z) {
        if (!z) {
            Logger.getLogger().m507v("Configured not to require a build ID.");
            return true;
        }
        if (!TextUtils.isEmpty(str)) {
            return true;
        }
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", ".     |  | ");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".   \\ |  | /");
        Log.e("FirebaseCrashlytics", ".    \\    /");
        Log.e("FirebaseCrashlytics", ".     \\  /");
        Log.e("FirebaseCrashlytics", ".      \\/");
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when the Crashlytics Gradle plugin is missing from your app's build configuration. Please review the Firebase Crashlytics onboarding instructions at https://firebase.google.com/docs/crashlytics/get-started?platform=android#add-plugin");
        Log.e("FirebaseCrashlytics", ".");
        Log.e("FirebaseCrashlytics", ".      /\\");
        Log.e("FirebaseCrashlytics", ".     /  \\");
        Log.e("FirebaseCrashlytics", ".    /    \\");
        Log.e("FirebaseCrashlytics", ".   / |  | \\");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".     |  |");
        Log.e("FirebaseCrashlytics", ".");
        return false;
    }
}
