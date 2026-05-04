.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Companion;,
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final Companion:Lokio/AsyncTimeout$Companion;

.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final STATE_CANCELED:I = 0x3

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_IN_QUEUE:I = 0x1

.field private static final STATE_TIMED_OUT:I = 0x2

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static final condition:Ljava/util/concurrent/locks/Condition;

.field private static idleSentinel:Lokio/AsyncTimeout;

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final queue:Lokio/PriorityQueue;


# instance fields
.field public index:I

.field private state:I

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokio/AsyncTimeout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/AsyncTimeout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    .line 263
    new-instance v0, Lokio/PriorityQueue;

    invoke-direct {v0}, Lokio/PriorityQueue;-><init>()V

    sput-object v0, Lokio/AsyncTimeout;->queue:Lokio/PriorityQueue;

    .line 265
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lokio/AsyncTimeout;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 266
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    const-string/jumbo v1, "newCondition(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    .line 276
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 277
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lokio/AsyncTimeout;->index:I

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lokio/AsyncTimeout$Companion;
    .locals 1

    .line 45
    sget-object v0, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    return-object v0
.end method

.method public static final synthetic access$getCondition$cp()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 45
    sget-object v0, Lokio/AsyncTimeout;->condition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_MILLIS$cp()J
    .locals 2

    .line 45
    sget-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    return-wide v0
.end method

.method public static final synthetic access$getIDLE_TIMEOUT_NANOS$cp()J
    .locals 2

    .line 45
    sget-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-wide v0
.end method

.method public static final synthetic access$getIdleSentinel$cp()Lokio/AsyncTimeout;
    .locals 1

    .line 45
    sget-object v0, Lokio/AsyncTimeout;->idleSentinel:Lokio/AsyncTimeout;

    return-object v0
.end method

.method public static final synthetic access$getLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 45
    sget-object v0, Lokio/AsyncTimeout;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$getQueue$cp()Lokio/PriorityQueue;
    .locals 1

    .line 45
    sget-object v0, Lokio/AsyncTimeout;->queue:Lokio/PriorityQueue;

    return-object v0
.end method

.method public static final synthetic access$setIdleSentinel$cp(Lokio/AsyncTimeout;)V
    .locals 0

    .line 45
    sput-object p0, Lokio/AsyncTimeout;->idleSentinel:Lokio/AsyncTimeout;

    return-void
.end method

.method public static final synthetic access$setState$p(Lokio/AsyncTimeout;I)V
    .locals 0

    .line 45
    iput p1, p0, Lokio/AsyncTimeout;->state:I

    return-void
.end method

.method public static synthetic setTimeoutAt$okio$default(Lokio/AsyncTimeout;JILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/AsyncTimeout;->setTimeoutAt$okio(J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setTimeoutAt"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public cancel()V
    .locals 3

    .line 85
    invoke-super {p0}, Lokio/Timeout;->cancel()V

    .line 87
    sget-object v0, Lokio/AsyncTimeout;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 88
    :try_start_0
    iget v1, p0, Lokio/AsyncTimeout;->state:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 89
    sget-object v1, Lokio/AsyncTimeout;->queue:Lokio/PriorityQueue;

    invoke-virtual {v1, p0}, Lokio/PriorityQueue;->remove(Lokio/AsyncTimeout;)V

    const/4 v1, 0x3

    .line 90
    iput v1, p0, Lokio/AsyncTimeout;->state:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 92
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final enter()V
    .locals 5

    .line 56
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    .line 57
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 62
    :cond_0
    sget-object v0, Lokio/AsyncTimeout;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 63
    :try_start_0
    iget v1, p0, Lokio/AsyncTimeout;->state:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 64
    iput v1, p0, Lokio/AsyncTimeout;->state:I

    .line 65
    sget-object v1, Lokio/AsyncTimeout;->Companion:Lokio/AsyncTimeout$Companion;

    invoke-static {v1, p0}, Lokio/AsyncTimeout$Companion;->access$insertIntoQueue(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)V

    .line 66
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 63
    :cond_1
    :try_start_1
    const-string v1, "Unbalanced enter/exit"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final exit()Z
    .locals 5

    .line 71
    sget-object v0, Lokio/AsyncTimeout;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 72
    :try_start_0
    iget v1, p0, Lokio/AsyncTimeout;->state:I

    const/4 v2, 0x0

    .line 73
    iput v2, p0, Lokio/AsyncTimeout;->state:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 76
    sget-object v1, Lokio/AsyncTimeout;->queue:Lokio/PriorityQueue;

    invoke-virtual {v1, p0}, Lokio/PriorityQueue;->remove(Lokio/AsyncTimeout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v2

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final getTimeoutAt$okio()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    return-wide v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 218
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final remainingNanos$okio(J)J
    .locals 2

    .line 99
    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public final setTimeoutAt$okio(J)V
    .locals 7

    .line 105
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    .line 106
    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v2

    .line 107
    invoke-virtual {p0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lokio/Timeout;->hasDeadline()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    return-void

    :cond_0
    cmp-long v3, v0, v5

    if-eqz v3, :cond_1

    add-long/2addr p1, v0

    .line 112
    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    return-void

    :cond_1
    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {p0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    return-void

    .line 116
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 1

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lokio/AsyncTimeout$sink$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$sink$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lokio/AsyncTimeout$source$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$source$1;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    return-void
.end method

.method public final withTimeout(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lokio/AsyncTimeout;->enter()V

    const/4 v0, 0x1

    .line 198
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 204
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 202
    :try_start_1
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->access$newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :goto_1
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    .line 205
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw p1
.end method
