.class public abstract Lokio/FileHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/FileHandle$FileHandleSource;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private openStreamCount:I

.field private final readWrite:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lokio/FileHandle;->readWrite:Z

    .line 55
    invoke-static {}, Lokio/_JvmPlatformKt;->newLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    iput-object p1, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static final synthetic access$getClosed$p(Lokio/FileHandle;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lokio/FileHandle;->closed:Z

    return p0
.end method

.method public static final synthetic access$getOpenStreamCount$p(Lokio/FileHandle;)I
    .locals 0

    .line 35
    iget p0, p0, Lokio/FileHandle;->openStreamCount:I

    return p0
.end method

.method public static final synthetic access$readNoCloseCheck(Lokio/FileHandle;JLokio/Buffer;J)J
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p5}, Lokio/FileHandle;->readNoCloseCheck(JLokio/Buffer;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$setOpenStreamCount$p(Lokio/FileHandle;I)V
    .locals 0

    .line 35
    iput p1, p0, Lokio/FileHandle;->openStreamCount:I

    return-void
.end method

.method private final readNoCloseCheck(JLokio/Buffer;J)J
    .locals 14

    move-object/from16 v0, p3

    move-wide/from16 v1, p4

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_3

    add-long/2addr v1, p1

    move-wide v4, p1

    :goto_0
    cmp-long v3, v4, v1

    if-gez v3, :cond_2

    const/4 v3, 0x1

    .line 340
    invoke-virtual {v0, v3}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v9

    .line 343
    iget-object v6, v9, Lokio/Segment;->data:[B

    .line 344
    iget v7, v9, Lokio/Segment;->limit:I

    sub-long v10, v1, v4

    rsub-int v3, v7, 0x2000

    int-to-long v12, v3

    .line 85
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v8, v10

    move-object v3, p0

    .line 341
    invoke-virtual/range {v3 .. v8}, Lokio/FileHandle;->protectedRead(J[BII)I

    move-result v6

    const/4 v3, -0x1

    if-ne v6, v3, :cond_1

    .line 349
    iget v1, v9, Lokio/Segment;->pos:I

    iget v2, v9, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_0

    .line 351
    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 352
    invoke-static {v9}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_0
    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    return-wide v0

    .line 358
    :cond_1
    iget v3, v9, Lokio/Segment;->limit:I

    add-int/2addr v3, v6

    iput v3, v9, Lokio/Segment;->limit:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 360
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->setSize$okio(J)V

    goto :goto_0

    :cond_2
    sub-long/2addr v4, p1

    return-wide v4

    .line 334
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteCount < 0: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 287
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 288
    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 289
    :try_start_1
    iput-boolean v1, p0, Lokio/FileHandle;->closed:Z

    .line 290
    iget v1, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 291
    :cond_1
    :try_start_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 292
    invoke-virtual {p0}, Lokio/FileHandle;->protectedClose()V

    return-void

    :catchall_0
    move-exception v1

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 55
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method protected abstract protectedClose()V
.end method

.method protected abstract protectedRead(J[BII)I
.end method

.method protected abstract protectedSize()J
.end method

.method public final size()J
    .locals 3

    .line 92
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 93
    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z

    if-nez v1, :cond_0

    .line 94
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    invoke-virtual {p0}, Lokio/FileHandle;->protectedSize()J

    move-result-wide v0

    return-wide v0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 93
    :cond_0
    :try_start_1
    const-string v1, "closed"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final source(J)Lokio/Source;
    .locals 2

    .line 151
    iget-object v0, p0, Lokio/FileHandle;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 152
    :try_start_0
    iget-boolean v1, p0, Lokio/FileHandle;->closed:Z

    if-nez v1, :cond_0

    .line 153
    iget v1, p0, Lokio/FileHandle;->openStreamCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokio/FileHandle;->openStreamCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 155
    new-instance v0, Lokio/FileHandle$FileHandleSource;

    invoke-direct {v0, p0, p1, p2}, Lokio/FileHandle$FileHandleSource;-><init>(Lokio/FileHandle;J)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 152
    :cond_0
    :try_start_1
    const-string p1, "closed"

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
