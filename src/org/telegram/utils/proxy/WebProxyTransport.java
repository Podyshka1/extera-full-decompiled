package org.telegram.utils.proxy;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.JavaScriptReplyProxy;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import com.android.dx.rop.code.RegisterSpec;
import com.google.android.gms.cast.MediaStatus;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.IDN;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.IntUnaryOperator;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.UByte;
import okhttp3.internal.url._UrlKt;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.ui.Components.ForegroundDetector;

/* JADX INFO: loaded from: classes6.dex */
public final class WebProxyTransport implements ForegroundDetector.Listener {
    private static WebProxyTransport connectionTestInstance;
    private static WebProxyTransport instance;
    private static final Object staticLock = new Object();
    private final String address;
    private final String androidNonce;
    private final String bridgePath;
    private final String bridgeUrl;
    private boolean carrierConnected;
    private final String host;
    private final String origin;
    private int outboundBytes;
    private final String path;
    private ReadyCallback readyCallback;
    private JavaScriptReplyProxy replyProxy;
    private boolean restartScheduled;
    private final String secret;
    private final ServerSocket serverSocket;
    private boolean stopped;
    private WebView webView;
    private final Object lock = new Object();
    private final ExecutorService ioExecutor = Executors.newCachedThreadPool();
    private final ExecutorService carrierExecutor = Executors.newSingleThreadExecutor();
    private final AtomicInteger nextStreamId = new AtomicInteger(1);
    private final Map<Integer, Stream> streams = new HashMap();
    private final ArrayDeque<byte[]> outbound = new ArrayDeque<>();

    public interface ReadyCallback {
        void onReady();
    }

    @Override // org.telegram.ui.Components.ForegroundDetector.Listener
    public void onBecameBackground() {
    }

