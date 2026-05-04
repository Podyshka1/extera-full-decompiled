package okhttp3.internal.connection;

import java.io.IOException;
import java.net.ConnectException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.ConnectionSpec;
import okhttp3.Handshake;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import okio.Timeout;

/* JADX INFO: loaded from: classes.dex */
public final class ConnectPlan implements RoutePlanner.Plan, ExchangeCodec.Carrier {
    public static final Companion Companion = new Companion(null);
    private static final int MAX_TUNNEL_ATTEMPTS = 21;
    private static final String NPE_THROW_WITH_NULL = "throw with null exception";
    private final int attempt;
    private final RealCall call;
    private volatile boolean canceled;
    private RealConnection connection;
    private final RealConnectionPool connectionPool;
    private final int connectionSpecIndex;
    private Handshake handshake;
    private final boolean isTlsFallback;
    private Socket javaNetSocket;
    private final int pingIntervalMillis;
    private Protocol protocol;
    private Socket rawSocket;
    private final int readTimeoutMillis;
    private final boolean retryOnConnectionFailure;
    private final Route route;
    private final RealRoutePlanner routePlanner;
    private final List<Route> routes;
    private BufferedSocket socket;
    private final int socketConnectTimeoutMillis;
    private final int socketReadTimeoutMillis;
    private final TaskRunner taskRunner;
    private final Request tunnelRequest;
    private final int writeTimeoutMillis;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public void noNewExchanges() {
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public void trackFailure(RealCall call, IOException iOException) {
        Intrinsics.checkNotNullParameter(call, "call");
    }

    public ConnectPlan(TaskRunner taskRunner, RealConnectionPool connectionPool, int i, int i2, int i3, int i4, int i5, boolean z, RealCall call, RealRoutePlanner routePlanner, Route route, List<Route> list, int i6, Request request, int i7, boolean z2) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(routePlanner, "routePlanner");
        Intrinsics.checkNotNullParameter(route, "route");
        this.taskRunner = taskRunner;
        this.connectionPool = connectionPool;
        this.readTimeoutMillis = i;
        this.writeTimeoutMillis = i2;
        this.socketConnectTimeoutMillis = i3;
        this.socketReadTimeoutMillis = i4;
        this.pingIntervalMillis = i5;
        this.retryOnConnectionFailure = z;
        this.call = call;
        this.routePlanner = routePlanner;
        this.route = route;
        this.routes = list;
        this.attempt = i6;
        this.tunnelRequest = request;
        this.connectionSpecIndex = i7;
        this.isTlsFallback = z2;
    }

    @Override // okhttp3.internal.http.ExchangeCodec.Carrier
    public Route getRoute() {
        return this.route;
    }

    public final List<Route> getRoutes$okhttp() {
        return this.routes;
    }

    public final int getConnectionSpecIndex$okhttp() {
        return this.connectionSpecIndex;
    }

    public final boolean isTlsFallback$okhttp() {
        return this.isTlsFallback;
    }

    public final Socket getJavaNetSocket$okhttp() {
        return this.javaNetSocket;
    }

    public final void setJavaNetSocket$okhttp(Socket socket) {
        this.javaNetSocket = socket;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    public boolean isReady() {
        return this.protocol != null;
    }

    static /* synthetic */ ConnectPlan copy$default(ConnectPlan connectPlan, int i, Request request, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = connectPlan.attempt;
        }
        if ((i3 & 2) != 0) {
            request = connectPlan.tunnelRequest;
        }
        if ((i3 & 4) != 0) {
            i2 = connectPlan.connectionSpecIndex;
        }
        if ((i3 & 8) != 0) {
            z = connectPlan.isTlsFallback;
        }
        return connectPlan.copy(i, request, i2, z);
    }

