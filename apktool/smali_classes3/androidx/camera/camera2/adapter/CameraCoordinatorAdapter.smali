.class public final Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/concurrent/CameraCoordinator;
.implements Landroidx/camera/core/impl/InternalCameraPresenceListener;


# instance fields
.field private activeConcurrentCameraInfosList:Ljava/util/List;

.field private final cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

.field private cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

.field private cameraRepository:Landroidx/camera/core/impl/CameraRepository;

.field private concurrentCameraIdMap:Ljava/util/Map;

.field private concurrentCameraIdsSet:Ljava/util/Set;

.field private concurrentMode:I

.field private concurrentModeOn:Z

.field private final lock:Ljava/lang/Object;

.field private pendingCameraIds:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/pipe/CameraDevices;)V
    .locals 1

    const-string v0, "cameraDevices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    .line 43
    iput-object p2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    .line 46
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    .line 52
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdsSet:Ljava/util/Set;

    .line 56
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdMap:Ljava/util/Map;

    .line 60
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    return-void
.end method

.method private final tryStartConcurrentGraph()V
    .locals 8

    .line 176
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_8

    .line 181
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    check-cast v4, Landroidx/camera/core/CameraInfo;

    .line 181
    sget-object v6, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    invoke-virtual {v6, v4}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->getCameraId-zjxgSG8(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object v5

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_9

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v4

    .line 1635
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_2
    const-string v1, "Required value was null."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 176
    monitor-exit v0

    return-void

    .line 185
    :cond_4
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 186
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    monitor-exit v0

    .line 191
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_2
    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    if-nez v2, :cond_6

    .line 194
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 136
    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isErrorEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v2, "Coordinator has not been initialized with a CameraRepository."

    .line 137
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    goto/16 :goto_7

    .line 191
    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    .line 199
    :cond_6
    :try_start_3
    check-cast v1, Ljava/lang/Iterable;

    .line 1617
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1625
    check-cast v6, Landroidx/camera/core/CameraInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    :try_start_4
    sget-object v7, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    invoke-virtual {v7, v6}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->getCameraId-zjxgSG8(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Landroidx/camera/core/impl/CameraRepository;->getCamera(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v6

    instance-of v7, v6, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    if-eqz v7, :cond_8

    check-cast v6, Landroidx/camera/camera2/adapter/CameraInternalAdapter;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_0
    :cond_8
    move-object v6, v5

    :goto_4
    if-eqz v6, :cond_7

    .line 1625
    :try_start_5
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 191
    :cond_9
    monitor-exit v0

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_b

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 1635
    check-cast v3, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    .line 210
    invoke-virtual {v3}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->getDeferredCameraGraphConfig$camera_camera2()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1635
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 211
    :cond_a
    const-string v0, "Every CameraInternal instance is expected to have a deferred CameraGraph config"

    .line 210
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    :cond_b
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    if-eqz v1, :cond_e

    new-instance v2, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;

    invoke-direct {v2, v0}, Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/CameraPipe;->createCameraGraphs(Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;)Ljava/util/List;

    move-result-object v1

    .line 217
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_d

    .line 219
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraph;

    .line 220
    invoke-virtual {v2, v1}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->resumeDeferredCameraGraphCreation$camera_camera2(Landroidx/camera/camera2/pipe/CameraGraph;)V

    goto :goto_6

    :cond_c
    return-void

    .line 217
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_e
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :goto_7
    monitor-exit v0

    throw v1

    .line 176
    :cond_f
    :goto_8
    monitor-exit v0

    return-void

    :goto_9
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addPendingCameraInfo(Landroidx/camera/core/CameraInfo;)V
    .locals 3

    const-string v0, "cameraInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    if-eqz v1, :cond_2

    .line 153
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    sget-object v2, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    invoke-virtual {v2, p1}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->getCameraId-zjxgSG8(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->tryStartConcurrentGraph()V

    goto :goto_1

    .line 153
    :cond_1
    const-string p1, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public getActiveConcurrentCameraInfos()Ljava/util/List;
    .locals 3

    .line 146
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getCameraOperatingMode()I
    .locals 2

    .line 240
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getConcurrentCameraSelectors()Ljava/util/List;
    .locals 9

    .line 132
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdsSet:Ljava/util/Set;

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1635
    check-cast v4, Ljava/util/Set;

    .line 1563
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1635
    check-cast v6, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    const/4 v8, 0x0

    .line 137
    invoke-static {v6, v8, v8, v7, v8}, Landroidx/camera/core/CameraIdentifier$Factory;->create$default(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;ILjava/lang/Object;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Landroidx/camera/core/CameraIdentifier;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v7}, Landroidx/camera/core/CameraSelector;->of([Landroidx/camera/core/CameraIdentifier;)Landroidx/camera/core/CameraSelector;

    move-result-object v6

    .line 1635
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 139
    :cond_0
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 1635
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public init(Landroidx/camera/core/impl/CameraRepository;)V
    .locals 2

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 72
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->awaitCameraIds-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 73
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->onCamerasUpdated(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p1

    .line 71
    monitor-exit v0

    throw p1
.end method

.method public onCamerasUpdated(Ljava/util/List;)V
    .locals 9

    const-string v0, "cameraIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 78
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 81
    :try_start_0
    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->awaitConcurrentCameraIds-SeavPBo$default(Landroidx/camera/camera2/pipe/CameraDevices;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 82
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 1563
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1635
    check-cast v7, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v7}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 83
    :cond_2
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    .line 84
    invoke-interface {p1, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 85
    sget-object v4, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string v4, "CXCP"

    invoke-static {v4}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v4

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to retrieve concurrent camera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 91
    :cond_3
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    .line 92
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    const/4 v6, 0x0

    .line 93
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/CameraId;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    iget-object v7, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    invoke-static {v6, v7}, Landroidx/camera/camera2/internal/CameraCompatibilityFilter;->isBackwardCompatible(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraDevices;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 98
    iget-object v7, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraDevices:Landroidx/camera/camera2/pipe/CameraDevices;

    invoke-static {v5, v7}, Landroidx/camera/camera2/internal/CameraCompatibilityFilter;->isBackwardCompatible(Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraDevices;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 100
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 102
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catch_1
    move-exception v5

    goto :goto_4

    .line 104
    :cond_4
    :goto_3
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 106
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_5
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroidx/camera/core/InitializationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 111
    :goto_4
    :try_start_2
    sget-object v6, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string v6, "CXCP"

    invoke-static {v6}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v6

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping incompatible concurrent pair: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    const-string v4, " due to "

    .line 112
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 125
    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 126
    :try_start_3
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdsSet:Ljava/util/Set;

    .line 127
    iput-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdMap:Ljava/util/Map;

    .line 128
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 119
    :goto_5
    new-instance v0, Landroidx/camera/core/impl/CameraUpdateException;

    .line 120
    const-string v1, "Failed to retrieve concurrent camera id info for camera-pipe."

    .line 119
    invoke-direct {v0, v1, p1}, Landroidx/camera/core/impl/CameraUpdateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removePendingCameraInfo(Landroidx/camera/core/CameraInfo;)V
    .locals 3

    const-string v0, "cameraInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    sget-object v2, Landroidx/camera/camera2/adapter/CameraInfoAdapter;->Companion:Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;

    invoke-virtual {v2, p1}, Landroidx/camera/camera2/adapter/CameraInfoAdapter$Companion;->getCameraId-zjxgSG8(Landroidx/camera/core/CameraInfo;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraId;->box-impl(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraId;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/CameraId;->unbox-impl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p1, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public setActiveConcurrentCameraInfos(Ljava/util/List;)V
    .locals 1

    const-string v0, "cameraInfos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    .line 170
    invoke-direct {p0}, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->tryStartConcurrentGraph()V

    .line 171
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public setCameraOperatingMode(I)V
    .locals 6

    .line 246
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iput p1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentMode:I

    .line 248
    iget-object v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit v0

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    .line 253
    :goto_0
    iput-boolean v4, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    if-nez v4, :cond_2

    .line 255
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    .line 259
    :cond_2
    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v4, "iterator(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/impl/CameraInternal;

    .line 260
    instance-of v5, v4, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    if-eqz v5, :cond_4

    check-cast v4, Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_3

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_1

    .line 262
    :cond_5
    invoke-virtual {v4, v0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->setCameraGraphCreationMode$camera_camera2(Z)V

    goto :goto_1

    .line 264
    :cond_6
    invoke-virtual {v4, v3}, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->setCameraGraphCreationMode$camera_camera2(Z)V

    goto :goto_1

    :cond_7
    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 246
    monitor-exit v0

    throw p1
.end method

.method public shutdown()V
    .locals 3

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    const/4 v1, 0x0

    .line 276
    iput-boolean v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentModeOn:Z

    .line 277
    iget-object v2, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 278
    :try_start_0
    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 279
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdsSet:Ljava/util/Set;

    .line 280
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentCameraIdMap:Ljava/util/Map;

    .line 281
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->activeConcurrentCameraInfosList:Ljava/util/List;

    .line 282
    iput v1, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->concurrentMode:I

    .line 283
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraCoordinatorAdapter;->pendingCameraIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
