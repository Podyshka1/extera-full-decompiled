.class Landroidx/camera/core/impl/CameraControlInternal$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraControlInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraControlInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addInteropConfig(Landroidx/camera/core/impl/Config;)V
    .locals 0

    return-void
.end method

.method public addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    return-void
.end method

.method public clearInteropConfig()V
    .locals 0

    return-void
.end method

.method public clearZslConfig()V
    .locals 0

    return-void
.end method

.method public synthetic decrementVideoUsage()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraControlInternal$-CC;->$default$decrementVideoUsage(Landroidx/camera/core/impl/CameraControlInternal;)V

    return-void
.end method

.method public enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    const/4 p1, 0x0

    .line 221
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getInteropConfig()Landroidx/camera/core/impl/Config;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic incrementVideoUsage()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraControlInternal$-CC;->$default$incrementVideoUsage(Landroidx/camera/core/impl/CameraControlInternal;)V

    return-void
.end method

.method public setFlashMode(I)V
    .locals 0

    return-void
.end method

.method public synthetic setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/core/impl/CameraControlInternal$-CC;->$default$setScreenFlash(Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/core/ImageCapture$ScreenFlash;)V

    return-void
.end method

.method public setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    const/4 p1, 0x0

    .line 255
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 245
    invoke-static {}, Landroidx/camera/core/FocusMeteringResult;->emptyInstance()Landroidx/camera/core/FocusMeteringResult;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
