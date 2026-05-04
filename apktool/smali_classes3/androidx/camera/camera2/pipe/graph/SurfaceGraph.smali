.class public final Landroidx/camera/camera2/pipe/graph/SurfaceGraph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/SurfaceTracker;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final cameraController:Ljavax/inject/Provider;

.field private closed:Z

.field private final imageSources:Ljava/util/Map;

.field private final lock:Ljava/lang/Object;

.field private shouldRegisterSurfaces:Z

.field private final streamGraphImpl:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

.field private final surfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

.field private final surfaceMap:Ljava/util/Map;

.field private final surfaceUsageMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/CameraSurfaceManager;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "streamGraphImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "surfaceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageSources"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->streamGraphImpl:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 38
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->cameraController:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    .line 40
    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->imageSources:Ljava/util/Map;

    .line 42
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->lock:Ljava/lang/Object;

    .line 49
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 186
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 1252
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1253
    check-cast p3, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    .line 49
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/media/ImageSource;

    invoke-interface {p3}, Landroidx/camera/camera2/pipe/media/ImageSource;->getSurface()Landroid/view/Surface;

    move-result-object p3

    .line 1253
    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_0
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceMap:Ljava/util/Map;

    .line 56
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/Map;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->shouldRegisterSurfaces:Z

    return-void
.end method

.method private final buildSurfaceMap()Ljava/util/Map;
    .locals 8

    .line 166
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 168
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->streamGraphImpl:Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;->getOutputConfigs$camera_camera2_pipe()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;

    .line 169
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getStreamBuilder$camera_camera2_pipe()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/CameraStream;

    .line 170
    iget-object v6, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceMap:Ljava/util/Map;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v7

    invoke-static {v7}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    if-nez v6, :cond_2

    .line 172
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;->getDeferrable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 175
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 178
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraStream;->getId-ptHMqGs()I

    move-result v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :cond_3
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 137
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 137
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 141
    :try_start_1
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->closed:Z

    .line 142
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 143
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 144
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit v0

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    .line 149
    invoke-static {v1}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 137
    monitor-exit v0

    throw v1
.end method

.method public final maybeUpdateSurfaces$camera_camera2_pipe()V
    .locals 2

    .line 158
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->buildSurfaceMap()Ljava/util/Map;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->cameraController:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraController;

    invoke-interface {v1, v0}, Landroidx/camera/camera2/pipe/CameraController;->updateSurfaceMap(Ljava/util/Map;)V

    return-void
.end method

.method public registerAllSurfaces()V
    .locals 5

    .line 124
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->closed:Z

    if-nez v1, :cond_1

    .line 126
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 127
    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-virtual {v3, v2}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->registerSurface$camera_camera2_pipe(Landroid/view/Surface;)Ljava/lang/AutoCloseable;

    move-result-object v3

    .line 128
    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 131
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->shouldRegisterSurfaces:Z

    .line 132
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit v0

    return-void

    .line 125
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final set-NYG5g8E(ILandroid/view/Surface;)V
    .locals 4

    .line 63
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->imageSources:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 68
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->closed:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 71
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CXCP"

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refusing to configure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " after close!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 68
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 76
    :cond_1
    :try_start_1
    sget-object v1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 59
    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/core/Log;->getINFO_LOGGABLE()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "CXCP"

    if-eqz p2, :cond_2

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configured "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 80
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed surface for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 59
    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p2, :cond_4

    .line 88
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceMap:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 89
    iget-boolean p2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->shouldRegisterSurfaces:Z

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    .line 90
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/AutoCloseable;

    goto :goto_2

    .line 93
    :cond_4
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceMap:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 94
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceMap:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p1

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-boolean p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->shouldRegisterSurfaces:Z

    if-eqz p1, :cond_6

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 97
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 100
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/AutoCloseable;

    .line 101
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceManager:Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    invoke-virtual {v1, p2}, Landroidx/camera/camera2/pipe/CameraSurfaceManager;->registerSurface$camera_camera2_pipe(Landroid/view/Surface;)Ljava/lang/AutoCloseable;

    move-result-object v1

    .line 102
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 98
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") is already in use!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    const/4 p1, 0x0

    .line 68
    :goto_2
    monitor-exit v0

    .line 108
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->maybeUpdateSurfaces$camera_camera2_pipe()V

    if-eqz p1, :cond_7

    .line 109
    invoke-static {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    :cond_7
    return-void

    .line 68
    :goto_3
    monitor-exit v0

    throw p1

    .line 64
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot configure surface for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", it is permanently assigned to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->imageSources:Ljava/util/Map;

    invoke-static {p1}, Landroidx/camera/camera2/pipe/StreamId;->box-impl(I)Landroidx/camera/camera2/pipe/StreamId;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public unregisterAllSurfaces()V
    .locals 3

    .line 114
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 115
    :try_start_0
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->shouldRegisterSurfaces:Z

    .line 116
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->surfaceUsageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/AutoCloseable;

    .line 119
    invoke-static {v1}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 114
    monitor-exit v0

    throw v1
.end method
