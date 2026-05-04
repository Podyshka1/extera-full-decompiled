.class public Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRotationOptionSupported()Z
    .locals 2

    .line 40
    const-class v0, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    .line 41
    invoke-static {v0}, Landroidx/camera/core/internal/compat/quirk/DeviceQuirks;->get(Ljava/lang/Class;)Landroidx/camera/core/impl/Quirk;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;

    if-eqz v0, :cond_1

    .line 42
    sget-object v1, Landroidx/camera/core/impl/CaptureConfig;->OPTION_ROTATION:Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v0, v1}, Landroidx/camera/core/internal/compat/quirk/ImageCaptureRotationOptionQuirk;->isSupported(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public shouldUseExifOrientation(Landroidx/camera/core/ImageProxy;)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroidx/camera/core/internal/compat/workaround/ExifRotationAvailability;->isRotationOptionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result p1

    invoke-static {p1}, Landroidx/camera/core/internal/utils/ImageUtil;->isJpegFormats(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
