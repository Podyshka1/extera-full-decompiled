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
import android.content.res.Configuration;
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
import com.exteragram.messenger.ExteraConfig;
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
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.telegram.messenger.PushListenerController;
import org.telegram.messenger.voip.VideoCapturerDevice;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.ForegroundDetector;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.IUpdateLayout;
import org.telegram.p029ui.LauncherIconController;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationLoader extends Application {
    private static final String PREF_PROXY_AUTO_DISABLED_BY_VPN = "proxy_auto_disabled_by_vpn";
    private static final String PREF_PROXY_AUTO_RESTORE_CALLS = "proxy_auto_restore_calls";

    @SuppressLint({"StaticFieldLeak"})
    public static volatile Context applicationContext = null;
    public static volatile Handler applicationHandler = null;
    private static volatile boolean applicationInited = false;
    public static ApplicationLoader applicationLoaderInstance = null;
    public static boolean canDrawOverlays = false;
    private static ConnectivityManager connectivityManager = null;
    public static volatile NetworkInfo currentNetworkInfo = null;
    public static volatile boolean externalInterfacePaused = true;
    private static FirebaseAnalytics firebaseAnalytics = null;
    private static FirebaseCrashlytics firebaseCrashlytics = null;
    public static volatile boolean isScreenOn = false;
    private static int lastKnownNetworkType = -1;
    private static long lastNetworkCheck = 0;
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

    protected boolean isAndroidTestEnv() {
        return false;
    }

    protected boolean isBeta() {
        return false;
    }

    public boolean isCustomUpdate() {
        return false;
    }

    public boolean isDownloadingUpdate() {
        return false;
    }

    protected boolean isStandalone() {
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

    static {
        PluginsController.applyBlacklist();
        lastNetworkCheck = -1L;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
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

    protected ILocationServiceProvider onCreateLocationServiceProvider() {
        return (allowToUseYandexMaps() && ExteraConfig.useYandexMaps) ? new YandexLocationProvider() : new GoogleLocationProvider();
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

    protected IMapsProvider onCreateMapsProvider() {
        return (allowToUseYandexMaps() && ExteraConfig.useYandexMaps) ? new YandexMapsProvider() : new GoogleMapsProvider();
    }

    public boolean allowToUseYandexMaps() {
        if (YandexMapsProvider.isSupported() && Build.VERSION.SDK_INT >= 26) {
            return !RemoteUtils.getBooleanConfigValue("yandex_maps_only_ru", false).booleanValue() || ChatUtils.getInstance().isRussianUser() || ChatUtils.getInstance().isFragmentUser();
        }
        return false;
    }

    public static PushListenerController.IPushListenerServiceProvider getPushProvider() {
        if (pushProvider == null) {
            pushProvider = applicationLoaderInstance.onCreatePushProvider();
        }
        return pushProvider;
    }

    protected PushListenerController.IPushListenerServiceProvider onCreatePushProvider() {
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
            FileLog.m1136e(e);
            return new File("/data/data/com.exteragram.messenger/files");
        }
    }

    public static File getFilesDirFixed(String str) {
        try {
            File file = new File(getFilesDirFixed(), str);
            file.mkdirs();
            return file;
        } catch (Exception e) {
            FileLog.m1136e(e);
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
            connectivityManager = (ConnectivityManager) applicationContext.getSystemService("connectivity");
            applicationContext.registerReceiver(new BroadcastReceiver() { // from class: org.telegram.messenger.ApplicationLoader.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    try {
                        ApplicationLoader.currentNetworkInfo = ApplicationLoader.connectivityManager.getActiveNetworkInfo();
                    } catch (Throwable unused) {
                    }
                    ApplicationLoader.checkProxyForVpnState();
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
                FileLog.m1133d("screen state = " + isScreenOn);
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
        checkProxyForVpnState();
        ((ApplicationLoader) applicationContext).initPushServices();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("app initied");
        }
        MediaController.getInstance();
        for (int i2 = 0; i2 < 16; i2++) {
            ContactsController.getInstance(i2).checkAppAccount();
            DownloadController.getInstance(i2);
        }
        BillingController.getInstance().lambda$onBillingServiceDisconnected$12();
    }

    @Override // android.app.Application
    public void onCreate() {
        String str;
        applicationLoaderInstance = this;
        try {
            applicationContext = getApplicationContext();
        } catch (Throwable unused) {
        }
        PluginsController.applyArtOpts();
        super.onCreate();
        if (BuildVars.LOGS_ENABLED) {
            StringBuilder sb = new StringBuilder();
            sb.append("app start time = ");
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            startTime = jElapsedRealtime;
            sb.append(jElapsedRealtime);
            FileLog.m1133d(sb.toString());
            try {
                PackageInfo packageInfo = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0);
                int i = packageInfo.versionCode % 10;
                if (i == 1 || i == 2) {
                    str = "store bundled " + Build.CPU_ABI + " " + Build.CPU_ABI2;
                } else {
                    str = "universal " + Build.CPU_ABI + " " + Build.CPU_ABI2;
                }
                FileLog.m1133d("buildVersion = " + String.format(Locale.US, "v%s (%d[%d]) %s", packageInfo.versionName, Integer.valueOf(packageInfo.versionCode / 10), Integer.valueOf(packageInfo.versionCode % 10), str));
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
            FileLog.m1133d("device = manufacturer=" + Build.MANUFACTURER + ", device=" + Build.DEVICE + ", model=" + Build.MODEL + ", product=" + Build.PRODUCT);
        }
        if (applicationContext == null) {
            applicationContext = getApplicationContext();
        }
        NativeLoader.initNativeLibs(applicationContext);
        NativeCrashHandler.init(NativeCrashHandler.getCrashFlagPath());
        try {
            ConnectionsManager.native_setJava(false);
            new ForegroundDetector(this) { // from class: org.telegram.messenger.ApplicationLoader.2
                @Override // org.telegram.p029ui.Components.ForegroundDetector, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    boolean zIsBackground = isBackground();
                    super.onActivityStarted(activity);
                    if (zIsBackground) {
                        ApplicationLoader.ensureCurrentNetworkGet(true);
                    }
                }
            };
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1133d("load libs time = " + (SystemClock.elapsedRealtime() - startTime));
            }
            if (BuildVars.DEBUG_VERSION || ExteraConfig.pluginsEngine) {
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
            throw new RuntimeException("can't load native libraries " + Build.CPU_ABI + " lookup folder " + NativeLoader.getAbiFolder());
        }
    }

    public static /* synthetic */ void $r8$lambda$NY8LiAdXEiNm7oQtKqIv0_Zxl0c(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Thread thread, Throwable th) {
        String stackTraceString = Log.getStackTraceString(th);
        try {
            if (ExteraConfig.pluginsEngine) {
                SharedPreferences.Editor editorEdit = PluginsController.getInstance().preferences.edit();
                editorEdit.putBoolean("had_crash", true).apply();
                String str = null;
                for (String str2 : PluginsController.getInstance().plugins.keySet()) {
                    if (stackTraceString.contains(str2)) {
                        str = str2;
                    }
                }
                if (str != null) {
                    editorEdit.putString("crashed_plugin_id", str).apply();
                    FileLog.m1134e("Plugin crash detected for plugin: " + str);
                }
            }
            ((ClipboardManager) applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", stackTraceString));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        FileLog.m1134e(stackTraceString);
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th);
        }
    }

    @Override // android.app.Application
    public void onTerminate() {
        if (ExteraConfig.useYandexMaps) {
            YandexMapsProvider.terminate();
        }
        super.onTerminate();
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
    public void onConfigurationChanged(Configuration configuration) {
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
        firebaseCrashlytics = FirebaseCrashlytics.getInstance();
        firebaseAnalytics.setAnalyticsCollectionEnabled(ExteraConfig.useGoogleAnalytics);
        firebaseCrashlytics.setCrashlyticsCollectionEnabled(ExteraConfig.useGoogleCrashlytics);
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
            FileLog.m1133d("No valid " + getPushProvider().getLogTitle() + " APK found.");
        }
        SharedConfig.pushStringStatus = "__NO_GOOGLE_PLAY_SERVICES__";
        PushListenerController.sendRegistrationToServer(getPushProvider().getPushType(), null);
    }

    private boolean checkPlayServices() {
        try {
            return GooglePlayServicesUtil.isGooglePlayServicesAvailable(this) == 0;
        } catch (Exception e) {
            FileLog.m1136e(e);
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
                if (Build.VERSION.SDK_INT < 24 || networkCallback != null) {
                    return;
                }
                networkCallback = new ConnectivityManager.NetworkCallback() { // from class: org.telegram.messenger.ApplicationLoader.3
                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onAvailable(Network network) {
                        ApplicationLoader.lastKnownNetworkType = -1;
                        ApplicationLoader.checkProxyForVpnState();
                    }

                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                        ApplicationLoader.lastKnownNetworkType = -1;
                        ApplicationLoader.checkProxyForVpnState();
                    }

                    @Override // android.net.ConnectivityManager.NetworkCallback
                    public void onLost(Network network) {
                        ApplicationLoader.lastKnownNetworkType = -1;
                        ApplicationLoader.checkProxyForVpnState();
                    }
                };
                connectivityManager.registerDefaultNetworkCallback(networkCallback);
            } catch (Throwable unused) {
            }
        }
    }

    public static void checkProxyForVpnState() {
        if (applicationContext == null) {
            return;
        }
        try {
            boolean zIsVpnEnabled = isVpnEnabled();
            SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
            boolean z = globalMainSettings.getBoolean(PREF_PROXY_AUTO_DISABLED_BY_VPN, false);
            if (!ExteraConfig.doNotUseProxyWithVpn) {
                if (!z || zIsVpnEnabled) {
                    return;
                }
                String string = globalMainSettings.getString("proxy_ip", _UrlKt.FRAGMENT_ENCODE_SET);
                int i = globalMainSettings.getInt("proxy_port", 1080);
                String string2 = globalMainSettings.getString("proxy_user", _UrlKt.FRAGMENT_ENCODE_SET);
                String string3 = globalMainSettings.getString("proxy_pass", _UrlKt.FRAGMENT_ENCODE_SET);
                String string4 = globalMainSettings.getString("proxy_secret", _UrlKt.FRAGMENT_ENCODE_SET);
                boolean z2 = globalMainSettings.getBoolean(PREF_PROXY_AUTO_RESTORE_CALLS, false);
                SharedPreferences.Editor editorRemove = globalMainSettings.edit().putBoolean(PREF_PROXY_AUTO_DISABLED_BY_VPN, false).remove(PREF_PROXY_AUTO_RESTORE_CALLS);
                if (!TextUtils.isEmpty(string)) {
                    editorRemove.putBoolean("proxy_enabled", true);
                    editorRemove.putBoolean("proxy_enabled_calls", z2);
                }
                editorRemove.apply();
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                ConnectionsManager.setProxySettings(true, string, i, string2, string3, string4);
                NotificationCenter.getGlobalInstance().postNotificationNameOnUIThread(NotificationCenter.proxySettingsChanged, new Object[0]);
                return;
            }
            if (zIsVpnEnabled) {
                if (z) {
                    return;
                }
                boolean z3 = globalMainSettings.getBoolean("proxy_enabled", false);
                String string5 = globalMainSettings.getString("proxy_ip", _UrlKt.FRAGMENT_ENCODE_SET);
                if (z3 && !TextUtils.isEmpty(string5)) {
                    globalMainSettings.edit().putBoolean(PREF_PROXY_AUTO_DISABLED_BY_VPN, true).putBoolean(PREF_PROXY_AUTO_RESTORE_CALLS, globalMainSettings.getBoolean("proxy_enabled_calls", false)).putBoolean("proxy_enabled", false).apply();
                    ConnectionsManager.setProxySettings(false, _UrlKt.FRAGMENT_ENCODE_SET, 0, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
                    NotificationCenter.getGlobalInstance().postNotificationNameOnUIThread(NotificationCenter.proxySettingsChanged, new Object[0]);
                    return;
                }
                return;
            }
            if (z) {
                String string6 = globalMainSettings.getString("proxy_ip", _UrlKt.FRAGMENT_ENCODE_SET);
                int i2 = globalMainSettings.getInt("proxy_port", 1080);
                String string7 = globalMainSettings.getString("proxy_user", _UrlKt.FRAGMENT_ENCODE_SET);
                String string8 = globalMainSettings.getString("proxy_pass", _UrlKt.FRAGMENT_ENCODE_SET);
                String string9 = globalMainSettings.getString("proxy_secret", _UrlKt.FRAGMENT_ENCODE_SET);
                boolean z4 = globalMainSettings.getBoolean(PREF_PROXY_AUTO_RESTORE_CALLS, false);
                SharedPreferences.Editor editorRemove2 = globalMainSettings.edit().putBoolean(PREF_PROXY_AUTO_DISABLED_BY_VPN, false).remove(PREF_PROXY_AUTO_RESTORE_CALLS);
                if (!TextUtils.isEmpty(string6)) {
                    editorRemove2.putBoolean("proxy_enabled", true);
                    editorRemove2.putBoolean("proxy_enabled_calls", z4);
                }
                editorRemove2.apply();
                if (TextUtils.isEmpty(string6)) {
                    return;
                }
                ConnectionsManager.setProxySettings(true, string6, i2, string7, string8, string9);
                NotificationCenter.getGlobalInstance().postNotificationNameOnUIThread(NotificationCenter.proxySettingsChanged, new Object[0]);
            }
        } catch (Throwable th) {
            FileLog.m1136e(th);
        }
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
            FileLog.m1136e(e);
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
            FileLog.m1136e(e);
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
            FileLog.m1136e(e);
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
        int i;
        try {
            ensureCurrentNetworkGet(false);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (currentNetworkInfo == null) {
            return 0;
        }
        if (currentNetworkInfo.getType() != 1 && currentNetworkInfo.getType() != 9) {
            return currentNetworkInfo.isRoaming() ? 2 : 0;
        }
        if (Build.VERSION.SDK_INT >= 24 && (((i = lastKnownNetworkType) == 0 || i == 1) && System.currentTimeMillis() - lastNetworkCheckTypeTime < 5000)) {
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
            FileLog.m1136e(e);
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
            FileLog.m1136e(e);
            return true;
        }
    }

    public static boolean isNetworkOnline() {
        boolean zIsNetworkOnlineRealtime = isNetworkOnlineRealtime();
        if (BuildVars.DEBUG_PRIVATE_VERSION && zIsNetworkOnlineRealtime != isNetworkOnlineFast()) {
            FileLog.m1133d("network online mismatch");
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
            FileLog.m1136e(e);
            return true;
        }
    }

    public IUpdateLayout takeUpdateLayout(Activity activity, ViewGroup viewGroup) {
        return new UpdateLayout(activity, viewGroup);
    }
}
