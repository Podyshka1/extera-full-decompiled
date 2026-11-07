package org.telegram.tgnet;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.Keep;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import com.exteragram.messenger.feed.FeedRequestNormalizer;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.hooks.PluginsHooks;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InterfaceAddress;
import java.net.NetworkInterface;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BaseController;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.CaptchaController;
import org.telegram.messenger.EmuDetector;
import org.telegram.messenger.FileLoadOperation;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FileUploadOperation;
import org.telegram.messenger.KeepAliveJob;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.StatsController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.VideoPlayer;
import org.telegram.utils.proxy.ProxySettings;
import org.telegram.utils.proxy.WebProxyConnectionTester;
import org.telegram.utils.proxy.WebProxyTransport;

/* JADX INFO: loaded from: classes.dex */
public class ConnectionsManager extends BaseController {
    private static final int CORE_POOL_SIZE;
    public static final int CPU_COUNT;
    public static final int ConnectionStateConnected = 3;
    public static final int ConnectionStateConnecting = 1;
    public static final int ConnectionStateConnectingToProxy = 4;
    public static final int ConnectionStateUpdating = 5;
    public static final int ConnectionStateWaitingForNetwork = 2;
    public static final int ConnectionTypeDownload = 2;
    public static final int ConnectionTypeDownload2 = 65538;
    public static final int ConnectionTypeGeneric = 1;
    public static final int ConnectionTypePush = 8;
    public static final int ConnectionTypeUpload = 4;
    private static final String DEBUG_DNS_CONFIG_KEY = "ipconfigv3_override";
    private static final String DEBUG_DNS_PREFS = "debugdnsconfig";
    public static final int DEFAULT_DATACENTER_ID = Integer.MAX_VALUE;
    public static final Executor DNS_THREAD_POOL_EXECUTOR;
    public static final int FileTypeAudio = 50331648;
    public static final int FileTypeFile = 67108864;
    public static final int FileTypePhoto = 16777216;
    public static final int FileTypeVideo = 33554432;
    private static final ConnectionsManager[] Instance;
    private static final int KEEP_ALIVE_SECONDS = 30;
    private static final int MAXIMUM_POOL_SIZE;
    public static final int RequestFlagCanCompress = 4;
    public static final int RequestFlagDoNotWaitFloodWait = 1024;
    public static final int RequestFlagEnableUnauthorized = 1;
    public static final int RequestFlagFailOnServerErrors = 2;
    public static final int RequestFlagFailOnServerErrorsExceptFloodWait = 65536;
    public static final int RequestFlagForceDownload = 32;
    public static final int RequestFlagInvokeAfter = 64;
    public static final int RequestFlagListenAfterCancel = 2048;
    public static final int RequestFlagNeedQuickAck = 128;
    public static final int RequestFlagTryDifferentDc = 16;
    public static final int RequestFlagWithoutLogin = 8;
    public static final byte USE_IPV4_IPV6_RANDOM = 2;
    public static final byte USE_IPV4_ONLY = 0;
    public static final byte USE_IPV6_ONLY = 1;
    private static AsyncTask currentTask;
    private static HashMap<String, ResolvedDomain> dnsCache;
    private static int lastClassGuid;
    private static long lastDnsRequestTime;
    public static long lastPremiumFloodWaitShown;
    private static HashMap<String, ResolveHostByNameTask> resolvingHostnameTasks = new HashMap<>();
    private static final BlockingQueue<Runnable> sPoolWorkQueue;
    private static final ThreadFactory sThreadFactory;
    private boolean appPaused;
    private int appResumeCount;
    private int connectionState;
    private boolean forceTryIpV6;
    private final PluginsHooks hooks;
    private boolean isUpdating;
    private long lastPauseTime;
    private AtomicInteger lastRequestToken;
    private final ConcurrentHashMap<Integer, RequestCallbacks> requestCallbacks;

    public interface INativeTlTest {
        boolean test(long j);
    }

    public static native byte[] nativeTestGenerateClientHello(String str);

    public static native void native_applyDatacenterAddress(int i, int i2, String str, int i3);

    public static native void native_applyDnsConfig(int i, long j, String str, int i2);

    public static native void native_bindRequestToGuid(int i, int i2, int i3);

    public static native void native_cancelRequest(int i, int i2, boolean z);

    public static native void native_cancelRequestsForGuid(int i, int i2);

    public static native long native_checkProxy(int i, String str, int i2, String str2, String str3, String str4, RequestTimeDelegate requestTimeDelegate);

    public static native void native_cleanUp(int i, boolean z);

    public static native void native_discardConnection(int i, int i2, int i3);

    public static native void native_failNotRunningRequest(int i, int i2);

    public static native int native_getConnectionState(int i);

    public static native long native_getCurrentAuthKeyId(int i);

    public static native int native_getCurrentDatacenterId(int i);

    public static native int native_getCurrentPingTime(int i);

    public static native int native_getCurrentTime(int i);

    public static native long native_getCurrentTimeMillis(int i);

    public static native int native_getTimeDifference(int i);

    public static native void native_init(int i, int i2, int i3, int i4, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, int i5, long j, boolean z, boolean z2, boolean z3, int i6, int i7);

    public static native boolean native_isGoodPrime(byte[] bArr, int i);

    public static native int native_isTestBackend(int i);

    public static native void native_moveDatacenter(int i, int i2);

    public static native void native_onHostNameResolved(String str, long j, String str2);

    public static native void native_pauseNetwork(int i);

    public static native void native_receivedCaptchaResult(int i, int[] iArr, String str);

    public static native void native_receivedIntegrityCheckClassic(int i, int i2, String str, String str2);

    public static native void native_resumeNetwork(int i, boolean z);

    public static native void native_sendRequest(int i, long j, int i2, int i3, int i4, boolean z, int i5);

    public static native void native_setIpStrategy(int i, byte b2);

    public static native void native_setJava(boolean z);

    public static native void native_setLangCode(int i, String str);

    public static native void native_setNetworkAvailable(int i, boolean z, int i2, boolean z2);

    public static native void native_setProxySettings(int i, String str, int i2, String str2, String str3, String str4);

    public static native void native_setPushConnectionEnabled(int i, boolean z);

    public static native void native_setRegId(int i, String str);

    public static native void native_setSystemLangCode(int i, String str);

    public static native void native_setUserId(int i, long j);

    public static native void native_switchBackend(int i, boolean z);

    public static native boolean native_test_AuthAuthorization(long j);

