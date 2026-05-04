.class final Landroidx/work/impl/WorkerWrapper$runWorker$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkerWrapper;->runWorker(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $foregroundUpdater:Landroidx/work/ForegroundUpdater;

.field final synthetic $worker:Landroidx/work/ListenableWorker;

.field label:I

.field final synthetic this$0:Landroidx/work/impl/WorkerWrapper;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->$worker:Landroidx/work/ListenableWorker;

    iput-object p3, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->$foregroundUpdater:Landroidx/work/ForegroundUpdater;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->$worker:Landroidx/work/ListenableWorker;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->$foregroundUpdater:Landroidx/work/ForegroundUpdater;

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;-><init>(Landroidx/work/impl/WorkerWrapper;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 299
    iget v1, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, p0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 301
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper;->access$getAppContext$p(Landroidx/work/impl/WorkerWrapper;)Landroid/content/Context;

    move-result-object v4

    .line 302
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    invoke-virtual {p1}, Landroidx/work/impl/WorkerWrapper;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v5

    .line 303
    iget-object v6, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->$worker:Landroidx/work/ListenableWorker;

    .line 304
    iget-object v7, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->$foregroundUpdater:Landroidx/work/ForegroundUpdater;

    .line 305
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper;->access$getWorkTaskExecutor$p(Landroidx/work/impl/WorkerWrapper;)Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v8

    .line 300
    iput v3, p0, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->label:I

    move-object v9, p0

    invoke-static/range {v4 .. v9}, Landroidx/work/impl/utils/WorkForegroundKt;->workForeground(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 307
    :cond_3
    :goto_0
    invoke-static {}, Landroidx/work/impl/WorkerWrapperKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    iget-object v1, v9, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    .line 19
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    .line 307
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting work for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/work/impl/WorkerWrapper;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object v1

    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v3, p1, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object p1, v9, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->$worker:Landroidx/work/ListenableWorker;

    invoke-virtual {p1}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string v1, "startWork(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v9, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->$worker:Landroidx/work/ListenableWorker;

    iput v2, v9, Landroidx/work/impl/WorkerWrapper$runWorker$result$1;->label:I

    invoke-static {p1, v1, p0}, Landroidx/work/impl/WorkerWrapperKt;->awaitWithin(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/ListenableWorker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    return-object p1
.end method
