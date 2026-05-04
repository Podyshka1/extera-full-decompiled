.class public abstract Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule_ProvideCameraPipeConfigFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# direct methods
.method public static provideCameraPipeConfig(Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;)Landroidx/camera/camera2/pipe/CameraPipe$Config;
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeConfigModule;->provideCameraPipeConfig()Landroidx/camera/camera2/pipe/CameraPipe$Config;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraPipe$Config;

    return-object p0
.end method
