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
import com.exteragram.messenger.appicons.AppIconController;
import com.exteragram.messenger.debug.FreezeMonitor;
import com.exteragram.messenger.debug.HeapMonitor;
import com.exteragram.messenger.debug.LoadMonitor;
import com.exteragram.messenger.icons.IconManager;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.utils.NativeCrashHandler;
import com.exteragram.messenger.security.SensitiveRequestSwitch;
import com.exteragram.messenger.updater.UpdateAppAlertDialog;
import com.exteragram.messenger.updater.UpdateLayout;
import com.exteragram.messenger.updater.UpdaterUtils;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.exteragram.messenger.utils.system.AppProcess;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import dev.exterahook.runtime.bridge.HookBridgeProvider;
import java.io.File;
import java.lang.Thread;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.mvel2.util.StaticFieldStub$$ExternalSyntheticBUOutline0;
import org.telegram.messenger.PushListenerController;
import org.telegram.messenger.voip.VideoCapturerDevice;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.ForegroundDetector;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.IUpdateLayout;
import org.telegram.utils.proxy.ProxySettings;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationLoader extends Application implements Configuration.Provider {
    private static final String PREF_PROXY_AUTO_DISABLED = "proxy_auto_disabled_by_vpn";

    @SuppressLint({"StaticFieldLeak"})
    public static volatile Context applicationContext = null;
    public static volatile Handler applicationHandler = null;
    private static volatile boolean applicationInited = false;
    public static ApplicationLoader applicationLoaderInstance = null;
    public static boolean canDrawOverlays = false;
    private static ConnectivityManager connectivityManager = null;
    public static volatile NetworkInfo currentNetworkInfo = null;
    private static volatile boolean exteraHookEmbeddedConfigured = false;
    public static volatile boolean externalInterfacePaused = true;
    private static FirebaseAnalytics firebaseAnalytics = null;
    private static FirebaseCrashlytics firebaseCrashlytics = null;
    public static volatile boolean isScreenOn = false;
    private static int lastKnownNetworkType = -1;
    private static long lastNetworkCheck = -1;
    private static long lastNetworkCheckTypeTime = 0;
    private static ILocationServiceProvider locationServiceProvider = null;
    public static volatile boolean mainInterfacePaused = true;
    public static volatile boolean mainInterfacePausedStageQueue = true;
    public static volatile long mainInterfacePausedStageQueueTime = 0;
    public static volatile boolean mainInterfaceStopped = true;
    private static IMapsProvider mapsProvider;
    private static volatile ConnectivityManager.NetworkCallback networkCallback;
    private static PushListenerController.IPushListenerServiceProvider pushProvider;
    public static long startTime;
    private final Runnable debugEverySecondChecks = new Runnable() { // from class: org.telegram.messenger.ApplicationLoader$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ApplicationLoader$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.sanitize();
                }
            });
        }
    };

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
        return new GoogleLocationProvider();
    }

    public static IMapsProvider getMapsProvider() {
        if (mapsProvider == null) {
            mapsProvider = applicationLoaderInstance.onCreateMapsProvider();
        }
        return mapsProvider;
    }

    public IMapsProvider onCreateMapsProvider() {
        return new GoogleMapsProvider();
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
        return BuildConfig.APPLICATION_ID;
    }

    public static File getFilesDirFixed() {
        for (int i = 0; i < 10; i++) {
            File filesDir = applicationContext.getFilesDir();
            if (filesDir != null) {
                return filesDir;
            }
        }
        try {
            File file = new File(applicationContext.getApplicationInfo().dataDir, "files");
            file.mkdirs();
            return file;
        } catch (Exception e) {
            FileLog.m1040e(e);
            return new File("/data/data/com.exteragram.messenger/files");
        }
    }

    public static File getFilesDirFixed(String str) {
        try {
            File file = new File(getFilesDirFixed(), str);
            file.mkdirs();
            return file;
        } catch (Exception e) {
            FileLog.m1040e(e);
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
        IconManager.INSTANCE.initialize(false);
        try {
            connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
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
            }, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        try {
            IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            applicationContext.registerReceiver(new ScreenReceiver(), intentFilter);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        try {
            isScreenOn = ((PowerManager) applicationContext.getSystemService("power")).isScreenOn();
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1037d("screen state = " + isScreenOn);
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
                SharedConfig.pushStringStatus = "__FIREBASE_GENERATING_SINCE_" + ConnectionsManager.getInstance(i).getCurrentTime() + "__";
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
            FileLog.m1037d("app initied");
        }
        MediaController.getInstance();
        for (int i2 = 0; i2 < 16; i2++) {
            ContactsController.getInstance(i2).checkAppAccount();
            DownloadController.getInstance(i2);
        }
        BillingController.getInstance().lambda$onBillingServiceDisconnected$13();
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
        if (AppProcess.isPluginAnalyzer()) {
            return;
        }
        String helloWorld = AndroidUtilities.getHelloWorld();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1037d(helloWorld);
            StringBuilder sb = new StringBuilder("app start time = ");
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            startTime = jElapsedRealtime;
            sb.append(jElapsedRealtime);
            FileLog.m1037d(sb.toString());
            try {
                PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0);
                int i = packageInfo.versionCode % 10;
                if (i == 1 || i == 2) {
                    str = "store bundled " + Build.CPU_ABI + " " + Build.CPU_ABI2;
                } else {
                    str = "universal " + Build.CPU_ABI + " " + Build.CPU_ABI2;
                }
                FileLog.m1037d("buildVersion = ".concat(String.format(Locale.US, "v%s (%d[%d]) %s", packageInfo.versionName, Integer.valueOf(packageInfo.versionCode / 10), Integer.valueOf(packageInfo.versionCode % 10), str)));
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            FileLog.m1037d("device = manufacturer=" + Build.MANUFACTURER + ", device=" + Build.DEVICE + ", model=" + Build.MODEL + ", product=" + Build.PRODUCT);
        }
        if (applicationContext == null) {
            applicationContext = getApplicationContext();
        }
        NativeLoader.initNativeLibs(applicationContext);
        NativeCrashHandler.init(NativeCrashHandler.getCrashFlagPath());
        try {
            ConnectionsManager.native_setJava(false);
            SensitiveRequestSwitch.init(applicationContext);
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
                FileLog.m1037d("load libs time = " + (SystemClock.elapsedRealtime() - startTime));
            }
            if (BuildVars.DEBUG_VERSION || ExteraConfig.getPluginsEngine()) {
                final Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
                Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: org.telegram.messenger.ApplicationLoader$$ExternalSyntheticLambda3
                    @Override // java.lang.Thread.UncaughtExceptionHandler
                    public final void uncaughtException(Thread thread, Throwable th) {
                        ApplicationLoader.$r8$lambda$NY8LiAdXEiNm7oQtKqIv0_Zxl0c(defaultUncaughtExceptionHandler, thread, th);
                    }
                });
            }
            applicationHandler = new Handler(applicationContext.getMainLooper());
            RemoteUtils.initCached();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ApplicationLoader$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    ApplicationLoader.startPushService();
                }
            });
            AppIconController.fixLauncherIconIfNeeded();
            ProxyRotationController.init();
            ProxyPingController.init();
            HeapMonitor.init();
            LoadMonitor.init();
            FreezeMonitor.init();
            ((ApplicationLoader) applicationContext).initFirebase();
        } catch (UnsatisfiedLinkError unused2) {
            StaticFieldStub$$ExternalSyntheticBUOutline0.m1026m("can't load native libraries ", Build.CPU_ABI, " lookup folder ", NativeLoader.getAbiFolder());
        }
    }

    public static /* synthetic */ void $r8$lambda$NY8LiAdXEiNm7oQtKqIv0_Zxl0c(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread thread, Throwable th) {
        String stackTraceString = Log.getStackTraceString(th);
        try {
            if (ExteraConfig.getPluginsEngine()) {
                SharedPreferences.Editor editorEdit = PluginsController.getInstance().getPreferences().edit();
                editorEdit.putBoolean("had_crash", true).apply();
                String str = null;
                for (String str2 : PluginsController.getInstance().getPlugins().keySet()) {
                    if (stackTraceString.contains(str2)) {
                        str = str2;
                    }
                }
                if (str != null) {
                    editorEdit.putString("crashed_plugin_id", str).apply();
                    FileLog.m1038e("Plugin crash detected for plugin: " + str);
                }
            }
            ((ClipboardManager) applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", stackTraceString));
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        FileLog.m1038e(stackTraceString);
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
                HookBridgeProvider.Companion companion = HookBridgeProvider.INSTANCE;
                HookBridgeProvider.class.getMethod("useEmbeddedAsDefault", null).invoke(null, null);
                exteraHookEmbeddedConfigured = true;
            } catch (Throwable th) {
                throw new RuntimeException("Failed to configure embedded exteraHook runtime", th);
            }
        }
    }

    public static void startPushService() {
        boolean z;
        SharedPreferences globalNotificationsSettings = MessagesController.getGlobalNotificationsSettings();
        if (globalNotificationsSettings.contains("pushService")) {
            z = globalNotificationsSettings.getBoolean("pushService", true);
        } else {
            z = MessagesController.getMainSettings(UserConfig.selectedAccount).getBoolean("keepAliveService", false);
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
        if (AppProcess.isPluginAnalyzer()) {
            return;
        }
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ApplicationLoader$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initFirebase$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initFirebase$3() {
        firebaseAnalytics = FirebaseAnalytics.getInstance(this);
        FirebaseCrashlytics firebaseCrashlytics2 = FirebaseCrashlytics.getInstance();
        firebaseCrashlytics = firebaseCrashlytics2;
        firebaseCrashlytics2.setCustomKey("app_flavor", BuildVars.IS_LITE_VERSION ? "lite" : BuildConfig.FLAVOR_appType);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ApplicationLoader$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ApplicationLoader.$r8$lambda$60kBNSRsGKm6hKC56PPkkqhDIgg();
            }
        }, 1000L);
    }

    public static /* synthetic */ void $r8$lambda$60kBNSRsGKm6hKC56PPkkqhDIgg() {
        if (getPushProvider().hasServices()) {
            getPushProvider().onRequestPushToken();
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1037d("No valid " + getPushProvider().getLogTitle() + " APK found.");
        }
        SharedConfig.pushStringStatus = "__NO_GOOGLE_PLAY_SERVICES__";
        PushListenerController.sendRegistrationToServer(getPushProvider().getPushType(), null);
    }

    private boolean checkPlayServices() {
        try {
            return GooglePlayServicesUtil.isGooglePlayServicesAvailable(this) == 0;
        } catch (Exception e) {
            FileLog.m1040e(e);
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
                    connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
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
            boolean z = globalMainSettings.getBoolean(PREF_PROXY_AUTO_DISABLED, false);
            if ((ExteraConfig.isProxyDisabledOn(ProxyDisableCondition.VPN) && isVpnEnabled()) || ((ExteraConfig.isProxyDisabledOn(ProxyDisableCondition.MOBILE_DATA) && hasTransport(0)) || (ExteraConfig.isProxyDisabledOn(ProxyDisableCondition.WIFI) && hasTransport(1)))) {
                if (z) {
                    return;
                }
                boolean z2 = globalMainSettings.getBoolean("proxy_enabled", false);
                String string = globalMainSettings.getString("proxy_ip", _UrlKt.FRAGMENT_ENCODE_SET);
                if (z2 && !TextUtils.isEmpty(string)) {
                    globalMainSettings.edit().putBoolean(PREF_PROXY_AUTO_DISABLED, true).putBoolean("proxy_enabled", false).apply();
                    ConnectionsManager.setProxySettings(false, null);
                    NotificationCenter.getGlobalInstance().postNotificationNameOnUIThread(NotificationCenter.proxySettingsChanged, new Object[0]);
                    return;
                }
                return;
            }
            if (z) {
                String string2 = globalMainSettings.getString("proxy_ip", _UrlKt.FRAGMENT_ENCODE_SET);
                SharedPreferences.Editor editorPutBoolean = globalMainSettings.edit().putBoolean(PREF_PROXY_AUTO_DISABLED, false);
                if (!TextUtils.isEmpty(string2)) {
                    editorPutBoolean.putBoolean("proxy_enabled", true);
                }
                editorPutBoolean.apply();
                if (TextUtils.isEmpty(string2)) {
                    return;
                }
                ConnectionsManager.setProxySettings(true, ProxySettings.fromSharedPreferences(globalMainSettings));
                NotificationCenter.getGlobalInstance().postNotificationNameOnUIThread(NotificationCenter.proxySettingsChanged, new Object[0]);
            }
        } catch (Throwable th) {
            FileLog.m1040e(th);
        }
    }

    private static boolean hasTransport(int i) {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        try {
            if (connectivityManager == null) {
                connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
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
                connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
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
            FileLog.m1040e(e);
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
            FileLog.m1040e(e);
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
            FileLog.m1040e(e);
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
            FileLog.m1040e(e);
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
            FileLog.m1040e(e);
            return true;
        }
    }

    public static boolean isNetworkOnlineRealtime() {
        try {
            ConnectivityManager connectivityManager2 = (ConnectivityManager) applicationContext.getSystemService("connectivity");
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
            FileLog.m1040e(e);
            return true;
        }
    }

    public static boolean isNetworkOnline() {
        boolean zIsNetworkOnlineRealtime = isNetworkOnlineRealtime();
        if (BuildVars.DEBUG_PRIVATE_VERSION && zIsNetworkOnlineRealtime != isNetworkOnlineFast()) {
            FileLog.m1037d("network online mismatch");
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
            FileLog.m1040e(e);
            return true;
        }
    }

    public IUpdateLayout takeUpdateLayout(Activity activity, ViewGroup viewGroup) {
        return new UpdateLayout(activity, viewGroup);
    }
}
