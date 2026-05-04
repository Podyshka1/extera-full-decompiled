.class public abstract Landroidx/camera/camera2/config/CameraAppConfig_ProvideCameraXConfigFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# direct methods
.method public static provideCameraXConfig(Landroidx/camera/camera2/config/CameraAppConfig;)Landroidx/camera/core/CameraXConfig;
    .locals 0

    .line 44
    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraAppConfig;->provideCameraXConfig()Landroidx/camera/core/CameraXConfig;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/CameraXConfig;

    return-object p0
.end method
