.class public final Landroidx/camera/camera2/adapter/CameraControlAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraControlInternal;


# instance fields
.field private final camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

.field private final cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

.field private final evCompControl:Landroidx/camera/camera2/impl/EvCompControl;

.field private final flashControl:Landroidx/camera/camera2/impl/FlashControl;

.field private final focusMeteringControl:Landroidx/camera/camera2/impl/FocusMeteringControl;

.field private final lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

.field private final stillCaptureRequestControl:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final torchControl:Landroidx/camera/camera2/impl/TorchControl;

.field private final useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

.field private final videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

.field private final zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

.field private final zslControl:Landroidx/camera/camera2/adapter/ZslControl;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/impl/EvCompControl;Landroidx/camera/camera2/impl/FlashControl;Landroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/camera2/impl/StillCaptureRequestControl;Landroidx/camera/camera2/impl/TorchControl;Landroidx/camera/camera2/impl/LowLightBoostControl;Landroidx/camera/camera2/impl/ZoomControl;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/interop/Camera2CameraControl;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/VideoUsageControl;)V
    .locals 1

    const-string v0, "cameraProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "evCompControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashControl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "focusMeteringControl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stillCaptureRequestControl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "torchControl"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lowLightBoostControl"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "zoomControl"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "zslControl"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera2cameraControl"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useCaseManager"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "videoUsageControl"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    .line 74
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->evCompControl:Landroidx/camera/camera2/impl/EvCompControl;

    .line 75
    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    .line 76
    iput-object p4, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->focusMeteringControl:Landroidx/camera/camera2/impl/FocusMeteringControl;

    .line 77
    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->stillCaptureRequestControl:Landroidx/camera/camera2/impl/StillCaptureRequestControl;

    .line 78
    iput-object p6, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    .line 79
    iput-object p7, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    .line 80
    iput-object p8, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

    .line 81
    iput-object p9, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    .line 82
    iput-object p10, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

    .line 83
    iput-object p11, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 84
    iput-object p12, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 85
    iput-object p13, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

    return-void
.end method


# virtual methods
.method public addInteropConfig(Landroidx/camera/core/impl/Config;)V
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

    .line 89
    sget-object v1, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->Companion:Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;

    invoke-virtual {v1, p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder$Companion;->from(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/camera/camera2/interop/CaptureRequestOptions$Builder;->build()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Landroidx/camera/camera2/interop/Camera2CameraControl;->addCaptureRequestOptions(Landroidx/camera/camera2/interop/CaptureRequestOptions;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 1

    const-string/jumbo v0, "sessionConfigBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/adapter/ZslControl;->addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V

    return-void
.end method

.method public clearInteropConfig()V
    .locals 1

    .line 94
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->clearCaptureRequestOptions()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public clearZslConfig()V
    .locals 1

    .line 204
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    invoke-interface {v0}, Landroidx/camera/camera2/adapter/ZslControl;->clearZslConfig()V

    return-void
.end method

.method public decrementVideoUsage()V
    .locals 1

    .line 242
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/VideoUsageControl;->decrementUsage()V

    return-void
.end method

.method public enableTorch(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 103
    sget-object v0, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->cameraProperties:Landroidx/camera/camera2/impl/CameraProperties;

    invoke-interface {v1}, Landroidx/camera/camera2/impl/CameraProperties;->getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->getSupportsLowLightBoost(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->lowLightBoostControl:Landroidx/camera/camera2/impl/LowLightBoostControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/LowLightBoostControl;->getLowLightBoostStateLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 106
    :goto_0
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 106
    const-string v0, "Unable to enable/disable torch when low-light boost is on."

    .line 86
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 109
    const-string v0, "Torch can not be enabled/disable when low-light boost is on!"

    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string v0, "immediateFailedFuture(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 115
    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->torchControl:Landroidx/camera/camera2/impl/TorchControl;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/impl/TorchControl;->setTorchAsync$default(Landroidx/camera/camera2/impl/TorchControl;ZZZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asVoidListenableFuture(Lkotlinx/coroutines/Deferred;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 114
    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string v0, "nonCancellationPropagating(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getInteropConfig()Landroidx/camera/core/impl/Config;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->camera2cameraControl:Landroidx/camera/camera2/interop/Camera2CameraControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/interop/Camera2CameraControl;->getCaptureRequestOptions()Landroidx/camera/camera2/interop/CaptureRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public incrementVideoUsage()V
    .locals 1

    .line 238
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->videoUsageControl:Landroidx/camera/camera2/impl/VideoUsageControl;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/VideoUsageControl;->incrementUsage()V

    return-void
.end method

.method public setFlashMode(I)V
    .locals 4

    .line 178
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Landroidx/camera/camera2/impl/FlashControl;->setFlashAsync$default(Landroidx/camera/camera2/impl/FlashControl;IZILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    .line 179
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zslControl:Landroidx/camera/camera2/adapter/ZslControl;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v3, v1

    :cond_1
    invoke-interface {v0, v3}, Landroidx/camera/camera2/adapter/ZslControl;->setZslDisabledByFlashMode(Z)V

    return-void
.end method

.method public setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V
    .locals 1

    .line 185
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->flashControl:Landroidx/camera/camera2/impl/FlashControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/FlashControl;->setScreenFlash(Landroidx/camera/core/ImageCapture$ScreenFlash;)V

    return-void
.end method

.method public setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->zoomControl:Landroidx/camera/camera2/impl/ZoomControl;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/ZoomControl;->setZoomRatio(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public startFocusAndMetering(Landroidx/camera/core/FocusMeteringAction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraControlAdapter;->focusMeteringControl:Landroidx/camera/camera2/impl/FocusMeteringControl;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/impl/FocusMeteringControl;->startFocusAndMetering$default(Landroidx/camera/camera2/impl/FocusMeteringControl;Landroidx/camera/core/FocusMeteringAction;JILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const-string v0, "nonCancellationPropagating(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
