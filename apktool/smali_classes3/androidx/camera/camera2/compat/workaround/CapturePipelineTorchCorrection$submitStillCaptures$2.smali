.class final Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->submitStillCaptures-BvXKQx0(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $deferredResults:Ljava/util/List;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->$deferredResults:Ljava/util/List;

    iput-object p2, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->this$0:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;

    iget-object v0, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->$deferredResults:Ljava/util/List;

    iget-object v1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->this$0:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    invoke-direct {p1, v0, v1, p2}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;-><init>(Ljava/util/List;Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 85
    iget v1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->label:I

    const-string v2, "CXCP"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    iget-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->$deferredResults:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    iput v5, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 87
    :cond_4
    :goto_0
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 87
    const-string v1, "Re-enable Torch to correct the Torch state"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_5
    iget-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->this$0:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    invoke-static {p1}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->access$getTorchControl$p(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)Landroidx/camera/camera2/impl/TorchControl;

    move-result-object v5

    sget-object p1, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getOFF-IRs_-R8()I

    move-result v6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2$default(Landroidx/camera/camera2/impl/TorchControl;IZZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    iput v4, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_2

    .line 89
    :cond_6
    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->this$0:Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;

    invoke-static {p1}, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;->access$getTorchControl$p(Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection;)Landroidx/camera/camera2/impl/TorchControl;

    move-result-object v4

    sget-object p1, Landroidx/camera/camera2/impl/TorchControl$TorchMode;->Companion:Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/TorchControl$TorchMode$Companion;->getUSED_AS_FLASH-IRs_-R8()I

    move-result v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync-Oup_wC0$camera_camera2$default(Landroidx/camera/camera2/impl/TorchControl;IZZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    iput v3, p0, Landroidx/camera/camera2/compat/workaround/CapturePipelineTorchCorrection$submitStillCaptures$2;->label:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_2
    return-object v0

    .line 90
    :cond_7
    :goto_3
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 90
    const-string v0, "Re-enable Torch to correct the Torch state, done"

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
