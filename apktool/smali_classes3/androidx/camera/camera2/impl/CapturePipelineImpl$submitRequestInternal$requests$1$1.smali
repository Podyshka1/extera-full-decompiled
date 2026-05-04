.class public final Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$requests$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/CapturePipelineImpl;->submitRequestInternal(Landroidx/camera/camera2/impl/CapturePipelineImpl$MainCaptureParams;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $completeSignal:Lkotlinx/coroutines/CompletableDeferred;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$requests$1$1;->$completeSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$requests$1$1;->$completeSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 669
    new-instance v0, Landroidx/camera/core/ImageCaptureException;

    .line 671
    const-string v1, "Capture request is cancelled because camera is closed"

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 669
    invoke-direct {v0, v3, v1, v2}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 668
    invoke-interface {p1, v0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

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

.method public synthetic onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method

.method public onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 1

    const-string p2, "requestMetadata"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestFailure"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$requests$1$1;->$completeSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 691
    new-instance p2, Landroidx/camera/core/ImageCaptureException;

    .line 693
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Capture request failed with reason "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestFailure;->getReason()I

    move-result p4

    .line 693
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v0, 0x2

    .line 691
    invoke-direct {p2, v0, p3, p4}, Landroidx/camera/core/ImageCaptureException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 690
    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

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

.method public onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    const-string p2, "requestMetadata"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "totalCaptureResult"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    iget-object p1, p0, Landroidx/camera/camera2/impl/CapturePipelineImpl$submitRequestInternal$requests$1$1;->$completeSignal:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method
