.class public final Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/compat/EvCompImpl;->applyAsync(ILandroidx/camera/camera2/impl/UseCaseCameraRequestControl;Z)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $evCompIndex:I

.field final synthetic $signal:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method constructor <init>(ILkotlinx/coroutines/CompletableDeferred;)V
    .locals 0

    iput p1, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$evCompIndex:I

    iput-object p2, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Lkotlinx/coroutines/CompletableDeferred;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onAborted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/Request;)V

    return-void
.end method

.method public synthetic onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JI)V

    return-void
.end method

.method public synthetic onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    return-void
.end method

.method public synthetic onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onCaptureProgress(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    return-void
.end method

.method public onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    const-string p2, "requestMetadata"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p1

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const-string p3, "CONTROL_AE_STATE"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 135
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/FrameInfo;->getMetadata()Landroidx/camera/camera2/pipe/FrameMetadata;

    move-result-object p2

    sget-object p3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    const-string p4, "CONTROL_AE_EXPOSURE_COMPENSATION"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_0

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iget p1, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$evCompIndex:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 142
    iget-object p1, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Lkotlinx/coroutines/CompletableDeferred;

    iget p2, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$evCompIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 146
    iget p1, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$evCompIndex:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 150
    iget-object p1, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Lkotlinx/coroutines/CompletableDeferred;

    iget p2, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$evCompIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    return-void
.end method

.method public synthetic onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method public synthetic onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public synthetic onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceAborted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    return-void
.end method

.method public synthetic onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceCreated(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public synthetic onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method
