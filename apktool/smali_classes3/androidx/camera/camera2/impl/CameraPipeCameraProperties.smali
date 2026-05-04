.class public final Landroidx/camera/camera2/impl/CameraPipeCameraProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/impl/CameraProperties;


# instance fields
.field private final cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final metadata:Landroidx/camera/camera2/pipe/CameraMetadata;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/pipe/CameraMetadata;)V
    .locals 1

    const-string v0, "cameraConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    iput-object p2, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 44
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    return-void
.end method


# virtual methods
.method public getCameraId-Dz_R5H8()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->cameraConfig:Landroidx/camera/camera2/config/CameraConfig;

    invoke-virtual {v0}, Landroidx/camera/camera2/config/CameraConfig;->getCameraId-Dz_R5H8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Landroidx/camera/camera2/pipe/CameraMetadata;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraPipeCameraProperties;->metadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    return-object v0
.end method
