.class public final Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/internal/CameraErrorListener;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final virtualCameraStateMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->lock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->virtualCameraStateMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onCameraError-3M5Xam4(Ljava/lang/String;IZ)V
    .locals 2

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->virtualCameraStateMap:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;->getGraphListener()Landroidx/camera/camera2/pipe/graph/GraphListener;

    move-result-object p1

    .line 46
    new-instance v0, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroidx/camera/camera2/pipe/GraphState$GraphStateError;-><init>(IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V

    return-void

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit v0

    throw p1
.end method

.method public final setActiveVirtualCamera-0r8Bogc$camera_camera2_pipe(Ljava/lang/String;Landroidx/camera/camera2/pipe/compat/VirtualCameraState;)V
    .locals 2

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "virtualCameraState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/Camera2ErrorProcessor;->virtualCameraStateMap:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
