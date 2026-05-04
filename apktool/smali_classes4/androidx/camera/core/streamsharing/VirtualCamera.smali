.class Landroidx/camera/core/streamsharing/VirtualCamera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraInternal;


# instance fields
.field private final mParentCamera:Landroidx/camera/core/impl/CameraInternal;

.field private final mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

.field private final mVirtualCameraControl:Landroidx/camera/core/streamsharing/VirtualCameraControl;

.field private final mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/UseCase$StateChangeCallback;Landroidx/camera/core/streamsharing/StreamSharing$Control;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mParentCamera:Landroidx/camera/core/impl/CameraInternal;

    .line 56
    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

    .line 57
    new-instance p2, Landroidx/camera/core/streamsharing/VirtualCameraControl;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;

    move-result-object v0

    invoke-direct {p2, v0, p3}, Landroidx/camera/core/streamsharing/VirtualCameraControl;-><init>(Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/core/streamsharing/StreamSharing$Control;)V

    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraControl:Landroidx/camera/core/streamsharing/VirtualCameraControl;

    .line 59
    new-instance p2, Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/camera/core/streamsharing/VirtualCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;)V

    iput-object p2, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    return-void
.end method


# virtual methods
.method public attachUseCases(Ljava/util/Collection;)V
    .locals 1

    .line 140
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported by VirtualCamera."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detachUseCases(Ljava/util/Collection;)V
    .locals 1

    .line 145
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported by VirtualCamera."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic getCameraControl()Landroidx/camera/core/CameraControl;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$getCameraControl(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraControl;

    move-result-object v0

    return-object v0
.end method

.method public getCameraControlInternal()Landroidx/camera/core/impl/CameraControlInternal;
    .locals 1

    .line 108
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraControl:Landroidx/camera/core/streamsharing/VirtualCameraControl;

    return-object v0
.end method

.method public synthetic getCameraInfo()Landroidx/camera/core/CameraInfo;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$getCameraInfo(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/CameraInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    return-object v0
.end method

.method public synthetic getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$getExtendedConfig(Landroidx/camera/core/impl/CameraInternal;)Landroidx/camera/core/impl/CameraConfig;

    move-result-object v0

    return-object v0
.end method

.method public getHasTransform()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic isFrontFacing()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$isFrontFacing(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v0

    return v0
.end method

.method public synthetic isRemoved()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$isRemoved(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v0

    return v0
.end method

.method public synthetic onRemoved()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$onRemoved(Landroidx/camera/core/impl/CameraInternal;)V

    return-void
.end method

.method public onUseCaseActive(Landroidx/camera/core/UseCase;)V
    .locals 1

    .line 74
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 75
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseActive(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public onUseCaseInactive(Landroidx/camera/core/UseCase;)V
    .locals 1

    .line 81
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 82
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseInactive(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public onUseCaseReset(Landroidx/camera/core/UseCase;)V
    .locals 1

    .line 95
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 96
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseReset(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public onUseCaseUpdated(Landroidx/camera/core/UseCase;)V
    .locals 1

    .line 88
    invoke-static {}, Landroidx/camera/core/impl/utils/Threads;->checkMainThread()V

    .line 89
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mStateChangeCallback:Landroidx/camera/core/UseCase$StateChangeCallback;

    invoke-interface {v0, p1}, Landroidx/camera/core/UseCase$StateChangeCallback;->onUseCaseUpdated(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported by VirtualCamera."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic setActiveResumingMode(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$setActiveResumingMode(Landroidx/camera/core/impl/CameraInternal;Z)V

    return-void
.end method

.method public synthetic setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$setExtendedConfig(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraConfig;)V

    return-void
.end method

.method public synthetic setPrimary(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$setPrimary(Landroidx/camera/core/impl/CameraInternal;Z)V

    return-void
.end method

.method setRotationDegrees(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCamera;->mVirtualCameraInfo:Landroidx/camera/core/streamsharing/VirtualCameraInfo;

    invoke-virtual {v0, p1}, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->setVirtualCameraRotationDegrees(I)V

    return-void
.end method
