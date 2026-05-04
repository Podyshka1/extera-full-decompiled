.class public Landroidx/camera/core/impl/utils/futures/FutureChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# instance fields
.field mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

.field private final mDelegate:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroidx/camera/core/impl/utils/futures/FutureChain$1;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/futures/FutureChain$1;-><init>(Landroidx/camera/core/impl/utils/futures/FutureChain;)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;->mDelegate:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;->mDelegate:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static from(Lcom/google/common/util/concurrent/ListenableFuture;)Landroidx/camera/core/impl/utils/futures/FutureChain;
    .locals 1

    .line 60
    instance-of v0, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Landroidx/camera/core/impl/utils/futures/FutureChain;

    return-object p0

    :cond_0
    new-instance v0, Landroidx/camera/core/impl/utils/futures/FutureChain;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/futures/FutureChain;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 129
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;->mDelegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public cancel(Z)Z
    .locals 1

    .line 134
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;->mDelegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;->mDelegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .line 156
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;->mDelegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;->mDelegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 144
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;->mDelegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method

.method set(Ljava/lang/Object;)Z
    .locals 1

    .line 160
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method setException(Ljava/lang/Throwable;)Z
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/camera/core/impl/utils/futures/FutureChain;->mCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final transform(Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;
    .locals 0

    .line 93
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/utils/futures/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/arch/core/util/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/utils/futures/FutureChain;

    return-object p1
.end method

.method public final transformAsync(Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/FutureChain;
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Landroidx/camera/core/impl/utils/futures/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/utils/futures/FutureChain;

    return-object p1
.end method
