.class public final Lokhttp3/internal/connection/RealConnection;
.super Lokhttp3/internal/http2/Http2Connection$Listener;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Connection;
.implements Lokhttp3/internal/http/ExchangeCodec$Carrier;
.implements Lokhttp3/internal/concurrent/Lockable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/RealConnection$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/connection/RealConnection$Companion;

.field public static final IDLE_CONNECTION_HEALTHY_NS:J = 0x2540be400L


# instance fields
.field private allocationLimit:I

.field private final calls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lokhttp3/internal/connection/RealCall;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectionListener:Lokhttp3/internal/connection/ConnectionListener;

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field private final handshake:Lokhttp3/Handshake;

.field private http2Connection:Lokhttp3/internal/http2/Http2Connection;

.field private idleAtNs:J

.field private final javaNetSocket:Ljava/net/Socket;

.field private noCoalescedConnections:Z

.field private noNewExchanges:Z

.field private final pingIntervalMillis:I

.field private final protocol:Lokhttp3/Protocol;

.field private final rawSocket:Ljava/net/Socket;

.field private refusedStreamCount:I

.field private final route:Lokhttp3/Route;

.field private routeFailureCount:I

.field private final socket:Lokhttp3/internal/connection/BufferedSocket;

.field private successCount:I

.field private final taskRunner:Lokhttp3/internal/concurrent/TaskRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/connection/RealConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RealConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/connection/RealConnection;->Companion:Lokhttp3/internal/connection/RealConnection$Companion;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;Ljava/net/Socket;Lokhttp3/Handshake;Lokhttp3/Protocol;Lokhttp3/internal/connection/BufferedSocket;ILokhttp3/internal/connection/ConnectionListener;)V
    .locals 1

    const-string/jumbo v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionPool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "route"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rawSocket"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "javaNetSocket"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "protocol"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "socket"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionListener"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lokhttp3/internal/http2/Http2Connection$Listener;-><init>()V

    .line 63
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 64
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 65
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    .line 67
    iput-object p4, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 72
    iput-object p5, p0, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    .line 73
    iput-object p6, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    .line 74
    iput-object p7, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 75
    iput-object p8, p0, Lokhttp3/internal/connection/RealConnection;->socket:Lokhttp3/internal/connection/BufferedSocket;

    .line 76
    iput p9, p0, Lokhttp3/internal/connection/RealConnection;->pingIntervalMillis:I

    .line 77
    iput-object p10, p0, Lokhttp3/internal/connection/RealConnection;->connectionListener:Lokhttp3/internal/connection/ConnectionListener;

    const/4 p1, 0x1

    .line 115
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection;->calls:Ljava/util/List;

    const-wide p1, 0x7fffffffffffffffL

    .line 122
    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J

    return-void
.end method

