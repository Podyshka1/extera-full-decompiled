.class public final Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

.field private final config:Landroidx/camera/camera2/pipe/CameraGraph$Config;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraGraphId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 100
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    return-void
.end method


# virtual methods
.method public final provideCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 1

    .line 102
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object v0
.end method

.method public final provideCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    return-object v0
.end method
