.class public final Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dirty:Z

.field private final graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

.field private final graphScope:Lkotlinx/coroutines/CoroutineScope;

.field private final lock:Ljava/lang/Object;

.field private final parameters:Ljava/util/Map;

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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->sessionLock:Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    .line 40
    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    .line 41
    iput-object p3, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->graphScope:Lkotlinx/coroutines/CoroutineScope;

    .line 43
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->lock:Ljava/lang/Object;

    .line 45
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->parameters:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 3

    .line 169
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->dirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 169
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 173
    :try_start_1
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->dirty:Z

    .line 174
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->parameters:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    monitor-exit v0

    .line 176
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/CameraGraphParametersImpl;->graphProcessor:Landroidx/camera/camera2/pipe/graph/GraphProcessor;

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphProcessor;->updateGraphParameters(Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v1

    .line 169
    monitor-exit v0

    throw v1
.end method
