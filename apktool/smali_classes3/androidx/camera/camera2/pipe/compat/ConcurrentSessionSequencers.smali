.class public final Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final pending:Ljava/util/Set;

.field private final sequencers:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->lock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->sequencers:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->pending:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getSequencer(Landroidx/camera/camera2/pipe/CameraGraphId;Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;)Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;
    .locals 3

    const-string v0, "cameraGraphId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "concurrentCameraGraphs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->sequencers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->pending:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->getCameraGraphIds()Ljava/util/Set;

    move-result-object p1

    .line 1761
    invoke-static {p1}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1762
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 56
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->pending:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->sequencers:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    goto :goto_1

    :cond_2
    const-string p1, "Required value was null."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 57
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->sequencers:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_1
    monitor-exit v0

    return-object p1

    .line 57
    :cond_4
    :try_start_1
    const-string p1, "Required value was null."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 63
    :cond_5
    new-instance v1, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    invoke-direct {v1}, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;-><init>()V

    .line 64
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->sequencers:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencers;->pending:Ljava/util/Set;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;->getCameraGraphIds()Ljava/util/Set;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0

    throw p1
.end method
