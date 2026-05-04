.class final Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->issueSingleCaptureAsync(Ljava/util/List;III)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $captureMode:I

.field final synthetic $captureSequence:Ljava/util/List;

.field final synthetic $flashMode:I

.field final synthetic $flashType:I

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;IIILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$captureSequence:Ljava/util/List;

    iput p3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$captureMode:I

    iput p4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$flashType:I

    iput p5, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$flashMode:I

    const/4 p1, 0x1

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$captureSequence:Ljava/util/List;

    iget v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$captureMode:I

    iget v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$flashType:I

    iget v5, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$flashMode:I

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;IIILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 516
    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 517
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 517
    const-string v3, "UseCaseCameraRequestControlImpl#issueSingleCaptureAsync"

    .line 86
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$captureSequence:Ljava/util/List;

    invoke-static {v1, v3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$hasInvalidSurface(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 521
    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$captureSequence:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 522
    const-string v4, "Capture request failed due to invalid surface"

    .line 520
    invoke-static {v1, v3, v4}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$failedResults(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;ILjava/lang/String;)Ljava/util/List;

    .line 526
    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    invoke-static {v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$getInfoBundleMap$p(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$merge(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Ljava/util/Map;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    move-result-object v1

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    iget-object v5, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$captureSequence:Ljava/util/List;

    iget v8, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$captureMode:I

    iget v9, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$flashType:I

    iget v10, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->$flashMode:I

    .line 85
    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 528
    const-string v4, "UseCaseCameraRequestControl: Submitting still captures to capture pipeline"

    .line 86
    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_4
    invoke-static {v3}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$getCapturePipeline(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;)Landroidx/camera/camera2/impl/CapturePipeline;

    move-result-object v4

    .line 532
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getTemplate-ejQnlcg()Landroidx/camera/camera2/pipe/RequestTemplate;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/RequestTemplate;->unbox-impl()I

    move-result v6

    .line 533
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;->getOptions()Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v7

    .line 530
    iput v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$issueSingleCaptureAsync$1$1;->label:I

    move-object v11, p0

    invoke-interface/range {v4 .. v11}, Landroidx/camera/camera2/impl/CapturePipeline;->submitStillCaptures-BvXKQx0(Ljava/util/List;ILandroidx/camera/core/impl/Config;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 516
    :cond_5
    :goto_0
    check-cast p1, Ljava/util/List;

    return-object p1
.end method
