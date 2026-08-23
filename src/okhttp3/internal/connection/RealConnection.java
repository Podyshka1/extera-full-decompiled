package okhttp3.internal.connection;

import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Address;
import okhttp3.Connection;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticBUOutline1;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.FlowControlListener;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.StreamResetException;
import okhttp3.internal.tls.OkHostnameVerifier;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.Timeout;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 r2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001rB[\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010$\u001a\u00020CH\u0016J\r\u0010*\u001a\u00020CH\u0000¢\u0006\u0002\bDJ\r\u0010E\u001a\u00020CH\u0000¢\u0006\u0002\bFJ\u0006\u0010G\u001a\u00020CJ\b\u0010H\u001a\u00020CH\u0002J%\u0010I\u001a\u00020%2\u0006\u0010J\u001a\u00020K2\u000e\u0010L\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010MH\u0000¢\u0006\u0002\bNJ\u0016\u0010O\u001a\u00020%2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\n0MH\u0002J\u0010\u0010Q\u001a\u00020%2\u0006\u0010R\u001a\u00020SH\u0002J\u0018\u0010T\u001a\u00020%2\u0006\u0010R\u001a\u00020S2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u001d\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0000¢\u0006\u0002\b[J\r\u0010\\\u001a\u00020CH\u0000¢\u0006\u0002\b]J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010^\u001a\u00020CH\u0016J\b\u0010\u0012\u001a\u00020\fH\u0016J\u000e\u0010_\u001a\u00020%2\u0006\u0010`\u001a\u00020%J\u0010\u0010a\u001a\u00020C2\u0006\u0010b\u001a\u00020cH\u0016J\u0018\u0010d\u001a\u00020C2\u0006\u0010e\u001a\u00020#2\u0006\u0010f\u001a\u00020gH\u0016J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J%\u0010h\u001a\u00020C2\u0006\u0010W\u001a\u00020X2\u0006\u0010i\u001a\u00020\n2\u0006\u0010j\u001a\u00020kH\u0000¢\u0006\u0002\blJ\u001a\u0010m\u001a\u00020C2\u0006\u0010n\u001a\u0002082\b\u0010o\u001a\u0004\u0018\u00010kH\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010p\u001a\u00020qH\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\t\u001a\u00020\nX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u00020%X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R\u000e\u0010*\u001a\u00020%X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010+\u001a\u00020\u0015X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u000e\u00100\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u00103\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u0015@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b4\u0010-R\u001d\u00105\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002080706¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u001a\u0010;\u001a\u00020<X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0014\u0010A\u001a\u00020%8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bB\u0010'¨\u0006s"}, d2 = {"Lokhttp3/internal/connection/RealConnection;", "Lokhttp3/internal/http2/Http2Connection$Listener;", "Lokhttp3/Connection;", "Lokhttp3/internal/http/ExchangeCodec$Carrier;", "Lokhttp3/internal/concurrent/Lockable;", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "connectionPool", "Lokhttp3/internal/connection/RealConnectionPool;", "route", "Lokhttp3/Route;", "rawSocket", "Ljava/net/Socket;", "javaNetSocket", "handshake", "Lokhttp3/Handshake;", "protocol", "Lokhttp3/Protocol;", "socket", "Lokhttp3/internal/connection/BufferedSocket;", "pingIntervalMillis", _UrlKt.FRAGMENT_ENCODE_SET, "connectionListener", "Lokhttp3/internal/connection/ConnectionListener;", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;Ljava/net/Socket;Lokhttp3/Handshake;Lokhttp3/Protocol;Lokhttp3/internal/connection/BufferedSocket;ILokhttp3/internal/connection/ConnectionListener;)V", "getTaskRunner", "()Lokhttp3/internal/concurrent/TaskRunner;", "getConnectionPool", "()Lokhttp3/internal/connection/RealConnectionPool;", "getRoute", "()Lokhttp3/Route;", "getConnectionListener$okhttp", "()Lokhttp3/internal/connection/ConnectionListener;", "http2Connection", "Lokhttp3/internal/http2/Http2Connection;", "noNewExchanges", _UrlKt.FRAGMENT_ENCODE_SET, "getNoNewExchanges", "()Z", "setNoNewExchanges", "(Z)V", "noCoalescedConnections", "routeFailureCount", "getRouteFailureCount$okhttp", "()I", "setRouteFailureCount$okhttp", "(I)V", "successCount", "refusedStreamCount", "value", "allocationLimit", "getAllocationLimit$okhttp", "calls", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/ref/Reference;", "Lokhttp3/internal/connection/RealCall;", "getCalls", "()Ljava/util/List;", "idleAtNs", _UrlKt.FRAGMENT_ENCODE_SET, "getIdleAtNs", "()J", "setIdleAtNs", "(J)V", "isMultiplexed", "isMultiplexed$okhttp", _UrlKt.FRAGMENT_ENCODE_SET, "noCoalescedConnections$okhttp", "incrementSuccessCount", "incrementSuccessCount$okhttp", "start", "startHttp2", "isEligible", "address", "Lokhttp3/Address;", "routes", _UrlKt.FRAGMENT_ENCODE_SET, "isEligible$okhttp", "routeMatchesAny", "candidates", "supportsUrl", "url", "Lokhttp3/HttpUrl;", "certificateSupportHost", "newCodec", "Lokhttp3/internal/http/ExchangeCodec;", "client", "Lokhttp3/OkHttpClient;", "chain", "Lokhttp3/internal/http/RealInterceptorChain;", "newCodec$okhttp", "useAsSocket", "useAsSocket$okhttp", "cancel", "isHealthy", "doExtensiveChecks", "onStream", "stream", "Lokhttp3/internal/http2/Http2Stream;", "onSettings", "connection", "settings", "Lokhttp3/internal/http2/Settings;", "connectFailed", "failedRoute", "failure", "Ljava/io/IOException;", "connectFailed$okhttp", "trackFailure", "call", "e", "toString", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n+ 2 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,463:1\n63#2:464\n63#2:465\n63#2:466\n55#2,4:467\n55#2,4:474\n49#2,4:478\n63#2:482\n63#2:483\n63#2:484\n1761#3,3:471\n*S KotlinDebug\n*F\n+ 1 RealConnection.kt\nokhttp3/internal/connection/RealConnection\n*L\n133#1:464\n141#1:465\n147#1:466\n185#1:467,4\n241#1:474,4\n301#1:478,4\n318#1:482\n337#1:483\n372#1:484\n234#1:471,3\n*E\n"})
public final class RealConnection extends Http2Connection.Listener implements Connection, ExchangeCodec.Carrier, Lockable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final long IDLE_CONNECTION_HEALTHY_NS = 10000000000L;
    private final ConnectionListener connectionListener;
    private final RealConnectionPool connectionPool;
    private final Handshake handshake;
    private Http2Connection http2Connection;
    private final Socket javaNetSocket;
    private boolean noCoalescedConnections;
    private boolean noNewExchanges;
    private final int pingIntervalMillis;
    private final Protocol protocol;
    private final Socket rawSocket;
    private int refusedStreamCount;
    private final Route route;
    private int routeFailureCount;
    private final BufferedSocket socket;
    private int successCount;
    private final TaskRunner taskRunner;
    private int allocationLimit = 1;
    private final List<Reference<RealCall>> calls = new ArrayList();
    private long idleAtNs = LongCompanionObject.MAX_VALUE;

    public final boolean isHealthy(boolean doExtensiveChecks) {
        long j;
        if (_UtilJvmKt.assertionsEnabled && Thread.holdsLock(this)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m827m(Thread.currentThread().getName(), " MUST NOT hold lock on ", this);
            return false;
        }
        long jNanoTime = System.nanoTime();
        if (this.rawSocket.isClosed() || this.javaNetSocket.isClosed() || this.javaNetSocket.isInputShutdown() || this.javaNetSocket.isOutputShutdown()) {
            return false;
        }
        Http2Connection http2Connection = this.http2Connection;
        if (http2Connection == null) {
            synchronized (this) {
                j = jNanoTime - this.idleAtNs;
            }
            if (j < IDLE_CONNECTION_HEALTHY_NS || !doExtensiveChecks) {
                return true;
            }
            return _UtilJvmKt.isHealthy(this.javaNetSocket, this.socket.getSource());
        }
        return http2Connection.isHealthy(jNanoTime);
    }

    private final boolean supportsUrl(HttpUrl url) {
        Handshake handshake;
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m827m(Thread.currentThread().getName(), " MUST hold lock on ", this);
            return false;
        }
        HttpUrl httpUrlUrl = getRoute().address().url();
        if (url.port() != httpUrlUrl.port()) {
            return false;
        }
        if (Intrinsics.areEqual(url.host(), httpUrlUrl.host())) {
            return true;
        }
        return (this.noCoalescedConnections || (handshake = this.handshake) == null || !certificateSupportHost(url, handshake)) ? false : true;
    }

    public final boolean isEligible$okhttp(Address address, List<Route> routes) {
        if (_UtilJvmKt.assertionsEnabled && !Thread.holdsLock(this)) {
            _UtilJvmKt$$ExternalSyntheticBUOutline1.m827m(Thread.currentThread().getName(), " MUST hold lock on ", this);
            return false;
        }
        if (this.calls.size() >= this.allocationLimit || this.noNewExchanges || !getRoute().address().equalsNonHost$okhttp(address)) {
            return false;
        }
        if (Intrinsics.areEqual(address.url().host(), route().address().url().host())) {
            return true;
        }
        if (this.http2Connection == null || routes == null || !routeMatchesAny(routes) || address.hostnameVerifier() != OkHostnameVerifier.INSTANCE || !supportsUrl(address.url())) {
            return false;
        }
        try {
            address.certificatePinner().check(address.url().host(), getHandshake().peerCertificates());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public RealConnection(TaskRunner taskRunner, RealConnectionPool realConnectionPool, Route route, Socket socket, Socket socket2, Handshake handshake, Protocol protocol, BufferedSocket bufferedSocket, int i, ConnectionListener connectionListener) {
        this.taskRunner = taskRunner;
        this.connectionPool = realConnectionPool;
        this.route = route;
        this.rawSocket = socket;
        this.javaNetSocket = socket2;
        this.handshake = handshake;
        this.protocol = protocol;
        this.socket = bufferedSocket;
        this.pingIntervalMillis = i;
        this.connectionListener = connectionListener;
    }

    public final TaskRunner getTaskRunner() {
        return this.taskRunner;
    }

    public final void incrementSuccessCount$okhttp() {
        synchronized (this) {
            this.successCount++;
        }
    }

    public final void noCoalescedConnections$okhttp() {
        synchronized (this) {
            this.noCoalescedConnections = true;
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public void noNewExchanges() {
        synchronized (this) {
            this.noNewExchanges = true;
            Unit unit = Unit.INSTANCE;
        }
        this.connectionListener.noNewExchanges(this);
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void onSettings(Http2Connection connection, Settings settings) {
        synchronized (this) {
            this.allocationLimit = settings.getMaxConcurrentStreams();
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0047  */
    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void trackFailure(RealCall call, IOException e) {
        boolean z;
        synchronized (this) {
            try {
                if (e instanceof StreamResetException) {
                    if (((StreamResetException) e).errorCode == ErrorCode.REFUSED_STREAM) {
                        int i = this.refusedStreamCount + 1;
                        this.refusedStreamCount = i;
                        if (i > 1) {
                            z = !this.noNewExchanges;
                            this.noNewExchanges = true;
                            this.routeFailureCount++;
                        } else {
                            z = false;
                        }
                    } else if (((StreamResetException) e).errorCode != ErrorCode.CANCEL || !call.getCanceled()) {
                        z = !this.noNewExchanges;
                        this.noNewExchanges = true;
                        this.routeFailureCount++;
                    }
                } else if (!isMultiplexed$okhttp() || (e instanceof ConnectionShutdownException)) {
                    boolean z2 = !this.noNewExchanges;
                    this.noNewExchanges = true;
                    if (this.successCount == 0) {
                        if (e != null) {
                            connectFailed$okhttp(call.getClient(), getRoute(), e);
                        }
                        this.routeFailureCount++;
                    }
                    z = z2;
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            this.connectionListener.noNewExchanges(this);
        }
    }

    public final RealConnectionPool getConnectionPool() {
        return this.connectionPool;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public Route getRoute() {
        return this.route;
    }

    /* JADX INFO: renamed from: getConnectionListener$okhttp, reason: from getter */
    public final ConnectionListener getConnectionListener() {
        return this.connectionListener;
    }

    public final boolean getNoNewExchanges() {
        return this.noNewExchanges;
    }

    public final void setNoNewExchanges(boolean z) {
        this.noNewExchanges = z;
    }

    /* JADX INFO: renamed from: getRouteFailureCount$okhttp, reason: from getter */
    public final int getRouteFailureCount() {
        return this.routeFailureCount;
    }

    public final void setRouteFailureCount$okhttp(int i) {
        this.routeFailureCount = i;
    }

    /* JADX INFO: renamed from: getAllocationLimit$okhttp, reason: from getter */
    public final int getAllocationLimit() {
        return this.allocationLimit;
    }

    public final List<Reference<RealCall>> getCalls() {
        return this.calls;
    }

    public final long getIdleAtNs() {
        return this.idleAtNs;
    }

    public final void setIdleAtNs(long j) {
        this.idleAtNs = j;
    }

    public final boolean isMultiplexed$okhttp() {
        return this.http2Connection != null;
    }

    public final void start() throws SocketException {
        this.idleAtNs = System.nanoTime();
        Protocol protocol = this.protocol;
        if (protocol == Protocol.HTTP_2 || protocol == Protocol.H2_PRIOR_KNOWLEDGE) {
            startHttp2();
        }
    }

    private final void startHttp2() throws SocketException {
        this.javaNetSocket.setSoTimeout(0);
        Object obj = this.connectionListener;
        FlowControlListener flowControlListener = obj instanceof FlowControlListener ? (FlowControlListener) obj : null;
        if (flowControlListener == null) {
            flowControlListener = FlowControlListener.None.INSTANCE;
        }
        Http2Connection http2ConnectionBuild = new Http2Connection.Builder(true, this.taskRunner).socket(this.socket, getRoute().address().url().host()).listener(this).pingIntervalMillis(this.pingIntervalMillis).flowControlListener(flowControlListener).build();
        this.http2Connection = http2ConnectionBuild;
        this.allocationLimit = Http2Connection.INSTANCE.getDEFAULT_SETTINGS().getMaxConcurrentStreams();
        Http2Connection.start$default(http2ConnectionBuild, false, 1, null);
    }

    private final boolean routeMatchesAny(List<Route> candidates) {
        List<Route> list = candidates;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        for (Route route : list) {
            Proxy.Type type = route.proxy().type();
            Proxy.Type type2 = Proxy.Type.DIRECT;
            if (type == type2 && getRoute().proxy().type() == type2 && Intrinsics.areEqual(getRoute().socketAddress(), route.socketAddress())) {
                return true;
            }
        }
        return false;
    }

    private final boolean certificateSupportHost(HttpUrl url, Handshake handshake) {
        List<Certificate> listPeerCertificates = handshake.peerCertificates();
        return !listPeerCertificates.isEmpty() && OkHostnameVerifier.INSTANCE.verify(url.host(), (X509Certificate) listPeerCertificates.get(0));
    }

    public final ExchangeCodec newCodec$okhttp(OkHttpClient client, RealInterceptorChain chain) {
        BufferedSocket bufferedSocket = this.socket;
        Http2Connection http2Connection = this.http2Connection;
        if (http2Connection != null) {
            return new Http2ExchangeCodec(client, this, chain, http2Connection);
        }
        this.javaNetSocket.setSoTimeout(chain.readTimeoutMillis());
        Timeout this$0 = bufferedSocket.getSource().getThis$0();
        long readTimeoutMillis$okhttp = chain.getReadTimeoutMillis();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this$0.timeout(readTimeoutMillis$okhttp, timeUnit);
        bufferedSocket.getSink().getThis$0().timeout(chain.getWriteTimeoutMillis(), timeUnit);
        return new Http1ExchangeCodec(client, this, bufferedSocket);
    }

    public final void useAsSocket$okhttp() throws SocketException {
        this.javaNetSocket.setSoTimeout(0);
        noNewExchanges();
    }

    @Override // okhttp3.Connection
    public Route route() {
        return getRoute();
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: cancel */
    public void mo5018cancel() {
        _UtilJvmKt.closeQuietly(this.rawSocket);
    }

    @Override // okhttp3.Connection
    /* JADX INFO: renamed from: socket, reason: from getter */
    public Socket getJavaNetSocket() {
        return this.javaNetSocket;
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public void onStream(Http2Stream stream) {
        stream.close(ErrorCode.REFUSED_STREAM, null);
    }

    @Override // okhttp3.Connection
    /* JADX INFO: renamed from: handshake, reason: from getter */
    public Handshake getHandshake() {
        return this.handshake;
    }

    public final void connectFailed$okhttp(OkHttpClient client, Route failedRoute, IOException failure) {
        if (failedRoute.proxy().type() != Proxy.Type.DIRECT) {
            Address address = failedRoute.address();
            address.proxySelector().connectFailed(address.url().uri(), failedRoute.proxy().address(), failure);
        }
        client.getRouteDatabase().failed(failedRoute);
    }

    @Override // okhttp3.Connection
    /* JADX INFO: renamed from: protocol, reason: from getter */
    public Protocol getProtocol() {
        return this.protocol;
    }

    public String toString() {
        Object objCipherSuite;
        StringBuilder sb = new StringBuilder("Connection{");
        sb.append(getRoute().address().url().host());
        sb.append(':');
        sb.append(getRoute().address().url().port());
        sb.append(", proxy=");
        sb.append(getRoute().proxy());
        sb.append(" hostAddress=");
        sb.append(getRoute().socketAddress());
        sb.append(" cipherSuite=");
        Handshake handshake = this.handshake;
        if (handshake == null || (objCipherSuite = handshake.cipherSuite()) == null) {
            objCipherSuite = "none";
        }
        sb.append(objCipherSuite);
        sb.append(" protocol=");
        sb.append(this.protocol);
        sb.append('}');
        return sb.toString();
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J.\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lokhttp3/internal/connection/RealConnection$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "IDLE_CONNECTION_HEALTHY_NS", _UrlKt.FRAGMENT_ENCODE_SET, "newTestConnection", "Lokhttp3/internal/connection/RealConnection;", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "connectionPool", "Lokhttp3/internal/connection/RealConnectionPool;", "route", "Lokhttp3/Route;", "socket", "Ljava/net/Socket;", "idleAtNs", "okhttp"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final RealConnection newTestConnection(TaskRunner taskRunner, RealConnectionPool connectionPool, Route route, Socket socket, long idleAtNs) {
            RealConnection realConnection = new RealConnection(taskRunner, connectionPool, route, new Socket(), socket, null, Protocol.HTTP_2, new BufferedSocket() { // from class: okhttp3.internal.connection.RealConnection$Companion$newTestConnection$bufferedSocket$1
                private final Buffer sink = new Buffer();
                private final Buffer source = new Buffer();

                @Override // okhttp3.internal.connection.BufferedSocket, okio.Socket
                public void cancel() {
                }

                @Override // okhttp3.internal.connection.BufferedSocket, okio.Socket
                public Buffer getSink() {
                    return this.sink;
                }

                @Override // okhttp3.internal.connection.BufferedSocket, okio.Socket
                public Buffer getSource() {
                    return this.source;
                }
            }, 0, ConnectionListener.INSTANCE.getNONE());
            realConnection.setIdleAtNs(idleAtNs);
            return realConnection;
        }
    }
}
