.class public final Lokhttp3/internal/connection/Exchange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/Exchange$RequestBodySink;,
        Lokhttp3/internal/connection/Exchange$ResponseBodySource;
    }
.end annotation


# instance fields
.field private final call:Lokhttp3/internal/connection/RealCall;

.field private final codec:Lokhttp3/internal/http/ExchangeCodec;

.field private final eventListener:Lokhttp3/EventListener;

.field private final finder:Lokhttp3/internal/connection/ExchangeFinder;

.field private hasFailure:Z

.field private isDuplex:Z


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Lokhttp3/EventListener;Lokhttp3/internal/connection/ExchangeFinder;Lokhttp3/internal/http/ExchangeCodec;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    .line 41
    iput-object p2, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    .line 42
    iput-object p3, p0, Lokhttp3/internal/connection/Exchange;->finder:Lokhttp3/internal/connection/ExchangeFinder;

    .line 43
    iput-object p4, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    return-void
.end method

.method public static final synthetic access$getCodec$p(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/http/ExchangeCodec;
    .locals 0

    .line 39
    iget-object p0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    return-object p0
.end method

.method public static synthetic bodyComplete$default(Lokhttp3/internal/connection/Exchange;JZZZLjava/io/IOException;ILjava/lang/Object;)Ljava/io/IOException;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-wide/16 p1, -0x1

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move v4, p2

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_2

    move v5, p2

    :goto_1
    move-object v0, p0

    move v3, p3

    move-object v6, p6

    goto :goto_2

    :cond_2
    move v5, p5

    goto :goto_1

    .line 208
    :goto_2
    invoke-virtual/range {v0 .. v6}, Lokhttp3/internal/connection/Exchange;->bodyComplete(JZZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method private final trackFailure(Ljava/io/IOException;)V
    .locals 2

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->hasFailure:Z

    .line 204
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-interface {v0, v1, p1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->trackFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public final bodyComplete(JZZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 9

    if-eqz p6, :cond_0

    .line 216
    invoke-direct {p0, p6}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    :cond_0
    if-eqz p5, :cond_2

    if-eqz p6, :cond_1

    .line 220
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1, p6}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    :cond_2
    :goto_0
    if-eqz p4, :cond_4

    if-eqz p6, :cond_3

    .line 227
    iget-object p1, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object p2, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {p1, p2, p6}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_1

    .line 229
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1, p1, p2}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 232
    :cond_4
    :goto_1
    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p5, :cond_5

    if-nez p3, :cond_5

    move v4, p2

    goto :goto_2

    :cond_5
    move v4, p1

    :goto_2
    if-eqz p4, :cond_6

    if-nez p3, :cond_6

    move v5, p2

    goto :goto_3

    :cond_6
    move v5, p1

    :goto_3
    if-eqz p5, :cond_7

    if-eqz p3, :cond_7

    move v7, p2

    goto :goto_4

    :cond_7
    move v7, p1

    :goto_4
    if-eqz p4, :cond_8

    if-eqz p3, :cond_8

    move v6, p2

    :goto_5
    move-object v3, p0

    move-object v8, p6

    goto :goto_6

    :cond_8
    move v6, p1

    goto :goto_5

    :goto_6
    invoke-virtual/range {v2 .. v8}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final cancel()V
    .locals 1

    .line 183
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    return-void
.end method

.method public final createRequestBody(Lokhttp3/Request;Z)Lokio/Sink;
    .locals 6

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-boolean p2, p0, Lokhttp3/internal/connection/Exchange;->isDuplex:Z

    .line 78
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v3

    .line 79
    iget-object p2, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {p2, v0}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    .line 80
    iget-object p2, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {p2, p1, v3, v4}, Lokhttp3/internal/http/ExchangeCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v2

    .line 81
    new-instance v0, Lokhttp3/internal/connection/Exchange$RequestBodySink;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Sink;JZ)V

    return-object v0
.end method

.method public final detachWithViolence()V
    .locals 8

    .line 191
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->cancel()V

    .line 192
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp(Lokhttp3/internal/connection/Exchange;ZZZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final finishRequest()V
    .locals 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->finishRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 105
    invoke-direct {p0, v0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 106
    throw v0
.end method

.method public final flushRequest()V
    .locals 3

    .line 91
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->flushRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 93
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 94
    invoke-direct {p0, v0}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 95
    throw v0
.end method

.method public final getCall$okhttp()Lokhttp3/internal/connection/RealCall;
    .locals 1

    .line 40
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    return-object v0
.end method

.method public final getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;
    .locals 2

    .line 54
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    move-result-object v0

    instance-of v1, v0, Lokhttp3/internal/connection/RealConnection;

    if-eqz v1, :cond_0

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no connection for CONNECT tunnels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getEventListener$okhttp()Lokhttp3/EventListener;
    .locals 1

    .line 41
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    return-object v0
.end method

.method public final getFinder$okhttp()Lokhttp3/internal/connection/ExchangeFinder;
    .locals 1

    .line 42
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->finder:Lokhttp3/internal/connection/ExchangeFinder;

    return-object v0
.end method

.method public final getHasFailure$okhttp()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->hasFailure:Z

    return v0
.end method

.method public final isCoalescedConnection$okhttp()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->finder:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-interface {v0}, Lokhttp3/internal/connection/ExchangeFinder;->getRoutePlanner()Lokhttp3/internal/connection/RoutePlanner;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/internal/connection/RoutePlanner;->getAddress()Lokhttp3/Address;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->getRoute()Lokhttp3/Route;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Route;->address()Lokhttp3/Address;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isDuplex$okhttp()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lokhttp3/internal/connection/Exchange;->isDuplex:Z

    return v0
.end method

.method public final noNewExchangesOnConnection()V
    .locals 1

    .line 179
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec$Carrier;->noNewExchanges()V

    return-void
.end method

.method public final noRequestBody()V
    .locals 9

    .line 243
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v8}, Lokhttp3/internal/connection/RealCall;->messageDone$okhttp$default(Lokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/Exchange;ZZZZLjava/io/IOException;ILjava/lang/Object;)Ljava/io/IOException;

    return-void
.end method

.method public final openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;
    .locals 8

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :try_start_0
    const-string v0, "Content-Type"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lokhttp3/Response;->header$default(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v1, p1}, Lokhttp3/internal/http/ExchangeCodec;->reportedContentLength(Lokhttp3/Response;)J

    move-result-wide v5

    .line 136
    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v1, p1}, Lokhttp3/internal/http/ExchangeCodec;->openResponseBodySource(Lokhttp3/Response;)Lokio/Source;

    move-result-object v4

    .line 138
    new-instance v2, Lokhttp3/internal/connection/Exchange$ResponseBodySource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x0

    move-object v3, p0

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Lokhttp3/internal/connection/Exchange;Lokio/Source;JZ)V

    .line 143
    new-instance p1, Lokhttp3/internal/http/RealResponseBody;

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {p1, v0, v5, v6, v1}, Lokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLokio/BufferedSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, p0

    goto :goto_0

    .line 145
    :goto_1
    iget-object v0, v3, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, v3, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 146
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 147
    throw p1
