.class final Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupAsync(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Ljava/util/Map;J)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $deferrableSurfaces:Ljava/util/List;

.field final synthetic $graph:Landroidx/camera/camera2/pipe/CameraGraph;

.field final synthetic $sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

.field final synthetic $surfaceToStreamMap:Ljava/util/Map;

.field final synthetic $timeoutMillis:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;JLjava/util/Map;Landroidx/camera/camera2/pipe/CameraGraph;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    iput-object p3, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    iput-wide p4, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$timeoutMillis:J

    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$surfaceToStreamMap:Ljava/util/Map;

    iput-object p7, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$graph:Landroidx/camera/camera2/pipe/CameraGraph;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    new-instance v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    iget-wide v4, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$timeoutMillis:J

    iget-object v6, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$surfaceToStreamMap:Ljava/util/Map;

    iget-object v7, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$graph:Landroidx/camera/camera2/pipe/CameraGraph;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;-><init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;JLjava/util/Map;Landroidx/camera/camera2/pipe/CameraGraph;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 92
    iget v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 93
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-virtual {v1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->isSessionConfigValid()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 97
    :try_start_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    iget-wide v5, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$timeoutMillis:J

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->label:I

    invoke-static {v1, v4, v5, v6, p0}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$getSurfaces(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/util/List;
    :try_end_1
    .catch Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lkotlinx/coroutines/TimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    .line 114
    :cond_3
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    invoke-static {v0, p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$areValid(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$getLock$p(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    monitor-enter v0

    .line 117
    :try_start_2
    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    const/16 v5, 0xa

    .line 1208
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    .line 1209
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1236
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1237
    move-object v7, v5

    check-cast v7, Landroidx/camera/core/impl/DeferrableSurface;

    .line 119
    invoke-interface {v3, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    check-cast v7, Landroid/view/Surface;

    .line 1237
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 119
    :cond_4
    const-string p1, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_5
    invoke-static {v1, v6}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$setConfiguredSurfaceMap$p(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;Ljava/util/Map;)V

    .line 122
    invoke-static {v1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$setSurfaceListener(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;)V

    .line 123
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    monitor-exit v0

    .line 125
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$surfaceToStreamMap:Ljava/util/Map;

    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    iget-object v3, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$graph:Landroidx/camera/camera2/pipe/CameraGraph;

    iget-object v4, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->this$0:Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    .line 216
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/StreamId;

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/StreamId;->unbox-impl()I

    move-result v6

    .line 127
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    .line 128
    sget-object v8, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v8, "CXCP"

    invoke-static {v8}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v8

    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Configured "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 86
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_6
    invoke-interface {v3, v6, v7}, Landroidx/camera/camera2/pipe/CameraGraphBase;->setSurface-NYG5g8E(ILandroid/view/Surface;)V

    .line 130
    invoke-static {v4}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->access$getInactiveSurfaceCloser$p(Landroidx/camera/camera2/impl/UseCaseSurfaceManager;)Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/core/impl/DeferrableSurface;

    invoke-interface {v7, v6, v5, v3}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;->configure-hB7JTeY(ILandroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/camera2/pipe/CameraGraph;)V

    goto :goto_2

    .line 132
    :cond_7
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 102
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 103
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 132
    const-string v0, "Surface setup complete"

    .line 103
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_8
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 115
    :goto_3
    monitor-exit v0

    throw p1

    .line 135
    :cond_9
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 119
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "Surface setup failed: Some Surfaces are invalid"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_a
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    .line 140
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$deferrableSurfaces:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/DeferrableSurface;

    .line 139
    invoke-virtual {v0, p1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->reportSurfaceInvalid(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 142
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 109
    :cond_b
    :goto_4
    sget-object v1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 102
    const-string v1, "CXCP"

    invoke-static {v1}, Landroidx/camera/core/Logger;->isInfoEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 103
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get Surfaces: isActive="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", surfaces="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_c
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 103
    :catch_1
    sget-object p1, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    iget-wide v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$timeoutMillis:J

    .line 119
    const-string p1, "CXCP"

    invoke-static {p1}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 120
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get Surfaces within "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_d
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 99
    :goto_5
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 129
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isWarnEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 130
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "Failed to get Surfaces: Surfaces closed"

    .line 130
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_e
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseSurfaceManager$setupAsync$1$deferred$1;->$sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-virtual {p1}, Landroidx/camera/core/impl/DeferrableSurface$SurfaceClosedException;->getDeferrableSurface()Landroidx/camera/core/impl/DeferrableSurface;

    move-result-object p1

    const-string v1, "getDeferrableSurface(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->reportSurfaceInvalid(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 101
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 93
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
