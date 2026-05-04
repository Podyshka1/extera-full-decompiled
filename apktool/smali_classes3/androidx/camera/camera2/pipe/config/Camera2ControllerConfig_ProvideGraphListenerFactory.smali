.class public abstract Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig_ProvideGraphListenerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# direct methods
.method public static provideGraphListener(Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;)Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->provideGraphListener()Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/graph/GraphListener;

    return-object p0
.end method
