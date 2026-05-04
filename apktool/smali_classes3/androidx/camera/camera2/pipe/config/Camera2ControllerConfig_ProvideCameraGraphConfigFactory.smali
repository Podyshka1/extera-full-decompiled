.class public abstract Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideCameraGraphConfigFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# direct methods
.method public static provideCameraGraphConfig(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->provideCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object p0
.end method
