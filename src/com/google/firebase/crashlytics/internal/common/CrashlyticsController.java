package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.util.Base64;
import com.chaquo.python.internal.Common;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.NativeSessionFileProvider;
import com.google.firebase.crashlytics.internal.analytics.AnalyticsEventLogger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsUncaughtExceptionHandler;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsTasks;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.metadata.EventMetadata;
import com.google.firebase.crashlytics.internal.metadata.LogFileManager;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.StaticSessionData;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import com.google.firebase.crashlytics.internal.settings.Settings;
import com.google.firebase.crashlytics.internal.settings.SettingsProvider;
import com.google.firebase.sessions.api.CrashEventReceiver;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
class CrashlyticsController {
    static final FilenameFilter APP_EXCEPTION_MARKER_FILTER = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController$$ExternalSyntheticLambda1
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return str.startsWith(".ae");
        }
    };
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final AnalyticsEventLogger analyticsEventLogger;
    private final AppData appData;
    private final Context context;
    private CrashlyticsUncaughtExceptionHandler crashHandler;
    private final CrashlyticsFileMarker crashMarker;
    private final CrashlyticsWorkers crashlyticsWorkers;
    private final DataCollectionArbiter dataCollectionArbiter;
    private final FileStore fileStore;
    private final IdManager idManager;
    private final LogFileManager logFileManager;
    private final CrashlyticsNativeComponent nativeComponent;
    private final SessionReportingCoordinator reportingCoordinator;
    private final CrashlyticsAppQualitySessionsSubscriber sessionsSubscriber;
    private final UserMetadata userMetadata;
    private SettingsProvider settingsProvider = null;
    final TaskCompletionSource unsentReportsAvailable = new TaskCompletionSource();
    final TaskCompletionSource reportActionProvided = new TaskCompletionSource();
    final TaskCompletionSource unsentReportsHandled = new TaskCompletionSource();
    final AtomicBoolean checkForUnsentReportsCalled = new AtomicBoolean(false);

    CrashlyticsController(Context context, IdManager idManager, DataCollectionArbiter dataCollectionArbiter, FileStore fileStore, CrashlyticsFileMarker crashlyticsFileMarker, AppData appData, UserMetadata userMetadata, LogFileManager logFileManager, SessionReportingCoordinator sessionReportingCoordinator, CrashlyticsNativeComponent crashlyticsNativeComponent, AnalyticsEventLogger analyticsEventLogger, CrashlyticsAppQualitySessionsSubscriber crashlyticsAppQualitySessionsSubscriber, CrashlyticsWorkers crashlyticsWorkers) {
        this.context = context;
        this.idManager = idManager;
        this.dataCollectionArbiter = dataCollectionArbiter;
        this.fileStore = fileStore;
        this.crashMarker = crashlyticsFileMarker;
        this.appData = appData;
        this.userMetadata = userMetadata;
        this.logFileManager = logFileManager;
        this.nativeComponent = crashlyticsNativeComponent;
        this.analyticsEventLogger = analyticsEventLogger;
        this.sessionsSubscriber = crashlyticsAppQualitySessionsSubscriber;
        this.reportingCoordinator = sessionReportingCoordinator;
        this.crashlyticsWorkers = crashlyticsWorkers;
    }

    void enableExceptionHandling(String str, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, SettingsProvider settingsProvider) {
        this.settingsProvider = settingsProvider;
        openSession(str);
        CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = new CrashlyticsUncaughtExceptionHandler(new CrashlyticsUncaughtExceptionHandler.CrashListener() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.1
            @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsUncaughtExceptionHandler.CrashListener
            public void onUncaughtException(SettingsProvider settingsProvider2, Thread thread, Throwable th) throws Throwable {
                CrashlyticsController.this.handleUncaughtException(settingsProvider2, thread, th);
            }
        }, settingsProvider, uncaughtExceptionHandler, this.nativeComponent);
        this.crashHandler = crashlyticsUncaughtExceptionHandler;
        Thread.setDefaultUncaughtExceptionHandler(crashlyticsUncaughtExceptionHandler);
    }

    void handleUncaughtException(SettingsProvider settingsProvider, Thread thread, Throwable th) throws Throwable {
        handleUncaughtException(settingsProvider, thread, th, false);
    }

    synchronized void handleUncaughtException(final SettingsProvider settingsProvider, final Thread thread, final Throwable th, final boolean z) throws Throwable {
        Throwable th2;
        try {
            try {
                Logger.getLogger().m501d("Handling uncaught exception \"" + th + "\" from thread " + thread.getName());
                if (!z) {
                    try {
                        CrashEventReceiver.notifyCrashOccurred();
                    } catch (Throwable th3) {
                        th2 = th3;
                        throw th2;
                    }
                }
                final long jCurrentTimeMillis = System.currentTimeMillis();
                Task taskSubmitTask = this.crashlyticsWorkers.common.submitTask(new Callable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.2
                    @Override // java.util.concurrent.Callable
                    public Task call() {
                        long timestampSeconds = CrashlyticsController.getTimestampSeconds(jCurrentTimeMillis);
                        final String currentSessionId = CrashlyticsController.this.getCurrentSessionId();
                        if (currentSessionId != null) {
                            CrashlyticsController.this.crashMarker.create();
                            CrashlyticsController.this.reportingCoordinator.persistFatalEvent(th, thread, currentSessionId, timestampSeconds);
                            CrashlyticsController.this.doWriteAppExceptionMarker(jCurrentTimeMillis);
                            CrashlyticsController.this.doCloseSessions(settingsProvider);
                            CrashlyticsController.this.doOpenSession(new CLSUUID().getSessionId(), Boolean.valueOf(z));
                            if (!CrashlyticsController.this.dataCollectionArbiter.isAutomaticDataCollectionEnabled()) {
                                return Tasks.forResult(null);
                            }
                            return settingsProvider.getSettingsAsync().onSuccessTask(CrashlyticsController.this.crashlyticsWorkers.common, new SuccessContinuation() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.2.1
                                @Override // com.google.android.gms.tasks.SuccessContinuation
                                public Task then(Settings settings) {
                                    if (settings == null) {
                                        Logger.getLogger().m509w("Received null app settings, cannot send reports at crash time.");
                                        return Tasks.forResult(null);
                                    }
                                    return Tasks.whenAll((Task<?>[]) new Task[]{CrashlyticsController.this.logAnalyticsAppExceptionEvents(), CrashlyticsController.this.reportingCoordinator.sendReports(CrashlyticsController.this.crashlyticsWorkers.common, z ? currentSessionId : null)});
                                }
                            });
                        }
                        Logger.getLogger().m503e("Tried to write a fatal exception while no session was open.");
                        return Tasks.forResult(null);
                    }
                });
                if (!z) {
                    try {
                        Utils.awaitEvenIfOnMainThread(taskSubmitTask);
                    } catch (TimeoutException unused) {
                        Logger.getLogger().m503e("Cannot send reports. Timed out while fetching settings.");
                    } catch (Exception e) {
                        Logger.getLogger().m504e("Error handling uncaught exception", e);
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                th2 = th;
                throw th2;
            }
        } catch (Throwable th5) {
            th = th5;
        }
    }

    private Task waitForReportAction() {
        if (this.dataCollectionArbiter.isAutomaticDataCollectionEnabled()) {
            Logger.getLogger().m501d("Automatic data collection is enabled. Allowing upload.");
            this.unsentReportsAvailable.trySetResult(Boolean.FALSE);
            return Tasks.forResult(Boolean.TRUE);
        }
        Logger.getLogger().m501d("Automatic data collection is disabled.");
        Logger.getLogger().m507v("Notifying that unsent reports are available.");
        this.unsentReportsAvailable.trySetResult(Boolean.TRUE);
        Task taskOnSuccessTask = this.dataCollectionArbiter.waitForAutomaticDataCollectionEnabled().onSuccessTask(new SuccessContinuation() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.3
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public Task then(Void r1) {
                return Tasks.forResult(Boolean.TRUE);
            }
        });
        Logger.getLogger().m501d("Waiting for send/deleteUnsentReports to be called.");
        return CrashlyticsTasks.race(taskOnSuccessTask, this.reportActionProvided.getTask());
    }

    boolean didCrashOnPreviousExecution() {
        CrashlyticsWorkers.checkBackgroundThread();
        if (!this.crashMarker.isPresent()) {
            String currentSessionId = getCurrentSessionId();
            return currentSessionId != null && this.nativeComponent.hasCrashDataForSession(currentSessionId);
        }
        Logger.getLogger().m507v("Found previous crash marker.");
        this.crashMarker.remove();
        return true;
    }

    void submitAllReports(final Task task) {
        if (!this.reportingCoordinator.hasReportsToSend()) {
            Logger.getLogger().m507v("No crash reports are available to be sent.");
            this.unsentReportsAvailable.trySetResult(Boolean.FALSE);
        } else {
            Logger.getLogger().m507v("Crash reports are available to be sent.");
            waitForReportAction().onSuccessTask(this.crashlyticsWorkers.common, new SuccessContinuation() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.4
                @Override // com.google.android.gms.tasks.SuccessContinuation
                public Task then(Boolean bool) {
                    if (!bool.booleanValue()) {
                        Logger.getLogger().m507v("Deleting cached crash reports...");
                        CrashlyticsController.deleteFiles(CrashlyticsController.this.listAppExceptionMarkerFiles());
                        CrashlyticsController.this.reportingCoordinator.removeAllReports();
                        CrashlyticsController.this.unsentReportsHandled.trySetResult(null);
                        return Tasks.forResult(null);
                    }
                    Logger.getLogger().m501d("Sending cached crash reports...");
                    CrashlyticsController.this.dataCollectionArbiter.grantDataCollectionPermission(bool.booleanValue());
                    return task.onSuccessTask(CrashlyticsController.this.crashlyticsWorkers.common, new SuccessContinuation() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.4.1
                        @Override // com.google.android.gms.tasks.SuccessContinuation
                        public Task then(Settings settings) {
                            if (settings != null) {
                                CrashlyticsController.this.logAnalyticsAppExceptionEvents();
                                CrashlyticsController.this.reportingCoordinator.sendReports(CrashlyticsController.this.crashlyticsWorkers.common);
                                CrashlyticsController.this.unsentReportsHandled.trySetResult(null);
                                return Tasks.forResult(null);
                            }
                            Logger.getLogger().m509w("Received null app settings at app startup. Cannot send cached reports");
                            return Tasks.forResult(null);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeToLog(long j, String str) {
        if (isHandlingException()) {
            return;
        }
        this.logFileManager.writeToLog(j, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeNonFatalException(Thread thread, Throwable th, Map map) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (isHandlingException()) {
            return;
        }
        long timestampSeconds = getTimestampSeconds(jCurrentTimeMillis);
        String currentSessionId = getCurrentSessionId();
        if (currentSessionId == null) {
            Logger.getLogger().m509w("Tried to write a non-fatal exception while no session was open.");
        } else {
            this.reportingCoordinator.persistNonFatalEvent(th, thread, new EventMetadata(currentSessionId, timestampSeconds, map));
        }
    }

    void setInternalKey(String str, String str2) {
        try {
            this.userMetadata.setInternalKey(str, str2);
        } catch (IllegalArgumentException e) {
            Context context = this.context;
            if (context != null && CommonUtils.isAppDebuggable(context)) {
                throw e;
            }
            Logger.getLogger().m503e("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    void openSession(final String str) {
        this.crashlyticsWorkers.common.submit(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.doOpenSession(str, Boolean.FALSE);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCurrentSessionId() {
        SortedSet sortedSetListSortedOpenSessionIds = this.reportingCoordinator.listSortedOpenSessionIds();
        if (sortedSetListSortedOpenSessionIds.isEmpty()) {
            return null;
        }
        return (String) sortedSetListSortedOpenSessionIds.first();
    }

    boolean finalizeSessions(SettingsProvider settingsProvider) {
        CrashlyticsWorkers.checkBackgroundThread();
        if (isHandlingException()) {
            Logger.getLogger().m509w("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        Logger.getLogger().m507v("Finalizing previously open sessions.");
        try {
            doCloseSessions(true, settingsProvider, true);
            Logger.getLogger().m507v("Closed all previously open sessions.");
            return true;
        } catch (Exception e) {
            Logger.getLogger().m504e("Unable to finalize previously open sessions.", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doOpenSession(String str, Boolean bool) {
        long currentTimestampSeconds = getCurrentTimestampSeconds();
        Logger.getLogger().m501d("Opening a new session with ID " + str);
        this.nativeComponent.prepareNativeSession(str, String.format(Locale.US, "Crashlytics Android SDK/%s", CrashlyticsCore.getVersion()), currentTimestampSeconds, StaticSessionData.create(createAppData(this.idManager, this.appData), createOsData(), createDeviceData(this.context)));
        if (bool.booleanValue() && str != null) {
            this.userMetadata.setNewSession(str);
        }
        this.logFileManager.setCurrentSession(str);
        this.sessionsSubscriber.setSessionId(str);
        this.reportingCoordinator.onBeginSession(str, currentTimestampSeconds);
    }

    void doCloseSessions(SettingsProvider settingsProvider) {
        doCloseSessions(false, settingsProvider, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void doCloseSessions(boolean z, SettingsProvider settingsProvider, boolean z2) {
        String str;
        CrashlyticsWorkers.checkBackgroundThread();
        ArrayList arrayList = new ArrayList(this.reportingCoordinator.listSortedOpenSessionIds());
        if (arrayList.size() <= z) {
            Logger.getLogger().m507v("No open sessions to be closed.");
            return;
        }
        String str2 = (String) arrayList.get(z ? 1 : 0);
        if (z2 && settingsProvider.getSettingsSync().featureFlagData.collectAnrs) {
            writeApplicationExitInfoEventIfRelevant(str2);
        } else {
            Logger.getLogger().m507v("ANR feature disabled.");
        }
        if (z2 && this.nativeComponent.hasCrashDataForSession(str2)) {
            finalizePreviousNativeSession(str2);
        }
        if (z != 0) {
            str = (String) arrayList.get(0);
        } else {
            this.sessionsSubscriber.setSessionId(null);
            str = null;
        }
        this.reportingCoordinator.finalizeSessions(getCurrentTimestampSeconds(), str);
    }

    List listAppExceptionMarkerFiles() {
        return this.fileStore.getCommonFiles(APP_EXCEPTION_MARKER_FILTER);
    }

    void saveVersionControlInfo() {
        try {
            String versionControlInfo = getVersionControlInfo();
            if (versionControlInfo != null) {
                setInternalKey("com.crashlytics.version-control-info", versionControlInfo);
                Logger.getLogger().m505i("Saved version control info");
            }
        } catch (IOException e) {
            Logger.getLogger().m510w("Unable to save version control info", e);
        }
    }

    String getVersionControlInfo() throws IOException {
        String versionControlInfo = CommonUtils.getVersionControlInfo(this.context);
        if (versionControlInfo != null) {
            Logger.getLogger().m501d("Read version control info from string resource");
            return Base64.encodeToString(versionControlInfo.getBytes(UTF_8), 0);
        }
        InputStream resourceAsStream = getResourceAsStream("META-INF/version-control-info.textproto");
        if (resourceAsStream != null) {
            try {
                Logger.getLogger().m501d("Read version control info from file");
                String strEncodeToString = Base64.encodeToString(readResource(resourceAsStream), 0);
                resourceAsStream.close();
                return strEncodeToString;
            } catch (Throwable th) {
                try {
                    resourceAsStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (resourceAsStream != null) {
            resourceAsStream.close();
        }
        Logger.getLogger().m505i("No version control information found");
        return null;
    }

    private InputStream getResourceAsStream(String str) {
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            Logger.getLogger().m509w("Couldn't get Class Loader");
            return null;
        }
        return classLoader.getResourceAsStream(str);
    }

    private static byte[] readResource(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i = inputStream.read(bArr);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return byteArray;
                }
            }
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private void finalizePreviousNativeSession(String str) {
        Logger.getLogger().m507v("Finalizing native report for session " + str);
        NativeSessionFileProvider sessionFileProvider = this.nativeComponent.getSessionFileProvider(str);
        File minidumpFile = sessionFileProvider.getMinidumpFile();
        CrashlyticsReport.ApplicationExitInfo applicationExitInto = sessionFileProvider.getApplicationExitInto();
        if (nativeCoreAbsent(str, minidumpFile, applicationExitInto)) {
            Logger.getLogger().m509w("No native core present");
            return;
        }
        long jLastModified = minidumpFile.lastModified();
        LogFileManager logFileManager = new LogFileManager(this.fileStore, str);
        File nativeSessionDir = this.fileStore.getNativeSessionDir(str);
        if (!nativeSessionDir.isDirectory()) {
            Logger.getLogger().m509w("Couldn't create directory to store native session files, aborting.");
            return;
        }
        doWriteAppExceptionMarker(jLastModified);
        List nativeSessionFiles = getNativeSessionFiles(sessionFileProvider, str, this.fileStore, logFileManager.getBytesForLog());
        NativeSessionFileGzipper.processNativeSessions(nativeSessionDir, nativeSessionFiles);
        Logger.getLogger().m501d("CrashlyticsController#finalizePreviousNativeSession");
        this.reportingCoordinator.finalizeSessionWithNativeEvent(str, nativeSessionFiles, applicationExitInto);
        logFileManager.clearLog();
    }

    private static boolean nativeCoreAbsent(String str, File file, CrashlyticsReport.ApplicationExitInfo applicationExitInfo) {
        if (file == null || !file.exists()) {
            Logger.getLogger().m509w("No minidump data found for session " + str);
        }
        if (applicationExitInfo == null) {
            Logger.getLogger().m505i("No Tombstones data found for session " + str);
        }
        return (file == null || !file.exists()) && applicationExitInfo == null;
    }

    private static long getCurrentTimestampSeconds() {
        return getTimestampSeconds(System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getTimestampSeconds(long j) {
        return j / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doWriteAppExceptionMarker(long j) {
        try {
            if (this.fileStore.getCommonFile(".ae" + j).createNewFile()) {
            } else {
                throw new IOException("Create new file failed.");
            }
        } catch (IOException e) {
            Logger.getLogger().m510w("Could not create app exception marker file.", e);
        }
    }

    private static StaticSessionData.AppData createAppData(IdManager idManager, AppData appData) {
        return StaticSessionData.AppData.create(idManager.getAppIdentifier(), appData.versionCode, appData.versionName, idManager.getInstallIds().getCrashlyticsInstallId(), DeliveryMechanism.determineFrom(appData.installerPackageName).getId(), appData.developmentPlatformProvider);
    }

    private static StaticSessionData.OsData createOsData() {
        return StaticSessionData.OsData.create(Build.VERSION.RELEASE, Build.VERSION.CODENAME, CommonUtils.isRooted());
    }

    private static StaticSessionData.DeviceData createDeviceData(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return StaticSessionData.DeviceData.create(CommonUtils.getCpuArchitectureInt(), Build.MODEL, Runtime.getRuntime().availableProcessors(), CommonUtils.calculateTotalRamInBytes(context), ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()), CommonUtils.isEmulator(), CommonUtils.getDeviceState(), Build.MANUFACTURER, Build.PRODUCT);
    }

    boolean isHandlingException() {
        CrashlyticsUncaughtExceptionHandler crashlyticsUncaughtExceptionHandler = this.crashHandler;
        return crashlyticsUncaughtExceptionHandler != null && crashlyticsUncaughtExceptionHandler.isHandlingException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task logAnalyticsAppExceptionEvents() {
        ArrayList arrayList = new ArrayList();
        for (File file : listAppExceptionMarkerFiles()) {
            try {
                arrayList.add(logAnalyticsAppExceptionEvent(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException unused) {
                Logger.getLogger().m509w("Could not parse app exception timestamp from file " + file.getName());
            }
            file.delete();
        }
        return Tasks.whenAll(arrayList);
    }

    private Task logAnalyticsAppExceptionEvent(final long j) {
        if (firebaseCrashExists()) {
            Logger.getLogger().m509w("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return Tasks.forResult(null);
        }
        Logger.getLogger().m501d("Logging app exception event to Firebase Analytics");
        return Tasks.call(new ScheduledThreadPoolExecutor(1), new Callable() { // from class: com.google.firebase.crashlytics.internal.common.CrashlyticsController.5
            @Override // java.util.concurrent.Callable
            public Void call() {
                Bundle bundle = new Bundle();
                bundle.putInt("fatal", 1);
                bundle.putLong("timestamp", j);
                CrashlyticsController.this.analyticsEventLogger.logEvent("_ae", bundle);
                return null;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteFiles(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    private static boolean firebaseCrashExists() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    static List getNativeSessionFiles(NativeSessionFileProvider nativeSessionFileProvider, String str, FileStore fileStore, byte[] bArr) {
        File sessionFile = fileStore.getSessionFile(str, "user-data");
        File sessionFile2 = fileStore.getSessionFile(str, "keys");
        File sessionFile3 = fileStore.getSessionFile(str, "rollouts-state");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BytesBackedNativeSessionFile("logs_file", "logs", bArr));
        arrayList.add(new FileBackedNativeSessionFile("crash_meta_file", "metadata", nativeSessionFileProvider.getMetadataFile()));
        arrayList.add(new FileBackedNativeSessionFile("session_meta_file", "session", nativeSessionFileProvider.getSessionFile()));
        arrayList.add(new FileBackedNativeSessionFile("app_meta_file", Common.ASSET_APP, nativeSessionFileProvider.getAppFile()));
        arrayList.add(new FileBackedNativeSessionFile("device_meta_file", "device", nativeSessionFileProvider.getDeviceFile()));
        arrayList.add(new FileBackedNativeSessionFile("os_meta_file", "os", nativeSessionFileProvider.getOsFile()));
        arrayList.add(nativeCoreFile(nativeSessionFileProvider));
        arrayList.add(new FileBackedNativeSessionFile("user_meta_file", "user", sessionFile));
        arrayList.add(new FileBackedNativeSessionFile("keys_file", "keys", sessionFile2));
        arrayList.add(new FileBackedNativeSessionFile("rollouts_file", "rollouts", sessionFile3));
        return arrayList;
    }

    private static NativeSessionFile nativeCoreFile(NativeSessionFileProvider nativeSessionFileProvider) {
        File minidumpFile = nativeSessionFileProvider.getMinidumpFile();
        if (minidumpFile == null || !minidumpFile.exists()) {
            return new BytesBackedNativeSessionFile("minidump_file", "minidump", new byte[]{0});
        }
        return new FileBackedNativeSessionFile("minidump_file", "minidump", minidumpFile);
    }

    private void writeApplicationExitInfoEventIfRelevant(String str) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) this.context.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
            if (historicalProcessExitReasons.size() != 0) {
                this.reportingCoordinator.persistRelevantAppExitInfoEvent(str, historicalProcessExitReasons, new LogFileManager(this.fileStore, str), UserMetadata.loadFromExistingSession(str, this.fileStore, this.crashlyticsWorkers));
                return;
            } else {
                Logger.getLogger().m507v("No ApplicationExitInfo available. Session: " + str);
                return;
            }
        }
        Logger.getLogger().m507v("ANR feature enabled, but device is API " + i);
    }
}
