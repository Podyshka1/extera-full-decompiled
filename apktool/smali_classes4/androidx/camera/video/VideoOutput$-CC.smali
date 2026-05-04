.class public abstract synthetic Landroidx/camera/video/VideoOutput$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$getEncoderProfilesResolver(Landroidx/camera/video/VideoOutput;Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 0

    .line 173
    sget-object p0, Landroidx/camera/video/EncoderProfilesResolver;->EMPTY:Landroidx/camera/video/EncoderProfilesResolver;

    return-object p0
.end method

.method public static $default$getMediaCapabilities(Landroidx/camera/video/VideoOutput;Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;
    .locals 0

    .line 164
    sget-object p0, Landroidx/camera/video/VideoCapabilities;->EMPTY:Landroidx/camera/video/VideoCapabilities;

    return-object p0
.end method

.method public static $default$getMediaSpec(Landroidx/camera/video/VideoOutput;)Landroidx/camera/core/impl/Observable;
    .locals 0

    const/4 p0, 0x0

    .line 132
    invoke-static {p0}, Landroidx/camera/core/impl/ConstantObservable;->withValue(Ljava/lang/Object;)Landroidx/camera/core/impl/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static $default$getStreamInfo(Landroidx/camera/video/VideoOutput;)Landroidx/camera/core/impl/Observable;
    .locals 0

    .line 112
    sget-object p0, Landroidx/camera/video/StreamInfo;->ALWAYS_ACTIVE_OBSERVABLE:Landroidx/camera/core/impl/Observable;

    return-object p0
.end method

.method public static $default$isQualitySelectorDefault(Landroidx/camera/video/VideoOutput;)Z
    .locals 0

    .line 182
    const/4 p0, 0x1

    return p0
.end method

.method public static $default$isSourceStreamRequired(Landroidx/camera/video/VideoOutput;)Landroidx/camera/core/impl/Observable;
    .locals 0

    .line 145
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/camera/core/impl/ConstantObservable;->withValue(Ljava/lang/Object;)Landroidx/camera/core/impl/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static $default$onSourceStateChanged(Landroidx/camera/video/VideoOutput;Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 0

    .line 154
    return-void
.end method

.method public static $default$onSurfaceRequested(Landroidx/camera/video/VideoOutput;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 0

    .line 103
    invoke-interface {p0, p1}, Landroidx/camera/video/VideoOutput;->onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V

    return-void
.end method
