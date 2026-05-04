.class public final Lokhttp3/RequestBody$Companion$asRequestBody$2;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/RequestBody$Companion;->create(Lokio/Path;Lokio/FileSystem;Lokhttp3/MediaType;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $contentType:Lokhttp3/MediaType;

.field final synthetic $fileSystem:Lokio/FileSystem;

.field final synthetic $this_asRequestBody:Lokio/Path;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;Lokio/FileSystem;Lokio/Path;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$contentType:Lokhttp3/MediaType;

    iput-object p2, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$fileSystem:Lokio/FileSystem;

    iput-object p3, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$this_asRequestBody:Lokio/Path;

    .line 201
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 204
    iget-object v0, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$this_asRequestBody:Lokio/Path;

    invoke-virtual {v0, v1}, Lokio/FileSystem;->metadata(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lokio/FileMetadata;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 202
    iget-object v0, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$fileSystem:Lokio/FileSystem;

    iget-object v1, p0, Lokhttp3/RequestBody$Companion$asRequestBody$2;->$this_asRequestBody:Lokio/Path;

    invoke-virtual {v0, v1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object v0

    :try_start_0
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
