.class public final Lokhttp3/internal/ws/MessageInflater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final deflatedBytes:Lokio/Buffer;

.field private inflater:Ljava/util/zip/Inflater;

.field private inflaterSource:Lokio/InflaterSource;

.field private final noContextTakeover:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lokhttp3/internal/ws/MessageInflater;->noContextTakeover:Z

    .line 29
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 74
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflaterSource:Lokio/InflaterSource;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokio/InflaterSource;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflaterSource:Lokio/InflaterSource;

    .line 76
    iput-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method

.method public final inflate(Lokio/Buffer;)V
    .locals 6

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 41
    iget-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflater:Ljava/util/zip/Inflater;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/ws/MessageInflater;->inflater:Ljava/util/zip/Inflater;

    .line 44
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/ws/MessageInflater;->inflaterSource:Lokio/InflaterSource;

    if-nez v1, :cond_1

    .line 45
    new-instance v1, Lokio/InflaterSource;

    iget-object v2, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    invoke-direct {v1, v2, v0}, Lokio/InflaterSource;-><init>(Lokio/Source;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lokhttp3/internal/ws/MessageInflater;->inflaterSource:Lokio/InflaterSource;

    .line 47
    :cond_1
    iget-boolean v2, p0, Lokhttp3/internal/ws/MessageInflater;->noContextTakeover:Z

    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 51
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    invoke-virtual {v2, p1}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    .line 52
    iget-object v2, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    const v3, 0xffff

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 54
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v2

    iget-object v4, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_3
    const-wide v4, 0x7fffffffffffffffL

    .line 59
    invoke-virtual {v1, p1, v4, v5}, Lokio/InflaterSource;->readOrInflate(Lokio/Buffer;J)J

    .line 60
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_4

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 64
    :cond_4
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-gez p1, :cond_5

    .line 65
    iget-object p1, p0, Lokhttp3/internal/ws/MessageInflater;->deflatedBytes:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->clear()V

    .line 66
    invoke-virtual {v1}, Lokio/InflaterSource;->close()V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lokhttp3/internal/ws/MessageInflater;->inflaterSource:Lokio/InflaterSource;

    .line 68
    iput-object p1, p0, Lokhttp3/internal/ws/MessageInflater;->inflater:Ljava/util/zip/Inflater;

    :cond_5
    return-void

    .line 38
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
