.class final Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lokio/AsyncTimeout$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$insertIntoQueue(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Lokio/AsyncTimeout$Companion;->insertIntoQueue(Lokio/AsyncTimeout;)V

    return-void
.end method

.method private final insertIntoQueue(Lokio/AsyncTimeout;)V
    .locals 4

    .line 318
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->getIdleSentinel()Lokio/AsyncTimeout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lokio/AsyncTimeout;

    invoke-direct {v0}, Lokio/AsyncTimeout;-><init>()V

    invoke-virtual {p0, v0}, Lokio/AsyncTimeout$Companion;->setIdleSentinel(Lokio/AsyncTimeout;)V

    .line 320
    new-instance v0, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v0}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 322
    invoke-static {p1, v0, v1, v3, v2}, Lokio/AsyncTimeout;->setTimeoutAt$okio$default(Lokio/AsyncTimeout;JILjava/lang/Object;)V

    .line 324
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->getQueue()Lokio/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokio/PriorityQueue;->add(Lokio/AsyncTimeout;)V

    .line 325
    iget p1, p1, Lokio/AsyncTimeout;->index:I

    if-ne p1, v3, :cond_1

    .line 327
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final awaitTimeout()Lokio/AsyncTimeout;
    .locals 7

    .line 342
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->getQueue()Lokio/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Lokio/PriorityQueue;->first()Lokio/AsyncTimeout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 347
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 348
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->getQueue()Lokio/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Lokio/PriorityQueue;->first()Lokio/AsyncTimeout;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_NANOS$cp()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-ltz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->getIdleSentinel()Lokio/AsyncTimeout;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1

    .line 355
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/AsyncTimeout;->remainingNanos$okio(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 359
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->getCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-object v1

    .line 364
    :cond_2
    invoke-virtual {p0}, Lokio/AsyncTimeout$Companion;->getQueue()Lokio/PriorityQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokio/PriorityQueue;->remove(Lokio/AsyncTimeout;)V

    const/4 v1, 0x2

    .line 365
    invoke-static {v0, v1}, Lokio/AsyncTimeout;->access$setState$p(Lokio/AsyncTimeout;I)V

    return-object v0
.end method

.method public final getCondition()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 266
    invoke-static {}, Lokio/AsyncTimeout;->access$getCondition$cp()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    return-object v0
.end method

.method public final getIdleSentinel()Lokio/AsyncTimeout;
    .locals 1

    .line 264
    invoke-static {}, Lokio/AsyncTimeout;->access$getIdleSentinel$cp()Lokio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method public final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 265
    invoke-static {}, Lokio/AsyncTimeout;->access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    return-object v0
.end method

.method public final getQueue()Lokio/PriorityQueue;
    .locals 1

    .line 263
    invoke-static {}, Lokio/AsyncTimeout;->access$getQueue$cp()Lokio/PriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public final setIdleSentinel(Lokio/AsyncTimeout;)V
    .locals 0

    .line 264
    invoke-static {p1}, Lokio/AsyncTimeout;->access$setIdleSentinel$cp(Lokio/AsyncTimeout;)V

    return-void
.end method
