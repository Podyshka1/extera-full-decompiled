.class public interface abstract Landroidx/camera/camera2/pipe/Request$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAborted(Landroidx/camera/camera2/pipe/Request;)V
.end method

.method public abstract onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V
.end method

.method public abstract onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
.end method

.method public abstract onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V
.end method

.method public abstract onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
.end method

.method public abstract onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
.end method

.method public abstract onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
.end method

.method public abstract onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
.end method

.method public abstract onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
.end method

.method public abstract onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V
.end method

.method public abstract onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V
.end method

.method public abstract onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
.end method

.method public abstract onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
.end method

.method public abstract onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
.end method
