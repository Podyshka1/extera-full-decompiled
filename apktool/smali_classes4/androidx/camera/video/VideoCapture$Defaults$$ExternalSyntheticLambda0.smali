.class public final synthetic Landroidx/camera/video/VideoCapture$Defaults$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/video/VideoOutput;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getEncoderProfilesResolver(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/EncoderProfilesResolver;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/video/VideoOutput$-CC;->$default$getEncoderProfilesResolver(Landroidx/camera/video/VideoOutput;Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/EncoderProfilesResolver;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getMediaCapabilities(Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/video/VideoOutput$-CC;->$default$getMediaCapabilities(Landroidx/camera/video/VideoOutput;Landroidx/camera/core/CameraInfo;I)Landroidx/camera/video/VideoCapabilities;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getMediaSpec()Landroidx/camera/core/impl/Observable;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/video/VideoOutput$-CC;->$default$getMediaSpec(Landroidx/camera/video/VideoOutput;)Landroidx/camera/core/impl/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getStreamInfo()Landroidx/camera/core/impl/Observable;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/video/VideoOutput$-CC;->$default$getStreamInfo(Landroidx/camera/video/VideoOutput;)Landroidx/camera/core/impl/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic isQualitySelectorDefault()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/video/VideoOutput$-CC;->$default$isQualitySelectorDefault(Landroidx/camera/video/VideoOutput;)Z

    move-result v0

    return v0
.end method

.method public synthetic isSourceStreamRequired()Landroidx/camera/core/impl/Observable;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/video/VideoOutput$-CC;->$default$isSourceStreamRequired(Landroidx/camera/video/VideoOutput;)Landroidx/camera/core/impl/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onSourceStateChanged(Landroidx/camera/video/VideoOutput$SourceState;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/video/VideoOutput$-CC;->$default$onSourceStateChanged(Landroidx/camera/video/VideoOutput;Landroidx/camera/video/VideoOutput$SourceState;)V

    return-void
.end method

.method public final onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p1}, Landroidx/camera/core/SurfaceRequest;->willNotProvideSurface()Z

    return-void
.end method

.method public synthetic onSurfaceRequested(Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/video/VideoOutput$-CC;->$default$onSurfaceRequested(Landroidx/camera/video/VideoOutput;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    return-void
.end method
