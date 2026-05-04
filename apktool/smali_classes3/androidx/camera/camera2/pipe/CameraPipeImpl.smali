.class public final Landroidx/camera/camera2/pipe/CameraPipeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CameraPipe;


# instance fields
.field private final component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

.field private final debugId:I

.field private final lock:Ljava/lang/Object;

.field private shutdown:Z


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/config/CameraPipeComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    .line 255
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraPipeKt;->getCameraPipeIds()Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->debugId:I

    .line 256
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getComponent$p(Landroidx/camera/camera2/pipe/CameraPipeImpl;)Landroidx/camera/camera2/pipe/config/CameraPipeComponent;
    .locals 0

    .line 254
    iget-object p0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    return-object p0
.end method

.method private final createCameraGraphLocked(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 2

    .line 292
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CXCP#CameraGraph-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 293
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->access$getComponent$p(Landroidx/camera/camera2/pipe/CameraPipeImpl;)Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraGraphComponentBuilder()Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;

    move-result-object v0

    .line 295
    new-instance v1, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;

    invoke-direct {v1, p1, p2}, Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;-><init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)V

    invoke-interface {v0, v1}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;->cameraGraphConfigModule(Landroidx/camera/camera2/pipe/config/CameraGraphConfigModule;)Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;

    move-result-object p1

    .line 296
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent$Builder;->build()Landroidx/camera/camera2/pipe/config/CameraGraphComponent;

    move-result-object p1

    .line 297
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/config/CameraGraphComponent;->cameraGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method

.method private final getBackend(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraBackend;
    .locals 4

    .line 364
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_3

    .line 368
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCustomCameraBackend()Landroidx/camera/camera2/pipe/CameraBackendFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    iget-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraContext()Landroidx/camera/camera2/pipe/CameraContext;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/camera/camera2/pipe/CameraBackendFactory;->create(Landroidx/camera/camera2/pipe/CameraContext;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 372
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCameraBackendId-AKmI2lo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 374
    iget-object v2, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraBackends()Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object v2

    invoke-interface {v2, v1}, Landroidx/camera/camera2/pipe/CameraBackends;->get-SG3A4s8(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object p1, v2

    goto :goto_0

    .line 375
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/camera/camera2/pipe/CameraBackendId;->toString-impl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 378
    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraBackends()Landroidx/camera/camera2/pipe/CameraBackends;

    move-result-object p1

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CameraBackends;->getDefault()Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :goto_0
    monitor-exit v0

    return-object p1

    .line 365
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :goto_1
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public cameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;
    .locals 3

    .line 358
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_0

    .line 360
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 359
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public cameras()Landroidx/camera/camera2/pipe/CameraDevices;
    .locals 3

    .line 351
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameras()Landroidx/camera/camera2/pipe/CameraDevices;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 352
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public createCameraGraph(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_0

    .line 269
    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraphId;->Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;->nextId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->createCameraGraphLocked(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 268
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public createCameraGraphs(Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;)Ljava/util/List;
    .locals 6

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_4

    .line 275
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v1

    .line 276
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->getGraphConfigs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 277
    sget-object v4, Landroidx/camera/camera2/pipe/CameraGraphId;->Companion:Landroidx/camera/camera2/pipe/CameraGraphId$Companion;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/CameraGraphId$Companion;->nextId()Landroidx/camera/camera2/pipe/CameraGraphId;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 275
    :cond_0
    invoke-static {v1}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 280
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->getGraphConfigs()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1563
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1635
    check-cast v5, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 280
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v5

    .line 1635
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 280
    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 282
    new-instance v3, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 284
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;->getGraphConfigs()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    check-cast v4, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 285
    invoke-virtual {v4, v3}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->setConcurrentCameraGraphs$camera_camera2_pipe(Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;)V

    .line 286
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Landroidx/camera/camera2/pipe/CameraGraphId;

    invoke-direct {p0, v4, v5}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->createCameraGraphLocked(Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraphId;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v4

    .line 1635
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 286
    :cond_2
    const-string p1, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_3
    monitor-exit v0

    return-object v2

    .line 274
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 390
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/CameraPipeImpl;->getBackend(Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/CameraBackend;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0, p1, p2}, Landroidx/camera/camera2/pipe/CameraBackend;->isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 391
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Required value was null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdown()V
    .locals 3

    .line 431
    iget-object v0, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/CameraPipeComponent;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/config/CameraPipeComponent;->cameraPipeLifetime()Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;->shutdown()V

    const/4 v1, 0x1

    .line 434
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z

    .line 435
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 432
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraPipe-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/CameraPipeImpl;->debugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
