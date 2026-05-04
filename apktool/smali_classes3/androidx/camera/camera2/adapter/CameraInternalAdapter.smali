.class public final Landroidx/camera/camera2/adapter/CameraInternalAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraInternal;


# instance fields
.field private final cameraController:Landroidx/camera/core/impl/CameraControlInternal;

.field private final cameraId:Ljava/lang/String;

.field private final cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

.field private final cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

.field private coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

.field private final debugId:I

.field private final isRemoved:Lkotlinx/atomicfu/AtomicBoolean;

.field private final threads:Landroidx/camera/camera2/impl/UseCaseThreads;

.field private final useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/impl/UseCaseManager;Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/impl/CameraControlInternal;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/adapter/CameraStateAdapter;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "useCaseManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "threads"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraStateAdapter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 48
    iput-object p3, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    .line 49
    iput-object p4, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraController:Landroidx/camera/core/impl/CameraControlInternal;

    .line 50
    iput-object p5, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 51
    iput-object p6, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 53
    invoke-virtual {p1}, Landroidx/camera/camera2/config/CameraConfig;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraId:Ljava/lang/String;

    .line 55
    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->defaultConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object p1

    const-string p2, "defaultConfig(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    .line 56
    invoke-static {}, Landroidx/camera/camera2/adapter/CameraInternalAdapterKt;->getCameraAdapterIds()Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->debugId:I

    const/4 p1, 0x0

    .line 58
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->isRemoved:Lkotlinx/atomicfu/AtomicBoolean;

    .line 61
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Created "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->access$getCameraId$p(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static final synthetic access$getCameraId$p(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCameraStateAdapter$p(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Landroidx/camera/camera2/adapter/CameraStateAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    return-object p0
.end method

.method public static final synthetic access$getThreads$p(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Landroidx/camera/camera2/impl/UseCaseThreads;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    return-object p0
.end method

.method public static final synthetic access$getUseCaseManager$p(Landroidx/camera/camera2/adapter/CameraInternalAdapter;)Landroidx/camera/camera2/impl/UseCaseManager;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    return-object p0
.end method


# virtual methods
.method public attachUseCases(Ljava/util/Collection;)V
    .locals 1

    const-string/jumbo v0, "useCasesToAdd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->attach(Ljava/util/List;)V

    return-void
.end method

.method public detachUseCases(Ljava/util/Collection;)V
    .locals 1

    const-string/jumbo v0, "useCasesToRemove"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->detach(Ljava/util/List;)V

    return-void
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

    .line 107
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraController:Landroidx/camera/core/impl/CameraControlInternal;

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

    .line 102
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraInfo:Landroidx/camera/core/impl/CameraInfoInternal;

    return-object v0
.end method

.method public final getDeferredCameraGraphConfig$camera_camera2()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseManager;->getDeferredCameraGraphConfig$camera_camera2()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedConfig()Landroidx/camera/core/impl/CameraConfig;
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    return-object v0
.end method

.method public synthetic getHasTransform()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$getHasTransform(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v0

    return v0
.end method

.method public synthetic isFrontFacing()Z
    .locals 1

    .line 0
    invoke-static {p0}, Landroidx/camera/core/impl/CameraInternal$-CC;->$default$isFrontFacing(Landroidx/camera/core/impl/CameraInternal;)Z

    move-result v0

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .line 167
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->isRemoved:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    return v0
.end method

.method public onRemoved()V
    .locals 7

    .line 153
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " received removed signal. Cleaning up."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->isRemoved:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Landroidx/camera/camera2/adapter/CameraInternalAdapter$onRemoved$2;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$onRemoved$2;-><init>(Landroidx/camera/camera2/adapter/CameraInternalAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public onUseCaseActive(Landroidx/camera/core/UseCase;)V
    .locals 1

    const-string/jumbo v0, "useCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->activate(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public onUseCaseInactive(Landroidx/camera/core/UseCase;)V
    .locals 1

    const-string/jumbo v0, "useCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->deactivate(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public onUseCaseReset(Landroidx/camera/core/UseCase;)V
    .locals 1

    const-string/jumbo v0, "useCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->reset(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public onUseCaseUpdated(Landroidx/camera/core/UseCase;)V
    .locals 1

    const-string/jumbo v0, "useCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->update(Landroidx/camera/core/UseCase;)V

    return-void
.end method

.method public release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 94
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseThreads;->getScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    .line 95
    new-instance v4, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;-><init>(Landroidx/camera/camera2/adapter/CameraInternalAdapter;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    const/4 v2, 0x1

    .line 99
    invoke-static {v1, v0, v2, v0}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->asListenableFuture$default(Lkotlinx/coroutines/Job;Ljava/lang/Object;ILjava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final resumeDeferredCameraGraphCreation$camera_camera2(Landroidx/camera/camera2/pipe/CameraGraph;)V
    .locals 1

    const-string v0, "cameraGraph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->resumeDeferredComponentCreation$camera_camera2(Landroidx/camera/camera2/pipe/CameraGraph;)V

    return-void
.end method

.method public setActiveResumingMode(Z)V
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->setActiveResumeMode(Z)Lkotlin/Unit;

    return-void
.end method

.method public final setCameraGraphCreationMode$camera_camera2(Z)V
    .locals 1

    .line 66
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->setCameraGraphCreationMode$camera_camera2(Z)V

    return-void
.end method

.method public setExtendedConfig(Landroidx/camera/core/impl/CameraConfig;)V
    .locals 2

    if-nez p1, :cond_0

    .line 140
    invoke-static {}, Landroidx/camera/core/impl/CameraConfigs;->defaultConfig()Landroidx/camera/core/impl/CameraConfig;

    move-result-object v0

    const-string v1, "defaultConfig(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->coreCameraConfig:Landroidx/camera/core/impl/CameraConfig;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 141
    invoke-interface {p1, v0}, Landroidx/camera/core/impl/CameraConfig;->getSessionProcessor(Landroidx/camera/core/impl/SessionProcessor;)Landroidx/camera/core/impl/SessionProcessor;

    .line 142
    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {p1, v0}, Landroidx/camera/camera2/impl/UseCaseManager;->setSessionProcessor$camera_camera2(Landroidx/camera/core/impl/SessionProcessor;)V

    return-void
.end method

.method public setPrimary(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/impl/UseCaseManager;->setPrimary(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraInternalAdapter<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraId:Ljava/lang/String;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->debugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
