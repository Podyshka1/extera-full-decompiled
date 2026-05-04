.class public abstract synthetic Landroidx/camera/core/impl/CameraCaptureResult$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$populateExifData(Landroidx/camera/core/impl/CameraCaptureResult;Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 0

    .line 72
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraCaptureResult;->getFlashState()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setFlashState(Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    return-void
.end method
