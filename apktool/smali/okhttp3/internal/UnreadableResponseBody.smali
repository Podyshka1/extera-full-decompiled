.class public final Lokhttp3/internal/UnreadableResponseBody;
.super Lokhttp3/ResponseBody;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# instance fields
.field private final contentLength:J

.field private final mediaType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;J)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 27
    iput-object p1, p0, Lokhttp3/internal/UnreadableResponseBody;->mediaType:Lokhttp3/MediaType;

    .line 28
    iput-wide p2, p0, Lokhttp3/internal/UnreadableResponseBody;->contentLength:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public contentLength()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lokhttp3/internal/UnreadableResponseBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 31
    iget-object v0, p0, Lokhttp3/internal/UnreadableResponseBody;->mediaType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 0

    const-string/jumbo p2, "sink"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    const-string p2, "Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)"

    .line 41
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 35
    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 53
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method
