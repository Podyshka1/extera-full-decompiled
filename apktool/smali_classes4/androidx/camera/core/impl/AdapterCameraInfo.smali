.class public Landroidx/camera/core/impl/AdapterCameraInfo;
.super Landroidx/camera/core/impl/ForwardingCameraInfo;
.source "SourceFile"


# instance fields
.field private final mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

.field private final mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

.field private mExtensionZoomStateLiveData:Landroidx/lifecycle/LiveData;

.field private mIsCaptureProcessProgressSupported:Z

.field private mIsPostviewSupported:Z


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraConfig;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/ForwardingCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mIsPostviewSupported:Z

    .line 74
    iput-boolean v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mIsCaptureProcessProgressSupported:Z

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mExtensionZoomStateLiveData:Landroidx/lifecycle/LiveData;

    .line 81
    iput-object p1, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 82
    iput-object p2, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 83
    invoke-interface {p2, v0}, Landroidx/camera/core/impl/CameraConfig;->getSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;

    .line 85
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraConfig;->isPostviewSupported()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/AdapterCameraInfo;->setPostviewSupported(Z)V

    .line 86
    invoke-interface {p2}, Landroidx/camera/core/impl/CameraConfig;->isCaptureProcessProgressSupported()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/AdapterCameraInfo;->setCaptureProcessProgressSupported(Z)V

    return-void
.end method


# virtual methods
.method public getCameraConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    return-object v0
.end method

.method public getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    return-object v0
.end method

.method public getSessionProcessor()Landroidx/camera/core/impl/SessionProcessor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getZoomState()Landroidx/lifecycle/LiveData;
    .locals 3

    const/4 v0, 0x0

    .line 174
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/camera/core/impl/utils/SessionProcessorUtil;->isOperationSupported(Landroidx/camera/core/impl/SessionProcessor;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v1}, Landroidx/camera/core/internal/ImmutableZoomState;->create(FFFF)Landroidx/camera/core/ZoomState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 203
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->getZoomState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public hasFlashUnit()Z
    .locals 2

    const/4 v0, 0x5

    .line 107
    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/camera/core/impl/utils/SessionProcessorUtil;->isOperationSupported(Landroidx/camera/core/impl/SessionProcessor;[I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mCameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/CameraInfo;->hasFlashUnit()Z

    move-result v0

    return v0
.end method

.method public isPreviewStabilizationSupported()Z
    .locals 1

    .line 301
    invoke-super {p0}, Landroidx/camera/core/impl/ForwardingCameraInfo;->isPreviewStabilizationSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoStabilizationSupported()Z
    .locals 1

    .line 285
    invoke-super {p0}, Landroidx/camera/core/impl/ForwardingCameraInfo;->isVideoStabilizationSupported()Z

    move-result v0

    return v0
.end method

.method public setCaptureProcessProgressSupported(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mIsCaptureProcessProgressSupported:Z

    return-void
.end method

.method public setPostviewSupported(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Landroidx/camera/core/impl/AdapterCameraInfo;->mIsPostviewSupported:Z

    return-void
.end method
