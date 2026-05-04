.class final Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->processingLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-direct {v0, v1, p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 104
    iget v1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->label:I

    const/4 v2, 0x1

    const-string v3, "CXCP"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 105
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v5, p1

    .line 107
    :cond_2
    :goto_0
    invoke-static {v5}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 108
    :try_start_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    .line 54
    new-instance v6, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    invoke-direct {v6, v7}, Lkotlinx/coroutines/selects/SelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 121
    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getChannel$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lkotlinx/coroutines/channels/Channel;

    move-result-object v7

    invoke-interface {v7}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceive()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v7

    new-instance v8, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;

    invoke-direct {v8, p1, v4}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$1;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v7, v8}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    .line 136
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/Deferred;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lkotlinx/coroutines/Deferred;->getOnAwait()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object p1

    new-instance v7, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$2;

    invoke-direct {v7, v1, v4}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, p1, v7}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    .line 58
    :cond_3
    iput-object v5, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->label:I

    invoke-virtual {v6, p0}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    .line 147
    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lkotlin/collections/ArrayDeque;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p1, :cond_5

    goto :goto_0

    .line 149
    :cond_5
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lkotlin/collections/ArrayDeque;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object p1

    .line 150
    new-instance v8, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$deferred$1;

    iget-object v6, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-direct {v8, v6, p1, v4}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2$deferred$1;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v6

    .line 154
    invoke-interface {v6}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 156
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " due to Job cancellation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move-object p1, v4

    goto :goto_4

    .line 159
    :cond_7
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lkotlin/collections/ArrayDeque;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 160
    iput-object v6, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_0

    .line 142
    :goto_3
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 86
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 142
    const-string v0, "Encountered exception during processing"

    .line 86
    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 139
    :catch_0
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 139
    const-string p1, "PruningProcessingQueue: Scope cancelled"

    .line 50
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 163
    :cond_8
    :goto_4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;->this$0:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;

    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->access$closeAndReleaseUnprocessedElements(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Throwable;)V

    if-nez p1, :cond_9

    return-object v4

    .line 164
    :cond_9
    throw p1
.end method
