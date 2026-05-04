.class public abstract Lkotlinx/coroutines/tasks/TasksKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/tasks/TasksKt;->awaitImpl(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final awaitImpl(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationTokenSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 126
    :cond_0
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Task "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was cancelled normally."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_1
    throw p1

    .line 427
    :cond_2
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 433
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 138
    sget-object v1, Lkotlinx/coroutines/tasks/DirectExecutor;->INSTANCE:Lkotlinx/coroutines/tasks/DirectExecutor;

    new-instance v2, Lkotlinx/coroutines/tasks/TasksKt$awaitImpl$2$1;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/tasks/TasksKt$awaitImpl$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    if-eqz p1, :cond_3

    .line 149
    new-instance p0, Lkotlinx/coroutines/tasks/TasksKt$awaitImpl$2$2;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/tasks/TasksKt$awaitImpl$2$2;-><init>(Lcom/google/android/gms/tasks/CancellationTokenSource;)V

    invoke-interface {v0, p0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 435
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 426
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    return-object p0
.end method
