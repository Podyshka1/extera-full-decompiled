.class public final Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetupWrapper;


# instance fields
.field private final cameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

.field private final cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

.field private final cameraId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)V
    .locals 1

    const-string v0, "cameraDeviceSetup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraErrorListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    .line 40
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraId:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;-><init>(Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;)V

    return-void
.end method

.method public static final synthetic access$getCameraDeviceSetup$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;
    .locals 0

    .line 37
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraDeviceSetup:Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    return-object p0
.end method


# virtual methods
.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5

    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraId:Ljava/lang/String;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->cameraErrorListener:Landroidx/camera/camera2/pipe/internal/CameraErrorListener;

    .line 45
    :try_start_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;->access$getCameraDeviceSetup$p(Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;)Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    instance-of v2, p1, Landroid/hardware/camera2/CameraAccessException;

    const-string v3, "CXCP"

    if-eqz v2, :cond_1

    .line 58
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Camera encountered an error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    sget-object v2, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    check-cast p1, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v2, p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->from-PVuDhNw$camera_camera2_pipe(Landroid/hardware/camera2/CameraAccessException;)I

    move-result p1

    const/4 v2, 0x1

    .line 59
    invoke-interface {v1, v0, p1, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    goto :goto_1

    .line 69
    :cond_1
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-nez v2, :cond_4

    .line 70
    instance-of v2, p1, Ljava/lang/SecurityException;

    if-nez v2, :cond_4

    .line 71
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-nez v2, :cond_4

    .line 72
    instance-of v2, p1, Ljava/lang/NullPointerException;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 81
    :cond_2
    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_3

    .line 82
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 82
    const-string p1, "Failed to execute call: Camera may be closed"

    .line 50
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    :cond_3
    throw p1

    .line 73
    :cond_4
    :goto_0
    sget-object v2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute call: Unexpected exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_5
    sget-object p1, Landroidx/camera/camera2/pipe/CameraError;->Companion:Landroidx/camera/camera2/pipe/CameraError$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraError$Companion;->getERROR_GRAPH_CONFIG-v7Vf74A()I

    move-result p1

    const/4 v2, 0x0

    .line 74
    invoke-interface {v1, v0, p1, v2}, Landroidx/camera/camera2/pipe/internal/CameraErrorListener;->onCameraError-3M5Xam4(Ljava/lang/String;IZ)V

    :cond_6
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
