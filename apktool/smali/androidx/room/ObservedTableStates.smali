.class public final Landroidx/room/ObservedTableStates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/ObservedTableStates$ObserveOp;
    }
.end annotation


# instance fields
.field private volatile inProgressSync:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile needsSync:Z

.field private final onSyncLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final tableObservedState:[Z

.field private final tableObserversCount:[J


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 500
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    .line 504
    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    .line 511
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/room/ObservedTableStates;->onSyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static final synthetic access$getLock$p(Landroidx/room/ObservedTableStates;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 494
    iget-object p0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getNeedsSync$p(Landroidx/room/ObservedTableStates;)Z
    .locals 0

    .line 494
    iget-boolean p0, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    return p0
.end method

.method public static final synthetic access$getOnSyncLock$p(Landroidx/room/ObservedTableStates;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 494
    iget-object p0, p0, Landroidx/room/ObservedTableStates;->onSyncLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getTableObservedState$p(Landroidx/room/ObservedTableStates;)[Z
    .locals 0

    .line 494
    iget-object p0, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    return-object p0
.end method

.method public static final synthetic access$getTableObserversCount$p(Landroidx/room/ObservedTableStates;)[J
    .locals 0

    .line 494
    iget-object p0, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    return-object p0
.end method

.method public static final synthetic access$setInProgressSync$p(Landroidx/room/ObservedTableStates;Z)V
    .locals 0

    .line 494
    iput-boolean p1, p0, Landroidx/room/ObservedTableStates;->inProgressSync:Z

    return-void
.end method

.method public static final synthetic access$setNeedsSync$p(Landroidx/room/ObservedTableStates;Z)V
    .locals 0

    .line 494
    iput-boolean p1, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    return-void
.end method


# virtual methods
.method public final forceNeedSync$room_runtime()V
    .locals 2

    .line 601
    iget-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x1

    .line 601
    :try_start_0
    iput-boolean v1, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public final onObserverAdded$room_runtime([I)Z
    .locals 12

    const-string/jumbo v0, "tableIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 653
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget v6, p1, v3

    .line 566
    iget-object v7, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    aget-wide v8, v7, v6

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    .line 567
    aput-wide v10, v7, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v8, v6

    if-nez v6, :cond_0

    .line 569
    iput-boolean v5, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    move v4, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 573
    iget-boolean p1, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/room/ObservedTableStates;->inProgressSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    :cond_2
    move v2, v5

    .line 32
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final onObserverRemoved$room_runtime([I)Z
    .locals 14

    const-string/jumbo v0, "tableIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 659
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget v6, p1, v3

    .line 584
    iget-object v7, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    aget-wide v8, v7, v6

    const-wide/16 v10, 0x1

    sub-long v12, v8, v10

    .line 585
    aput-wide v12, v7, v6

    cmp-long v6, v8, v10

    if-nez v6, :cond_0

    .line 587
    iput-boolean v5, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    move v4, v5

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 591
    iget-boolean p1, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Landroidx/room/ObservedTableStates;->inProgressSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    :cond_2
    move v2, v5

    .line 32
    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final resetTriggerState$room_runtime()V
    .locals 8

    .line 595
    iget-object v1, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 596
    :try_start_0
    iget-object v2, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/ArraysKt;->fill$default([ZZIIILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 598
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
