.class public abstract synthetic Landroidx/camera/core/impl/CameraInternal$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getCameraControl(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraControl;
    .locals 0

    .line 218
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object p0

    return-object p0
.end method

.method public static $default$getCameraInfo(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraInfo;
    .locals 0

    .line 223
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p0

    return-object p0
.end method

.method public static $default$getExtendedConfig(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/impl/CameraConfig;
    .locals 0

    .line 256
    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->defaultConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object p0

    return-object p0
.end method

.method public static $default$getHasTransform(Landroidx/camera/core/impl/CameraInternal;)Z
    .locals 0

    .line 236
    const/4 p0, 0x1

    return p0
.end method

.method public static $default$isFrontFacing(Landroidx/camera/core/impl/CameraInternal;)Z
    .locals 0

    .line 149
    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfo()Landroidx/camera/core/CameraInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/camera/core/CameraInfo;->getLensFacing()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$isRemoved(Landroidx/camera/core/impl/CameraInternal;)Z
    .locals 0

    .line 204
    const/4 p0, 0x0

    return p0
.end method

.method public static $default$onRemoved(Landroidx/camera/core/impl/CameraInternal;)V
    .locals 0

    .line 198
    return-void
.end method

.method public static $default$setActiveResumingMode(Landroidx/camera/core/impl/CameraInternal;Z)V
    .locals 0

    .line 143
    return-void
.end method

.method public static $default$setExtendedConfig(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraConfig;)V
    .locals 0

    .line 264
    return-void
.end method

.method public static $default$setPrimary(Landroidx/camera/core/impl/CameraInternal;Z)V
    .locals 0

    .line 249
    return-void
.end method
