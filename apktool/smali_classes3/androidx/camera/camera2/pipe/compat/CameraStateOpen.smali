.class public final Landroidx/camera/camera2/pipe/compat/CameraStateOpen;
.super Landroidx/camera/camera2/pipe/compat/CameraState;
.source "SourceFile"


# instance fields
.field private final cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;)V
    .locals 1

    const-string v0, "cameraDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getCameraDevice()Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraStateOpen(cameraDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;->cameraDevice:Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
