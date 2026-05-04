.class public abstract Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# direct methods
.method public static provideSurfaceGraph(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/CameraSurfaceManager;)Landroidx/camera/camera2/pipe/graph/SurfaceGraph;
    .locals 1

    .line 62
    sget-object v0, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules;->Companion:Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/camera/camera2/pipe/config/SharedCameraGraphModules$Companion;->provideSurfaceGraph(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/CameraSurfaceManager;)Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    return-object p0
.end method
