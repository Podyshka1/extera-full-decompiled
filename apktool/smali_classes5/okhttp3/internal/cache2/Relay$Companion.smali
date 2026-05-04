.class public final Lokhttp3/internal/cache2/Relay$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lokhttp3/internal/cache2/Relay$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final edit(Ljava/io/File;Lokio/Source;Lokio/ByteString;J)Lokhttp3/internal/cache2/Relay;
    .locals 10

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upstream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 324
    new-instance v1, Lokhttp3/internal/cache2/Relay;

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    move-object v3, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-direct/range {v1 .. v9}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-wide/16 p1, 0x0

    .line 327
    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 328
    sget-object v4, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Lokio/ByteString;

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lokhttp3/internal/cache2/Relay;->access$writeHeader(Lokhttp3/internal/cache2/Relay;Lokio/ByteString;JJ)V

    return-object v1
.end method

.method public final read(Ljava/io/File;)Lokhttp3/internal/cache2/Relay;
    .locals 10

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    new-instance v3, Lokhttp3/internal/cache2/FileOperator;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const-string v0, "getChannel(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    .line 345
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x20

    .line 346
    invoke-virtual/range {v3 .. v8}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 347
    sget-object p1, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 348
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {v6}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    .line 350
    invoke-virtual {v6}, Lokio/Buffer;->readLong()J

    move-result-wide v7

    .line 353
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    const-wide/16 v4, 0x20

    add-long/2addr v4, v0

    .line 354
    invoke-virtual/range {v3 .. v8}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 355
    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v6

    move-wide v4, v0

    .line 358
    new-instance v1, Lokhttp3/internal/cache2/Relay;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v9}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Lokio/Source;JLokio/ByteString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 348
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "unreadable cache file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
