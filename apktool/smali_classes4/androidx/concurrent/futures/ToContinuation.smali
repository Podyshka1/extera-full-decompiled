.class final Landroidx/concurrent/futures/ToContinuation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final continuation:Lkotlinx/coroutines/CancellableContinuation;

.field private final futureToObserve:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 1

    const-string v0, "futureToObserve"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/concurrent/futures/ToContinuation;->futureToObserve:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Landroidx/concurrent/futures/ToContinuation;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    iget-object v0, p0, Landroidx/concurrent/futures/ToContinuation;->futureToObserve:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Landroidx/concurrent/futures/ToContinuation;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CancellableContinuation$DefaultImpls;->cancel$default(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void

    .line 80
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/concurrent/futures/ToContinuation;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    .line 81
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Landroidx/concurrent/futures/ToContinuation;->futureToObserve:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v1}, Landroidx/concurrent/futures/AbstractResolvableFuture;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 87
    iget-object v1, p0, Landroidx/concurrent/futures/ToContinuation;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {v0}, Landroidx/concurrent/futures/ListenableFutureKt;->access$nonNullCause(Ljava/util/concurrent/ExecutionException;)Ljava/lang/Throwable;

    move-result-object v0

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
