.class public final Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field private final cameraDeviceWrapper:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/AndroidCameraState;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->cameraDeviceWrapper:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    .line 213
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->cameraDeviceWrapper:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->cameraDeviceWrapper:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAndroidCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;
    .locals 1

    .line 213
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    return-object v0
.end method

.method public final getCameraDeviceWrapper()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
    .locals 1

    .line 212
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->cameraDeviceWrapper:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->cameraDeviceWrapper:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AwaitOpenCameraResult(cameraDeviceWrapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->cameraDeviceWrapper:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidCameraState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AwaitOpenCameraResult;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
