.class public abstract Landroidx/camera/camera2/config/CameraAppConfig_ProvideContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# direct methods
.method public static provideContext(Landroidx/camera/camera2/config/CameraAppConfig;)Landroid/content/Context;
    .locals 0

    .line 44
    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraAppConfig;->provideContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method
