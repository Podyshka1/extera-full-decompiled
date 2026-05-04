.class public Landroidx/camera/core/streamsharing/VirtualCameraInfo;
.super Landroidx/camera/core/impl/ForwardingCameraInfo;
.source "SourceFile"


# instance fields
.field private final mVirtualCameraId:Ljava/lang/String;

.field private mVirtualCameraRotationDegrees:I


# direct methods
.method constructor <init>(Landroidx/camera/core/impl/CameraInfoInternal;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Landroidx/camera/core/impl/ForwardingCameraInfo;-><init>(Landroidx/camera/core/impl/CameraInfoInternal;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "virtual-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-interface {p1}, Landroidx/camera/core/impl/CameraInfoInternal;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->mVirtualCameraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCameraId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->mVirtualCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorRotationDegrees()I
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->getSensorRotationDegrees(I)I

    move-result v0

    return v0
.end method

.method public getSensorRotationDegrees(I)I
    .locals 1

    .line 71
    invoke-super {p0, p1}, Landroidx/camera/core/impl/ForwardingCameraInfo;->getSensorRotationDegrees(I)I

    move-result p1

    iget v0, p0, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->mVirtualCameraRotationDegrees:I

    sub-int/2addr p1, v0

    .line 70
    invoke-static {p1}, Landroidx/camera/core/impl/utils/TransformUtils;->within360(I)I

    move-result p1

    return p1
.end method

.method setVirtualCameraRotationDegrees(I)V
    .locals 0

    .line 58
    iput p1, p0, Landroidx/camera/core/streamsharing/VirtualCameraInfo;->mVirtualCameraRotationDegrees:I

    return-void
.end method
