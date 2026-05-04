.class public final Landroidx/camera/core/internal/CameraCaptureResultImageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ImageInfo;


# instance fields
.field private final mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraCaptureResult;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    return-void
.end method


# virtual methods
.method public getCameraCaptureResult()Landroidx/camera/core/impl/CameraCaptureResult;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    return-object v0
.end method

.method public getFlashState()I
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getFlashState()Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->toFlashState()I

    move-result v0

    return v0
.end method

.method public getTagBundle()Landroidx/camera/core/impl/TagBundle;
    .locals 1

    .line 40
    iget-object v0, p0, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getTagBundle()Landroidx/camera/core/impl/TagBundle;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 45
    iget-object v0, p0, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraCaptureResult;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    invoke-interface {v0, p1}, Landroidx/camera/core/impl/CameraCaptureResult;->populateExifData(Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    return-void
.end method