    public static int start(String str, String str2) {
        Address addressNormalizeAddress = normalizeAddress(str);
        byte[] bArrDecodeSecret = decodeSecret(str2);
        if (addressNormalizeAddress == null || bArrDecodeSecret == null || !isSupported()) {
            return 0;
        }
        synchronized (staticLock) {
            try {
                WebProxyTransport webProxyTransport = instance;
                if (webProxyTransport != null && webProxyTransport.address.equals(addressNormalizeAddress.value) && instance.secret.equals(str2)) {
                    return instance.serverSocket.getLocalPort();
                }
                WebProxyTransport webProxyTransport2 = instance;
                if (webProxyTransport2 != null) {
                    webProxyTransport2.stopInternal();
                    instance = null;
                }
                try {
                    WebProxyTransport webProxyTransport3 = new WebProxyTransport(addressNormalizeAddress, str2, bArrDecodeSecret);
                    instance = webProxyTransport3;
                    webProxyTransport3.startInternal();
                    return instance.serverSocket.getLocalPort();
                } catch (Exception e) {
                    FileLog.m992e(e);
                    WebProxyTransport webProxyTransport4 = instance;
                    if (webProxyTransport4 != null) {
                        webProxyTransport4.stopInternal();
                        instance = null;
                    }
                    return 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void stop() {
        synchronized (staticLock) {
            try {
                WebProxyTransport webProxyTransport = instance;
                if (webProxyTransport != null) {
                    webProxyTransport.stopInternal();
                    instance = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static int startConnectionCheck(String str, String str2, ReadyCallback readyCallback) {
        int localPort;
        Address addressNormalizeAddress = normalizeAddress(str);
        byte[] bArrDecodeSecret = decodeSecret(str2);
        if (addressNormalizeAddress == null || bArrDecodeSecret == null || !isSupported()) {
            return 0;
        }
        synchronized (staticLock) {
            WebProxyTransport webProxyTransport = connectionTestInstance;
            if (webProxyTransport != null) {
                webProxyTransport.stopInternal();
                connectionTestInstance = null;
            }
            try {
                WebProxyTransport webProxyTransport2 = new WebProxyTransport(addressNormalizeAddress, str2, bArrDecodeSecret);
                connectionTestInstance = webProxyTransport2;
                webProxyTransport2.readyCallback = readyCallback;
                webProxyTransport2.startInternal();
                localPort = connectionTestInstance.serverSocket.getLocalPort();
            } catch (Exception e) {
                FileLog.m992e(e);
                WebProxyTransport webProxyTransport3 = connectionTestInstance;
                if (webProxyTransport3 != null) {
                    webProxyTransport3.stopInternal();
                    connectionTestInstance = null;
                }
                return 0;
            }
        }
        return localPort;
    }

    public static void stopConnectionCheck() {
        synchronized (staticLock) {
            try {
                WebProxyTransport webProxyTransport = connectionTestInstance;
                if (webProxyTransport != null) {
                    webProxyTransport.stopInternal();
                    connectionTestInstance = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isSupported() {
        try {
            if (WebViewFeature.isFeatureSupported("WEB_MESSAGE_LISTENER")) {
                if (WebViewFeature.isFeatureSupported("WEB_MESSAGE_ARRAY_BUFFER")) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            FileLog.m992e(th);
            return false;
        }
    }

    public static boolean isValidSecret(String str) {
        return decodeSecret(str) != null;
    }

    public static String normalizeHost(String str) {
        if (str == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String strTrim = str.trim();
        if (strTrim.endsWith(".")) {
            strTrim = strTrim.substring(0, strTrim.length() - 1);
        }
        try {
            String lowerCase = IDN.toASCII(strTrim, 2).toLowerCase(Locale.US);
            if (lowerCase.length() <= 253 && lowerCase.indexOf(46) > 0 && !lowerCase.contains(":") && !lowerCase.matches("[0-9.]+")) {
                for (String str2 : lowerCase.split("\\.", -1)) {
                    if (str2.isEmpty() || str2.length() > 63 || str2.startsWith("-") || str2.endsWith("-")) {
                        return _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                }
                return lowerCase;
            }
        } catch (Exception unused) {
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    private static Address normalizeAddress(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(47);
        String strNormalizeHost = normalizeHost(iIndexOf >= 0 ? str.substring(0, iIndexOf) : str);
        String strSubstring = iIndexOf >= 0 ? str.substring(iIndexOf + 1) : _UrlKt.FRAGMENT_ENCODE_SET;
        if (TextUtils.isEmpty(strNormalizeHost) || !isValidPath(strSubstring)) {
            return null;
        }
        return new Address(strNormalizeHost, strSubstring);
    }

    private static boolean isValidPath(String str) {
        if (str.length() > 128) {
            return false;
        }
        if (str.isEmpty()) {
            return true;
        }
        for (String str2 : str.split("/", -1)) {
            if (str2.isEmpty() || !Character.isLetterOrDigit(str2.charAt(0))) {
                return false;
            }
            for (int i = 0; i < str2.length(); i++) {
                char cCharAt = str2.charAt(i);
                if ((cCharAt < 'A' || cCharAt > 'Z') && ((cCharAt < 'a' || cCharAt > 'z') && !((cCharAt >= '0' && cCharAt <= '9') || cCharAt == '_' || cCharAt == '-'))) {
                    return false;
                }
            }
        }
        return true;
    }

    private WebProxyTransport(Address address, String str, byte[] bArr) throws NoSuchAlgorithmException, InvalidKeyException {
        String str2;
        this.address = address.value;
        String str3 = address.host;
        this.host = str3;
        String str4 = address.path;
        this.path = str4;
        String str5 = "/";
        if (!str4.isEmpty()) {
            str5 = "/" + str4 + "/";
        }
        this.bridgePath = str5;
        this.secret = str;
        String str6 = "https://" + str3;
        this.origin = str6;
        String strRandomToken = randomToken(32);
        this.androidNonce = strRandomToken;
        if (str4.isEmpty()) {
            str2 = "tdesktop-web-proxy-bridge-v1\n" + str3;
        } else {
            str2 = "tdesktop-web-proxy-bridge-v2\n" + str3 + "\n" + str4;
        }
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(new SecretKeySpec(bArr, "HmacSHA256"));
        this.bridgeUrl = str6 + str5 + "?bridge=" + Base64.encodeToString(mac.doFinal(str2.getBytes(StandardCharsets.UTF_8)), 11) + "#android=" + strRandomToken;
        this.serverSocket = new ServerSocket(0, 64, InetAddress.getByName("127.0.0.1"));
    }

    private void startInternal() {
        ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
        if (foregroundDetector != null) {
            foregroundDetector.addListener(this);
        }
        this.ioExecutor.execute(new Runnable() { // from class: org.telegram.utils.proxy.WebProxyTransport$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.acceptLoop();
            }
        });
        AndroidUtilities.runOnUIThread(new WebProxyTransport$$ExternalSyntheticLambda2(this));
    }

    private void stopInternal() {
        synchronized (this.lock) {
            try {
                if (this.stopped) {
                    return;
                }
                this.stopped = true;
                int i = 0;
                this.carrierConnected = false;
                this.restartScheduled = false;
                ArrayList arrayList = new ArrayList(this.streams.values());
                this.streams.clear();
                this.outbound.clear();
                this.outboundBytes = 0;
                this.lock.notifyAll();
                try {
                    this.serverSocket.close();
                } catch (Exception unused) {
                }
                ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
                if (foregroundDetector != null) {
                    foregroundDetector.removeListener(this);
                }
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    closeSocket(((Stream) obj).socket);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.utils.proxy.WebProxyTransport$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$stopInternal$0();
                    }
                });
                this.ioExecutor.shutdownNow();
                this.carrierExecutor.shutdownNow();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopInternal$0() {
        JavaScriptReplyProxy javaScriptReplyProxy = this.replyProxy;
        if (javaScriptReplyProxy != null) {
            try {
                javaScriptReplyProxy.postMessage("{\"t\":\"close\"}");
            } catch (Exception unused) {
            }
        }
        destroyWebView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void acceptLoop() {
        while (true) {
            try {
                Socket socketAccept = this.serverSocket.accept();
                socketAccept.setTcpNoDelay(true);
                synchronized (this.lock) {
                    try {
                        if (this.stopped || this.streams.size() >= 64) {
                            closeSocket(socketAccept);
                        } else {
                            int iAllocateStreamId = allocateStreamId();
                            final Stream stream = new Stream(iAllocateStreamId, socketAccept);
                            this.streams.put(Integer.valueOf(iAllocateStreamId), stream);
                            if (this.carrierConnected) {
                                stream.opened = true;
                                sendFrame(1, iAllocateStreamId, null);
                            }
                            this.ioExecutor.execute(new Runnable() { // from class: org.telegram.utils.proxy.WebProxyTransport$$ExternalSyntheticLambda4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$acceptLoop$1(stream);
                                }
                            });
                        }
                    } finally {
                    }
                }
            } catch (Exception e) {
                synchronized (this.lock) {
                    try {
                        if (this.stopped) {
                            return;
                        }
                        FileLog.m992e(e);
                        failCarrier();
                        return;
                    } finally {
                    }
                }
            }
        }
    }

    public static /* synthetic */ int $r8$lambda$BXafk1NbrkLlFNU1AKiN047Ptyw(int i) {
        if (i >= 16777215) {
            return 1;
        }
        return i + 1;
    }

    private int allocateStreamId() {
        while (true) {
            int andUpdate = this.nextStreamId.getAndUpdate(new IntUnaryOperator() { // from class: org.telegram.utils.proxy.WebProxyTransport$$ExternalSyntheticLambda8
                @Override // java.util.function.IntUnaryOperator
                public final int applyAsInt(int i) {
                    return WebProxyTransport.$r8$lambda$BXafk1NbrkLlFNU1AKiN047Ptyw(i);
                }
            });
            if (andUpdate != 0 && !this.streams.containsKey(Integer.valueOf(andUpdate))) {
                return andUpdate;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ae, code lost:
    
        return;
     */
    /* JADX INFO: renamed from: readLoop, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void lambda$acceptLoop$1(Stream stream) {
        InputStream inputStream;
        byte[] bArr = new byte[65536];
        try {
            inputStream = stream.socket.getInputStream();
        } catch (Exception unused) {
            closeStream(stream, true);
            return;
        }
        while (true) {
            synchronized (this.lock) {
                while (!this.stopped && this.streams.get(Integer.valueOf(stream.id)) == stream && (!this.carrierConnected || !stream.opened || stream.sendWindow == 0)) {
                    try {
                        this.lock.wait();
                    } finally {
                    }
                }
                if (this.stopped || this.streams.get(Integer.valueOf(stream.id)) != stream) {
                    break;
                }
                int i = inputStream.read(bArr, 0, (int) Math.min(MediaStatus.COMMAND_FOLLOW, stream.sendWindow));
                if (i < 0) {
                    closeStream(stream, true);
                    return;
                }
                if (i != 0) {
                    byte[] bArr2 = new byte[i];
                    System.arraycopy(bArr, 0, bArr2, 0, i);
                    synchronized (this.lock) {
                        try {
                            if (this.stopped || this.streams.get(Integer.valueOf(stream.id)) != stream || !this.carrierConnected) {
                                break;
                            }
                            stream.sendWindow -= (long) i;
                            sendFrame(2, stream.id, bArr2);
                        } finally {
                        }
                    }
                }
                closeStream(stream, true);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetJavaScriptEnabled"})
    public void createWebView() {
        synchronized (this.lock) {
            try {
                if (!this.stopped && this.webView == null) {
                    ForegroundDetector foregroundDetector = ForegroundDetector.getInstance();
                    if (foregroundDetector != null && foregroundDetector.isBackground()) {
                        this.restartScheduled = true;
                        return;
                    }
                    this.restartScheduled = false;
                    destroyWebView();
                    try {
                        WebView webView = new WebView(ApplicationLoader.applicationContext);
                        this.webView = webView;
                        webView.setBackgroundColor(0);
                        WebSettings settings = webView.getSettings();
                        settings.setJavaScriptEnabled(true);
                        settings.setDomStorageEnabled(false);
                        settings.setDatabaseEnabled(false);
                        settings.setAllowFileAccess(false);
                        settings.setAllowContentAccess(false);
                        settings.setCacheMode(2);
                        settings.setJavaScriptCanOpenWindowsAutomatically(false);
                        settings.setSupportMultipleWindows(false);
                        settings.setGeolocationEnabled(false);
                        settings.setMediaPlaybackRequiresUserGesture(true);
                        settings.setMixedContentMode(1);
                        if (Build.VERSION.SDK_INT >= 26) {
                            settings.setSafeBrowsingEnabled(true);
                        }
                        webView.setWebViewClient(new WebViewClient() { // from class: org.telegram.utils.proxy.WebProxyTransport.1
                            @Override // android.webkit.WebViewClient
                            public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                                return (webResourceRequest.isForMainFrame() && WebProxyTransport.this.isBridgeNavigation(webResourceRequest.getUrl())) ? false : true;
                            }

                            @Override // android.webkit.WebViewClient
                            public WebResourceResponse shouldInterceptRequest(WebView webView2, WebResourceRequest webResourceRequest) {
                                Uri url = webResourceRequest.getUrl();
                                if (("http".equalsIgnoreCase(url.getScheme()) || "https".equalsIgnoreCase(url.getScheme())) && !WebProxyTransport.this.isAllowedNetworkRequest(url)) {
                                    return new WebResourceResponse("text/plain", "UTF-8", new ByteArrayInputStream(new byte[0]));
                                }
                                return null;
                            }

                            @Override // android.webkit.WebViewClient
                            public void onReceivedSslError(WebView webView2, SslErrorHandler sslErrorHandler, SslError sslError) {
                                sslErrorHandler.cancel();
                                WebProxyTransport.this.failWebView(webView2);
                            }

                            @Override // android.webkit.WebViewClient
                            public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                                if (webResourceRequest.isForMainFrame()) {
                                    WebProxyTransport.this.failWebView(webView2);
                                }
                            }

                            @Override // android.webkit.WebViewClient
                            public void onReceivedHttpError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                                if (webResourceRequest.isForMainFrame()) {
                                    WebProxyTransport.this.failWebView(webView2);
                                }
                            }

                            @Override // android.webkit.WebViewClient
                            public boolean onRenderProcessGone(WebView webView2, RenderProcessGoneDetail renderProcessGoneDetail) {
                                WebProxyTransport.this.failWebView(webView2);
                                return true;
                            }
                        });
                        HashSet hashSet = new HashSet();
                        hashSet.add(this.origin);
                        WebViewCompat.addWebMessageListener(webView, "TelegramWebProxy", hashSet, new WebViewCompat.WebMessageListener() { // from class: org.telegram.utils.proxy.WebProxyTransport$$ExternalSyntheticLambda3
                            @Override // androidx.webkit.WebViewCompat.WebMessageListener
                            public final void onPostMessage(WebView webView2, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
                                this.f$0.onWebMessage(webView2, webMessageCompat, uri, z, javaScriptReplyProxy);
                            }
                        });
                        webView.loadUrl(this.bridgeUrl);
                    } catch (Exception e) {
                        FileLog.m992e(e);
                        failCarrier();
                    }
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failWebView(WebView webView) {
        if (webView == this.webView) {
            failCarrier();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isBridgeNavigation(Uri uri) {
        return uri != null && this.bridgeUrl.equals(uri.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAllowedNetworkRequest(Uri uri) {
        String path = uri.getPath();
        if ("https".equalsIgnoreCase(uri.getScheme()) && this.host.equalsIgnoreCase(uri.getHost()) && uri.getUserInfo() == null) {
            return (uri.getPort() == -1 || uri.getPort() == 443) && path != null && path.startsWith(this.bridgePath);
        }
        return false;
    }

    private boolean isCurrentBridgeDocument(WebView webView) {
        String url = webView.getUrl();
        if (url == null) {
            return false;
        }
        Uri uri = Uri.parse(url);
        return "https".equalsIgnoreCase(uri.getScheme()) && this.host.equalsIgnoreCase(uri.getHost()) && uri.getUserInfo() == null && uri.getPort() == -1 && this.bridgePath.equals(uri.getPath());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWebMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
        JavaScriptReplyProxy javaScriptReplyProxy2;
        if (webView == this.webView && z && uri != null && this.origin.equals(uri.toString()) && isCurrentBridgeDocument(webView)) {
            if (webMessageCompat.getType() == 0) {
                handleControl(webMessageCompat.getData(), javaScriptReplyProxy);
                return;
            }
            if (webMessageCompat.getType() == 1) {
                synchronized (this.lock) {
                    if (!this.stopped && (javaScriptReplyProxy2 = this.replyProxy) != null && javaScriptReplyProxy2 == javaScriptReplyProxy) {
                        final byte[] arrayBuffer = webMessageCompat.getArrayBuffer();
                        this.carrierExecutor.execute(new Runnable() { // from class: org.telegram.utils.proxy.WebProxyTransport$$ExternalSyntheticLambda5
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$onWebMessage$3(arrayBuffer);
                            }
                        });
                    }
                }
            }
        }
    }

    private void handleControl(String str, JavaScriptReplyProxy javaScriptReplyProxy) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("t");
            if ("tproxy-android-init".equals(strOptString) && jSONObject.optInt(RegisterSpec.PREFIX) == 1 && this.androidNonce.equals(jSONObject.optString("nonce"))) {
                synchronized (this.lock) {
                    if (!this.stopped && this.replyProxy == null) {
                        this.replyProxy = javaScriptReplyProxy;
                        sendFrame(16, 0, new byte[]{1});
                        return;
                    }
                    return;
                }
            }
            if ("close".equals(strOptString) || "failed".equals(jSONObject.optString("state"))) {
                failCarrier();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: processFrames, reason: merged with bridge method [inline-methods] */
    public void lambda$onWebMessage$3(byte[] bArr) {
        int i = 0;
        while (i < bArr.length) {
            if (bArr.length - i < 8) {
                failCarrier();
                return;
            }
            int i2 = bArr[i] & UByte.MAX_VALUE;
            int i3 = ((bArr[i + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i + 2] & UByte.MAX_VALUE) << 8) | (bArr[i + 3] & UByte.MAX_VALUE);
            long j = ((((long) bArr[i + 4]) & 255) << 24) | ((((long) bArr[i + 5]) & 255) << 16) | ((((long) bArr[i + 6]) & 255) << 8) | (((long) bArr[i + 7]) & 255);
            int i4 = i + 8;
            long j2 = ((long) i4) + j;
            if (j > 1048576 || j2 > bArr.length) {
                failCarrier();
                return;
            }
            int i5 = (int) j;
            byte[] bArr2 = new byte[i5];
            System.arraycopy(bArr, i4, bArr2, 0, i5);
            if (!processFrame(i2, i3, bArr2)) {
                failCarrier();
                return;
            }
            i = (int) j2;
        }
    }

    private boolean processFrame(int i, int i2, byte[] bArr) {
        boolean z = true;
        int i3 = 0;
        if (i2 == 0) {
            if (i == 17 && bArr.length == 0) {
                synchronized (this.lock) {
                    try {
                        if (!this.stopped && !this.carrierConnected) {
                            this.carrierConnected = true;
                            ArrayList arrayList = new ArrayList(this.streams.values());
                            int size = arrayList.size();
                            while (i3 < size) {
                                Object obj = arrayList.get(i3);
                                i3++;
                                Stream stream = (Stream) obj;
                                stream.opened = true;
                                sendFrame(1, stream.id, null);
                            }
                            final ReadyCallback readyCallback = this.readyCallback;
                            this.lock.notifyAll();
                            if (readyCallback != null) {
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.utils.proxy.WebProxyTransport$$ExternalSyntheticLambda9
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        readyCallback.onReady();
                                    }
                                });
                            }
                            return true;
                        }
                        return false;
                    } finally {
                    }
                }
            }
            if (i == 5 && bArr.length <= 64) {
                sendFrame(6, 0, bArr);
                return true;
            }
            if (i == 31) {
                int length = bArr.length;
            }
            return false;
        }
        synchronized (this.lock) {
            try {
                Stream stream2 = this.streams.get(Integer.valueOf(i2));
                if (stream2 == null) {
                    if (i != 2 && i != 4 && i != 3) {
                        z = false;
                    }
                    return z;
                }
                if (i == 2) {
                    if (bArr.length == 0) {
                        return false;
                    }
                    synchronized (this.lock) {
                        try {
                            if (stream2.receiveWindow < bArr.length) {
                                return false;
                            }
                            stream2.receiveWindow -= (long) bArr.length;
                            try {
                                stream2.socket.getOutputStream().write(bArr);
                                synchronized (this.lock) {
                                    try {
                                        if (this.streams.get(Integer.valueOf(stream2.id)) == stream2) {
                                            stream2.receiveWindow += (long) bArr.length;
                                            sendFrame(4, stream2.id, uint32(bArr.length));
                                        }
                                    } finally {
                                    }
                                }
                            } catch (Exception unused) {
                                closeStream(stream2, true);
                            }
                            return true;
                        } finally {
                        }
                    }
                }
                if (i == 4 && bArr.length == 4) {
                    long j = ((long) ByteBuffer.wrap(bArr).getInt()) & 4294967295L;
                    if (j == 0) {
                        return false;
                    }
                    synchronized (this.lock) {
                        try {
                            if (stream2.sendWindow > 4294967295L - j) {
                                return false;
                            }
                            stream2.sendWindow += j;
                            this.lock.notifyAll();
                            return true;
                        } finally {
                        }
                    }
                }
                if (i != 3 || bArr.length != 0) {
                    return false;
                }
                closeStream(stream2, false);
                return true;
            } finally {
            }
        }
    }

    private void closeStream(Stream stream, boolean z) {
        synchronized (this.lock) {
            try {
                if (this.streams.get(Integer.valueOf(stream.id)) != stream) {
                    return;
                }
                this.streams.remove(Integer.valueOf(stream.id));
                boolean z2 = z && this.carrierConnected && stream.opened;
                this.lock.notifyAll();
                closeSocket(stream.socket);
                if (z2) {
                    sendFrame(3, stream.id, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void sendFrame(int i, int i2, byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        byte[] bArrArray = ByteBuffer.allocate(bArr.length + 8).put((byte) i).put((byte) (i2 >> 16)).put((byte) (i2 >> 8)).put((byte) i2).putInt(bArr.length).put(bArr).array();
        synchronized (this.lock) {
            if (!this.stopped && this.outbound.size() < 8192 && this.outboundBytes <= 67108864 - bArrArray.length) {
                this.outbound.add(bArrArray);
                this.outboundBytes += bArrArray.length;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.utils.proxy.WebProxyTransport$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.drainOutbound();
                    }
                });
                return;
            }
            failCarrier();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drainOutbound() {
        JavaScriptReplyProxy javaScriptReplyProxy;
        byte[] bArrRemoveFirst;
        while (true) {
            synchronized (this.lock) {
                javaScriptReplyProxy = this.replyProxy;
                if (this.stopped || javaScriptReplyProxy == null || this.outbound.isEmpty()) {
                    break;
                }
                bArrRemoveFirst = this.outbound.removeFirst();
                this.outboundBytes -= bArrRemoveFirst.length;
            }
            try {
                javaScriptReplyProxy.postMessage(bArrRemoveFirst);
            } catch (Exception e) {
                FileLog.m992e(e);
                failCarrier();
                return;
            }
        }
    }

    private void failCarrier() {
        synchronized (this.lock) {
            if (!this.stopped && !this.restartScheduled) {
                this.restartScheduled = true;
                int i = 0;
                this.carrierConnected = false;
                this.replyProxy = null;
                this.outbound.clear();
                this.outboundBytes = 0;
                ArrayList arrayList = new ArrayList(this.streams.values());
                this.streams.clear();
                this.lock.notifyAll();
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    closeSocket(((Stream) obj).socket);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.utils.proxy.WebProxyTransport$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$failCarrier$4();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$failCarrier$4() {
        destroyWebView();
        synchronized (this.lock) {
            try {
                if (this.stopped) {
                    return;
                }
                AndroidUtilities.runOnUIThread(new WebProxyTransport$$ExternalSyntheticLambda2(this), 1000L);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // org.telegram.ui.Components.ForegroundDetector.Listener
    public void onBecameForeground() {
        AndroidUtilities.runOnUIThread(new WebProxyTransport$$ExternalSyntheticLambda2(this));
    }

    private void destroyWebView() {
        WebView webView = this.webView;
        this.webView = null;
        this.replyProxy = null;
        if (webView != null) {
            try {
                webView.stopLoading();
                webView.loadUrl("about:blank");
                webView.removeAllViews();
                webView.destroy();
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }
    }

    private static byte[] decodeSecret(String str) {
        byte[] bArrDecode;
        if (str == null) {
            return null;
        }
        String strTrim = str.trim();
        if ((strTrim.length() == 32 || strTrim.length() == 34) && strTrim.matches("[0-9a-fA-F]+")) {
            int length = strTrim.length() / 2;
            bArrDecode = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArrDecode[i] = (byte) Integer.parseInt(strTrim.substring(i2, i2 + 2), 16);
            }
        } else {
            try {
                bArrDecode = Base64.decode(strTrim, 10);
            } catch (Exception unused) {
                return null;
            }
        }
        if (bArrDecode.length == 16 || (bArrDecode.length == 17 && (bArrDecode[0] & UByte.MAX_VALUE) == 221)) {
            return bArrDecode;
        }
        return null;
    }

    private static String randomToken(int i) {
        byte[] bArr = new byte[i];
        new SecureRandom().nextBytes(bArr);
        return Base64.encodeToString(bArr, 11);
    }

    private static byte[] uint32(int i) {
        return ByteBuffer.allocate(4).putInt(i).array();
    }

    private static void closeSocket(Socket socket) {
        try {
            socket.close();
        } catch (Exception unused) {
        }
    }

    public static final class Stream {
        private final int id;
        private boolean opened;
        private long receiveWindow;
        private long sendWindow;
        private final Socket socket;

        private Stream(int i, Socket socket) {
            this.sendWindow = 4194304L;
            this.receiveWindow = 4194304L;
            this.id = i;
            this.socket = socket;
        }
    }

    public static final class Address {
        private final String host;
        private final String path;
        private final String value;

        private Address(String str, String str2) {
            this.host = str;
            this.path = str2;
            if (!str2.isEmpty()) {
                str = str + "/" + str2;
            }
            this.value = str;
        }
    }
}
