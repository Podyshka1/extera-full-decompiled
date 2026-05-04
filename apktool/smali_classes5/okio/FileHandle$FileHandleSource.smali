.class final Lokio/FileHandle$FileHandleSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/FileHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileHandleSource"
.end annotation


# instance fields
.field private closed:Z

.field private final fileHandle:Lokio/FileHandle;

.field private position:J


# direct methods
.method public constructor <init>(Lokio/FileHandle;J)V
    .locals 1

    const-string v0, "fileHandle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

    .line 420
    iput-wide p2, p0, Lokio/FileHandle$FileHandleSource;->position:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 434
    iget-boolean v0, p0, Lokio/FileHandle$FileHandleSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 435
    iput-boolean v0, p0, Lokio/FileHandle$FileHandleSource;->closed:Z

    .line 436
    iget-object v0, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

    invoke-virtual {v0}, Lokio/FileHandle;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 437
    :try_start_0
    iget-object v1, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

    invoke-static {v1}, Lokio/FileHandle;->access$getOpenStreamCount$p(Lokio/FileHandle;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lokio/FileHandle;->access$setOpenStreamCount$p(Lokio/FileHandle;I)V

    .line 438
    iget-object v1, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

    invoke-static {v1}, Lokio/FileHandle;->access$getOpenStreamCount$p(Lokio/FileHandle;)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

    invoke-static {v1}, Lokio/FileHandle;->access$getClosed$p(Lokio/FileHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 440
    iget-object v0, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

    invoke-virtual {v0}, Lokio/FileHandle;->protectedClose()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public read(Lokio/Buffer;J)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-boolean v0, p0, Lokio/FileHandle$FileHandleSource;->closed:Z

    if-nez v0, :cond_1

    .line 426
    iget-object v1, p0, Lokio/FileHandle$FileHandleSource;->fileHandle:Lokio/FileHandle;

    iget-wide v2, p0, Lokio/FileHandle$FileHandleSource;->position:J

    move-object v4, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/FileHandle;->access$readNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 427
    iget-wide v0, p0, Lokio/FileHandle$FileHandleSource;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokio/FileHandle$FileHandleSource;->position:J

    :cond_0
    return-wide p1

    .line 425
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 431
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method
