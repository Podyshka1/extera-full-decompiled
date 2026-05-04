.class public final Lokhttp3/internal/http/GzipRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field private final delegate:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 24
    iput-object p1, p0, Lokhttp3/internal/http/GzipRequestBody;->delegate:Lokhttp3/RequestBody;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 26
    iget-object v0, p0, Lokhttp3/internal/http/GzipRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final getDelegate()Lokhttp3/RequestBody;
    .locals 1

    .line 24
    iget-object v0, p0, Lokhttp3/internal/http/GzipRequestBody;->delegate:Lokhttp3/RequestBody;

    return-object v0
.end method

.method public isOneShot()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lokhttp3/internal/http/GzipRequestBody;->delegate:Lokhttp3/RequestBody;

    invoke-virtual {v0}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v0

    return v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lokio/GzipSink;

    invoke-direct {v0, p1}, Lokio/GzipSink;-><init>(Lokio/Sink;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http/GzipRequestBody;->delegate:Lokhttp3/RequestBody;

    :try_start_0
    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
