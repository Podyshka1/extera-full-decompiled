.class public abstract Landroidx/datastore/core/RunOnce;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final didRun:Lkotlinx/coroutines/CompletableDeferred;

.field private final runMutex:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/RunOnce;->runMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 488
    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/RunOnce;->didRun:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method


# virtual methods
.method public final awaitComplete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 491
    iget-object v0, p0, Landroidx/datastore/core/RunOnce;->didRun:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method protected abstract doRun(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final runIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Landroidx/datastore/core/RunOnce$runIfNeeded$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;

    iget v1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/core/RunOnce$runIfNeeded$1;-><init>(Landroidx/datastore/core/RunOnce;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 493
    iget v2, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/datastore/core/RunOnce;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/datastore/core/RunOnce;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 494
    iget-object p1, p0, Landroidx/datastore/core/RunOnce;->didRun:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 495
    :cond_4
    iget-object p1, p0, Landroidx/datastore/core/RunOnce;->runMutex:Lkotlinx/coroutines/sync/Mutex;

    .line 125
    iput-object p0, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->label:I

    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, p0

    .line 496
    :goto_1
    :try_start_1
    iget-object v2, v4, Landroidx/datastore/core/RunOnce;->didRun:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 548
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto :goto_4

    .line 497
    :cond_6
    :try_start_2
    iput-object v4, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/datastore/core/RunOnce$runIfNeeded$1;->label:I

    invoke-virtual {v4, v0}, Landroidx/datastore/core/RunOnce;->doRun(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v1, :cond_7

    :goto_2
    return-object v1

    :cond_7
    move-object v1, p1

    move-object v0, v4

    .line 498
    :goto_3
    :try_start_3
    iget-object p1, v0, Landroidx/datastore/core/RunOnce;->didRun:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 548
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    :goto_4
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
