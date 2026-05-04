.class public final Landroidx/camera/camera2/pipe/compat/OpenCameraResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

.field private final errorCode:Landroidx/camera/camera2/pipe/CameraError;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 208
    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 206
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCameraState()Landroidx/camera/camera2/pipe/compat/AndroidCameraState;
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    return-object v0
.end method

.method public final getErrorCode-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;
    .locals 1

    .line 208
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraError;->hashCode-impl(I)I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenCameraResult(cameraState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->cameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;->errorCode:Landroidx/camera/camera2/pipe/CameraError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
