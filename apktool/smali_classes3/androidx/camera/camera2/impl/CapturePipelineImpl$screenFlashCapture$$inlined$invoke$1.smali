.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->screenFlashCapture(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;ILjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $captureMode$inlined:I

.field final synthetic $captureSignal:Ljava/util/List;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/CapturePipelineImpl;I)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    iput-object p3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iput p4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->$captureMode$inlined:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;

    iget-object v0, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iget v2, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->$captureMode$inlined:I

    invoke-direct {p1, v0, p2, v1, v2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/CapturePipelineImpl;I)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 525
    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->label:I

    const-string v2, "CXCP"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 308
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    invoke-static {v2}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 309
    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_3
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->$captureSignal:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    iput v4, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/AwaitKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 313
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

    .line 314
    const-string v1, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done"

    .line 86
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_5
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->this$0:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iget v1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->$captureMode$inlined:I

    iput v3, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$screenFlashCapture$$inlined$invoke$1;->label:I

    invoke-virtual {p1, v1, p0}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->invokeScreenFlashPostCaptureTasks(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_1
    return-object v0

    .line 318
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
