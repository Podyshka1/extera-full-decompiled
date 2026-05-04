.class public final Lokio/NioFileSystemWrappingFileSystem;
.super Lokio/NioSystemFileSystem;
.source "SourceFile"


# instance fields
.field private final nioFileSystem:Ljava/nio/file/FileSystem;


# direct methods
.method public constructor <init>(Ljava/nio/file/FileSystem;)V
    .locals 1

    const-string v0, "nioFileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lokio/NioSystemFileSystem;-><init>()V

    iput-object p1, p0, Lokio/NioFileSystemWrappingFileSystem;->nioFileSystem:Ljava/nio/file/FileSystem;

    return-void
.end method

.method private final list(Lokio/Path;Z)Ljava/util/List;
    .locals 5

    .line 66
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    :try_start_0
    invoke-static {v0, v3, v2, v3}, Lkotlin/io/path/PathsKt;->listDirectoryEntries$default(Ljava/nio/file/Path;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1635
    invoke-static {v0}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline6;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object v0

    .line 77
    sget-object v4, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-static {v4, v0, v1, v2, v3}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    .line 1635
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    return-object p2

    :catch_0
    if-eqz p2, :cond_2

    .line 71
    new-array p2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 72
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to list "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    return-object v3
.end method

.method private final resolve(Lokio/Path;)Ljava/nio/file/Path;
    .locals 2

    .line 46
    iget-object v0, p0, Lokio/NioFileSystemWrappingFileSystem;->nioFileSystem:Ljava/nio/file/FileSystem;

    invoke-virtual {p1}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const-string v0, "getPath(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 134
    invoke-static {}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline7;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_0

    .line 135
    invoke-static {}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline5;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 137
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p1

    .line 138
    check-cast p2, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ljava/nio/file/StandardOpenOption;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 138
    check-cast p2, [Ljava/nio/file/StandardOpenOption;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/OpenOption;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/OpenOption;

    invoke-static {p1, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    const-string p2, "newOutputStream(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-static {p1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p1

    .line 160
    invoke-direct {p0, p2}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x2

    .line 161
    new-array v1, v0, [Ljava/nio/file/CopyOption;

    invoke-static {}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline0;->m()Ljava/nio/file/StandardCopyOption;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 162
    invoke-static {}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline1;->m()Ljava/nio/file/StandardCopyOption;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 159
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/CopyOption;

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p1

    const-string p2, "move(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 167
    :catch_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "atomic move not supported"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :goto_0
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/nio/file/NoSuchFileException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .locals 5

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :try_start_0
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-interface {v1, v3}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v1

    const-string v3, "toRealPath(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/nio/file/Path;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 53
    :catch_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 191
    iget-object v0, p0, Lokio/NioFileSystemWrappingFileSystem;->nioFileSystem:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->close()V

    return-void
.end method

.method public createDirectory(Lokio/Path;Z)V
    .locals 3

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokio/FileMetadata;->isDirectory()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exists."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 149
    :cond_2
    :goto_1
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p2

    new-array v0, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p2

    const-string v0, "createDirectory(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    if-eqz v2, :cond_3

    return-void

    .line 152
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p2}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, p2, v0}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p1

    const-string p2, "createSymbolicLink(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public delete(Lokio/Path;Z)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 176
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 178
    :try_start_0
    invoke-static {v0}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p2, 0x0

    .line 182
    new-array v1, p2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 180
    :cond_1
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 174
    :cond_2
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "interrupted"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public list(Lokio/Path;)Ljava/util/List;
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p1, v0}, Lokio/NioFileSystemWrappingFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public listOrNull(Lokio/Path;)Ljava/util/List;
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lokio/NioFileSystemWrappingFileSystem;->list(Lokio/Path;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokio/NioSystemFileSystem;->metadataOrNull(Ljava/nio/file/Path;)Lokio/FileMetadata;

    move-result-object p1

    return-object p1
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .locals 4

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline2;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    new-instance v0, Lokio/NioFileSystemFileHandle;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v3, p1}, Lokio/NioFileSystemFileHandle;-><init>(ZLjava/nio/channels/FileChannel;)V

    return-object v0

    .line 86
    :catch_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot require mustCreate and mustExist at the same time."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 94
    invoke-static {}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline2;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline3;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 97
    invoke-static {}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline4;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    .line 99
    invoke-static {}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline5;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    :goto_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 104
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object p3

    check-cast p2, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 38
    new-array v0, v0, [Ljava/nio/file/StandardOpenOption;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 104
    check-cast p2, [Ljava/nio/file/StandardOpenOption;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/OpenOption;

    invoke-static {p3, p2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    new-instance p2, Lokio/NioFileSystemFileHandle;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lokio/NioFileSystemFileHandle;-><init>(ZLjava/nio/channels/FileChannel;)V

    return-object p2

    .line 106
    :catch_0
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no such file: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 121
    invoke-static {}, Lokio/NioFileSystemWrappingFileSystem$$ExternalSyntheticApiModelOutline4;->m()Ljava/nio/file/StandardOpenOption;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 124
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 125
    check-cast p2, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 38
    new-array v1, v1, [Ljava/nio/file/StandardOpenOption;

    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 125
    check-cast p2, [Ljava/nio/file/StandardOpenOption;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/OpenOption;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/OpenOption;

    invoke-static {v0, p2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p2

    const-string v0, "newOutputStream(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {p2}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 128
    :catch_0
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    :try_start_0
    invoke-direct {p0, p1}, Lokio/NioFileSystemWrappingFileSystem;->resolve(Lokio/Path;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "newInputStream(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 115
    :catch_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lokio/NioFileSystemWrappingFileSystem;->nioFileSystem:Ljava/nio/file/FileSystem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
