package org.telegram.ui.Wallet;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.neovisionaries.ws.client.OpeningHandshakeException;
import com.neovisionaries.ws.client.WebSocket;
import com.neovisionaries.ws.client.WebSocketAdapter;
import com.neovisionaries.ws.client.WebSocketException;
import com.neovisionaries.ws.client.WebSocketFactory;
import com.neovisionaries.ws.client.WebSocketFrame;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_toncenter;

/* JADX INFO: loaded from: classes8.dex */
public class GramWalletStreaming {
    public final String address;
    public final int currentAccount;
    private int generation;
    private long lastPong;
    private int reconnectAttempt;
    private boolean running;
    private WebSocket socket;
    private boolean subscribed;
    private final IGramWalletStreamingSubscriber subscriber;
    private String subscriptionId;
    private int subscriptionVersion;
    private int requestId = -1;
    private final Runnable reconnect = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStreaming$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.requestUrl();
        }
    };
    private final Runnable expire = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStreaming$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    };
    private final Runnable timeout = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStreaming$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$1();
        }
    };
    private final Runnable heartbeat = new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStreaming.1
        @Override // java.lang.Runnable
        public void run() {
            if (GramWalletStreaming.this.running && GramWalletStreaming.this.subscribed && GramWalletStreaming.this.socket != null) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - GramWalletStreaming.this.lastPong;
                GramWalletStreaming gramWalletStreaming = GramWalletStreaming.this;
                if (jElapsedRealtime >= NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
                    gramWalletStreaming.retry("heartbeat timed out");
                    return;
                }
                gramWalletStreaming.log("sending ping; last pong " + (SystemClock.elapsedRealtime() - GramWalletStreaming.this.lastPong) + " ms ago");
                GramWalletStreaming.this.sendText("{\"operation\":\"ping\",\"id\":\"heartbeat\"}");
                AndroidUtilities.runOnUIThread(this, 15000L);
            }
        }
    };

    public interface IGramWalletStreamingSubscriber {
        void onEvent(JSONObject jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendSubscription() {
        try {
            JSONArray jSONArrayPut = new JSONArray().put(this.address);
            StringBuilder sb = new StringBuilder("wallet-");
            int i = this.subscriptionVersion + 1;
            this.subscriptionVersion = i;
            sb.append(i);
            this.subscriptionId = sb.toString();
            JSONObject jSONObjectPut = new JSONObject().put("operation", "subscribe").put("id", this.subscriptionId).put("types", new JSONArray().put("transactions").put("account_state_change")).put("include_address_book", true).put("addresses", jSONArrayPut).put("min_finality", "pending");
            AndroidUtilities.cancelRunOnUIThread(this.timeout);
            AndroidUtilities.runOnUIThread(this.timeout, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            sendText(jSONObjectPut.toString());
        } catch (JSONException unused) {
            retry("could not encode subscription");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (this.running) {
            log("URL expired; renewing connection");
            disconnect();
            requestUrl();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        retry("connection or subscription timed out");
    }

    public GramWalletStreaming(int i, String str, IGramWalletStreamingSubscriber iGramWalletStreamingSubscriber) {
        this.currentAccount = i;
        this.address = str;
        this.subscriber = iGramWalletStreamingSubscriber;
    }

    public boolean isRunning() {
        return this.running;
    }

    public void start() {
        if (this.running || TextUtils.isEmpty(this.address)) {
            log("start ignored: running=" + this.running + ", emptyAddress=" + TextUtils.isEmpty(this.address));
            return;
        }
        log("starting; address=" + this.address);
        this.running = true;
        this.reconnectAttempt = 0;
        requestUrl();
    }

    public void stop() {
        if (this.running) {
            log("stopping");
            this.running = false;
            disconnect();
        }
    }

    private ConnectionsManager connections() {
        return ConnectionsManager.getInstance(this.currentAccount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestUrl() {
        if (this.running) {
            AndroidUtilities.cancelRunOnUIThread(this.reconnect);
            final int i = this.generation + 1;
            this.generation = i;
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            log("requesting streaming URL; retry=" + this.reconnectAttempt);
            AndroidUtilities.runOnUIThread(this.timeout, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            this.requestId = connections().sendRequestTyped(new TL_toncenter.getStreamingUrl(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.GramWalletStreaming$$ExternalSyntheticLambda3
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$requestUrl$2(i, jElapsedRealtime, (TL_toncenter.streamingUrl) obj, (TLRPC.TL_error) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestUrl$2(int i, long j, TL_toncenter.streamingUrl streamingurl, TLRPC.TL_error tL_error) {
        if (!this.running || this.generation != i) {
            log("ignoring stale URL response; attempt=" + i);
            return;
        }
        StringBuilder sb = new StringBuilder("URL response after ");
        sb.append(SystemClock.elapsedRealtime() - j);
        sb.append(" ms; errorCode=");
        sb.append(tL_error == null ? "none" : Integer.valueOf(tL_error.code));
        log(sb.toString());
        this.requestId = -1;
        AndroidUtilities.cancelRunOnUIThread(this.timeout);
        if (streamingurl == null || TextUtils.isEmpty(streamingurl.url)) {
            retry("could not obtain streaming URL");
            return;
        }
        long currentTime = (((long) streamingurl.expires) - ((long) connections().getCurrentTime())) * 1000;
        log("URL expires=" + streamingurl.expires + ", remaining=" + currentTime + " ms");
        if (currentTime <= 0) {
            retry("received expired streaming URL");
        } else {
            AndroidUtilities.runOnUIThread(this.expire, currentTime);
            connect(streamingurl.url, i);
        }
    }

    private void connect(String str, int i) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        log("opening websocket; attempt=" + i);
        try {
            WebSocket webSocketCreateSocket = new WebSocketFactory().setConnectionTimeout(10000).createSocket(str);
            this.socket = webSocketCreateSocket;
            webSocketCreateSocket.addListener(new C64402(i, jElapsedRealtime));
            AndroidUtilities.runOnUIThread(this.timeout, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS);
            this.socket.connectAsynchronously();
        } catch (Exception e) {
            retry("could not open websocket: ".concat(e.getClass().getSimpleName()));
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Wallet.GramWalletStreaming$2 */
    public class C64402 extends WebSocketAdapter {
        final /* synthetic */ int val$attempt;
        final /* synthetic */ long val$connectingAt;

        public C64402(int i, long j) {
            this.val$attempt = i;
            this.val$connectingAt = j;
        }

        @Override // com.neovisionaries.ws.client.WebSocketListener
        public void onConnected(final WebSocket webSocket, Map<String, List<String>> map) {
            final int i = this.val$attempt;
            final long j = this.val$connectingAt;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStreaming$2$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onConnected$0(webSocket, i, j);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onConnected$0(WebSocket webSocket, int i, long j) {
            boolean zIsCurrent = GramWalletStreaming.this.isCurrent(webSocket, i);
            GramWalletStreaming gramWalletStreaming = GramWalletStreaming.this;
            if (!zIsCurrent) {
                gramWalletStreaming.log("closing stale connected websocket; attempt=" + i);
                webSocket.disconnect();
                return;
            }
            gramWalletStreaming.log("websocket connected after " + (SystemClock.elapsedRealtime() - j) + " ms");
            GramWalletStreaming.this.sendSubscription();
        }

        @Override // com.neovisionaries.ws.client.WebSocketListener
        public void onTextMessage(final WebSocket webSocket, String str) {
            FileLog.m1037d("[gram-wallet-streaming] account=" + GramWalletStreaming.this.currentAccount + " generation=" + this.val$attempt + " receive <- " + str);
            try {
                final JSONObject jSONObject = new JSONObject(str);
                final int i = this.val$attempt;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStreaming$2$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTextMessage$2(webSocket, i, jSONObject);
                    }
                });
            } catch (JSONException unused) {
                final int i2 = this.val$attempt;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStreaming$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onTextMessage$1(webSocket, i2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTextMessage$1(WebSocket webSocket, int i) {
            if (GramWalletStreaming.this.isCurrent(webSocket, i)) {
                GramWalletStreaming.this.retry("invalid streaming JSON");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onTextMessage$2(WebSocket webSocket, int i, JSONObject jSONObject) {
            if (GramWalletStreaming.this.isCurrent(webSocket, i)) {
                GramWalletStreaming.this.handleMessage(jSONObject);
            }
        }

        @Override // com.neovisionaries.ws.client.WebSocketListener
        public void onConnectError(WebSocket webSocket, WebSocketException webSocketException) {
            GramWalletStreaming.this.failed(webSocket, this.val$attempt, "connect error: " + GramWalletStreaming.errorDescription(webSocketException));
        }

        @Override // com.neovisionaries.ws.client.WebSocketListener
        public void onError(WebSocket webSocket, WebSocketException webSocketException) {
            GramWalletStreaming.this.failed(webSocket, this.val$attempt, "websocket error: " + GramWalletStreaming.errorDescription(webSocketException));
        }

        @Override // com.neovisionaries.ws.client.WebSocketListener
        public void onDisconnected(WebSocket webSocket, WebSocketFrame webSocketFrame, WebSocketFrame webSocketFrame2, boolean z) {
            GramWalletStreaming gramWalletStreaming = GramWalletStreaming.this;
            int i = this.val$attempt;
            StringBuilder sb = new StringBuilder("websocket disconnected; closedByServer=");
            sb.append(z);
            sb.append(", serverCloseCode=");
            Object objValueOf = "none";
            sb.append(webSocketFrame == null ? "none" : Integer.valueOf(webSocketFrame.getCloseCode()));
            sb.append(", clientCloseCode=");
            if (webSocketFrame2 != null) {
                objValueOf = Integer.valueOf(webSocketFrame2.getCloseCode());
            }
            sb.append(objValueOf);
            gramWalletStreaming.failed(webSocket, i, sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCurrent(WebSocket webSocket, int i) {
        return this.running && this.socket == webSocket && this.generation == i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String errorDescription(WebSocketException webSocketException) {
        String strValueOf = String.valueOf(webSocketException.getError());
        if (webSocketException instanceof OpeningHandshakeException) {
            OpeningHandshakeException openingHandshakeException = (OpeningHandshakeException) webSocketException;
            if (openingHandshakeException.getStatusLine() != null) {
                return strValueOf + ", HTTP " + openingHandshakeException.getStatusLine().getStatusCode();
            }
        }
        return strValueOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void failed(final WebSocket webSocket, final int i, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.GramWalletStreaming$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$failed$3(webSocket, i, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$failed$3(WebSocket webSocket, int i, String str) {
        if (isCurrent(webSocket, i)) {
            retry(str);
            return;
        }
        log("ignoring stale socket callback; attempt=" + i + ", " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(JSONObject jSONObject) {
        String str;
        String strOptString = jSONObject.optString("status");
        if ((jSONObject.has("error") && !jSONObject.isNull("error")) || "error".equals(strOptString)) {
            log("subscription error; id=" + jSONObject.optString("id") + ", code=" + jSONObject.optString("code") + ", status=" + strOptString + ", error=" + jSONObject.opt("error") + ", message=" + jSONObject.optString("message"));
            retry("subscription rejected");
            return;
        }
        if ("subscribed".equals(strOptString)) {
            log("subscription acknowledgement: " + jSONObject);
            if (TextUtils.equals(this.subscriptionId, jSONObject.optString("id"))) {
                this.subscribed = true;
                this.reconnectAttempt = 0;
                this.lastPong = SystemClock.elapsedRealtime();
                AndroidUtilities.cancelRunOnUIThread(this.timeout);
                AndroidUtilities.cancelRunOnUIThread(this.heartbeat);
                AndroidUtilities.runOnUIThread(this.heartbeat, 15000L);
                log("subscription acknowledged; requested transactions and account state");
                return;
            }
            return;
        }
        if ("pong".equals(strOptString) && "heartbeat".equals(jSONObject.optString("id"))) {
            log("received pong");
            this.lastPong = SystemClock.elapsedRealtime();
            return;
        }
        if (!this.subscribed) {
            log("ignoring message before subscription; type=" + jSONObject.optString("type") + ", status=" + strOptString);
            return;
        }
        String strOptString2 = jSONObject.optString("type");
        if (!"account_state_change".equals(strOptString2) || GramWallet.addressEquals(this.address, jSONObject.optString("account"))) {
            if ("transactions".equals(strOptString2) || "account_state_change".equals(strOptString2) || "trace_invalidated".equals(strOptString2)) {
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("transactions");
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("state");
                StringBuilder sb = new StringBuilder("event type=");
                sb.append(strOptString2);
                sb.append(", finality=");
                sb.append(jSONObject.optString("finality"));
                sb.append(", trace=");
                sb.append(jSONObject.optString("trace_external_hash_norm"));
                String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                if (jSONArrayOptJSONArray == null) {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                } else {
                    str = ", transactions=" + jSONArrayOptJSONArray.length();
                }
                sb.append(str);
                if (jSONObjectOptJSONObject != null) {
                    str2 = ", balance=" + jSONObjectOptJSONObject.optString("balance");
                }
                sb.append(str2);
                log(sb.toString());
                if ("transactions".equals(strOptString2)) {
                    deliverTransactions(jSONObject, this.address);
                    return;
                } else {
                    this.subscriber.onEvent(jSONObject);
                    return;
                }
            }
            log("ignoring message; type=" + strOptString2 + ", status=" + strOptString);
        }
    }

    private void deliverTransactions(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray;
        if (str == null || (jSONArrayOptJSONArray = jSONObject.optJSONArray("transactions")) == null) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject != null && GramWallet.addressEquals(str, jSONObjectOptJSONObject.optString("account"))) {
                jSONArray.put(jSONObjectOptJSONObject);
            }
        }
        if (jSONArray.length() == 0) {
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
            jSONObject2.put("transactions", jSONArray);
            this.subscriber.onEvent(jSONObject2);
        } catch (JSONException unused) {
            log("could not filter streaming transactions");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retry(String str) {
        if (this.running) {
            disconnect();
            int i = this.reconnectAttempt;
            this.reconnectAttempt = i + 1;
            long jMin = Math.min(NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, 1000 << Math.min(i, 5)) + ((long) (Math.random() * 500.0d));
            log(str + "; retrying in " + jMin + " ms");
            AndroidUtilities.runOnUIThread(this.reconnect, jMin);
        }
    }

    private void disconnect() {
        StringBuilder sb = new StringBuilder("disconnecting; socket=");
        sb.append(this.socket != null);
        sb.append(", subscribed=");
        sb.append(this.subscribed);
        sb.append(", URL request=");
        sb.append(this.requestId);
        log(sb.toString());
        this.generation++;
        this.subscribed = false;
        AndroidUtilities.cancelRunOnUIThread(this.reconnect);
        AndroidUtilities.cancelRunOnUIThread(this.expire);
        AndroidUtilities.cancelRunOnUIThread(this.timeout);
        AndroidUtilities.cancelRunOnUIThread(this.heartbeat);
        if (this.requestId >= 0) {
            connections().cancelRequest(this.requestId, true);
            this.requestId = -1;
        }
        WebSocket webSocket = this.socket;
        this.socket = null;
        if (webSocket != null) {
            webSocket.disconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendText(String str) {
        log("send -> " + str);
        this.socket.sendText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String str) {
        FileLog.m1037d("[gram-wallet-streaming] account=" + this.currentAccount + " generation=" + this.generation + " " + str);
    }
}
