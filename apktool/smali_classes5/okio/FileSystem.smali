.class public abstract Lokio/FileSystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileSystem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lokio/FileSystem$Companion;

.field public static final RESOURCES:Lokio/FileSystem;

.field public static final SYSTEM:Lokio/FileSystem;

.field public static final SYSTEM_TEMPORARY_DIRECTORY:Lokio/Path;


# direct methods
.method public static synthetic -write$default(Lokio/FileSystem;Lokio/Path;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p5, :cond_4

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 86
    :cond_0
    const-string p4, "file"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "writerAction"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 96
    :try_start_0
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p0, :cond_1

    .line 67
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 70
    :cond_1
    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v0, p3

    move-object p3, p1

    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception p3

    .line 64
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p0, :cond_2

    .line 67
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 72
    invoke-static {p3, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    :goto_2
    if-nez p3, :cond_3

    return-object p1

    .line 77
    :cond_3
    throw p3

    .line 86
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: write"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lokio/FileSystem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/FileSystem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/FileSystem;->Companion:Lokio/FileSystem$Companion;

    .line 154
    :try_start_0
    const-string v0, "java.nio.file.Files"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 155
    new-instance v0, Lokio/NioSystemFileSystem;

    invoke-direct {v0}, Lokio/NioSystemFileSystem;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    new-instance v0, Lokio/JvmSystemFileSystem;

    invoke-direct {v0}, Lokio/JvmSystemFileSystem;-><init>()V

    .line 152
    :goto_0
    sput-object v0, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    .line 162
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v2, "java.io.tmpdir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getProperty(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    sput-object v0, Lokio/FileSystem;->SYSTEM_TEMPORARY_DIRECTORY:Lokio/Path;

    .line 175
    new-instance v1, Lokio/internal/ResourceFileSystem;

    .line 176
    const-class v0, Lokio/internal/ResourceFileSystem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v0, "getClassLoader(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 175
    invoke-direct/range {v1 .. v6}, Lokio/internal/ResourceFileSystem;-><init>(Ljava/lang/ClassLoader;ZLokio/FileSystem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lokio/FileSystem;->RESOURCES:Lokio/FileSystem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic appendingSink$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)Lokio/Sink;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 101
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->appendingSink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: appendingSink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic createDirectories$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 113
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->createDirectories(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createDirectories"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic createDirectory$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 107
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->createDirectory(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createDirectory"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic delete$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: delete"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic deleteRecursively$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 132
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->deleteRecursively(Lokio/Path;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: deleteRecursively"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final get(Ljava/nio/file/FileSystem;)Lokio/FileSystem;
    .locals 1

    sget-object v0, Lokio/FileSystem;->Companion:Lokio/FileSystem$Companion;

    invoke-virtual {v0, p0}, Lokio/FileSystem$Companion;->get(Ljava/nio/file/FileSystem;)Lokio/FileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic listRecursively$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)Lkotlin/sequences/Sequence;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->listRecursively(Lokio/Path;Z)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: listRecursively"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic openReadWrite$default(Lokio/FileSystem;Lokio/Path;ZZILjava/lang/Object;)Lokio/FileHandle;
    .locals 1

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lokio/FileSystem;->openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: openReadWrite"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic sink$default(Lokio/FileSystem;Lokio/Path;ZILjava/lang/Object;)Lokio/Sink;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 79
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sink"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final -read(Lokio/Path;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Path;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/BufferedSource;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 72
    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lokio/FileSystem;->source(Lokio/Path;)Lokio/Source;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    :try_start_0
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p1, :cond_0

    .line 67
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 70
    :cond_0
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v2, v1

    move-object v1, p2

    move-object p2, v2

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 64
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p1, :cond_1

    .line 67
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 72
    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    :goto_2
    if-nez p2, :cond_2

    return-object v1

    .line 77
    :cond_2
    throw p2
.end method

.method public final -write(Lokio/Path;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/Path;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/BufferedSink;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 72
    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writerAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p1, p2}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 96
    :try_start_0
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p1, :cond_0

    .line 67
    :try_start_1
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 70
    :cond_0
    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    move-object v1, v0

    move-object v0, p3

    move-object p3, v1

    goto :goto_2

    :catchall_1
    move-exception p3

    .line 64
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    if-eqz p1, :cond_1

    .line 67
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 72
    invoke-static {p3, p1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    :goto_2
    if-nez p3, :cond_2

    return-object v0

    .line 77
    :cond_2
    throw p3
.end method

.method public final appendingSink(Lokio/Path;)Lokio/Sink;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->appendingSink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public abstract appendingSink(Lokio/Path;Z)Lokio/Sink;
.end method

.method public abstract atomicMove(Lokio/Path;Lokio/Path;)V
.end method

.method public abstract canonicalize(Lokio/Path;)Lokio/Path;
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public copy(Lokio/Path;Lokio/Path;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {p0, p1, p2}, Lokio/internal/-FileSystem;->commonCopy(Lokio/FileSystem;Lokio/Path;Lokio/Path;)V

    return-void
.end method

.method public final createDirectories(Lokio/Path;)V
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->createDirectories(Lokio/Path;Z)V

    return-void
.end method

.method public final createDirectories(Lokio/Path;Z)V
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {p0, p1, p2}, Lokio/internal/-FileSystem;->commonCreateDirectories(Lokio/FileSystem;Lokio/Path;Z)V

    return-void
.end method

.method public final createDirectory(Lokio/Path;)V
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->createDirectory(Lokio/Path;Z)V

    return-void
.end method

.method public abstract createDirectory(Lokio/Path;Z)V
.end method

.method public abstract createSymlink(Lokio/Path;Lokio/Path;)V
.end method

.method public final delete(Lokio/Path;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->delete(Lokio/Path;Z)V

    return-void
.end method

.method public abstract delete(Lokio/Path;Z)V
.end method

.method public final deleteRecursively(Lokio/Path;)V
    .locals 1

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->deleteRecursively(Lokio/Path;Z)V

    return-void
.end method

.method public deleteRecursively(Lokio/Path;Z)V
    .locals 1

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p0, p1, p2}, Lokio/internal/-FileSystem;->commonDeleteRecursively(Lokio/FileSystem;Lokio/Path;Z)V

    return-void
.end method

.method public final exists(Lokio/Path;)Z
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {p0, p1}, Lokio/internal/-FileSystem;->commonExists(Lokio/FileSystem;Lokio/Path;)Z

    move-result p1

    return p1
.end method

.method public abstract list(Lokio/Path;)Ljava/util/List;
.end method

.method public abstract listOrNull(Lokio/Path;)Ljava/util/List;
.end method

.method public final listRecursively(Lokio/Path;)Lkotlin/sequences/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Lkotlin/sequences/Sequence;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->listRecursively(Lokio/Path;Z)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public listRecursively(Lokio/Path;Z)Lkotlin/sequences/Sequence;
    .locals 1

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p0, p1, p2}, Lokio/internal/-FileSystem;->commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lkotlin/sequences/Sequence;

    move-result-object p1

    return-object p1
.end method

.method public final metadata(Lokio/Path;)Lokio/FileMetadata;
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p0, p1}, Lokio/internal/-FileSystem;->commonMetadata(Lokio/FileSystem;Lokio/Path;)Lokio/FileMetadata;

    move-result-object p1

    return-object p1
.end method

.method public abstract metadataOrNull(Lokio/Path;)Lokio/FileMetadata;
.end method

.method public abstract openReadOnly(Lokio/Path;)Lokio/FileHandle;
.end method

.method public final openReadWrite(Lokio/Path;)Lokio/FileHandle;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, p1, v0, v0}, Lokio/FileSystem;->openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public abstract openReadWrite(Lokio/Path;ZZ)Lokio/FileHandle;
.end method

.method public final sink(Lokio/Path;)Lokio/Sink;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, p1, v0}, Lokio/FileSystem;->sink(Lokio/Path;Z)Lokio/Sink;

    move-result-object p1

    return-object p1
.end method

.method public abstract sink(Lokio/Path;Z)Lokio/Sink;
.end method

.method public abstract source(Lokio/Path;)Lokio/Source;
.end method
