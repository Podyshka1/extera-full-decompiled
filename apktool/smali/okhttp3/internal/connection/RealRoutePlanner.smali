.class public final Lokhttp3/internal/connection/RealRoutePlanner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner;


# instance fields
.field private final address:Lokhttp3/Address;

.field private final call:Lokhttp3/internal/connection/RealCall;

.field private final connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

.field private final deferredPlans:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque;"
        }
    .end annotation
.end field

.field private final doExtensiveHealthChecks:Z

.field private final fastFallback:Z

.field private nextRouteToTry:Lokhttp3/Route;

.field private final pingIntervalMillis:I

.field private final readTimeoutMillis:I

.field private final retryOnConnectionFailure:Z

.field private final routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

.field private routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

.field private routeSelector:Lokhttp3/internal/connection/RouteSelector;

.field private final socketConnectTimeoutMillis:I

.field private final socketReadTimeoutMillis:I

.field private final taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

.field private final writeTimeoutMillis:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZZLokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Lokhttp3/Request;)V
    .locals 1

    const-string/jumbo v0, "taskRunner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionPool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "routeDatabase"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "request"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 40
    iput-object p2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 41
    iput p3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->readTimeoutMillis:I

    .line 42
    iput p4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->writeTimeoutMillis:I

    .line 43
    iput p5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->socketConnectTimeoutMillis:I

    .line 44
    iput p6, p0, Lokhttp3/internal/connection/RealRoutePlanner;->socketReadTimeoutMillis:I

    .line 45
    iput p7, p0, Lokhttp3/internal/connection/RealRoutePlanner;->pingIntervalMillis:I

    .line 46
    iput-boolean p8, p0, Lokhttp3/internal/connection/RealRoutePlanner;->retryOnConnectionFailure:Z

    .line 47
    iput-boolean p9, p0, Lokhttp3/internal/connection/RealRoutePlanner;->fastFallback:Z

    .line 48
    iput-object p10, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    .line 49
    iput-object p11, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    .line 50
    iput-object p12, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 53
    invoke-virtual {p13}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GET"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->doExtensiveHealthChecks:Z

    .line 58
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method private final createTunnelRequest(Lokhttp3/Route;)Lokhttp3/Request;
    .locals 4

    .line 266
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 267
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 268
    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lokhttp3/internal/_UtilJvmKt;->toHostHeader(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 270
    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 271
    const-string v1, "User-Agent"

    const-string/jumbo v2, "okhttp/5.3.2"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 276
    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1}, Lokhttp3/Response$Builder;-><init>()V

    .line 277
    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 278
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object v1

    const/16 v2, 0x197

    .line 279
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 280
    const-string v2, "Preemptive Authenticate"

    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 281
    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 282
    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 283
    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    invoke-virtual {v1, v2, v3}, Lokhttp3/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v1

    .line 287
    invoke-virtual {p1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object v2

    .line 288
    invoke-interface {v2, p1, v1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public static synthetic planConnectToRoute$okhttp$default(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 206
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/List;)Lokhttp3/internal/connection/ConnectPlan;

    move-result-object p0

    return-object p0
.end method

.method private final planReuseCallConnection()Lokhttp3/internal/connection/ReusePlan;
    .locals 7

    .line 93
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 97
    :cond_0
    iget-boolean v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->doExtensiveHealthChecks:Z

    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v2

    .line 63
    monitor-enter v0

    if-nez v2, :cond_1

    .line 103
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getNoNewExchanges()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 104
    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/RealConnection;->setNoNewExchanges(Z)V

    .line 105
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 107
    :cond_1
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getNoNewExchanges()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->sameHostAndPort(Lokhttp3/HttpUrl;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    move-object v3, v1

    goto :goto_1

    .line 108
    :cond_3
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealCall;->releaseConnectionNoEvents$okhttp()Ljava/net/Socket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v3

    move-object v3, v2

    move v2, v6

    .line 63
    :goto_1
    monitor-exit v0

    .line 116
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall;->getConnection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_4

    .line 118
    new-instance v1, Lokhttp3/internal/connection/ReusePlan;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    return-object v1

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-eqz v3, :cond_6

    .line 122
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt;->closeQuietly(Ljava/net/Socket;)V

    .line 123
    :cond_6
    iget-object v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall;->getEventListener$okhttp()Lokhttp3/EventListener;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v4, v5, v0}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 124
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getConnectionListener$okhttp()Lokhttp3/internal/connection/ConnectionListener;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v4, v0, v5}, Lokhttp3/internal/connection/ConnectionListener;->connectionReleased(Lokhttp3/Connection;Lokhttp3/Call;)V

    if-eqz v3, :cond_7

    .line 126
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getConnectionListener$okhttp()Lokhttp3/internal/connection/ConnectionListener;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/ConnectionListener;->connectionClosed(Lokhttp3/Connection;)V

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    .line 128
    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->getConnectionListener$okhttp()Lokhttp3/internal/connection/ConnectionListener;

    move-result-object v2

    invoke-virtual {v2, v0}, Lokhttp3/internal/connection/ConnectionListener;->noNewExchanges(Lokhttp3/Connection;)V

    :cond_8
    :goto_2
    return-object v1

    .line 63
    :goto_3
    monitor-exit v0

    throw v1
.end method

.method public static synthetic planReusePooledConnection$okhttp$default(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/internal/connection/ReusePlan;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 179
    :cond_1
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/connection/RealRoutePlanner;->planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    move-result-object p0

    return-object p0
.end method

.method private final retryRoute(Lokhttp3/internal/connection/RealConnection;)Lokhttp3/Route;
    .locals 3

    .line 63
    monitor-enter p1

    .line 329
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getRouteFailureCount$okhttp()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->getNoNewExchanges()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getAddress()Lokhttp3/Address;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-static {v0, v2}, Lokhttp3/internal/_UtilJvmKt;->canReuseConnectionFor(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 339
    :cond_2
    invoke-virtual {p1}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method


# virtual methods
.method public getAddress()Lokhttp3/Address;
    .locals 1

    .line 48
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->address:Lokhttp3/Address;

    return-object v0
.end method

.method public getDeferredPlans()Lkotlin/collections/ArrayDeque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/ArrayDeque;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->deferredPlans:Lkotlin/collections/ArrayDeque;

    return-object v0
.end method

.method public hasNext(Lokhttp3/internal/connection/RealConnection;)Z
    .locals 2

    .line 294
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getDeferredPlans()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 298
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 303
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/RealRoutePlanner;->retryRoute(Lokhttp3/internal/connection/RealConnection;)Lokhttp3/Route;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 306
    iput-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    return v1

    .line 312
    :cond_2
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result p1

    if-ne p1, v1, :cond_3

    return v1

    .line 315
    :cond_3
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    if-nez p1, :cond_4

    return v1

    .line 318
    :cond_4
    invoke-virtual {p1}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result p1

    return p1
.end method

.method public isCanceled()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public plan()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 2

    .line 64
    invoke-direct {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->planReuseCallConnection()Lokhttp3/internal/connection/ReusePlan;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v1, v1, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planReusePooledConnection$okhttp$default(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/internal/connection/ReusePlan;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getDeferredPlans()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getDeferredPlans()Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/connection/RoutePlanner$Plan;

    return-object v0

    .line 75
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnect$okhttp()Lokhttp3/internal/connection/ConnectPlan;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lokhttp3/internal/connection/ConnectPlan;->getRoutes$okhttp()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lokhttp3/internal/connection/RealRoutePlanner;->planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public final planConnect$okhttp()Lokhttp3/internal/connection/ConnectPlan;
    .locals 5

    .line 137
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 139
    iput-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    .line 140
    invoke-static {p0, v0, v2, v1, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp$default(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/internal/connection/ConnectPlan;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;

    move-result-object v0

    invoke-static {p0, v0, v2, v1, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp$default(Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILjava/lang/Object;)Lokhttp3/internal/connection/ConnectPlan;

    move-result-object v0

    return-object v0

    .line 150
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    if-nez v0, :cond_2

    .line 153
    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    .line 154
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getAddress()Lokhttp3/Address;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeDatabase:Lokhttp3/internal/connection/RouteDatabase;

    .line 156
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    .line 157
    iget-boolean v4, p0, Lokhttp3/internal/connection/RealRoutePlanner;->fastFallback:Z

    .line 153
    invoke-direct {v0, v1, v2, v3, v4}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/internal/connection/RealCall;Z)V

    .line 159
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 163
    :cond_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 164
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v0

    .line 165
    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    .line 167
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 169
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/connection/RealRoutePlanner;->planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/List;)Lokhttp3/internal/connection/ConnectPlan;

    move-result-object v0

    return-object v0

    .line 167
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "exhausted all routes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final planConnectToRoute$okhttp(Lokhttp3/Route;Ljava/util/List;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Route;",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;)",
            "Lokhttp3/internal/connection/ConnectPlan;"
        }
    .end annotation

    move-object/from16 v10, p0

    const-string/jumbo v0, "route"

    move-object/from16 v11, p1

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v11}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_2

    .line 211
    invoke-virtual {v11}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v11}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 216
    sget-object v1, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v1}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    new-instance v1, Ljava/net/UnknownServiceException;

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEARTEXT communication to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-direct {v1, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "CLEARTEXT communication not enabled for client"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_2
    invoke-virtual {v11}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->protocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 229
    :goto_0
    invoke-virtual {v11}, Lokhttp3/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct/range {p0 .. p1}, Lokhttp3/internal/connection/RealRoutePlanner;->createTunnelRequest(Lokhttp3/Route;)Lokhttp3/Request;

    move-result-object v0

    :goto_1
    move-object v14, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 233
    :goto_2
    new-instance v0, Lokhttp3/internal/connection/ConnectPlan;

    .line 234
    iget-object v1, v10, Lokhttp3/internal/connection/RealRoutePlanner;->taskRunner:Lokhttp3/internal/concurrent/TaskRunner;

    .line 235
    iget-object v2, v10, Lokhttp3/internal/connection/RealRoutePlanner;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 236
    iget v3, v10, Lokhttp3/internal/connection/RealRoutePlanner;->readTimeoutMillis:I

    .line 237
    iget v4, v10, Lokhttp3/internal/connection/RealRoutePlanner;->writeTimeoutMillis:I

    .line 238
    iget v5, v10, Lokhttp3/internal/connection/RealRoutePlanner;->socketConnectTimeoutMillis:I

    .line 239
    iget v6, v10, Lokhttp3/internal/connection/RealRoutePlanner;->socketReadTimeoutMillis:I

    .line 240
    iget v7, v10, Lokhttp3/internal/connection/RealRoutePlanner;->pingIntervalMillis:I

    .line 241
    iget-boolean v8, v10, Lokhttp3/internal/connection/RealRoutePlanner;->retryOnConnectionFailure:Z

    .line 242
    iget-object v9, v10, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/4 v13, 0x0

    move-object/from16 v12, p2

    .line 233
    invoke-direct/range {v0 .. v16}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V

    return-object v0

    .line 223
    :cond_4
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final planReusePooledConnection$okhttp(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/connection/ConnectPlan;",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;)",
            "Lokhttp3/internal/connection/ReusePlan;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->connectionPool:Lokhttp3/internal/connection/RealConnectionPool;

    .line 185
    iget-boolean v1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->doExtensiveHealthChecks:Z

    .line 186
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getAddress()Lokhttp3/Address;

    move-result-object v2

    .line 187
    iget-object v3, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Lokhttp3/internal/connection/ConnectPlan;->isReady()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v5, v4

    move-object v4, p2

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 184
    :goto_1
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/RealConnectionPool;->callAcquirePooledConnection$okhttp(ZLokhttp3/Address;Lokhttp3/internal/connection/RealCall;Ljava/util/List;Z)Lokhttp3/internal/connection/RealConnection;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 195
    invoke-virtual {p1}, Lokhttp3/internal/connection/ConnectPlan;->getRoute()Lokhttp3/Route;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->nextRouteToTry:Lokhttp3/Route;

    .line 196
    invoke-virtual {p1}, Lokhttp3/internal/connection/ConnectPlan;->closeQuietly()V

    .line 199
    :cond_2
    iget-object p1, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {p1}, Lokhttp3/internal/connection/RealCall;->getEventListener$okhttp()Lokhttp3/EventListener;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {p1, v0, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 200
    invoke-virtual {p2}, Lokhttp3/internal/connection/RealConnection;->getConnectionListener$okhttp()Lokhttp3/internal/connection/ConnectionListener;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/connection/RealRoutePlanner;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/connection/ConnectionListener;->connectionAcquired(Lokhttp3/Connection;Lokhttp3/Call;)V

    .line 201
    new-instance p1, Lokhttp3/internal/connection/ReusePlan;

    invoke-direct {p1, p2}, Lokhttp3/internal/connection/ReusePlan;-><init>(Lokhttp3/internal/connection/RealConnection;)V

    return-object p1
.end method

.method public sameHostAndPort(Lokhttp3/HttpUrl;)Z
    .locals 3

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lokhttp3/internal/connection/RealRoutePlanner;->getAddress()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    .line 345
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
