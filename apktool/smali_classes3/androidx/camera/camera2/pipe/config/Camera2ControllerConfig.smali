.class public final Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cameraBackend:Landroidx/camera/camera2/pipe/CameraBackend;

.field private final graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final graphId:Landroidx/camera/camera2/pipe/CameraGraphId;

.field private final graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

.field private final shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

.field private final streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

.field private final surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraBackend;Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/GraphListener;Landroidx/camera/camera2/pipe/StreamGraph;Landroidx/camera/camera2/pipe/SurfaceTracker;Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;)V
    .locals 1

    const-string v0, "cameraBackend"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "streamGraph"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceTracker"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shutdownListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->cameraBackend:Landroidx/camera/camera2/pipe/CameraBackend;

    .line 132
    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 133
    iput-object p3, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 134
    iput-object p4, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    .line 135
    iput-object p5, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    .line 136
    iput-object p6, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

    .line 137
    iput-object p7, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

    return-void
.end method


# virtual methods
.method public final provideCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphConfig:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object v0
.end method

.method public final provideCameraGraphId()Landroidx/camera/camera2/pipe/CameraGraphId;
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    return-object v0
.end method

.method public final provideGraphListener()Landroidx/camera/camera2/pipe/graph/GraphListener;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->graphListener:Landroidx/camera/camera2/pipe/graph/GraphListener;

    return-object v0
.end method

.method public final provideShutdownListener()Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->shutdownListener:Landroidx/camera/camera2/pipe/compat/Camera2CameraController$ShutdownListener;

    return-object v0
.end method

.method public final provideStreamGraph()Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;
    .locals 2

    .line 145
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->streamGraph:Landroidx/camera/camera2/pipe/StreamGraph;

    const-string v1, "null cannot be cast to non-null type androidx.camera.camera2.pipe.graph.StreamGraphImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    return-object v0
.end method

.method public final provideSurfaceGraph()Landroidx/camera/camera2/pipe/SurfaceTracker;
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/Camera2ControllerConfig;->surfaceTracker:Landroidx/camera/camera2/pipe/SurfaceTracker;

    return-object v0
.end method
