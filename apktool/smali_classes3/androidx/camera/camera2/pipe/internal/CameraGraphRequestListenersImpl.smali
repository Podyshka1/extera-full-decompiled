.class public final Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dirty:Z

.field private final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

.field private final graphScope:Lkotlinx/coroutines/CoroutineScope;

.field private final listeners:Ljava/util/Set;

.field private final lock:Ljava/lang/Object;

.field private final sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/GraphSessionLock;Landroidx/camera/camera2/pipe/graph/GraphProcessor;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string/jumbo v0, "sessionLock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphProcessor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    .line 33
    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    .line 34
    iput-object p3, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->graphScope:Lkotlinx/coroutines/CoroutineScope;

    .line 36
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->lock:Ljava/lang/Object;

    .line 37
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->listeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final fetchUpdatedListeners$camera_camera2_pipe()Ljava/util/List;
    .locals 2

    .line 77
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->dirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 77
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 80
    :try_start_1
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->dirty:Z

    .line 81
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphRequestListenersImpl;->listeners:Ljava/util/Set;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
