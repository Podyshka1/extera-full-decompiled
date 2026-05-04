.class public abstract Landroidx/camera/core/imagecapture/ProcessingRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method abstract getCaptureFuture()Lcom/google/common/util/concurrent/ListenableFuture;
.end method

.method abstract getCropRect()Landroid/graphics/Rect;
.end method

.method abstract getJpegQuality()I
.end method

.method abstract getOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;
.end method

.method public abstract getRequestId()I
.end method

.method abstract getRotationDegrees()I
.end method

.method abstract getSecondaryOutputFileOptions()Landroidx/camera/core/ImageCapture$OutputFileOptions;
.end method

.method abstract getSensorToBufferTransform()Landroid/graphics/Matrix;
.end method

.method abstract getStageIds()Ljava/util/List;
.end method

.method abstract getTagBundleKey()Ljava/lang/String;
.end method

.method abstract getTakePictureRequest()Landroidx/camera/core/imagecapture/TakePictureRequest;
.end method

.method abstract isAborted()Z
.end method

.method abstract isInMemoryCapture()Z
.end method

.method abstract onCaptureFailure(Landroidx/camera/core/ImageCaptureException;)V
.end method

.method abstract onCaptureProcessProgressed(I)V
.end method

.method abstract onCaptureStarted()V
.end method

.method abstract onFinalResult(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
.end method

.method abstract onFinalResult(Landroidx/camera/core/ImageProxy;)V
.end method

.method abstract onImageCaptured()V
.end method

.method abstract onPostviewBitmapAvailable(Landroid/graphics/Bitmap;)V
.end method

.method abstract onProcessFailure(Landroidx/camera/core/ImageCaptureException;)V
.end method