    public static native void native_updateDcSettings(int i);

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = iAvailableProcessors;
        int iMax = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        CORE_POOL_SIZE = iMax;
        int i = (iAvailableProcessors * 2) + 1;
        MAXIMUM_POOL_SIZE = i;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(128);
        sPoolWorkQueue = linkedBlockingQueue;
        ThreadFactory threadFactory = new ThreadFactory() { // from class: org.telegram.tgnet.ConnectionsManager.1
            private final AtomicInteger mCount = new AtomicInteger(1);

            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "DnsAsyncTask #" + this.mCount.getAndIncrement());
            }
        };
        sThreadFactory = threadFactory;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iMax, i, 30L, TimeUnit.SECONDS, linkedBlockingQueue, threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        DNS_THREAD_POOL_EXECUTOR = threadPoolExecutor;
        dnsCache = new HashMap<>();
        lastClassGuid = 1;
        Instance = new ConnectionsManager[16];
        lastPremiumFloodWaitShown = 0L;
    }

    public void setForceTryIpV6(boolean z) {
        if (this.forceTryIpV6 != z) {
            this.forceTryIpV6 = z;
            checkConnection();
        }
    }

    public void discardConnection(final int i, final int i2) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$discardConnection$0(i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$discardConnection$0(int i, int i2) {
        native_discardConnection(this.currentAccount, i, i2);
    }

    public void failNotRunningRequest(final int i) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$failNotRunningRequest$1(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$failNotRunningRequest$1(int i) {
        native_failNotRunningRequest(this.currentAccount, i);
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class ResolvedDomain {
        public ArrayList<String> addresses;
        long ttl;

        public ResolvedDomain(ArrayList<String> arrayList, long j) {
            this.addresses = arrayList;
            this.ttl = j;
        }

        public String getAddress() {
            ArrayList<String> arrayList = this.addresses;
            return arrayList.get(Utilities.random.nextInt(arrayList.size()));
        }
    }

    public static ConnectionsManager getInstance(int i) {
        ConnectionsManager connectionsManager;
        ConnectionsManager[] connectionsManagerArr = Instance;
        ConnectionsManager connectionsManager2 = connectionsManagerArr[i];
        if (connectionsManager2 != null) {
            return connectionsManager2;
        }
        synchronized (ConnectionsManager.class) {
            try {
                connectionsManager = connectionsManagerArr[i];
                if (connectionsManager == null) {
                    connectionsManager = new ConnectionsManager(i);
                    connectionsManagerArr[i] = connectionsManager;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return connectionsManager;
    }

    public ConnectionsManager(int i) {
        String str;
        String lowerCase;
        String strConcat;
        String str2;
        String lowerCase2;
        SharedPreferences sharedPreferences;
        super(i);
        this.hooks = PluginsController.getInstance();
        this.lastPauseTime = System.currentTimeMillis();
        this.appPaused = true;
        this.lastRequestToken = new AtomicInteger(1);
        this.requestCallbacks = new ConcurrentHashMap<>();
        this.connectionState = native_getConnectionState(this.currentAccount);
        File filesDirFixed = ApplicationLoader.getFilesDirFixed();
        if (i != 0) {
            File file = new File(filesDirFixed, "account" + i);
            file.mkdirs();
            filesDirFixed = file;
        }
        String string = filesDirFixed.toString();
        boolean zIsPushConnectionEnabled = isPushConnectionEnabled();
        try {
            lowerCase2 = LocaleController.getSystemLocaleStringIso639().toLowerCase();
            lowerCase = LocaleController.getLocaleStringIso639().toLowerCase();
            str2 = Build.MANUFACTURER + Build.MODEL;
            PackageInfo packageInfo = ApplicationLoader.applicationContext.getPackageManager().getPackageInfo(ApplicationLoader.applicationContext.getPackageName(), 0);
            strConcat = packageInfo.versionName + " (" + packageInfo.versionCode + ")";
            if (BuildVars.DEBUG_PRIVATE_VERSION) {
                strConcat = strConcat.concat(" pbeta");
            } else if (BuildVars.DEBUG_VERSION) {
                strConcat = strConcat.concat(" beta");
            }
            str = "SDK " + Build.VERSION.SDK_INT;
        } catch (Exception unused) {
            str = "SDK " + Build.VERSION.SDK_INT;
            lowerCase = _UrlKt.FRAGMENT_ENCODE_SET;
            strConcat = "App version unknown";
            str2 = "Android unknown";
            lowerCase2 = "en";
        }
        String str3 = lowerCase;
        lowerCase2 = lowerCase2.trim().length() == 0 ? "en" : lowerCase2;
        String str4 = str2.trim().length() == 0 ? "Android unknown" : str2;
        String str5 = strConcat.trim().length() == 0 ? "App version unknown" : strConcat;
        str = str.trim().length() == 0 ? "SDK Unknown" : str;
        getUserConfig().loadConfig();
        String regId = getRegId();
        String certificateSHA256Fingerprint = AndroidUtilities.getCertificateSHA256Fingerprint();
        int rawOffset = (TimeZone.getDefault().getRawOffset() + TimeZone.getDefault().getDSTSavings()) / 1000;
        if (this.currentAccount == 0) {
            sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
        } else {
            sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig" + this.currentAccount, 0);
        }
        this.forceTryIpV6 = sharedPreferences.getBoolean("forceTryIpV6", false);
        init(SharedConfig.buildVersion(), TLRPC.LAYER, BuildVars.getExteraAppId(), str4, str, str5, str3, lowerCase2, string, FileLog.getNetworkLogPath(), regId, certificateSHA256Fingerprint, rawOffset, getUserConfig().getClientUserId(), getUserConfig().getCurrentUser() != null ? getUserConfig().getCurrentUser().premium : false, zIsPushConnectionEnabled);
    }

    private static SharedPreferences getDebugDnsPreferences() {
        return ApplicationLoader.applicationContext.getSharedPreferences(DEBUG_DNS_PREFS, 0);
    }

    public static String getDebugDnsConfigOverride() {
        return getDebugDnsPreferences().getString(DEBUG_DNS_CONFIG_KEY, _UrlKt.FRAGMENT_ENCODE_SET);
    }

    public static void setDebugDnsConfigOverride(String str) {
        SharedPreferences.Editor editorEdit = getDebugDnsPreferences().edit();
        if (TextUtils.isEmpty(str)) {
            editorEdit.remove(DEBUG_DNS_CONFIG_KEY);
        } else {
            editorEdit.putString(DEBUG_DNS_CONFIG_KEY, str.trim());
        }
        editorEdit.apply();
    }

    private static boolean applyDnsConfigString(int i, String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(bArrDecode.length);
            nativeByteBuffer.writeBytes(bArrDecode);
            native_applyDnsConfig(i, nativeByteBuffer.address, AccountInstance.getInstance(i).getUserConfig().getClientPhone(), i2);
            return true;
        } catch (Throwable th) {
            FileLog.m992e(th);
            return false;
        }
    }

    private static boolean applyStoredDnsConfigOverride(int i) {
        return applyDnsConfigString(i, getDebugDnsConfigOverride(), 0);
    }

    public static boolean setAndApplyDebugDnsConfigOverride(int i, String str) {
        setDebugDnsConfigOverride(str);
        return applyStoredDnsConfigOverride(i);
    }

    private String getRegId() {
        String str = SharedConfig.pushString;
        if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(SharedConfig.pushStringStatus)) {
            str = SharedConfig.pushStringStatus;
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = "__FIREBASE_GENERATING_SINCE_" + getCurrentTime() + "__";
        SharedConfig.pushStringStatus = str2;
        return str2;
    }

    public boolean isPushConnectionEnabled() {
        SharedPreferences globalNotificationsSettings = MessagesController.getGlobalNotificationsSettings();
        if (globalNotificationsSettings.contains("pushConnection")) {
            return globalNotificationsSettings.getBoolean("pushConnection", true);
        }
        return MessagesController.getMainSettings(UserConfig.selectedAccount).getBoolean("backgroundConnection", false);
    }

    public long getCurrentTimeMillis() {
        return native_getCurrentTimeMillis(this.currentAccount);
    }

    public int getCurrentTime() {
        return native_getCurrentTime(this.currentAccount);
    }

    public int getCurrentDatacenterId() {
        return native_getCurrentDatacenterId(this.currentAccount);
    }

    public long getCurrentAuthKeyId() {
        return native_getCurrentAuthKeyId(this.currentAccount);
    }

    public int getTimeDifference() {
        return native_getTimeDifference(this.currentAccount);
    }

    public <T extends TLObject> int sendRequestTyped(TLMethod<T> tLMethod, Utilities.Callback2<T, TLRPC.TL_error> callback2) {
        return sendRequestTyped(tLMethod, null, callback2);
    }

    public <T extends TLObject> int sendRequestTyped(TLMethod<T> tLMethod, Executor executor, Utilities.Callback2<T, TLRPC.TL_error> callback2) {
        return sendRequestTyped(tLMethod, executor, callback2, Integer.MAX_VALUE, 0);
    }

    public <T extends TLObject> int sendRequestTyped(TLMethod<T> tLMethod, Executor executor, Utilities.Callback2<T, TLRPC.TL_error> callback2, int i) {
        return sendRequestTyped(tLMethod, executor, callback2, Integer.MAX_VALUE, i);
    }

    public <T extends TLObject> int sendRequestTyped(TLMethod<T> tLMethod, final Executor executor, final Utilities.Callback2<T, TLRPC.TL_error> callback2, int i, int i2) {
        return sendRequest(tLMethod, new RequestDelegate() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                ConnectionsManager.m6451$r8$lambda$8rHrGzkyrliJMokXSq2auMo358(executor, callback2, tLObject, tL_error);
            }
        }, null, null, null, i2, i, 1, true);
    }

    /* JADX INFO: renamed from: $r8$lambda$8rHrGzkyrl-iJMokXSq2auMo358, reason: not valid java name */
    public static /* synthetic */ void m6451$r8$lambda$8rHrGzkyrliJMokXSq2auMo358(Executor executor, final Utilities.Callback2 callback2, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (executor != null) {
            executor.execute(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.run(tLObject, tL_error);
                }
            });
        } else {
            callback2.run(tLObject, tL_error);
        }
    }

    public int sendRequestTypedAndProcessUpdates(TLMethod<TLRPC.Updates> tLMethod, Executor executor, Utilities.Callback2<TLRPC.Updates, TLRPC.TL_error> callback2) {
        return sendRequestTypedAndProcessUpdates(tLMethod, executor, callback2, Integer.MAX_VALUE, 0);
    }

    public int sendRequestTypedAndProcessUpdates(TLMethod<TLRPC.Updates> tLMethod, final Executor executor, final Utilities.Callback2<TLRPC.Updates, TLRPC.TL_error> callback2, int i, int i2) {
        return sendRequestTyped(tLMethod, null, new Utilities.Callback2() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda19
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$sendRequestTypedAndProcessUpdates$5(executor, callback2, (TLRPC.Updates) obj, (TLRPC.TL_error) obj2);
            }
        }, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendRequestTypedAndProcessUpdates$5(Executor executor, final Utilities.Callback2 callback2, final TLRPC.Updates updates, final TLRPC.TL_error tL_error) {
        if (updates != null) {
            getMessagesController().processUpdates(updates, false);
        }
        if (executor != null) {
            executor.execute(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    callback2.run(updates, tL_error);
                }
            });
        } else {
            callback2.run(updates, tL_error);
        }
    }

    public int sendRequest(TLObject tLObject, RequestDelegate requestDelegate) {
        return sendRequest(tLObject, requestDelegate, (QuickAckDelegate) null, 0);
    }

    public int sendRequest(TLObject tLObject, RequestDelegate requestDelegate, int i) {
        return sendRequest(tLObject, requestDelegate, null, null, null, i, Integer.MAX_VALUE, 1, true);
    }

    public int sendRequest(TLObject tLObject, RequestDelegate requestDelegate, int i, int i2) {
        return sendRequest(tLObject, requestDelegate, null, null, null, i, Integer.MAX_VALUE, i2, true);
    }

    public int sendRequest(TLObject tLObject, RequestDelegateTimestamp requestDelegateTimestamp, int i, int i2, int i3) {
        return sendRequest(tLObject, null, requestDelegateTimestamp, null, null, i, i3, i2, true);
    }

    public int sendRequest(TLObject tLObject, RequestDelegate requestDelegate, QuickAckDelegate quickAckDelegate, int i) {
        return sendRequest(tLObject, requestDelegate, null, quickAckDelegate, null, i, Integer.MAX_VALUE, 1, true);
    }

    public int sendRequest(TLObject tLObject, RequestDelegate requestDelegate, QuickAckDelegate quickAckDelegate, WriteToSocketDelegate writeToSocketDelegate, int i, int i2, int i3, boolean z) {
        return sendRequest(tLObject, requestDelegate, null, quickAckDelegate, writeToSocketDelegate, i, i2, i3, z);
    }

    public int sendRequestSync(TLObject tLObject, RequestDelegate requestDelegate, QuickAckDelegate quickAckDelegate, WriteToSocketDelegate writeToSocketDelegate, int i, int i2, int i3, boolean z) {
        int andIncrement = this.lastRequestToken.getAndIncrement();
        lambda$sendRequest$6(tLObject, requestDelegate, null, quickAckDelegate, writeToSocketDelegate, i, i2, i3, z, andIncrement);
        return andIncrement;
    }

    public int sendRequest(final TLObject tLObject, final RequestDelegate requestDelegate, final RequestDelegateTimestamp requestDelegateTimestamp, final QuickAckDelegate quickAckDelegate, final WriteToSocketDelegate writeToSocketDelegate, final int i, final int i2, final int i3, final boolean z) {
        final int andIncrement = this.lastRequestToken.getAndIncrement();
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendRequest$6(tLObject, requestDelegate, requestDelegateTimestamp, quickAckDelegate, writeToSocketDelegate, i, i2, i3, z, andIncrement);
            }
        });
        return andIncrement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: sendRequestInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$sendRequest$6(TLObject tLObject, final RequestDelegate requestDelegate, final RequestDelegateTimestamp requestDelegateTimestamp, final QuickAckDelegate quickAckDelegate, final WriteToSocketDelegate writeToSocketDelegate, final int i, final int i2, final int i3, final boolean z, final int i4) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("send request " + tLObject + " with token = " + i4);
        }
        try {
            final String simpleName = tLObject.getClass().getSimpleName();
            TLObject tLObjectExecutePreRequestHook = this.hooks.executePreRequestHook(simpleName, this.currentAccount, tLObject);
            if (tLObjectExecutePreRequestHook == null) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m989d("Request cancelled by pre-request hook: ".concat(simpleName));
                }
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConnectionsManager.$r8$lambda$e_ePAvFupTBLYpu2k55etfxOA4U(requestDelegate, requestDelegateTimestamp);
                    }
                });
                return;
            }
            final TLObject tLObjectNormalize = FeedRequestNormalizer.normalize(this.currentAccount, tLObjectExecutePreRequestHook);
            NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(tLObjectNormalize.getObjectSize());
            tLObjectNormalize.serializeToStream(nativeByteBuffer);
            tLObjectNormalize.freeResources();
            final long jCurrentTimeMillis = (!(BuildVars.DEBUG_PRIVATE_VERSION && BuildVars.LOGS_ENABLED) && (i3 & 2) == 0) ? 0L : System.currentTimeMillis();
            listen(i4, new RequestDelegateInternal() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda15
                @Override // org.telegram.tgnet.RequestDelegateInternal
                public final void run(long j, int i5, String str, int i6, long j2, long j3, int i7) {
                    this.f$0.lambda$sendRequestInternal$9(tLObjectNormalize, i3, jCurrentTimeMillis, requestDelegate, requestDelegateTimestamp, quickAckDelegate, writeToSocketDelegate, i, i2, z, i4, simpleName, j, i5, str, i6, j2, j3, i7);
                }
            }, quickAckDelegate, writeToSocketDelegate);
            native_sendRequest(this.currentAccount, nativeByteBuffer.address, i, i2, i3, z, i4);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    public static /* synthetic */ void $r8$lambda$e_ePAvFupTBLYpu2k55etfxOA4U(RequestDelegate requestDelegate, RequestDelegateTimestamp requestDelegateTimestamp) {
        if (requestDelegate != null) {
            requestDelegate.run(null, null);
        } else if (requestDelegateTimestamp != null) {
            requestDelegateTimestamp.run(null, null, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendRequestInternal$9(TLObject tLObject, int i, long j, final RequestDelegate requestDelegate, final RequestDelegateTimestamp requestDelegateTimestamp, QuickAckDelegate quickAckDelegate, WriteToSocketDelegate writeToSocketDelegate, int i2, int i3, boolean z, int i4, String str, long j2, int i5, String str2, int i6, final long j3, long j4, int i7) {
        int iLimit;
        TLObject tLObjectDeserializeResponse;
        TLRPC.TL_error tL_error;
        String str3;
        TLRPC.TL_error tL_error2 = null;
        try {
            if (j2 != 0) {
                NativeByteBuffer nativeByteBufferWrap = NativeByteBuffer.wrap(j2);
                nativeByteBufferWrap.setDataSourceType(TLDataSourceType.NETWORK);
                nativeByteBufferWrap.reused = true;
                iLimit = nativeByteBufferWrap.limit();
                try {
                    tLObjectDeserializeResponse = tLObject.deserializeResponse(nativeByteBufferWrap, nativeByteBufferWrap.readInt32(true), true);
                } catch (Exception e) {
                    if (BuildVars.DEBUG_PRIVATE_VERSION) {
                        throw e;
                    }
                    FileLog.fatal(e);
                    return;
                }
            } else if (str2 != null) {
                TLRPC.TL_error tL_error3 = new TLRPC.TL_error();
                tL_error3.code = i5;
                tL_error3.text = str2;
                if (BuildVars.LOGS_ENABLED && i5 != -2000) {
                    FileLog.m990e(tLObject + " got error " + tL_error3.code + " " + tL_error3.text);
                }
                iLimit = 0;
                tLObjectDeserializeResponse = null;
                tL_error2 = tL_error3;
            } else {
                iLimit = 0;
                tLObjectDeserializeResponse = null;
            }
            if ((i & 2) != 0 && VideoPlayer.activePlayers.isEmpty()) {
                DefaultBandwidthMeter.getSingletonInstance(ApplicationLoader.applicationContext).onTransfer(iLimit, Math.max(0L, (System.currentTimeMillis() - j) - ((long) native_getCurrentPingTime(this.currentAccount))));
            }
            if (BuildVars.DEBUG_PRIVATE_VERSION && !getUserConfig().isClientActivated() && tL_error2 != null && tL_error2.code == 400 && Objects.equals(tL_error2.text, "CONNECTION_NOT_INITED")) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m989d("Cleanup keys for " + this.currentAccount + " because of CONNECTION_NOT_INITED");
                }
                cleanup(true);
                sendRequest(tLObject, requestDelegate, requestDelegateTimestamp, quickAckDelegate, writeToSocketDelegate, i2, i3, i, z);
                return;
            }
            if (tLObjectDeserializeResponse != null) {
                tLObjectDeserializeResponse.networkType = i6;
            }
            if (BuildVars.LOGS_ENABLED) {
                StringBuilder sb = new StringBuilder("java received ");
                sb.append(tLObjectDeserializeResponse);
                if (tL_error2 != null) {
                    str3 = " error = " + tL_error2;
                } else {
                    str3 = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                sb.append(str3);
                sb.append(" messageId = 0x");
                sb.append(Long.toHexString(j4));
                FileLog.m989d(sb.toString());
                tL_error = tL_error2;
                FileLog.dumpResponseAndRequest(this.currentAccount, tLObject, tLObjectDeserializeResponse, tL_error, j4, j, i4);
            } else {
                tL_error = tL_error2;
            }
            PluginsHooks.PostRequestResult postRequestResultExecutePostRequestHook = this.hooks.executePostRequestHook(str, this.currentAccount, tLObjectDeserializeResponse, tL_error);
            final TLObject response = postRequestResultExecutePostRequestHook.getResponse();
            final TLRPC.TL_error error = postRequestResultExecutePostRequestHook.getError();
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$sendRequestInternal$8(requestDelegate, response, error, requestDelegateTimestamp, j3);
                }
            });
        } catch (Exception e2) {
            FileLog.m992e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendRequestInternal$8(RequestDelegate requestDelegate, TLObject tLObject, TLRPC.TL_error tL_error, RequestDelegateTimestamp requestDelegateTimestamp, long j) {
        if (requestDelegate != null) {
            requestDelegate.run(tLObject, tL_error);
        } else if (requestDelegateTimestamp != null) {
            requestDelegateTimestamp.run(tLObject, tL_error, j);
        } else if (tLObject instanceof TLRPC.Updates) {
            KeepAliveJob.finishJob();
            AccountInstance.getInstance(this.currentAccount).getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        }
        if (tLObject != null) {
            tLObject.freeResources();
        }
    }

    public static class RequestCallbacks {
        public Runnable onCancelled;
        public RequestDelegateInternal onComplete;
        public QuickAckDelegate onQuickAck;
        public WriteToSocketDelegate onWriteToSocket;

        public RequestCallbacks(RequestDelegateInternal requestDelegateInternal, QuickAckDelegate quickAckDelegate, WriteToSocketDelegate writeToSocketDelegate) {
            this.onComplete = requestDelegateInternal;
            this.onQuickAck = quickAckDelegate;
            this.onWriteToSocket = writeToSocketDelegate;
        }
    }

    private void listen(int i, RequestDelegateInternal requestDelegateInternal, QuickAckDelegate quickAckDelegate, WriteToSocketDelegate writeToSocketDelegate) {
        this.requestCallbacks.put(Integer.valueOf(i), new RequestCallbacks(requestDelegateInternal, quickAckDelegate, writeToSocketDelegate));
    }

    private void listenCancel(int i, Runnable runnable) {
        RequestCallbacks requestCallbacks = this.requestCallbacks.get(Integer.valueOf(i));
        if (requestCallbacks != null) {
            requestCallbacks.onCancelled = runnable;
        }
    }

    public static void onRequestClear(int i, int i2, boolean z) {
        ConnectionsManager connectionsManager = getInstance(i);
        if (connectionsManager == null) {
            return;
        }
        RequestCallbacks requestCallbacks = connectionsManager.requestCallbacks.get(Integer.valueOf(i2));
        if (!z) {
            if (requestCallbacks != null) {
                connectionsManager.requestCallbacks.remove(Integer.valueOf(i2));
            }
        } else if (requestCallbacks != null) {
            Runnable runnable = requestCallbacks.onCancelled;
            if (runnable != null) {
                runnable.run();
            }
            connectionsManager.requestCallbacks.remove(Integer.valueOf(i2));
        }
    }

    public static void onRequestComplete(int i, int i2, long j, int i3, String str, int i4, long j2, long j3, int i5) {
        RequestDelegateInternal requestDelegateInternal;
        ConnectionsManager connectionsManager = getInstance(i);
        if (connectionsManager == null) {
            return;
        }
        RequestCallbacks requestCallbacks = connectionsManager.requestCallbacks.get(Integer.valueOf(i2));
        connectionsManager.requestCallbacks.remove(Integer.valueOf(i2));
        if (requestCallbacks == null || (requestDelegateInternal = requestCallbacks.onComplete) == null) {
            return;
        }
        requestDelegateInternal.run(j, i3, str, i4, j2, j3, i5);
    }

    public static void onRequestQuickAck(int i, int i2) {
        RequestCallbacks requestCallbacks;
        QuickAckDelegate quickAckDelegate;
        ConnectionsManager connectionsManager = getInstance(i);
        if (connectionsManager == null || (requestCallbacks = connectionsManager.requestCallbacks.get(Integer.valueOf(i2))) == null || (quickAckDelegate = requestCallbacks.onQuickAck) == null) {
            return;
        }
        quickAckDelegate.run();
    }

    public static void onRequestWriteToSocket(int i, int i2) {
        RequestCallbacks requestCallbacks;
        WriteToSocketDelegate writeToSocketDelegate;
        ConnectionsManager connectionsManager = getInstance(i);
        if (connectionsManager == null || (requestCallbacks = connectionsManager.requestCallbacks.get(Integer.valueOf(i2))) == null || (writeToSocketDelegate = requestCallbacks.onWriteToSocket) == null) {
            return;
        }
        writeToSocketDelegate.run();
    }

    public void cancelRequest(int i, boolean z) {
        cancelRequest(i, z, null);
    }

    public void cancelRequest(final int i, final boolean z, final Runnable runnable) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelRequest$11(runnable, i, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelRequest$11(final Runnable runnable, int i, boolean z) {
        if (runnable != null) {
            listenCancel(i, new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Utilities.stageQueue.postRunnable(runnable);
                }
            });
        }
        native_cancelRequest(this.currentAccount, i, z);
    }

    public void cleanup(boolean z) {
        native_cleanUp(this.currentAccount, z);
    }

    public void cancelRequestsForGuid(final int i) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelRequestsForGuid$12(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelRequestsForGuid$12(int i) {
        native_cancelRequestsForGuid(this.currentAccount, i);
    }

    public void bindRequestToGuid(int i, int i2) {
        if (i2 == 0) {
            return;
        }
        native_bindRequestToGuid(this.currentAccount, i, i2);
    }

    public void applyDatacenterAddress(int i, String str, int i2) {
        native_applyDatacenterAddress(this.currentAccount, i, str, i2);
    }

    public int getConnectionState() {
        int i = this.connectionState;
        if (i == 3 && this.isUpdating) {
            return 5;
        }
        return i;
    }

    public void setUserId(long j) {
        native_setUserId(this.currentAccount, j);
    }

    public void checkConnection() {
        byte ipStrategy = getIpStrategy();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("selected ip strategy " + ((int) ipStrategy));
        }
        native_setIpStrategy(this.currentAccount, ipStrategy);
        native_setNetworkAvailable(this.currentAccount, ApplicationLoader.isNetworkOnline(), ApplicationLoader.getCurrentNetworkType(), ApplicationLoader.isConnectionSlow());
    }

    public void setPushConnectionEnabled(boolean z) {
        native_setPushConnectionEnabled(this.currentAccount, z);
    }

    public void init(int i, int i2, int i3, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, int i4, long j, boolean z, boolean z2) {
        String installerPackageName;
        String packageName;
        Context context;
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
        ProxySettings proxySettingsFromSharedPreferences = ProxySettings.fromSharedPreferences(sharedPreferences);
        if (sharedPreferences.getBoolean("proxy_enabled", false) && proxySettingsFromSharedPreferences.isValid()) {
            if (proxySettingsFromSharedPreferences.getType() == ProxySettings.Type.WEB) {
                int iStart = WebProxyTransport.start(proxySettingsFromSharedPreferences.getAddress(), proxySettingsFromSharedPreferences.getSecret());
                int i5 = this.currentAccount;
                if (iStart == 0) {
                    iStart = 9;
                }
                native_setProxySettings(i5, "127.0.0.1", iStart, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, proxySettingsFromSharedPreferences.getSecret());
            } else {
                native_setProxySettings(this.currentAccount, proxySettingsFromSharedPreferences.getAddress(), proxySettingsFromSharedPreferences.getPort(), proxySettingsFromSharedPreferences.getUser(), proxySettingsFromSharedPreferences.getPassword(), proxySettingsFromSharedPreferences.getSecret());
            }
        }
        try {
            context = ApplicationLoader.applicationContext;
        } catch (Throwable unused) {
        }
        if (Build.VERSION.SDK_INT >= 30) {
            InstallSourceInfo installSourceInfo = context.getPackageManager().getInstallSourceInfo(context.getPackageName());
            if (installSourceInfo == null) {
                installerPackageName = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                installerPackageName = installSourceInfo.getInitiatingPackageName();
                if (installerPackageName == null) {
                    try {
                        installerPackageName = installSourceInfo.getInstallingPackageName();
                    } catch (Throwable unused2) {
                    }
                }
            }
        } else {
            installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        }
        String str10 = installerPackageName == null ? _UrlKt.FRAGMENT_ENCODE_SET : installerPackageName;
        try {
            packageName = ApplicationLoader.applicationContext.getPackageName();
        } catch (Throwable unused3) {
            packageName = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        native_init(this.currentAccount, i, i2, i3, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, packageName == null ? _UrlKt.FRAGMENT_ENCODE_SET : packageName, i4, j, z, z2, ApplicationLoader.isNetworkOnline(), ApplicationLoader.getCurrentNetworkType(), SharedConfig.measureDevicePerformanceClass());
        checkConnection();
    }

    public static void setLangCode(String str) {
        String lowerCase = str.replace('_', SignatureVisitor.SUPER).toLowerCase();
        for (int i = 0; i < 16; i++) {
            native_setLangCode(i, lowerCase);
        }
    }

    public static void setRegId(String str, int i, String str2) {
        if (TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (TextUtils.isEmpty(str)) {
            str = "__FIREBASE_GENERATING_SINCE_" + getInstance(0).getCurrentTime() + "__";
            SharedConfig.pushStringStatus = str;
        }
        for (int i2 = 0; i2 < 16; i2++) {
            native_setRegId(i2, str);
        }
    }

    public static void setSystemLangCode(String str) {
        String lowerCase = str.replace('_', SignatureVisitor.SUPER).toLowerCase();
        for (int i = 0; i < 16; i++) {
            native_setSystemLangCode(i, lowerCase);
        }
    }

    public void switchBackend(boolean z) {
        MessagesController.getGlobalMainSettings().edit().remove("language_showed2").apply();
        native_switchBackend(this.currentAccount, z);
    }

    public boolean isTestBackend() {
        return native_isTestBackend(this.currentAccount) != 0;
    }

    public void resumeNetworkMaybe() {
        native_resumeNetwork(this.currentAccount, true);
    }

    public void updateDcSettings() {
        native_updateDcSettings(this.currentAccount);
    }

    public void setDefaultDatacenterId(int i) {
        native_moveDatacenter(this.currentAccount, i);
    }

    public long getPauseTime() {
        return this.lastPauseTime;
    }

    public long checkProxy(ProxySettings proxySettings, RequestTimeDelegate requestTimeDelegate) {
        if (proxySettings == null || !proxySettings.isValid()) {
            return 0L;
        }
        if (proxySettings.getType() == ProxySettings.Type.WEB) {
            WebProxyConnectionTester.getInstance().checkProxy(proxySettings, requestTimeDelegate, new WebProxyConnectionTester.TestImplementation() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda26
                @Override // org.telegram.utils.proxy.WebProxyConnectionTester.TestImplementation
                public final void doCheck(ProxySettings proxySettings2, int i, RequestTimeDelegate requestTimeDelegate2) {
                    this.f$0.checkWebProxyInternal(proxySettings2, i, requestTimeDelegate2);
                }
            });
            return 0L;
        }
        return native_checkProxy(this.currentAccount, proxySettings.getAddress(), proxySettings.getPort(), proxySettings.getUser(), proxySettings.getPassword(), proxySettings.getSecret(), requestTimeDelegate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkWebProxyInternal(ProxySettings proxySettings, int i, RequestTimeDelegate requestTimeDelegate) {
        native_checkProxy(this.currentAccount, "127.0.0.1", i, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, proxySettings.getSecret(), requestTimeDelegate);
    }

    public void setAppPaused(boolean z, boolean z2) {
        if (!z2) {
            this.appPaused = z;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("app paused = " + z);
            }
            int i = this.appResumeCount;
            if (z) {
                this.appResumeCount = i - 1;
            } else {
                this.appResumeCount = i + 1;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("app resume count " + this.appResumeCount);
            }
            if (this.appResumeCount < 0) {
                this.appResumeCount = 0;
            }
        }
        if (this.appResumeCount == 0) {
            if (this.lastPauseTime == 0) {
                this.lastPauseTime = System.currentTimeMillis();
            }
            native_pauseNetwork(this.currentAccount);
        } else {
            if (this.appPaused) {
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("reset app pause time");
            }
            if (this.lastPauseTime != 0 && System.currentTimeMillis() - this.lastPauseTime > 5000) {
                getContactsController().checkContacts();
            }
            this.lastPauseTime = 0L;
            native_resumeNetwork(this.currentAccount, false);
        }
    }

    public static void onUnparsedMessageReceived(long j, final int i, long j2) {
        try {
            NativeByteBuffer nativeByteBufferWrap = NativeByteBuffer.wrap(j);
            nativeByteBufferWrap.setDataSourceType(TLDataSourceType.NETWORK);
            nativeByteBufferWrap.reused = true;
            int int32 = nativeByteBufferWrap.readInt32(true);
            final TLObject tLObjectTLdeserialize = TLClassStore.Instance().TLdeserialize(nativeByteBufferWrap, int32, true);
            FileLog.dumpUnparsedMessage(tLObjectTLdeserialize, j2, i);
            if (tLObjectTLdeserialize instanceof TLRPC.Updates) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m989d("java received " + tLObjectTLdeserialize);
                }
                KeepAliveJob.finishJob();
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        AccountInstance.getInstance(i).getMessagesController().processUpdates((TLRPC.Updates) tLObjectTLdeserialize, false);
                    }
                });
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d(String.format("java received unknown constructor 0x%x", Integer.valueOf(int32)));
            }
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    public static void onUpdate(final int i) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AccountInstance.getInstance(i).getMessagesController().updateTimerProc();
            }
        });
    }

    public static void onSessionCreated(final int i) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                AccountInstance.getInstance(i).getMessagesController().getDifference();
            }
        });
    }

    public static void onConnectionStateChanged(final int i, final int i2) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.$r8$lambda$vesrs7ui0NfbkH31kWTCwAVPf64(i2, i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$vesrs7ui0NfbkH31kWTCwAVPf64(int i, int i2) {
        getInstance(i).connectionState = i2;
        AccountInstance.getInstance(i).getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateConnectionState, new Object[0]);
    }

    public static void onLogout(final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.$r8$lambda$6zNj5fPTduGwiMltIf87TS7chpo(i);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$6zNj5fPTduGwiMltIf87TS7chpo(int i) {
        AccountInstance accountInstance = AccountInstance.getInstance(i);
        if (accountInstance.getUserConfig().getClientUserId() != 0) {
            accountInstance.getUserConfig().clearConfig();
            accountInstance.getMessagesController().performLogout(0);
        }
    }

    public static int getInitFlags() {
        if (!EmuDetector.with(ApplicationLoader.applicationContext).detect()) {
            return 0;
        }
        if (!BuildVars.LOGS_ENABLED) {
            return 1024;
        }
        FileLog.m989d("detected emu");
        return 1024;
    }

    public static void onBytesSent(int i, int i2, int i3) {
        try {
            AccountInstance.getInstance(i3).getStatsController().incrementSentBytesCount(i2, 6, i);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    public static void onRequestNewServerIpAndPort(final int i, final int i2) {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.$r8$lambda$nygMewsF3WVa1Qvc8iWc0c60MaE(i, i2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$nygMewsF3WVa1Qvc8iWc0c60MaE(final int i, final int i2) {
        final boolean zIsNetworkOnline = ApplicationLoader.isNetworkOnline();
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.m6445$r8$lambda$mWBBmL9miKALQKetM44WK_EVas(i, zIsNetworkOnline, i2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-mWBBmL9miKALQKetM44WK_EVas, reason: not valid java name */
    public static /* synthetic */ void m6445$r8$lambda$mWBBmL9miKALQKetM44WK_EVas(int i, boolean z, int i2) {
        FileLog.m989d("13. currentTask == " + currentTask);
        if (currentTask != null || ((i == 0 && Math.abs(lastDnsRequestTime - System.currentTimeMillis()) < NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS) || !z)) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("don't start task, current task = " + currentTask + " next task = " + i + " time diff = " + Math.abs(lastDnsRequestTime - System.currentTimeMillis()) + " network = " + ApplicationLoader.isNetworkOnline());
                return;
            }
            return;
        }
        lastDnsRequestTime = System.currentTimeMillis();
        if (i == 0 && applyStoredDnsConfigOverride(i2)) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("applied debug ipconfigv3 override");
            }
        } else {
            if (i == 2) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m989d("start mozilla txt task");
                }
                MozillaDnsLoadTask mozillaDnsLoadTask = new MozillaDnsLoadTask(i2);
                mozillaDnsLoadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
                FileLog.m989d("9. currentTask = mozilla");
                currentTask = mozillaDnsLoadTask;
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("start google txt task");
            }
            GoogleDnsLoadTask googleDnsLoadTask = new GoogleDnsLoadTask(i2);
            googleDnsLoadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            FileLog.m989d("11. currentTask = dnstxt");
            currentTask = googleDnsLoadTask;
        }
    }

    public static void onProxyError() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 3);
            }
        });
    }

    public static void getHostByName(final String str, final long j) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.$r8$lambda$_BD8EUfYxjZmTPFVJB1zWlgkSEA(str, j);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$_BD8EUfYxjZmTPFVJB1zWlgkSEA(String str, long j) {
        ResolvedDomain resolvedDomain = dnsCache.get(str);
        if (resolvedDomain != null && SystemClock.elapsedRealtime() - resolvedDomain.ttl < 300000) {
            native_onHostNameResolved(str, j, resolvedDomain.getAddress());
            return;
        }
        ResolveHostByNameTask resolveHostByNameTask = resolvingHostnameTasks.get(str);
        if (resolveHostByNameTask == null) {
            resolveHostByNameTask = new ResolveHostByNameTask(str);
            try {
                resolveHostByNameTask.executeOnExecutor(DNS_THREAD_POOL_EXECUTOR, null, null, null);
                resolvingHostnameTasks.put(str, resolveHostByNameTask);
            } catch (Throwable th) {
                FileLog.m992e(th);
                native_onHostNameResolved(str, j, _UrlKt.FRAGMENT_ENCODE_SET);
                return;
            }
        }
        resolveHostByNameTask.addAddress(j);
    }

    public static void onBytesReceived(int i, int i2, int i3) {
        try {
            StatsController.getInstance(i3).incrementReceivedBytesCount(i2, 6, i);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    public static void onUpdateConfig(long j, final int i) {
        try {
            NativeByteBuffer nativeByteBufferWrap = NativeByteBuffer.wrap(j);
            nativeByteBufferWrap.reused = true;
            final TLRPC.TL_config tL_configTLdeserialize = TLRPC.TL_config.TLdeserialize(nativeByteBufferWrap, nativeByteBufferWrap.readInt32(true), true);
            if (tL_configTLdeserialize != null) {
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        AccountInstance.getInstance(i).getMessagesController().updateConfig(tL_configTLdeserialize);
                    }
                });
            }
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    public static void onInternalPushReceived(int i) {
        KeepAliveJob.startJob();
    }

    public static void setProxySettings(boolean z, ProxySettings proxySettings) {
        String str;
        String str2;
        String str3;
        String str4;
        int i;
        if (z && proxySettings != null && proxySettings.isValid()) {
            String address = proxySettings.getAddress();
            int port = proxySettings.getPort();
            String user = proxySettings.getUser();
            String password = proxySettings.getPassword();
            String secret = proxySettings.getSecret();
            if (proxySettings.getType() == ProxySettings.Type.WEB) {
                int iStart = WebProxyTransport.start(address, secret);
                if (iStart == 0) {
                    iStart = 9;
                }
                int i2 = iStart;
                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                str3 = str2;
                str = "127.0.0.1";
                i = i2;
            } else {
                WebProxyTransport.stop();
                str = address;
                i = port;
                str2 = user;
                str3 = password;
            }
            str4 = secret;
        } else {
            WebProxyTransport.stop();
            str = _UrlKt.FRAGMENT_ENCODE_SET;
            str2 = str;
            str3 = str2;
            str4 = str3;
            i = 0;
        }
        for (int i3 = 0; i3 < 16; i3++) {
            if (z && proxySettings != null && proxySettings.isValid()) {
                native_setProxySettings(i3, str, i, str2, str3, str4);
            } else {
                native_setProxySettings(i3, _UrlKt.FRAGMENT_ENCODE_SET, 1080, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
            }
            AccountInstance accountInstance = AccountInstance.getInstance(i3);
            if (accountInstance.getUserConfig().isClientActivated()) {
                accountInstance.getMessagesController().checkPromoInfo(true);
            }
        }
    }

    public static boolean testNativeTlScheme(NativeByteBuffer nativeByteBuffer, INativeTlTest iNativeTlTest) {
        return iNativeTlTest.test(nativeByteBuffer.address);
    }

    public static int generateClassGuid() {
        int i = lastClassGuid;
        lastClassGuid = i + 1;
        return i;
    }

    public void setIsUpdating(final boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setIsUpdating$23(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIsUpdating$23(boolean z) {
        if (this.isUpdating == z) {
            return;
        }
        this.isUpdating = z;
        if (this.connectionState == 3) {
            AccountInstance.getInstance(this.currentAccount).getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didUpdateConnectionState, new Object[0]);
        }
    }

    @SuppressLint({"NewApi"})
    public byte getIpStrategy() {
        if (BuildVars.LOGS_ENABLED) {
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    if (networkInterfaceNextElement.isUp() && !networkInterfaceNextElement.isLoopback() && !networkInterfaceNextElement.getInterfaceAddresses().isEmpty()) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m989d("valid interface: " + networkInterfaceNextElement);
                        }
                        List<InterfaceAddress> interfaceAddresses = networkInterfaceNextElement.getInterfaceAddresses();
                        for (int i = 0; i < interfaceAddresses.size(); i++) {
                            InetAddress address = interfaceAddresses.get(i).getAddress();
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m989d("address: " + address.getHostAddress());
                            }
                            if (!address.isLinkLocalAddress() && !address.isLoopbackAddress() && !address.isMulticastAddress() && BuildVars.LOGS_ENABLED) {
                                FileLog.m989d("address is good");
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                FileLog.m992e(th);
            }
        }
        try {
            Enumeration<NetworkInterface> networkInterfaces2 = NetworkInterface.getNetworkInterfaces();
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            while (networkInterfaces2.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement2 = networkInterfaces2.nextElement();
                if (networkInterfaceNextElement2.isUp() && !networkInterfaceNextElement2.isLoopback()) {
                    List<InterfaceAddress> interfaceAddresses2 = networkInterfaceNextElement2.getInterfaceAddresses();
                    for (int i2 = 0; i2 < interfaceAddresses2.size(); i2++) {
                        InetAddress address2 = interfaceAddresses2.get(i2).getAddress();
                        if (!address2.isLinkLocalAddress() && !address2.isLoopbackAddress() && !address2.isMulticastAddress()) {
                            if (address2 instanceof Inet6Address) {
                                z = true;
                            } else if (address2 instanceof Inet4Address) {
                                if (address2.getHostAddress().startsWith("192.0.0.")) {
                                    z2 = true;
                                } else {
                                    z3 = true;
                                }
                            }
                        }
                    }
                }
            }
            if (z) {
                if (this.forceTryIpV6) {
                    return (byte) 1;
                }
                if (z2) {
                    return (byte) 2;
                }
                if (!z3) {
                    return (byte) 1;
                }
            }
        } catch (Throwable th2) {
            FileLog.m992e(th2);
        }
        return (byte) 0;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class ResolveHostByNameTask extends AsyncTask<Void, Void, ResolvedDomain> {
        private ArrayList<Long> addresses = new ArrayList<>();
        private String currentHostName;

        public ResolveHostByNameTask(String str) {
            this.currentHostName = str;
        }

        public void addAddress(long j) {
            if (this.addresses.contains(Long.valueOf(j))) {
                return;
            }
            this.addresses.add(Long.valueOf(j));
        }

        @Override // android.os.AsyncTask
        public ResolvedDomain doInBackground(Void... voidArr) {
            InputStream inputStream;
            ByteArrayOutputStream byteArrayOutputStream;
            int i;
            JSONArray jSONArray;
            int length;
            try {
                URLConnection uRLConnectionOpenConnection = new URL("https://www.google.com/resolve?name=" + this.currentHostName + "&type=A").openConnection();
                uRLConnectionOpenConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                uRLConnectionOpenConnection.addRequestProperty("Host", "dns.google.com");
                uRLConnectionOpenConnection.setConnectTimeout(1000);
                uRLConnectionOpenConnection.setReadTimeout(CastStatusCodes.AUTHENTICATION_FAILED);
                uRLConnectionOpenConnection.connect();
                inputStream = uRLConnectionOpenConnection.getInputStream();
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byte[] bArr = new byte[32768];
                        while (true) {
                            int i2 = inputStream.read(bArr);
                            if (i2 <= 0) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i2);
                            return null;
                        }
                        JSONObject jSONObject = new JSONObject(new String(byteArrayOutputStream.toByteArray()));
                        if (jSONObject.has("Answer") && (length = (jSONArray = jSONObject.getJSONArray("Answer")).length()) > 0) {
                            ArrayList arrayList = new ArrayList(length);
                            for (i = 0; i < length; i++) {
                                arrayList.add(jSONArray.getJSONObject(i).getString("data"));
                            }
                            ResolvedDomain resolvedDomain = new ResolvedDomain(arrayList, SystemClock.elapsedRealtime());
                            try {
                                inputStream.close();
                            } catch (Throwable th) {
                                FileLog.m992e(th);
                            }
                            try {
                                byteArrayOutputStream.close();
                            } catch (Exception unused) {
                            }
                            return resolvedDomain;
                        }
                        try {
                            inputStream.close();
                        } catch (Throwable th2) {
                            FileLog.m992e(th2);
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused2) {
                        }
                        return null;
                    } catch (Throwable th3) {
                        th = th3;
                        try {
                            FileLog.m992e(th);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable th4) {
                                    FileLog.m992e(th4);
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception unused3) {
                                }
                            }
                            try {
                                InetAddress byName = InetAddress.getByName(this.currentHostName);
                                ArrayList arrayList2 = new ArrayList(1);
                                arrayList2.add(byName.getHostAddress());
                                return new ResolvedDomain(arrayList2, SystemClock.elapsedRealtime());
                            } catch (Exception e) {
                                FileLog.m992e(e);
                            }
                        } finally {
                        }
                    }
                } catch (Throwable th5) {
                    th = th5;
                    byteArrayOutputStream = null;
                }
            } catch (Throwable th6) {
                th = th6;
                inputStream = null;
                byteArrayOutputStream = null;
            }
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(ResolvedDomain resolvedDomain) {
            int i = 0;
            if (resolvedDomain != null) {
                ConnectionsManager.dnsCache.put(this.currentHostName, resolvedDomain);
                int size = this.addresses.size();
                while (i < size) {
                    ConnectionsManager.native_onHostNameResolved(this.currentHostName, this.addresses.get(i).longValue(), resolvedDomain.getAddress());
                    i++;
                }
            } else {
                int size2 = this.addresses.size();
                while (i < size2) {
                    ConnectionsManager.native_onHostNameResolved(this.currentHostName, this.addresses.get(i).longValue(), _UrlKt.FRAGMENT_ENCODE_SET);
                    i++;
                }
            }
            ConnectionsManager.resolvingHostnameTasks.remove(this.currentHostName);
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class GoogleDnsLoadTask extends AsyncTask<Void, Void, NativeByteBuffer> {
        private int currentAccount;
        private int responseDate;

        public GoogleDnsLoadTask(int i) {
            this.currentAccount = i;
        }

        @Override // android.os.AsyncTask
        public NativeByteBuffer doInBackground(Void... voidArr) {
            ByteArrayOutputStream byteArrayOutputStream;
            InputStream inputStream;
            int i;
            try {
                String str = ConnectionsManager.native_isTestBackend(this.currentAccount) != 0 ? "tapv3.stel.com" : AccountInstance.getInstance(this.currentAccount).getMessagesController().dcDomainName;
                int iNextInt = Utilities.random.nextInt(116) + 13;
                StringBuilder sb = new StringBuilder(iNextInt);
                for (int i2 = 0; i2 < iNextInt; i2++) {
                    sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(Utilities.random.nextInt(62)));
                }
                URLConnection uRLConnectionOpenConnection = new URL("https://dns.google.com/resolve?name=" + str + "&type=ANY&random_padding=" + ((Object) sb)).openConnection();
                uRLConnectionOpenConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                uRLConnectionOpenConnection.setConnectTimeout(5000);
                uRLConnectionOpenConnection.setReadTimeout(5000);
                uRLConnectionOpenConnection.connect();
                inputStream = uRLConnectionOpenConnection.getInputStream();
                try {
                    this.responseDate = (int) (uRLConnectionOpenConnection.getDate() / 1000);
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byte[] bArr = new byte[32768];
                        while (!isCancelled() && (i = inputStream.read(bArr)) > 0) {
                            byteArrayOutputStream.write(bArr, 0, i);
                        }
                        JSONArray jSONArray = new JSONObject(new String(byteArrayOutputStream.toByteArray())).getJSONArray("Answer");
                        int length = jSONArray.length();
                        ArrayList arrayList = new ArrayList(length);
                        for (int i3 = 0; i3 < length; i3++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i3);
                            if (jSONObject.getInt("type") == 16) {
                                arrayList.add(jSONObject.getString("data"));
                            }
                        }
                        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.tgnet.ConnectionsManager$GoogleDnsLoadTask$$ExternalSyntheticLambda0
                            @Override // java.util.Comparator
                            public final int compare(Object obj, Object obj2) {
                                return ConnectionsManager.GoogleDnsLoadTask.$r8$lambda$Pij8WGD9QMO3VZ5JwyajiFAbKoo((String) obj, (String) obj2);
                            }
                        });
                        StringBuilder sb2 = new StringBuilder();
                        for (int i4 = 0; i4 < arrayList.size(); i4++) {
                            sb2.append(((String) arrayList.get(i4)).replace("\"", _UrlKt.FRAGMENT_ENCODE_SET));
                        }
                        byte[] bArrDecode = Base64.decode(sb2.toString(), 0);
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(bArrDecode.length);
                        nativeByteBuffer.writeBytes(bArrDecode);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th) {
                                FileLog.m992e(th);
                            }
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused) {
                        }
                        return nativeByteBuffer;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            FileLog.m992e(th);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable th3) {
                                    FileLog.m992e(th3);
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception unused2) {
                                }
                            }
                            return null;
                        } finally {
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    byteArrayOutputStream = null;
                }
            } catch (Throwable th5) {
                th = th5;
                byteArrayOutputStream = null;
                inputStream = null;
            }
        }

        public static /* synthetic */ int $r8$lambda$Pij8WGD9QMO3VZ5JwyajiFAbKoo(String str, String str2) {
            int length = str.length();
            int length2 = str2.length();
            if (length > length2) {
                return -1;
            }
            return length < length2 ? 1 : 0;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(final NativeByteBuffer nativeByteBuffer) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$GoogleDnsLoadTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$1(nativeByteBuffer);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$1(NativeByteBuffer nativeByteBuffer) {
            FileLog.m989d("3. currentTask = null, result = " + nativeByteBuffer);
            ConnectionsManager.currentTask = null;
            if (nativeByteBuffer != null) {
                int i = this.currentAccount;
                ConnectionsManager.native_applyDnsConfig(i, nativeByteBuffer.address, AccountInstance.getInstance(i).getUserConfig().getClientPhone(), this.responseDate);
                return;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("failed to get google result");
                FileLog.m989d("start mozilla task");
            }
            MozillaDnsLoadTask mozillaDnsLoadTask = new MozillaDnsLoadTask(this.currentAccount);
            mozillaDnsLoadTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            FileLog.m989d("4. currentTask = mozilla");
            ConnectionsManager.currentTask = mozillaDnsLoadTask;
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class MozillaDnsLoadTask extends AsyncTask<Void, Void, NativeByteBuffer> {
        private int currentAccount;
        private int responseDate;

        public MozillaDnsLoadTask(int i) {
            this.currentAccount = i;
        }

        @Override // android.os.AsyncTask
        public NativeByteBuffer doInBackground(Void... voidArr) {
            ByteArrayOutputStream byteArrayOutputStream;
            InputStream inputStream;
            int i;
            try {
                String str = ConnectionsManager.native_isTestBackend(this.currentAccount) != 0 ? "tapv3.stel.com" : AccountInstance.getInstance(this.currentAccount).getMessagesController().dcDomainName;
                int iNextInt = Utilities.random.nextInt(116) + 13;
                StringBuilder sb = new StringBuilder(iNextInt);
                for (int i2 = 0; i2 < iNextInt; i2++) {
                    sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(Utilities.random.nextInt(62)));
                }
                URLConnection uRLConnectionOpenConnection = new URL("https://mozilla.cloudflare-dns.com/dns-query?name=" + str + "&type=TXT&random_padding=" + ((Object) sb)).openConnection();
                uRLConnectionOpenConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                uRLConnectionOpenConnection.addRequestProperty("accept", "application/dns-json");
                uRLConnectionOpenConnection.setConnectTimeout(5000);
                uRLConnectionOpenConnection.setReadTimeout(5000);
                uRLConnectionOpenConnection.connect();
                inputStream = uRLConnectionOpenConnection.getInputStream();
                try {
                    this.responseDate = (int) (uRLConnectionOpenConnection.getDate() / 1000);
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byte[] bArr = new byte[32768];
                        while (!isCancelled() && (i = inputStream.read(bArr)) > 0) {
                            byteArrayOutputStream.write(bArr, 0, i);
                        }
                        JSONArray jSONArray = new JSONObject(new String(byteArrayOutputStream.toByteArray())).getJSONArray("Answer");
                        int length = jSONArray.length();
                        ArrayList arrayList = new ArrayList(length);
                        for (int i3 = 0; i3 < length; i3++) {
                            JSONObject jSONObject = jSONArray.getJSONObject(i3);
                            if (jSONObject.getInt("type") == 16) {
                                arrayList.add(jSONObject.getString("data"));
                            }
                        }
                        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.tgnet.ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda0
                            @Override // java.util.Comparator
                            public final int compare(Object obj, Object obj2) {
                                return ConnectionsManager.MozillaDnsLoadTask.$r8$lambda$nE8DlHt4ROLdC70y2dCAIoRiwis((String) obj, (String) obj2);
                            }
                        });
                        StringBuilder sb2 = new StringBuilder();
                        for (int i4 = 0; i4 < arrayList.size(); i4++) {
                            sb2.append(((String) arrayList.get(i4)).replace("\"", _UrlKt.FRAGMENT_ENCODE_SET));
                        }
                        byte[] bArrDecode = Base64.decode(sb2.toString(), 0);
                        NativeByteBuffer nativeByteBuffer = new NativeByteBuffer(bArrDecode.length);
                        nativeByteBuffer.writeBytes(bArrDecode);
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Throwable th) {
                                FileLog.m992e(th);
                            }
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused) {
                        }
                        return nativeByteBuffer;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            FileLog.m992e(th);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable th3) {
                                    FileLog.m992e(th3);
                                }
                            }
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception unused2) {
                                }
                            }
                            return null;
                        } finally {
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    byteArrayOutputStream = null;
                }
            } catch (Throwable th5) {
                th = th5;
                byteArrayOutputStream = null;
                inputStream = null;
            }
        }

        public static /* synthetic */ int $r8$lambda$nE8DlHt4ROLdC70y2dCAIoRiwis(String str, String str2) {
            int length = str.length();
            int length2 = str2.length();
            if (length > length2) {
                return -1;
            }
            return length < length2 ? 1 : 0;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(final NativeByteBuffer nativeByteBuffer) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$MozillaDnsLoadTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$1(nativeByteBuffer);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$1(NativeByteBuffer nativeByteBuffer) {
            FileLog.m989d("5. currentTask = null");
            ConnectionsManager.currentTask = null;
            if (nativeByteBuffer != null) {
                int i = this.currentAccount;
                ConnectionsManager.native_applyDnsConfig(i, nativeByteBuffer.address, AccountInstance.getInstance(i).getUserConfig().getClientPhone(), this.responseDate);
            } else if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("failed to get mozilla txt result");
            }
        }
    }

    @Keep
    public static void onPremiumFloodWait(final int i, final int i2, final boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.m6446$r8$lambda$0TA9VKkX8yoiPMorUdqP1vgI4(i, z, i2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$0TA9VKkX8yo-iPM-orUdqP1vgI4, reason: not valid java name */
    public static /* synthetic */ void m6446$r8$lambda$0TA9VKkX8yoiPMorUdqP1vgI4(final int i, final boolean z, final int i2) {
        if (UserConfig.selectedAccount != i) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.tgnet.ConnectionsManager$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                ConnectionsManager.m6457$r8$lambda$iG_9ceLKhXA5fRJYjJeo73HQl0(z, i, i2);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX INFO: renamed from: $r8$lambda$iG_9ceLKhXA-5fRJYjJeo73HQl0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void m6457$r8$lambda$iG_9ceLKhXA5fRJYjJeo73HQl0(boolean z, int i, int i2) {
        boolean z2;
        if (z) {
            FileUploadOperation fileUploadOperationFindUploadOperationByRequestToken = FileLoader.getInstance(i).findUploadOperationByRequestToken(i2);
            if (fileUploadOperationFindUploadOperationByRequestToken != null) {
                z2 = !fileUploadOperationFindUploadOperationByRequestToken.caughtPremiumFloodWait;
                fileUploadOperationFindUploadOperationByRequestToken.caughtPremiumFloodWait = true;
            } else {
                z2 = false;
            }
        } else {
            FileLoadOperation fileLoadOperationFindLoadOperationByRequestToken = FileLoader.getInstance(i).findLoadOperationByRequestToken(i2);
            if (fileLoadOperationFindLoadOperationByRequestToken != null) {
                z2 = !fileLoadOperationFindLoadOperationByRequestToken.caughtPremiumFloodWait;
                fileLoadOperationFindLoadOperationByRequestToken.caughtPremiumFloodWait = true;
            }
        }
        if (z2) {
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.premiumFloodWaitReceived, new Object[0]);
        }
    }

    @Keep
    public static void onIntegrityCheckClassic(int i, int i2, String str, String str2) {
        native_receivedIntegrityCheckClassic(i, i2, str2, "PLAYINTEGRITY_FAILED_EXCEPTION");
    }

    @Keep
    public static void onCaptchaCheck(int i, int i2, String str, String str2) {
        CaptchaController.request(i, i2, str, str2);
    }
}
