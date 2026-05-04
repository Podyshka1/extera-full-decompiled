.class public final Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraDevices;


# instance fields
.field private final cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraBackends;)V
    .locals 1

    const-string v0, "cameraBackends"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

    return-void
.end method

.method public static final synthetic access$getCameraBackends$p(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;)Landroidx/camera/camera2/pipe/CameraBackends;
    .locals 0

    .line 33
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->cameraBackends:Landroidx/camera/camera2/pipe/CameraBackends;

    return-object p0
.end method

.method private final getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 2

    .line 153
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "getCameraBackend"

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 154
    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->access$getCameraBackends$p(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;)Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraBackends;->getDefault()Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 155
    :cond_0
    :goto_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->access$getCameraBackends$p(Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;)Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/CameraBackends;->get-SG3A4s8(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    .line 156
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load CameraBackend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method


# virtual methods
.method public awaitCameraIds-SeavPBo(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    .line 80
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p1

    .line 81
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraBackend;->awaitCameraIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load cameraIds from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string v1, "CXCP"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public awaitCameraMetadata-FpsL5FU(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 3

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p2}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p2

    .line 117
    invoke-interface {p2, p1}, Landroidx/camera/camera2/pipe/CameraBackend;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load metadata for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroidx/camera/camera2/pipe/CameraBackend;->getId-QwmhuAM()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string p2, "CXCP"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public awaitConcurrentCameraIds-SeavPBo(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraBackend;->awaitConcurrentCameraIds()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public cameraIdsFlow-SeavPBo(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/internal/CameraDevicesImpl;->getCameraBackend-SeavPBo(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraBackend;->getCameraIds()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
