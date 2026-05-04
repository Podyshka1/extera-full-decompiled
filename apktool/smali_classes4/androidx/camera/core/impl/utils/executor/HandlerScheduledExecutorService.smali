.class final Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$HandlerScheduledFuture;
    }
.end annotation


# static fields
.field private static sThreadLocalInstance:Ljava/lang/ThreadLocal;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$1;

    invoke-direct {v0}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$1;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->sThreadLocalInstance:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 70
    iput-object p1, p0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private createPostFailedException()Ljava/util/concurrent/RejectedExecutionException;
    .locals 3

    .line 179
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is shutting down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 166
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 167
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot be shut down. Use Looper.quitSafely()."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic close()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableForwarder1;->m(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 173
    iget-object v0, p0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->createPostFailedException()Ljava/util/concurrent/RejectedExecutionException;

    move-result-object p1

    throw p1
.end method

.method public isShutdown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    .line 96
    new-instance v0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$2;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$2;-><init>(Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;Ljava/lang/Runnable;)V

    .line 103
    invoke-virtual {p0, v0, p2, p3, p4}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    add-long/2addr v0, p2

    .line 112
    new-instance p2, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$HandlerScheduledFuture;

    iget-object p3, p0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p3, v0, v1, p1}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService$HandlerScheduledFuture;-><init>(Landroid/os/Handler;JLjava/util/concurrent/Callable;)V

    .line 114
    iget-object p1, p0, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 118
    :cond_0
    invoke-direct {p0}, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;->createPostFailedException()Ljava/util/concurrent/RejectedExecutionException;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedScheduledFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 127
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 128
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " does not yet support fixed-rate scheduling."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 135
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 136
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " does not yet support fixed-delay scheduling."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdown()V
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be shut down. Use Looper.quitSafely()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 3

    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 150
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be shut down. Use Looper.quitSafely()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