.end method

.method public final peekTrailers()Lokhttp3/Headers;
    .locals 1

    .line 152
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->peekTrailers()Lokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public final readResponseHeaders(Z)Lokhttp3/Response$Builder;
    .locals 2

    .line 117
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1, p0}, Lokhttp3/Response$Builder;->initExchange$okhttp(Lokhttp3/internal/connection/Exchange;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p1

    .line 121
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 122
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 123
    throw p1
.end method

.method public final responseHeadersEnd(Lokhttp3/Response;)V
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method public final responseHeadersStart()V
    .locals 2

    .line 111
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    return-void
.end method

.method public final upgradeToSocket()Lokio/Socket;
    .locals 2

    .line 155
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->upgradeToSocket()V

    .line 156
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lokhttp3/internal/http/ExchangeCodec;->getCarrier()Lokhttp3/internal/http/ExchangeCodec$Carrier;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type okhttp3.internal.connection.RealConnection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->useAsSocket$okhttp()V

    .line 158
    new-instance v0, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/connection/Exchange$upgradeToSocket$1;-><init>(Lokhttp3/internal/connection/Exchange;)V

    return-object v0
.end method

.method public final writeRequestHeaders(Lokhttp3/Request;)V
    .locals 2

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    .line 63
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->codec:Lokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0, p1}, Lokhttp3/internal/http/ExchangeCodec;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 64
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 66
    iget-object v0, p0, Lokhttp3/internal/connection/Exchange;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/Exchange;->call:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0, v1, p1}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 67
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 68
    throw p1
.end method