    private final ConnectPlan copy(int i, Request request, int i2, boolean z) {
        return new ConnectPlan(this.taskRunner, this.connectionPool, this.readTimeoutMillis, this.writeTimeoutMillis, this.socketConnectTimeoutMillis, this.socketReadTimeoutMillis, this.pingIntervalMillis, this.retryOnConnectionFailure, this.call, this.routePlanner, getRoute(), this.routes, i, request, i2, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00fb  */
    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTcp */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RoutePlanner.ConnectResult mo3886connectTcp() throws Throwable {
        ConnectPlan connectPlan;
        ConnectPlan connectPlan2;
        Socket socket;
        Socket socket2;
        if (this.rawSocket != null) {
            throw new IllegalStateException("TCP already connected");
        }
        this.call.getPlansToCancel$okhttp().add(this);
        boolean z = false;
        try {
            try {
                this.call.getEventListener$okhttp().connectStart(this.call, getRoute().socketAddress(), getRoute().proxy());
                this.connectionPool.getConnectionListener$okhttp().connectStart(getRoute(), this.call);
                connectSocket();
                z = true;
                connectPlan2 = this;
                try {
                    RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(connectPlan2, null, null, 6, null);
                    connectPlan2.call.getPlansToCancel$okhttp().remove(this);
                    return connectResult;
                } catch (IOException e) {
                    e = e;
                    IOException iOException = e;
                    if (getRoute().address().proxy() == null && getRoute().proxy().type() != Proxy.Type.DIRECT) {
                        getRoute().address().proxySelector().connectFailed(getRoute().address().url().uri(), getRoute().proxy().address(), iOException);
                    }
                    connectPlan2.call.getEventListener$okhttp().connectFailed(connectPlan2.call, getRoute().socketAddress(), getRoute().proxy(), null, iOException);
                    connectPlan2.connectionPool.getConnectionListener$okhttp().connectFailed(getRoute(), connectPlan2.call, iOException);
                    ConnectPlan connectPlan3 = connectPlan2;
                    try {
                        RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(connectPlan3, null, iOException, 2, null);
                        connectPlan2.call.getPlansToCancel$okhttp().remove(this);
                        if (!z && (socket2 = connectPlan2.rawSocket) != null) {
                            _UtilJvmKt.closeQuietly(socket2);
                        }
                        return connectResult2;
                    } catch (Throwable th) {
                        th = th;
                        connectPlan = connectPlan3;
                        connectPlan.call.getPlansToCancel$okhttp().remove(this);
                        if (!z) {
                            _UtilJvmKt.closeQuietly(socket);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                connectPlan.call.getPlansToCancel$okhttp().remove(this);
                if (!z && (socket = connectPlan.rawSocket) != null) {
                    _UtilJvmKt.closeQuietly(socket);
                }
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            connectPlan2 = this;
        } catch (Throwable th3) {
            th = th3;
            connectPlan = this;
            connectPlan.call.getPlansToCancel$okhttp().remove(this);
            if (!z) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x01da  */
    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: connectTlsEtc */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public RoutePlanner.ConnectResult mo3887connectTlsEtc() throws Throwable {
        IOException iOException;
        ConnectPlan connectPlan;
        Socket socket = this.rawSocket;
        if (socket == null) {
            throw new IllegalArgumentException("TCP not connected");
        }
        if (isReady()) {
            throw new IllegalStateException("already connected");
        }
        List<ConnectionSpec> listConnectionSpecs = getRoute().address().connectionSpecs();
        this.call.getPlansToCancel$okhttp().add(this);
        ConnectPlan connectPlan2 = null;
        boolean z = false;
        try {
            try {
                if (this.tunnelRequest != null) {
                    RoutePlanner.ConnectResult connectResultConnectTunnel$okhttp = connectTunnel$okhttp();
                    if (connectResultConnectTunnel$okhttp.getNextPlan() != null || connectResultConnectTunnel$okhttp.getThrowable() != null) {
                        this.call.getPlansToCancel$okhttp().remove(this);
                        Socket socket2 = this.javaNetSocket;
                        if (socket2 != null) {
                            _UtilJvmKt.closeQuietly(socket2);
                        }
                        _UtilJvmKt.closeQuietly(socket);
                        return connectResultConnectTunnel$okhttp;
                    }
                }
                if (getRoute().address().sslSocketFactory() != null) {
                    BufferedSocket bufferedSocket = this.socket;
                    if (bufferedSocket == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("socket");
                        bufferedSocket = null;
                    }
                    if (bufferedSocket.getSource().getBuffer().exhausted()) {
                        BufferedSocket bufferedSocket2 = this.socket;
                        if (bufferedSocket2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("socket");
                            bufferedSocket2 = null;
                        }
                        if (bufferedSocket2.getSink().getBuffer().exhausted()) {
                            this.call.getEventListener$okhttp().secureConnectStart(this.call);
                            Socket socketCreateSocket = getRoute().address().sslSocketFactory().createSocket(socket, getRoute().address().url().host(), getRoute().address().url().port(), true);
                            Intrinsics.checkNotNull(socketCreateSocket, "null cannot be cast to non-null type javax.net.ssl.SSLSocket");
                            SSLSocket sSLSocket = (SSLSocket) socketCreateSocket;
                            ConnectPlan connectPlanPlanWithCurrentOrInitialConnectionSpec$okhttp = planWithCurrentOrInitialConnectionSpec$okhttp(listConnectionSpecs, sSLSocket);
                            ConnectionSpec connectionSpec = listConnectionSpecs.get(connectPlanPlanWithCurrentOrInitialConnectionSpec$okhttp.connectionSpecIndex);
                            ConnectPlan connectPlanNextConnectionSpec$okhttp = connectPlanPlanWithCurrentOrInitialConnectionSpec$okhttp.nextConnectionSpec$okhttp(listConnectionSpecs, sSLSocket);
                            try {
                                connectionSpec.apply$okhttp(sSLSocket, connectPlanPlanWithCurrentOrInitialConnectionSpec$okhttp.isTlsFallback);
                                connectTls(sSLSocket, connectionSpec);
                                this.call.getEventListener$okhttp().secureConnectEnd(this.call, this.handshake);
                                connectPlan = connectPlanNextConnectionSpec$okhttp;
                            } catch (IOException e) {
                                iOException = e;
                                connectPlan = connectPlanNextConnectionSpec$okhttp;
                                this.call.getEventListener$okhttp().connectFailed(this.call, getRoute().socketAddress(), getRoute().proxy(), null, iOException);
                                this.connectionPool.getConnectionListener$okhttp().connectFailed(getRoute(), this.call, iOException);
                                if (this.retryOnConnectionFailure && RetryTlsHandshakeKt.retryTlsHandshake(iOException)) {
                                    connectPlan2 = connectPlan;
                                }
                                RoutePlanner.ConnectResult connectResult = new RoutePlanner.ConnectResult(this, connectPlan2, iOException);
                                this.call.getPlansToCancel$okhttp().remove(this);
                                if (!z) {
                                    Socket socket3 = this.javaNetSocket;
                                    if (socket3 != null) {
                                        _UtilJvmKt.closeQuietly(socket3);
                                    }
                                    _UtilJvmKt.closeQuietly(socket);
                                }
                                return connectResult;
                            }
                        }
                    }
                    throw new IOException("TLS tunnel buffered too many bytes!");
                }
                this.javaNetSocket = socket;
                List<Protocol> listProtocols = getRoute().address().protocols();
                Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
                if (!listProtocols.contains(protocol)) {
                    protocol = Protocol.HTTP_1_1;
                }
                this.protocol = protocol;
                connectPlan = null;
                try {
                    TaskRunner taskRunner = this.taskRunner;
                    RealConnectionPool realConnectionPool = this.connectionPool;
                    Route route = getRoute();
                    Socket socket4 = this.javaNetSocket;
                    Intrinsics.checkNotNull(socket4);
                    Handshake handshake = this.handshake;
                    Protocol protocol2 = this.protocol;
                    Intrinsics.checkNotNull(protocol2);
                    BufferedSocket bufferedSocket3 = this.socket;
                    if (bufferedSocket3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("socket");
                        bufferedSocket3 = null;
                    }
                    RealConnection realConnection = new RealConnection(taskRunner, realConnectionPool, route, socket, socket4, handshake, protocol2, bufferedSocket3, this.pingIntervalMillis, this.connectionPool.getConnectionListener$okhttp());
                    this.connection = realConnection;
                    realConnection.start();
                    this.call.getEventListener$okhttp().connectEnd(this.call, getRoute().socketAddress(), getRoute().proxy(), this.protocol);
                } catch (IOException e2) {
                    iOException = e2;
                }
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e3) {
            iOException = e3;
            connectPlan = null;
        }
        try {
            RoutePlanner.ConnectResult connectResult2 = new RoutePlanner.ConnectResult(this, null, null, 6, null);
            this.call.getPlansToCancel$okhttp().remove(this);
            return connectResult2;
        } catch (IOException e4) {
            iOException = e4;
            z = true;
            this.call.getEventListener$okhttp().connectFailed(this.call, getRoute().socketAddress(), getRoute().proxy(), null, iOException);
            this.connectionPool.getConnectionListener$okhttp().connectFailed(getRoute(), this.call, iOException);
            if (this.retryOnConnectionFailure) {
                connectPlan2 = connectPlan;
            }
            RoutePlanner.ConnectResult connectResult3 = new RoutePlanner.ConnectResult(this, connectPlan2, iOException);
            this.call.getPlansToCancel$okhttp().remove(this);
            if (!z) {
            }
            return connectResult3;
        } catch (Throwable th2) {
            th = th2;
            z = true;
            this.call.getPlansToCancel$okhttp().remove(this);
            if (!z) {
                Socket socket5 = this.javaNetSocket;
                if (socket5 != null) {
                    _UtilJvmKt.closeQuietly(socket5);
                }
                _UtilJvmKt.closeQuietly(socket);
            }
            throw th;
        }
    }

    private final void connectSocket() throws IOException {
        Socket socketCreateSocket;
        Proxy.Type type = getRoute().proxy().type();
        int i = type == null ? -1 : WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1 || i == 2) {
            socketCreateSocket = getRoute().address().socketFactory().createSocket();
            Intrinsics.checkNotNull(socketCreateSocket);
        } else {
            socketCreateSocket = new Socket(getRoute().proxy());
        }
        this.rawSocket = socketCreateSocket;
        if (this.canceled) {
            throw new IOException("canceled");
        }
        socketCreateSocket.setSoTimeout(this.socketReadTimeoutMillis);
        try {
            Platform.Companion.get().connectSocket(socketCreateSocket, getRoute().socketAddress(), this.socketConnectTimeoutMillis);
            try {
                this.socket = BufferedSocketKt.asBufferedSocket(socketCreateSocket);
            } catch (NullPointerException e) {
                if (Intrinsics.areEqual(e.getMessage(), NPE_THROW_WITH_NULL)) {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + getRoute().socketAddress());
            connectException.initCause(e2);
            throw connectException;
        }
    }

    public final RoutePlanner.ConnectResult connectTunnel$okhttp() throws IOException {
        Request requestCreateTunnel = createTunnel();
        if (requestCreateTunnel == null) {
            return new RoutePlanner.ConnectResult(this, null, null, 6, null);
        }
        Socket socket = this.rawSocket;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
        int i = this.attempt + 1;
        if (i < 21) {
            this.call.getEventListener$okhttp().connectEnd(this.call, getRoute().socketAddress(), getRoute().proxy(), null);
            return new RoutePlanner.ConnectResult(this, copy$default(this, i, requestCreateTunnel, 0, false, 12, null), null, 4, null);
        }
        ProtocolException protocolException = new ProtocolException("Too many tunnel connections attempted: 21");
        this.call.getEventListener$okhttp().connectFailed(this.call, getRoute().socketAddress(), getRoute().proxy(), null, protocolException);
        this.connectionPool.getConnectionListener$okhttp().connectFailed(getRoute(), this.call, protocolException);
        return new RoutePlanner.ConnectResult(this, null, protocolException, 2, null);
    }

    private final void connectTls(SSLSocket sSLSocket, ConnectionSpec connectionSpec) {
        final Address address = getRoute().address();
        try {
            if (connectionSpec.supportsTlsExtensions()) {
                Platform.Companion.get().configureTlsExtensions(sSLSocket, address.url().host(), address.protocols());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            Handshake.Companion companion = Handshake.Companion;
            Intrinsics.checkNotNull(session);
            final Handshake handshake = companion.get(session);
            HostnameVerifier hostnameVerifier = address.hostnameVerifier();
            Intrinsics.checkNotNull(hostnameVerifier);
            if (hostnameVerifier.verify(address.url().host(), session)) {
                final CertificatePinner certificatePinner = address.certificatePinner();
                Intrinsics.checkNotNull(certificatePinner);
                final Handshake handshake2 = new Handshake(handshake.tlsVersion(), handshake.cipherSuite(), handshake.localCertificates(), new Function0() { // from class: okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ConnectPlan.connectTls$lambda$0(certificatePinner, handshake, address);
                    }
                });
                this.handshake = handshake2;
                certificatePinner.check$okhttp(address.url().host(), new Function0() { // from class: okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return ConnectPlan.connectTls$lambda$1(handshake2);
                    }
                });
                String selectedProtocol = connectionSpec.supportsTlsExtensions() ? Platform.Companion.get().getSelectedProtocol(sSLSocket) : null;
                this.javaNetSocket = sSLSocket;
                this.socket = BufferedSocketKt.asBufferedSocket(sSLSocket);
                this.protocol = selectedProtocol != null ? Protocol.Companion.get(selectedProtocol) : Protocol.HTTP_1_1;
                Platform.Companion.get().afterHandshake(sSLSocket);
                return;
            }
            List<Certificate> listPeerCertificates = handshake.peerCertificates();
            if (listPeerCertificates.isEmpty()) {
                throw new SSLPeerUnverifiedException("Hostname " + address.url().host() + " not verified (no certificates)");
            }
            Certificate certificate = listPeerCertificates.get(0);
            Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            X509Certificate x509Certificate = (X509Certificate) certificate;
            throw new SSLPeerUnverifiedException(StringsKt.trimMargin$default("\n            |Hostname " + address.url().host() + " not verified:\n            |    certificate: " + CertificatePinner.Companion.pin(x509Certificate) + "\n            |    DN: " + x509Certificate.getSubjectDN().getName() + "\n            |    subjectAltNames: " + OkHostnameVerifier.INSTANCE.allSubjectAltNames(x509Certificate) + "\n            ", null, 1, null));
        } catch (Throwable th) {
            Platform.Companion.get().afterHandshake(sSLSocket);
            _UtilJvmKt.closeQuietly(sSLSocket);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List connectTls$lambda$0(CertificatePinner certificatePinner, Handshake handshake, Address address) {
        CertificateChainCleaner certificateChainCleaner$okhttp = certificatePinner.getCertificateChainCleaner$okhttp();
        Intrinsics.checkNotNull(certificateChainCleaner$okhttp);
        return certificateChainCleaner$okhttp.clean(handshake.peerCertificates(), address.url().host());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List connectTls$lambda$1(Handshake handshake) {
        List<Certificate> listPeerCertificates = handshake.peerCertificates();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPeerCertificates, 10));
        for (Certificate certificate : listPeerCertificates) {
            Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }

    private final Request createTunnel() throws IOException {
        Request request = this.tunnelRequest;
        Intrinsics.checkNotNull(request);
        String str = "CONNECT " + _UtilJvmKt.toHostHeader(getRoute().address().url(), true) + " HTTP/1.1";
        while (true) {
            BufferedSocket bufferedSocket = this.socket;
            if (bufferedSocket == null) {
                Intrinsics.throwUninitializedPropertyAccessException("socket");
                bufferedSocket = null;
            }
            Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(null, this, bufferedSocket);
            BufferedSocket bufferedSocket2 = this.socket;
            if (bufferedSocket2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("socket");
                bufferedSocket2 = null;
            }
            Timeout timeout = bufferedSocket2.getSource().timeout();
            long j = this.readTimeoutMillis;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            timeout.timeout(j, timeUnit);
            BufferedSocket bufferedSocket3 = this.socket;
            if (bufferedSocket3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("socket");
                bufferedSocket3 = null;
            }
            bufferedSocket3.getSink().timeout().timeout(this.writeTimeoutMillis, timeUnit);
            http1ExchangeCodec.writeRequest(request.headers(), str);
            http1ExchangeCodec.finishRequest();
            Response.Builder responseHeaders = http1ExchangeCodec.readResponseHeaders(false);
            Intrinsics.checkNotNull(responseHeaders);
            Response responseBuild = responseHeaders.request(request).build();
            http1ExchangeCodec.skipConnectBody(responseBuild);
            int iCode = responseBuild.code();
            if (iCode == 200) {
                return null;
            }
            if (iCode == 407) {
                Request requestAuthenticate = getRoute().address().proxyAuthenticator().authenticate(getRoute(), responseBuild);
                if (requestAuthenticate == null) {
                    throw new IOException("Failed to authenticate with proxy");
                }
                if (StringsKt.equals("close", Response.header$default(responseBuild, "Connection", null, 2, null), true)) {
                    return requestAuthenticate;
                }
                request = requestAuthenticate;
            } else {
                throw new IOException("Unexpected response code for CONNECT: " + responseBuild.code());
            }
        }
    }

    public final ConnectPlan planWithCurrentOrInitialConnectionSpec$okhttp(List<ConnectionSpec> connectionSpecs, SSLSocket sslSocket) throws UnknownServiceException {
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        if (this.connectionSpecIndex != -1) {
            return this;
        }
        ConnectPlan connectPlanNextConnectionSpec$okhttp = nextConnectionSpec$okhttp(connectionSpecs, sslSocket);
        if (connectPlanNextConnectionSpec$okhttp != null) {
            return connectPlanNextConnectionSpec$okhttp;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unable to find acceptable protocols. isFallback=");
        sb.append(this.isTlsFallback);
        sb.append(", modes=");
        sb.append(connectionSpecs);
        sb.append(", supported protocols=");
        String[] enabledProtocols = sslSocket.getEnabledProtocols();
        Intrinsics.checkNotNull(enabledProtocols);
        String string = Arrays.toString(enabledProtocols);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        sb.append(string);
        throw new UnknownServiceException(sb.toString());
    }

    public final ConnectPlan nextConnectionSpec$okhttp(List<ConnectionSpec> connectionSpecs, SSLSocket sslSocket) {
        Intrinsics.checkNotNullParameter(connectionSpecs, "connectionSpecs");
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        int i = this.connectionSpecIndex + 1;
        int size = connectionSpecs.size();
        for (int i2 = i; i2 < size; i2++) {
            if (connectionSpecs.get(i2).isCompatible(sslSocket)) {
                return copy$default(this, 0, null, i2, this.connectionSpecIndex != -1, 3, null);
            }
        }
        return null;
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: handleSuccess */
    public RealConnection mo3883handleSuccess() {
        this.call.getClient().getRouteDatabase$okhttp().connected(getRoute());
        RealConnection realConnection = this.connection;
        Intrinsics.checkNotNull(realConnection);
        realConnection.getConnectionListener$okhttp().connectEnd(realConnection, getRoute(), this.call);
        ReusePlan reusePlanPlanReusePooledConnection$okhttp = this.routePlanner.planReusePooledConnection$okhttp(this, this.routes);
        if (reusePlanPlanReusePooledConnection$okhttp == null) {
            synchronized (realConnection) {
                this.connectionPool.put(realConnection);
                this.call.acquireConnectionNoEvents(realConnection);
                Unit unit = Unit.INSTANCE;
            }
            this.call.getEventListener$okhttp().connectionAcquired(this.call, realConnection);
            realConnection.getConnectionListener$okhttp().connectionAcquired(realConnection, this.call);
            return realConnection;
        }
        return reusePlanPlanReusePooledConnection$okhttp.getConnection();
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan, okhttp3.internal.http.ExchangeCodec.Carrier
    /* JADX INFO: renamed from: cancel */
    public void mo3882cancel() {
        this.canceled = true;
        Socket socket = this.rawSocket;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
    }

    @Override // okhttp3.internal.connection.RoutePlanner.Plan
    /* JADX INFO: renamed from: retry */
    public RoutePlanner.Plan mo3884retry() {
        return new ConnectPlan(this.taskRunner, this.connectionPool, this.readTimeoutMillis, this.writeTimeoutMillis, this.socketConnectTimeoutMillis, this.socketReadTimeoutMillis, this.pingIntervalMillis, this.retryOnConnectionFailure, this.call, this.routePlanner, getRoute(), this.routes, this.attempt, this.tunnelRequest, this.connectionSpecIndex, this.isTlsFallback);
    }

    public final void closeQuietly() {
        Socket socket = this.javaNetSocket;
        if (socket != null) {
            _UtilJvmKt.closeQuietly(socket);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
