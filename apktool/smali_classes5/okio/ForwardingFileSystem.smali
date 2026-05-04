.class public abstract Lokio/ForwardingFileSystem;
.super Lokio/FileSystem;
.source "SourceFile"


# instance fields
.field private final delegate:Lokio/FileSystem;


# direct methods
.method public static synthetic $r8$lambda$uSGFIfEGqOOIQR48FjtdbUCanJ4(Lokio/ForwardingFileSystem;Lokio/Path;)Lokio/Path;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lokio/ForwardingFileSystem;->listRecursively$lambda$0(Lokio/ForwardingFileSystem;Lokio/Path;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lokio/FileSystem;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    .line 110
    iput-object p1, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    return-void
.end method

.method private static final listRecursively$lambda$0(Lokio/ForwardingFileSystem;Lokio/Path;)Lokio/Path;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    const-string v0, "listRecursively"

    invoke-virtual {p0, p1, v0}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendingSink(Lokio/Path;Z)Lokio/Sink;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    const-string v1, "appendingSink"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 216
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1, p2}, Lokio/FileSystem;->appendingSink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public atomicMove(Lokio/Path;Lokio/Path;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    const-string v2, "atomicMove"

    invoke-virtual {p0, p1, v2, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 228
    invoke-virtual {p0, p2, v2, v1}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p2

    .line 229
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1, p2}, Lokio/FileSystem;->atomicMove(Lokio/Path;Lokio/Path;)V

    return-void
.end method

.method public canonicalize(Lokio/Path;)Lokio/Path;
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    const-string v1, "canonicalize"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1}, Lokio/FileSystem;->canonicalize(Lokio/Path;)Lokio/Path;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1, v1}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    .line 247
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0}, Lokio/FileSystem;->close()V

    return-void
.end method

.method public createDirectory(Lokio/Path;Z)V
    .locals 2

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    const-string v1, "createDirectory"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1, p2}, Lokio/FileSystem;->createDirectory(Lokio/Path;Z)V

    return-void
.end method

.method public createSymlink(Lokio/Path;Lokio/Path;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    const-string v2, "createSymlink"

    invoke-virtual {p0, p1, v2, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 241
    invoke-virtual {p0, p2, v2, v1}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p2

    .line 242
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1, p2}, Lokio/FileSystem;->createSymlink(Lokio/Path;Lokio/Path;)V

    return-void
.end method

.method public final delegate()Lokio/FileSystem;
    .locals 1

    .line 111
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    return-object v0
.end method

.method public delete(Lokio/Path;Z)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    const-string v1, "delete"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 235
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1, p2}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    return-void
.end method

.method public list(Lokio/Path;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    const-string v1, "list"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 169
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1}, Lokio/FileSystem;->list(Lokio/Path;)Ljava/util/List;

    move-result-object p1

    .line 170
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Lokio/Path;

    .line 170
    invoke-virtual {p0, v2, v1}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object v2

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public listOrNull(Lokio/Path;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    const-string v1, "listOrNull"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1}, Lokio/FileSystem;->listOrNull(Lokio/Path;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 178
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Lokio/Path;

    .line 178
    invoke-virtual {p0, v2, v1}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object v2

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public listRecursively(Lokio/Path;Z)Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Z)",
            "Lkotlin/sequences/Sequence;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const-string v1, "listRecursively"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 185
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1, p2}, Lokio/FileSystem;->listRecursively(Lokio/Path;Z)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 186
    new-instance p2, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(Lokio/ForwardingFileSystem;)V

    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
    .locals 13

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    const-string v1, "metadataOrNull"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1}, Lokio/FileSystem;->metadataOrNull(Lokio/Path;)Lokio/FileMetadata;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 160
    :cond_0
    invoke-virtual {v2}, Lokio/FileMetadata;->getSymlinkTarget()Lokio/Path;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v2

    .line 162
    :cond_1
    invoke-virtual {v2}, Lokio/FileMetadata;->getSymlinkTarget()Lokio/Path;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lokio/ForwardingFileSystem;->onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;

    move-result-object v5

    const/16 v11, 0xfb

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 163
    invoke-static/range {v2 .. v12}, Lokio/FileMetadata;->copy$default(Lokio/FileMetadata;ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILjava/lang/Object;)Lokio/FileMetadata;

    move-result-object p1

    return-object p1
.end method

.method public onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "parameterName"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPathResult(Lokio/Path;Ljava/lang/String;)Lokio/Path;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openReadOnly(Lokio/Path;)Lokio/FileHandle;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    const-string v1, "openReadOnly"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    const-string v1, "openReadWrite"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1, p2, p3}, Lokio/FileSystem;->openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public sink(Lokio/Path;Z)Lokio/Sink;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const-string v1, "sink"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 210
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public source(Lokio/Path;)Lokio/Source;
    .locals 2

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    const-string v1, "source"

    invoke-virtual {p0, p1, v1, v0}, Lokio/ForwardingFileSystem;->onPathParameter(Lokio/Path;Ljava/lang/String;Ljava/lang/String;)Lokio/Path;

    move-result-object p1

    .line 204
    iget-object v0, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokio/ForwardingFileSystem;->delegate:Lokio/FileSystem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
