.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->submitRequestInternal(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $deferredList$inlined:Ljava/util/List;

.field final synthetic $requests$inlined:Ljava/util/List;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/CapturePipelineImpl;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iput-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$deferredList$inlined:Ljava/util/List;

    iput-object p4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$requests$inlined:Ljava/util/List;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$deferredList$inlined:Ljava/util/List;

    iget-object v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$requests$inlined:Ljava/util/List;

    invoke-direct {p1, p2, v0, v1, v2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/CapturePipelineImpl;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 722
    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "CXCP"

    const/4 v6, 0x3

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v6, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 201
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 204
    const-string v1, "CapturePipeline#submitRequestInternal: Acquiring session for submitting requests"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_4
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 209
    :try_start_1
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p1

    iput-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->label:I

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_3

    .line 722
    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object v3, p1

    check-cast v3, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    .line 212
    iget-object v7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$requests$inlined:Ljava/util/List;

    invoke-static {v7}, Landroidx/camera/camera2/compat/workaround/StillCaptureFlowKt;->shouldStopRepeatingBeforeCapture(Ljava/util/List;)Z

    move-result v7

    iput-boolean v7, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v7, :cond_6

    .line 214
    invoke-interface {v3}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->stopRepeating()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 217
    :cond_6
    :goto_1
    sget-object v7, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v5}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v7

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CapturePipeline#submitRequestInternal: Submitting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$requests$inlined:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_7
    iget-object v7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$requests$inlined:Ljava/util/List;

    invoke-interface {v3, v7}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->submit(Ljava/util/List;)V

    .line 223
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :try_start_3
    invoke-static {p1, v4}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 245
    iget-boolean p1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_a

    .line 246
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$deferredList$inlined:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    iput-object v4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_3

    .line 247
    :cond_8
    :goto_2
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getUseCaseCameraState(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/UseCaseCameraState;

    move-result-object p1

    iput v6, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->label:I

    invoke-virtual {p1, p0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->tryStartRepeating(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    :goto_3
    return-object v0

    .line 242
    :goto_4
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0

    .line 225
    :catch_0
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 102
    invoke-static {v5}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 103
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 228
    const-string v0, "CapturePipeline#submitRequestInternal: CameraGraph.Session could not be acquired, requests may need re-submission"

    .line 103
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_9
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1;->$deferredList$inlined:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CompletableDeferred;

    .line 234
    new-instance v1, Landroidx/camera/core/ImageCaptureException;

    .line 236
    const-string v2, "Capture request is cancelled because camera is closed"

    .line 234
    invoke-direct {v1, v6, v2, v4}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_5

    .line 194
    :cond_a
    :goto_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
