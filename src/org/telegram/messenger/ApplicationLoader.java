package org.telegram.messenger;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import androidx.work.Configuration;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.ProxyDisableCondition;
import com.exteragram.messenger.maps.yandex.YandexLocationProvider;
import com.exteragram.messenger.maps.yandex.YandexMapsProvider;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.utils.NativeCrashHandler;
import com.exteragram.messenger.updater.UpdateAppAlertDialog;
import com.exteragram.messenger.updater.UpdateLayout;
import com.exteragram.messenger.updater.UpdaterUtils;
import com.exteragram.messenger.utils.chats.ChatUtils;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import java.io.File;
import java.lang.Thread;
import java.util.Locale;
import org.json.JSONObject;
import org.lsposed.lsparanoid.Deobfuscator$exteraGramDev$TMessagesProj;
import org.telegram.messenger.PushListenerController;
import org.telegram.messenger.voip.VideoCapturerDevice;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.ForegroundDetector;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.IUpdateLayout;
import org.telegram.ui.LauncherIconController;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationLoader extends Application implements Configuration.Provider {

    @SuppressLint({"StaticFieldLeak"})
    public static volatile Context applicationContext;
    public static volatile Handler applicationHandler;
    public static ApplicationLoader applicationLoaderInstance;
    public static boolean canDrawOverlays;
    private static ConnectivityManager connectivityManager;
    public static volatile NetworkInfo currentNetworkInfo;
    private static FirebaseAnalytics firebaseAnalytics;
    private static FirebaseCrashlytics firebaseCrashlytics;
    private static long lastNetworkCheckTypeTime;
    private static ILocationServiceProvider locationServiceProvider;
    public static volatile long mainInterfacePausedStageQueueTime;
    private static IMapsProvider mapsProvider;
    private static volatile ConnectivityManager.NetworkCallback networkCallback;
    private static PushListenerController.IPushListenerServiceProvider pushProvider;
    public static long startTime;
    private static final String PREF_PROXY_AUTO_DISABLED = Deobfuscator$exteraGramDev$TMessagesProj.getString(-37269447919151L);
    private static final String PREF_PROXY_AUTO_RESTORE_CALLS = Deobfuscator$exteraGramDev$TMessagesProj.getString(-36895785764399L);
    private static volatile boolean applicationInited = false;
    private static int lastKnownNetworkType = -1;
    private static volatile boolean exteraHookEmbeddedConfigured = false;
    public static volatile boolean isScreenOn = false;
    public static volatile boolean mainInterfacePaused = true;
    public static volatile boolean mainInterfaceStopped = true;
    public static volatile boolean externalInterfacePaused = true;
    public static volatile boolean mainInterfacePausedStageQueue = true;
    private static long lastNetworkCheck = -1;

    public static boolean isAndroidTestEnvironment() {
        return false;
    }

    public void addItemOptions(ItemOptions itemOptions) {
    }

    public void cancelDownloadingUpdate() {
    }

    public boolean checkRequestPermissionResult(int i, String[] strArr, int[] iArr) {
        return false;
    }

    public void checkUpdate(boolean z, Runnable runnable) {
    }

    public boolean consumePush(int i, JSONObject jSONObject) {
        return false;
    }

    public void downloadUpdate() {
    }

    public File getDownloadedUpdateFile() {
        return null;
    }

    public float getDownloadingUpdateProgress() {
        return 0.0f;
    }

    public BetaUpdate getUpdate() {
        return null;
    }

    public boolean isAndroidTestEnv() {
        return false;
    }

    public boolean isBeta() {
        return false;
    }

    public boolean isCustomUpdate() {
        return false;
    }

    public boolean isDownloadingUpdate() {
        return false;
    }

    public boolean isStandalone() {
        return false;
    }

    public boolean onPause() {
        return false;
    }

    public void onResume() {
    }

    public boolean onSuggestionClick(String str) {
        return false;
    }

    public boolean onSuggestionFill(String str, CharSequence[] charSequenceArr, boolean[] zArr) {
        return false;
    }

    public BaseFragment openSettings(int i) {
        return null;
    }

    public TLRPC.Update parseTLUpdate(int i) {
        return null;
    }

    public void processUpdate(int i, TLRPC.Update update) {
    }

    public boolean showCustomUpdateAppPopup(Context context, BetaUpdate betaUpdate, int i) {
        return false;
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public static ILocationServiceProvider getLocationServiceProvider() {
        if (locationServiceProvider == null) {
            ILocationServiceProvider iLocationServiceProviderOnCreateLocationServiceProvider = applicationLoaderInstance.onCreateLocationServiceProvider();
            locationServiceProvider = iLocationServiceProviderOnCreateLocationServiceProvider;
            iLocationServiceProviderOnCreateLocationServiceProvider.init(applicationContext);
        }
        return locationServiceProvider;
    }

    public ILocationServiceProvider onCreateLocationServiceProvider() {
        return (allowToUseYandexMaps() && ExteraConfig.getUseYandexMaps()) ? new YandexLocationProvider() : new GoogleLocationProvider();
    }

    public static IMapsProvider getMapsProvider() {
        if (mapsProvider == null) {
            mapsProvider = applicationLoaderInstance.onCreateMapsProvider();
        }
        return mapsProvider;
    }

    public static void updateMapsProvider() {
        mapsProvider = applicationLoaderInstance.onCreateMapsProvider();
        ILocationServiceProvider iLocationServiceProviderOnCreateLocationServiceProvider = applicationLoaderInstance.onCreateLocationServiceProvider();
        locationServiceProvider = iLocationServiceProviderOnCreateLocationServiceProvider;
        iLocationServiceProviderOnCreateLocationServiceProvider.init(applicationContext);
    }

    public IMapsProvider onCreateMapsProvider() {
        return (allowToUseYandexMaps() && ExteraConfig.getUseYandexMaps()) ? new YandexMapsProvider() : new GoogleMapsProvider();
    }

    public boolean allowToUseYandexMaps() {
        if (YandexMapsProvider.isSupported() && Build.VERSION.SDK_INT >= 26) {
            return !RemoteUtils.getBooleanConfigValue(Deobfuscator$exteraGramDev$TMessagesProj.getString(-41057609074223L), false).booleanValue() || ChatUtils.getInstance().isRussianUser() || ChatUtils.getInstance().isFragmentUser();
        }
        return false;
    }

    public static PushListenerController.IPushListenerServiceProvider getPushProvider() {
        if (pushProvider == null) {
            pushProvider = applicationLoaderInstance.onCreatePushProvider();
        }
        return pushProvider;
    }

    public PushListenerController.IPushListenerServiceProvider onCreatePushProvider() {
        return PushListenerController.GooglePushListenerServiceProvider.INSTANCE;
    }

    public static String getApplicationId() {
        return Deobfuscator$exteraGramDev$TMessagesProj.getString(-41212227896879L);
    }

    public static File getFilesDirFixed() {
        for (int i = 0; i < 10; i++) {
            File filesDir = applicationContext.getFilesDir();
            if (filesDir != null) {
                return filesDir;
            }
        }
        try {
            File file = new File(applicationContext.getApplicationInfo().dataDir, Deobfuscator$exteraGramDev$TMessagesProj.getString(-40692536854063L));
            file.mkdirs();
            return file;
        } catch (Exception e) {
            FileLog.m898e(e);
            return new File(Deobfuscator$exteraGramDev$TMessagesProj.getString(-40787026134575L));
        }
    }

    public static File getFilesDirFixed(String str) {
        try {
            File file = new File(getFilesDirFixed(), str);
            file.mkdirs();
            return file;
        } catch (Exception e) {
            FileLog.m898e(e);
            return null;
        }
    }

    public static void postInitApplication() {
        if (applicationInited || applicationContext == null) {
            return;
        }
        applicationInited = true;
        NativeLoader.initNativeLibs(applicationContext);
        try {
            LocaleController.getInstance();
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            connectivityManager = (ConnectivityManager) applicationContext.getSystemService(Deobfuscator$exteraGramDev$TMessagesProj.getString(-40898695284271L));
            applicationContext.registerReceiver(new BroadcastReceiver() { // from class: org.telegram.messenger.ApplicationLoader.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    try {
                        ApplicationLoader.currentNetworkInfo = ApplicationLoader.connectivityManager.getActiveNetworkInfo();
                    } catch (Throwable unused) {
                    }
                    ApplicationLoader.checkProxyForNetworkState();
                    boolean zIsConnectionSlow = ApplicationLoader.isConnectionSlow();
                    for (int i = 0; i < 16; i++) {
                        ConnectionsManager.getInstance(i).checkConnection();
                        FileLoader.getInstance(i).onNetworkChanged(zIsConnectionSlow);
                    }
                }
            }, new IntentFilter(Deobfuscator$exteraGramDev$TMessagesProj.getString(-41512875607599L)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            IntentFilter intentFilter = new IntentFilter(Deobfuscator$exteraGramDev$TMessagesProj.getString(-41663199462959L));
            intentFilter.addAction(Deobfuscator$exteraGramDev$TMessagesProj.getString(-41250882602543L));
            applicationContext.registerReceiver(new ScreenReceiver(), intentFilter);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        try {
            isScreenOn = ((PowerManager) applicationContext.getSystemService(Deobfuscator$exteraGramDev$TMessagesProj.getString(-41401206457903L))).isScreenOn();
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-41495695738415L) + isScreenOn);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        SharedConfig.loadConfig();
        SharedPrefsHelper.init(applicationContext);
        for (int i = 0; i < 16; i++) {
            UserConfig.getInstance(i).loadConfig();
            MessagesController.getInstance(i);
            if (i == 0) {
                SharedConfig.pushStringStatus = Deobfuscator$exteraGramDev$TMessagesProj.getString(-39915147773487L) + ConnectionsManager.getInstance(i).getCurrentTime() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-40031111890479L);
            } else {
                ConnectionsManager.getInstance(i);
            }
            TLRPC.User currentUser = UserConfig.getInstance(i).getCurrentUser();
            if (currentUser != null) {
                MessagesController.getInstance(i).putUser(currentUser, true);
                SendMessagesHelper.getInstance(i).checkUnsentMessages();
            }
        }
        checkProxyForNetworkState();
        ((ApplicationLoader) applicationContext).initPushServices();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-40052586726959L));
        }
        MediaController.getInstance();
        for (int i2 = 0; i2 < 16; i2++) {
            ContactsController.getInstance(i2).checkAppAccount();
            DownloadController.getInstance(i2);
        }
        BillingController.getInstance().lambda$onBillingServiceDisconnected$12();
    }

    @Override // androidx.work.Configuration.Provider
    public Configuration getWorkManagerConfiguration() {
        return new Configuration.Builder().build();
    }

    @Override // android.app.Application
    public void onCreate() {
        String str;
        applicationLoaderInstance = this;
        try {
            applicationContext = getApplicationContext();
        } catch (Throwable unused) {
        }
        super.onCreate();
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            sb.append(Deobfuscator$exteraGramDev$TMessagesProj.getString(-40104126334511L));
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            startTime = jElapsedRealtime;
            sb.append(jElapsedRealtime);
            FileLog.m895d(sb.toString());
            try {
                PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0);
                int i = packageInfo.versionCode % 10;
                if (i == 1 || i == 2) {
                    str = Deobfuscator$exteraGramDev$TMessagesProj.getString(-39631679931951L) + Build.CPU_ABI + Deobfuscator$exteraGramDev$TMessagesProj.getString(-39687514506799L) + Build.CPU_ABI2;
                } else {
                    str = Deobfuscator$exteraGramDev$TMessagesProj.getString(-39696104441391L) + Build.CPU_ABI + Deobfuscator$exteraGramDev$TMessagesProj.getString(-39683219539503L) + Build.CPU_ABI2;
                }
                FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-39760528950831L) + String.format(Locale.US, Deobfuscator$exteraGramDev$TMessagesProj.getString(-39829248427567L), packageInfo.versionName, Integer.valueOf(packageInfo.versionCode / 10), Integer.valueOf(packageInfo.versionCode % 10), str));
            } catch (Exception e) {
                FileLog.m898e(e);
            }
            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-40447723718191L) + Build.MANUFACTURER + Deobfuscator$exteraGramDev$TMessagesProj.getString(-40537918031407L) + Build.DEVICE + Deobfuscator$exteraGramDev$TMessagesProj.getString(-40580867704367L) + Build.MODEL + Deobfuscator$exteraGramDev$TMessagesProj.getString(-40559392867887L) + Build.PRODUCT);
        }
        if (applicationContext == null) {
            applicationContext = getApplicationContext();
        }
        NativeLoader.initNativeLibs(applicationContext);
        NativeCrashHandler.init(NativeCrashHandler.getCrashFlagPath());
        try {
            ConnectionsManager.native_setJava(false);
            configureEmbeddedExteraHook();
            PluginsController.applyArtOpts();
            new ForegroundDetector(this) { // from class: org.telegram.messenger.ApplicationLoader.2
                @Override // org.telegram.ui.Components.ForegroundDetector, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    boolean zIsBackground = isBackground();
                    super.onActivityStarted(activity);
                    if (zIsBackground) {
                        ApplicationLoader.ensureCurrentNetworkGet(true);
                    }
                }
            };
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-40318874699311L) + (SystemClock.elapsedRealtime() - startTime));
            }
            if (BuildVars.DEBUG_VERSION || ExteraConfig.getPluginsEngine()) {
                final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
                Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: org.telegram.messenger.ApplicationLoader$$ExternalSyntheticLambda1
                    @Override // java.lang.Thread.UncaughtExceptionHandler
                    public final void uncaughtException(Thread thread, Throwable th) {
                        ApplicationLoader.$r8$lambda$NY8LiAdXEiNm7oQtKqIv0_Zxl0c(defaultUncaughtExceptionHandler, thread, th);
                    }
                });
            }
            applicationHandler = new Handler(applicationContext.getMainLooper());
            RemoteUtils.initCached();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ApplicationLoader$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ApplicationLoader.startPushService();
                }
            });
            LauncherIconController.tryFixLauncherIconIfNeeded();
            ProxyRotationController.init();
            ProxyPingController.init();
            ((ApplicationLoader) applicationContext).initFirebase();
        } catch (UnsatisfiedLinkError unused2) {
            throw new RuntimeException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-40666767050287L) + Build.CPU_ABI + Deobfuscator$exteraGramDev$TMessagesProj.getString(-40250155222575L) + NativeLoader.getAbiFolder());
        }
    }

    public static /* synthetic */ void $r8$lambda$NY8LiAdXEiNm7oQtKqIv0_Zxl0c(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread thread, Throwable th) {
        String stackTraceString = Log.getStackTraceString(th);
        try {
            if (ExteraConfig.getPluginsEngine()) {
                SharedPreferences.Editor editorEdit = PluginsController.getInstance().getPreferences().edit();
                editorEdit.putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-36371799754287L), true).apply();
                String str = null;
                for (String str2 : PluginsController.getInstance().getPlugins().keySet()) {
                    if (stackTraceString.contains(str2)) {
                        str = str2;
                    }
                }
                if (str != null) {
                    editorEdit.putString(Deobfuscator$exteraGramDev$TMessagesProj.getString(-36483468903983L), str).apply();
                    FileLog.m896e(Deobfuscator$exteraGramDev$TMessagesProj.getString(-36492058838575L) + str);
                }
            }
            ((ClipboardManager) applicationContext.getSystemService(Deobfuscator$exteraGramDev$TMessagesProj.getString(-37200728442415L))).setPrimaryClip(ClipData.newPlainText(Deobfuscator$exteraGramDev$TMessagesProj.getString(-37312397592111L), stackTraceString));
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        FileLog.m896e(stackTraceString);
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }

    private static void configureEmbeddedExteraHook() {
        if (exteraHookEmbeddedConfigured) {
            return;
        }
        synchronized (ApplicationLoader.class) {
            if (exteraHookEmbeddedConfigured) {
                return;
            }
            try {
                Class.forName(Deobfuscator$exteraGramDev$TMessagesProj.getString(-40396184110639L)).getMethod(Deobfuscator$exteraGramDev$TMessagesProj.getString(-38948780131887L), null).invoke(null, null);
                exteraHookEmbeddedConfigured = true;
            } catch (Throwable th) {
                throw new RuntimeException(Deobfuscator$exteraGramDev$TMessagesProj.getString(-38978844902959L), th);
            }
        }
    }

    @Override // android.app.Application
    public void onTerminate() {
        if (ExteraConfig.getUseYandexMaps()) {
            YandexMapsProvider.terminate();
        }
        super.onTerminate();
    }

    public static void startPushService() {
        boolean z;
        SharedPreferences globalNotificationsSettings = MessagesController.getGlobalNotificationsSettings();
        if (globalNotificationsSettings.contains(Deobfuscator$exteraGramDev$TMessagesProj.getString(-38635247519279L))) {
            z = globalNotificationsSettings.getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-38755506603567L), true);
        } else {
            z = MessagesController.getMainSettings(UserConfig.selectedAccount).getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-39356802025007L), false);
        }
        if (z) {
            try {
                applicationContext.startService(new Intent(applicationContext, (Class<?>) NotificationsService.class));
            } catch (Throwable unused) {
            }
        } else {
            applicationContext.stopService(new Intent(applicationContext, (Class<?>) NotificationsService.class));
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            LocaleController.getInstance().onDeviceConfigurationChange(configuration);
            AndroidUtilities.checkDisplaySize(applicationContext, configuration);
            VideoCapturerDevice.checkScreenCapturerSize();
            AndroidUtilities.resetTabletFlag();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void initFirebase() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ApplicationLoader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initFirebase$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initFirebase$1() {
        firebaseAnalytics = FirebaseAnalytics.getInstance(this);
        FirebaseCrashlytics firebaseCrashlytics2 = FirebaseCrashlytics.getInstance();
        firebaseCrashlytics = firebaseCrashlytics2;
        firebaseCrashlytics2.setCustomKey(Deobfuscator$exteraGramDev$TMessagesProj.getString(-36290195375663L), Deobfuscator$exteraGramDev$TMessagesProj.getString(BuildVars.IS_LITE_VERSION ? -36397569558063L : -36358914852399L));
        firebaseAnalytics.setAnalyticsCollectionEnabled(ExteraConfig.getUseGoogleAnalytics());
        firebaseCrashlytics.setCrashlyticsCollectionEnabled(ExteraConfig.getUseGoogleCrashlytics());
    }

    public static FirebaseAnalytics getFirebaseAnalytics() {
        return firebaseAnalytics;
    }

    public static FirebaseCrashlytics getFirebaseCrashlytics() {
        return firebaseCrashlytics;
    }

    private void initPushServices() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ApplicationLoader$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ApplicationLoader.$r8$lambda$Dg08OQoz1Ha7gWZHgwTNhzwKwfw();
            }
        }, 1000L);
    }

    public static /* synthetic */ void $r8$lambda$Dg08OQoz1Ha7gWZHgwTNhzwKwfw() {
        if (getPushProvider().hasServices()) {
            getPushProvider().onRequestPushToken();
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-36693922301487L) + getPushProvider().getLogTitle() + Deobfuscator$exteraGramDev$TMessagesProj.getString(-36736871974447L));
        }
        SharedConfig.pushStringStatus = Deobfuscator$exteraGramDev$TMessagesProj.getString(-36719692105263L);
        PushListenerController.sendRegistrationToServer(getPushProvider().getPushType(), null);
    }

    private boolean checkPlayServices() {
        try {
            return GooglePlayServicesUtil.isGooglePlayServicesAvailable(this) == 0;
        } catch (Exception e) {
            FileLog.m898e(e);
            return true;
        }
    }

    private static void ensureCurrentNetworkGet() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ensureCurrentNetworkGet(jCurrentTimeMillis - lastNetworkCheck > 5000);
        lastNetworkCheck = jCurrentTimeMillis;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ensureCurrentNetworkGet(boolean z) {
        if (z || currentNetworkInfo == null) {
            try {
                if (connectivityManager == null) {
                    connectivityManager = (ConnectivityManager) applicationContext.getSystemService(Deobfuscator$exteraGramDev$TMessagesProj.getString(-39421226534447L));
                }
                currentNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (networkCallback == null) {
                    networkCallback = new ConnectivityManager.NetworkCallback() { // from class: org.telegram.messenger.ApplicationLoader.3
                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onAvailable(Network network) {
                            ApplicationLoader.lastKnownNetworkType = -1;
                            ApplicationLoader.checkProxyForNetworkState();
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                            ApplicationLoader.lastKnownNetworkType = -1;
                            ApplicationLoader.checkProxyForNetworkState();
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onLost(Network network) {
                            ApplicationLoader.lastKnownNetworkType = -1;
                            ApplicationLoader.checkProxyForNetworkState();
                        }
                    };
                    connectivityManager.registerDefaultNetworkCallback(networkCallback);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void checkProxyForNetworkState() {
        if (applicationContext == null) {
            return;
        }
        try {
            SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
            boolean z = globalMainSettings.getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-39485651043887L), false);
            if ((ExteraConfig.isProxyDisabledOn(ProxyDisableCondition.VPN) && isVpnEnabled()) || ((ExteraConfig.isProxyDisabledOn(ProxyDisableCondition.MOBILE_DATA) && hasTransport(0)) || (ExteraConfig.isProxyDisabledOn(ProxyDisableCondition.WIFI) && hasTransport(1)))) {
                if (z) {
                    return;
                }
                boolean z2 = globalMainSettings.getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-37574390597167L), false);
                String string = globalMainSettings.getString(Deobfuscator$exteraGramDev$TMessagesProj.getString(-37634520139311L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-37613045302831L));
                if (z2 && !TextUtils.isEmpty(string)) {
                    globalMainSettings.edit().putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-38313124972079L), true).putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-38368959546927L), globalMainSettings.getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-37608750335535L), false)).putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-37986707457583L), false).apply();
                    ConnectionsManager.setProxySettings(false, Deobfuscator$exteraGramDev$TMessagesProj.getString(-38046836999727L), 0, Deobfuscator$exteraGramDev$TMessagesProj.getString(-38059721901615L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-38055426934319L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-38068311836207L));
                    NotificationCenter.getGlobalInstance().postNotificationNameOnUIThread(NotificationCenter.proxySettingsChanged, new Object[0]);
                    return;
                }
                return;
            }
            if (z) {
                String string2 = globalMainSettings.getString(Deobfuscator$exteraGramDev$TMessagesProj.getString(-39524305749551L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-39090514052655L));
                int i = globalMainSettings.getInt(Deobfuscator$exteraGramDev$TMessagesProj.getString(-39086219085359L), 1080);
                String string3 = globalMainSettings.getString(Deobfuscator$exteraGramDev$TMessagesProj.getString(-39142053660207L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-39111988889135L));
                String string4 = globalMainSettings.getString(Deobfuscator$exteraGramDev$TMessagesProj.getString(-39124873791023L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-39232247973423L));
                String string5 = globalMainSettings.getString(Deobfuscator$exteraGramDev$TMessagesProj.getString(-39176413398575L), Deobfuscator$exteraGramDev$TMessagesProj.getString(-39292377515567L));
                boolean z3 = globalMainSettings.getBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-39305262417455L), false);
                SharedPreferences.Editor editorRemove = globalMainSettings.edit().putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-37686059746863L), false).remove(Deobfuscator$exteraGramDev$TMessagesProj.getString(-37810613798447L));
                if (!TextUtils.isEmpty(string2)) {
                    editorRemove.putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-37428361709103L), true);
                    editorRemove.putBoolean(Deobfuscator$exteraGramDev$TMessagesProj.getString(-37488491251247L), z3);
                }
                editorRemove.apply();
                if (TextUtils.isEmpty(string2)) {
                    return;
                }
                ConnectionsManager.setProxySettings(true, string2, i, string3, string4, string5);
                NotificationCenter.getGlobalInstance().postNotificationNameOnUIThread(NotificationCenter.proxySettingsChanged, new Object[0]);
            }
        } catch (Throwable th) {
            FileLog.m898e(th);
        }
    }

    private static boolean hasTransport(int i) {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        try {
            if (connectivityManager == null) {
                connectivityManager = (ConnectivityManager) applicationContext.getSystemService(Deobfuscator$exteraGramDev$TMessagesProj.getString(-38064016868911L));
            }
            ConnectivityManager connectivityManager2 = connectivityManager;
            if (connectivityManager2 != null && (activeNetwork = connectivityManager2.getActiveNetwork()) != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                if (networkCapabilities.hasTransport(i)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static boolean isVpnEnabled() {
        NetworkCapabilities networkCapabilities;
        try {
            if (connectivityManager == null) {
                connectivityManager = (ConnectivityManager) applicationContext.getSystemService(Deobfuscator$exteraGramDev$TMessagesProj.getString(-38128441378351L));
            }
            ConnectivityManager connectivityManager2 = connectivityManager;
            if (connectivityManager2 == null) {
                return false;
            }
            Network activeNetwork = connectivityManager2.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null && networkCapabilities.hasTransport(4)) {
                return true;
            }
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null) {
                if (currentNetworkInfo.getType() == 17) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean isRoaming() {
        try {
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null) {
                if (currentNetworkInfo.isRoaming()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            FileLog.m898e(e);
            return false;
        }
    }

    public static boolean isConnectedOrConnectingToWiFi() {
        try {
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null && (currentNetworkInfo.getType() == 1 || currentNetworkInfo.getType() == 9)) {
                NetworkInfo.State state = currentNetworkInfo.getState();
                if (state != NetworkInfo.State.CONNECTED && state != NetworkInfo.State.CONNECTING) {
                    if (state == NetworkInfo.State.SUSPENDED) {
                    }
                }
                return true;
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        return false;
    }

    public static boolean isConnectedToWiFi() {
        try {
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null && (currentNetworkInfo.getType() == 1 || currentNetworkInfo.getType() == 9)) {
                if (currentNetworkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        return false;
    }

    public static boolean isConnectionSlow() {
        try {
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null && currentNetworkInfo.getType() == 0) {
                int subtype = currentNetworkInfo.getSubtype();
                if (subtype == 1 || subtype == 2 || subtype == 4 || subtype == 7 || subtype == 11) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static int getAutodownloadNetworkType() {
        try {
            ensureCurrentNetworkGet(false);
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        if (currentNetworkInfo == null) {
            return 0;
        }
        if (currentNetworkInfo.getType() != 1 && currentNetworkInfo.getType() != 9) {
            return currentNetworkInfo.isRoaming() ? 2 : 0;
        }
        int i = lastKnownNetworkType;
        if ((i == 0 || i == 1) && System.currentTimeMillis() - lastNetworkCheckTypeTime < 5000) {
            return lastKnownNetworkType;
        }
        if (connectivityManager.isActiveNetworkMetered()) {
            lastKnownNetworkType = 0;
        } else {
            lastKnownNetworkType = 1;
        }
        lastNetworkCheckTypeTime = System.currentTimeMillis();
        return lastKnownNetworkType;
    }

    public static int getCurrentNetworkType() {
        if (isConnectedOrConnectingToWiFi()) {
            return 1;
        }
        return isRoaming() ? 2 : 0;
    }

    public static boolean isNetworkOnlineFast() {
        try {
            ensureCurrentNetworkGet(false);
            if (currentNetworkInfo != null && !currentNetworkInfo.isConnectedOrConnecting() && !currentNetworkInfo.isAvailable()) {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
                if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
                    return true;
                }
                NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
                if (networkInfo2 != null) {
                    if (networkInfo2.isConnectedOrConnecting()) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        } catch (Exception e) {
            FileLog.m898e(e);
            return true;
        }
    }

    public static boolean isNetworkOnlineRealtime() {
        try {
            ConnectivityManager connectivityManager2 = (ConnectivityManager) applicationContext.getSystemService(Deobfuscator$exteraGramDev$TMessagesProj.getString(-38175686018607L));
            NetworkInfo activeNetworkInfo = connectivityManager2.getActiveNetworkInfo();
            if (activeNetworkInfo == null || (!activeNetworkInfo.isConnectedOrConnecting() && !activeNetworkInfo.isAvailable())) {
                NetworkInfo networkInfo = connectivityManager2.getNetworkInfo(0);
                if (networkInfo != null && networkInfo.isConnectedOrConnecting()) {
                    return true;
                }
                NetworkInfo networkInfo2 = connectivityManager2.getNetworkInfo(1);
                if (networkInfo2 != null) {
                    if (networkInfo2.isConnectedOrConnecting()) {
                        return true;
                    }
                }
                return false;
            }
            return true;
        } catch (Exception e) {
            FileLog.m898e(e);
            return true;
        }
    }

    public static boolean isNetworkOnline() {
        boolean zIsNetworkOnlineRealtime = isNetworkOnlineRealtime();
        if (BuildVars.DEBUG_PRIVATE_VERSION && zIsNetworkOnlineRealtime != isNetworkOnlineFast()) {
            FileLog.m895d(Deobfuscator$exteraGramDev$TMessagesProj.getString(-38171391051311L));
        }
        return zIsNetworkOnlineRealtime;
    }

    public boolean checkApkInstallPermissions(Context context) {
        if (Build.VERSION.SDK_INT < 26 || applicationContext.getPackageManager().canRequestPackageInstalls()) {
            return true;
        }
        AlertsCreator.createApkRestrictedDialog(context, null).show();
        return false;
    }

    public boolean openApkInstall(Activity activity, TLRPC.Document document) {
        UpdaterUtils.installUpdate(activity, document);
        return true;
    }

    public boolean showUpdateAppPopup(Activity activity, TLRPC.TL_help_appUpdate tL_help_appUpdate, int i) {
        try {
            new UpdateAppAlertDialog(activity, tL_help_appUpdate, i).show();
            return true;
        } catch (Exception e) {
            FileLog.m898e(e);
            return true;
        }
    }

    public IUpdateLayout takeUpdateLayout(Activity activity, ViewGroup viewGroup) {
        return new UpdateLayout(activity, viewGroup);
    }
}
