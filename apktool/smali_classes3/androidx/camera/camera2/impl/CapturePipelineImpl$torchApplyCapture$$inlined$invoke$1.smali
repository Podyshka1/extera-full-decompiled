.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->torchApplyCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;IJLjava/util/List;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $captureMode$inlined:I

.field final synthetic $captureSignal:Ljava/util/List;

.field final synthetic $lock3ARequired$inlined:Z

.field final synthetic $torchOnRequired$inlined:Z

.field final synthetic $triggerAePreCapture$inlined:Z

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/coroutines/Continuation;ZLandroidx/camera/camera2/impl/CapturePipelineImpl;ZZI)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    iput-boolean p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$torchOnRequired$inlined:Z

    iput-object p4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iput-boolean p5, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$triggerAePreCapture$inlined:Z

    iput-boolean p6, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$lock3ARequired$inlined:Z

    iput p7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureMode$inlined:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    iget-boolean v3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$torchOnRequired$inlined:Z

    iget-object v4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iget-boolean v5, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$triggerAePreCapture$inlined:Z

    iget-boolean v6, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$lock3ARequired$inlined:Z

    iget v7, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureMode$inlined:I

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;ZLandroidx/camera/camera2/impl/CapturePipelineImpl;ZZI)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 402
    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "CXCP"

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 308
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 309
    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_5
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    iput v5, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto/16 :goto_5

    .line 313
    :cond_6
    :goto_0
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 314
    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_7
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$torchOnRequired$inlined:Z

    if-eqz p1, :cond_9

    .line 85
    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 880
    const-string v1, "CapturePipeline#torchApplyCapture: Unsetting torch"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_8
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getTorchControl$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/impl/TorchControl;

    move-result-object v7

    sget-object p1, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getOFF-IRs_-R8()I

    move-result v8

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2$default(Landroidx/camera/camera2/impl/TorchControl;IZZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    .line 85
    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 886
    const-string v1, "CapturePipeline#torchApplyCapture: Unsetting torch done"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_9
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$triggerAePreCapture$inlined:Z

    if-eqz p1, :cond_e

    .line 85
    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 892
    const-string v1, "CapturePipeline#torchApplyCapture: Unlocking 3A for capture"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_a
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$getUseCaseGraphContext$p(Landroidx/camera/camera2/impl/CapturePipelineImpl;)Landroidx/camera/camera2/config/UseCaseGraphContext;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p1

    iput v4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->label:I

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    goto :goto_5

    .line 402
    :cond_b
    :goto_1
    move-object v1, p1

    check-cast v1, Ljava/lang/AutoCloseable;

    :try_start_1
    move-object p1, v1

    check-cast p1, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    .line 901
    iget v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureMode$inlined:I

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    const/4 v5, 0x0

    .line 900
    :goto_2
    iput-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->label:I

    invoke-interface {p1, v5, p0}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->unlock3APostCapture(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    goto :goto_5

    .line 903
    :cond_d
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 242
    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_4
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    .line 905
    :cond_e
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$lock3ARequired$inlined:Z

    if-eqz p1, :cond_11

    iget p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->$captureMode$inlined:I

    if-nez p1, :cond_11

    .line 85
    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 906
    const-string v1, "CapturePipeline#torchApplyCapture: Unlocking 3A"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_f
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {}, Landroidx/camera/camera2/impl/CapturePipelineKt;->access$getCHECK_3A_TIMEOUT_IN_NS$p()J

    move-result-wide v3

    iput v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1;->label:I

    invoke-static {p1, v3, v4, p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->access$unlockAf(Landroidx/camera/camera2/impl/CapturePipelineImpl;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_10

    :goto_5
    return-object v0

    .line 908
    :cond_10
    :goto_6
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 908
    const-string v0, "CapturePipeline#torchApplyCapture: Unlocking 3A done"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_11
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
