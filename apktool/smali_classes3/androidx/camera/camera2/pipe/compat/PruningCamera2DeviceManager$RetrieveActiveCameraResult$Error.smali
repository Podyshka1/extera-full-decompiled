.class public final Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# instance fields
.field private final lastCameraError:Landroidx/camera/camera2/pipe/CameraError;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/CameraError;)V
    .locals 0

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CameraError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;-><init>(Landroidx/camera/camera2/pipe/CameraError;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getLastCameraError-mVEW8x0()Landroidx/camera/camera2/pipe/CameraError;
    .locals 1

    .line 647
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraError;->unbox-impl()I

    move-result v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraError;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error(lastCameraError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager$RetrieveActiveCameraResult$Error;->lastCameraError:Landroidx/camera/camera2/pipe/CameraError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