.method private final certificateSupportHost(Lokhttp3/HttpUrl;Lokhttp3/Handshake;)Z
    .locals 3

    .line 261
    invoke-virtual {p2}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object p2

    .line 263
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string/jumbo v2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private final routeMatchesAny(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;)Z"
        }
    .end annotation

    .line 234
    check-cast p1, Ljava/lang/Iterable;

    .line 1761
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1762
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Route;

    .line 235
    invoke-virtual {v0}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_1

    .line 236
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-ne v2, v3, :cond_1

    .line 237
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private final startHttp2()V
    .locals 7

    .line 162
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 163
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->connectionListener:Lokhttp3/internal/connection/ConnectionListener;

    instance-of v2, v0, Lokhttp3/internal/http2/FlowControlListener;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Lokhttp3/internal/http2/FlowControlListener;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lokhttp3/internal/http2/FlowControlListener$None;->INSTANCE:Lokhttp3/internal/http2/FlowControlListener$None;

    .line 166
    :cond_1
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$Builder;

    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4}, Lokhttp3/internal/http2/Http2Connection$Builder;-><init>(ZLokhttp3/internal/concurrent/TaskRunner;)V

    .line 167
    iget-object v4, p0, Lokhttp3/internal/connection/RealConnection;->socket:Lokhttp3/internal/connection/BufferedSocket;

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lokhttp3/internal/http2/Http2Connection$Builder;->socket(Lokhttp3/internal/connection/BufferedSocket;Ljava/lang/String;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v2

    .line 168
    invoke-virtual {v2, p0}, Lokhttp3/internal/http2/Http2Connection$Builder;->listener(Lokhttp3/internal/http2/Http2Connection$Listener;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v2

    .line 169
    iget v4, p0, Lokhttp3/internal/connection/RealConnection;->pingIntervalMillis:I

    invoke-virtual {v2, v4}, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis(I)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v2

    .line 170
    invoke-virtual {v2, v0}, Lokhttp3/internal/http2/Http2Connection$Builder;->flowControlListener(Lokhttp3/internal/http2/FlowControlListener;)Lokhttp3/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Connection$Builder;->build()Lokhttp3/internal/http2/Http2Connection;

    move-result-object v0

    .line 172
    iput-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    .line 173
    sget-object v2, Lokhttp3/internal/http2/Http2Connection;->Companion:Lokhttp3/internal/http2/Http2Connection$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/http2/Http2Connection$Companion;->getDEFAULT_SETTINGS()Lokhttp3/internal/http2/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/http2/Settings;->getMaxConcurrentStreams()I

    move-result v2

    iput v2, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 174
    invoke-static {v0, v1, v5, v3}, Lokhttp3/internal/http2/Http2Connection;->start$default(Lokhttp3/internal/http2/Http2Connection;ZILjava/lang/Object;)V

    return-void
.end method

.method private final supportsUrl(Lokhttp3/HttpUrl;)Z
    .locals 4

    .line 55
    sget-boolean v0, Lokhttp3/internal/_UtilJvmKt;->assertionsEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 243
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 249
    :cond_2
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    .line 254
    :cond_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->noCoalescedConnections:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/connection/RealConnection;->certificateSupportHost(Lokhttp3/HttpUrl;Lokhttp3/Handshake;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 294
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    return-void
.end method

.method public final connectFailed$okhttp(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRoute"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 352
    invoke-virtual {p2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lokhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v1

    .line 354
    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v0

    .line 355
    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 353
    invoke-virtual {v1, v0, v2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 360
    :cond_0
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->getRouteDatabase$okhttp()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/internal/connection/RouteDatabase;->failed(Lokhttp3/Route;)V

    return-void
.end method

.method public final getAllocationLimit$okhttp()I
    .locals 1

    .line 115
    iget v0, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    return v0
.end method

.method public final getCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lokhttp3/internal/connection/RealCall;",
            ">;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->calls:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectionListener$okhttp()Lokhttp3/internal/connection/ConnectionListener;
    .locals 1

    .line 77
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->connectionListener:Lokhttp3/internal/connection/ConnectionListener;

    return-object v0
.end method

.method public final getConnectionPool()Lokhttp3/internal/connection/RealConnectionPool;
    .locals 1

    .line 64
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    return-object v0
.end method

.method public final getIdleAtNs()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J

    return-wide v0
.end method

.method public final getNoNewExchanges()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    return v0
.end method

.method public getRoute()Lokhttp3/Route;
    .locals 1

    .line 65
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->route:Lokhttp3/Route;

    return-object v0
.end method

.method public final getRouteFailureCount$okhttp()I
    .locals 1

    .line 106
    iget v0, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    return v0
.end method

.method public final getTaskRunner()Lokhttp3/internal/concurrent/TaskRunner;
    .locals 1

    .line 63
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    return-object v0
.end method

.method public handshake()Lokhttp3/Handshake;
    .locals 1

    .line 342
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public final incrementSuccessCount$okhttp()V
    .locals 1

    .line 63
    monitor-enter p0

    .line 148
    :try_start_0
    iget v0, p0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/connection/RealConnection;->successCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isEligible$okhttp(Lokhttp3/Address;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Address;",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-boolean v0, Lokhttp3/internal/_UtilJvmKt;->assertionsEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 188
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->calls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_9

    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    if-eqz v0, :cond_2

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Address;->equalsNonHost$okhttp(Lokhttp3/Address;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 194
    :cond_3
    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    .line 208
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-nez v0, :cond_5

    return v2

    :cond_5
    if-eqz p2, :cond_9

    .line 211
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/RealConnection;->routeMatchesAny(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    .line 214
    :cond_6
    invoke-virtual {p1}, Lokhttp3/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    if-eq p2, v0, :cond_7

    return v2

    .line 215
    :cond_7
    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-direct {p0, p2}, Lokhttp3/internal/connection/RealConnection;->supportsUrl(Lokhttp3/HttpUrl;)Z

    move-result p2

    if-nez p2, :cond_8

    return v2

    .line 219
    :cond_8
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Address;->certificatePinner()Lokhttp3/CertificatePinner;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lokhttp3/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_9
    :goto_1
    return v2
.end method

.method public final isHealthy(Z)Z
    .locals 4

    .line 49
    sget-boolean v0, Lokhttp3/internal/_UtilJvmKt;->assertionsEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 303
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 305
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 306
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 307
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    .line 308
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 313
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v2, :cond_3

    .line 315
    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->isHealthy(J)Z

    move-result p1

    return p1

    .line 63
    :cond_3
    monitor-enter p0

    .line 318
    :try_start_0
    iget-wide v2, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    .line 63
    monitor-exit p0

    const-wide v2, 0x2540be400L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    if-eqz p1, :cond_4

    .line 320
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Lokhttp3/internal/connection/BufferedSocket;

    invoke-interface {v0}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lokio/BufferedSource;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/internal/_UtilJvmKt;->isHealthy(Ljava/net/Socket;Lokio/BufferedSource;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isMultiplexed$okhttp()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final newCodec$okhttp(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/RealInterceptorChain;)Lokhttp3/internal/http/ExchangeCodec;
    .locals 5

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->socket:Lokhttp3/internal/connection/BufferedSocket;

    .line 273
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->http2Connection:Lokhttp3/internal/http2/Http2Connection;

    if-eqz v1, :cond_0

    .line 276
    new-instance v0, Lokhttp3/internal/http2/Http2ExchangeCodec;

    invoke-direct {v0, p1, p0, p2, v1}, Lokhttp3/internal/http2/Http2ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/http/RealInterceptorChain;Lokhttp3/internal/http2/Http2Connection;)V

    return-object v0

    .line 278
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    invoke-virtual {p2}, Lokhttp3/internal/http/RealInterceptorChain;->readTimeoutMillis()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 279
    invoke-interface {v0}, Lokhttp3/internal/connection/BufferedSocket;->getSource()Lokio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/internal/http/RealInterceptorChain;->getReadTimeoutMillis$okhttp()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 280
    invoke-interface {v0}, Lokhttp3/internal/connection/BufferedSocket;->getSink()Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v1

    invoke-virtual {p2}, Lokhttp3/internal/http/RealInterceptorChain;->getWriteTimeoutMillis$okhttp()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3, v4}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 281
    new-instance p2, Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-direct {p2, p1, p0, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/connection/BufferedSocket;)V

    return-object p2
.end method

.method public final noCoalescedConnections$okhttp()V
    .locals 1

    .line 63
    monitor-enter p0

    const/4 v0, 0x1

    .line 142
    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->noCoalescedConnections:Z

    .line 143
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public noNewExchanges()V
    .locals 1

    .line 63
    monitor-enter p0

    const/4 v0, 0x1

    .line 134
    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 135
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    .line 136
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->connectionListener:Lokhttp3/internal/connection/ConnectionListener;

    invoke-virtual {v0, p0}, Lokhttp3/internal/connection/ConnectionListener;->noNewExchanges(Lokhttp3/Connection;)V

    return-void

    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p0

    throw v0
.end method

.method public onSettings(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "settings"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    monitor-enter p0

    .line 338
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/internal/http2/Settings;->getMaxConcurrentStreams()I

    move-result p1

    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->allocationLimit:I

    .line 339
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStream(Lokhttp3/internal/http2/Http2Stream;)V
    .locals 2

    const-string/jumbo v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public protocol()Lokhttp3/Protocol;
    .locals 1

    .line 417
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    return-object v0
.end method

.method public route()Lokhttp3/Route;
    .locals 1

    .line 290
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v0

    return-object v0
.end method

.method public final setIdleAtNs(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J

    return-void
.end method

.method public final setNoNewExchanges(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    return-void
.end method

.method public final setRouteFailureCount$okhttp(I)V
    .locals 0

    .line 106
    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    return-void
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 297
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public final start()V
    .locals 2

    .line 154
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J

    .line 155
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-eq v0, v1, :cond_1

    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 156
    :cond_1
    :goto_0
    invoke-direct {p0}, Lokhttp3/internal/connection/RealConnection;->startHttp2()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    const-string v1, " hostAddress="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 423
    const-string v1, " cipherSuite="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->handshake:Lokhttp3/Handshake;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "none"

    .line 420
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, " protocol="

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v1, p0, Lokhttp3/internal/connection/RealConnection;->protocol:Lokhttp3/Protocol;

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    monitor-enter p0

    .line 373
    :try_start_0
    instance-of v0, p2, Lokhttp3/internal/http2/StreamResetException;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 375
    move-object v0, p2

    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v0, v0, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v0, v2, :cond_0

    .line 377
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->refusedStreamCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->refusedStreamCount:I

    if-le p1, v1, :cond_3

    .line 379
    iget-boolean p1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    xor-int/2addr p1, v1

    .line 380
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 381
    iget p2, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    add-int/2addr p2, v1

    iput p2, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 385
    :cond_0
    check-cast p2, Lokhttp3/internal/http2/StreamResetException;

    iget-object p2, p2, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 391
    :cond_1
    iget-boolean p1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    xor-int/2addr p1, v1

    .line 392
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 393
    iget p2, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    add-int/2addr p2, v1

    iput p2, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    goto :goto_1

    .line 396
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed$okhttp()Z

    move-result v0

    if-eqz v0, :cond_4

    instance-of v0, p2, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    .line 397
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    xor-int/2addr v0, v1

    .line 398
    iput-boolean v1, p0, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 401
    iget v2, p0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_6

    if-eqz p2, :cond_5

    .line 403
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealCall;->getClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getRoute()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2}, Lokhttp3/internal/connection/RealConnection;->connectFailed$okhttp(Lokhttp3/OkHttpClient;Lokhttp3/Route;Ljava/io/IOException;)V

    .line 405
    :cond_5
    iget p1, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/connection/RealConnection;->routeFailureCount:I

    :cond_6
    move p1, v0

    .line 410
    :goto_1
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    if-eqz p1, :cond_7

    .line 413
    iget-object p1, p0, Lokhttp3/internal/connection/RealConnection;->connectionListener:Lokhttp3/internal/connection/ConnectionListener;

    invoke-virtual {p1, p0}, Lokhttp3/internal/connection/ConnectionListener;->noNewExchanges(Lokhttp3/Connection;)V

    :cond_7
    return-void

    .line 63
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final useAsSocket$okhttp()V
    .locals 2

    .line 286
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection;->javaNetSocket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 287
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    return-void
.end method
