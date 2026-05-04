.class public final Landroidx/camera/camera2/pipe/internal/OutputDistributor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;,
        Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;
    }
.end annotation


# instance fields
.field private final availableOutputs:Ljava/util/Map;

.field private cameraOutputSequenceNumbers:J

.field private closed:Z

.field private lastFailedCameraOutputNumber:J

.field private lastFailedFrameNumber:J

.field private final lock:Ljava/lang/Object;

.field private final maximumCachedOutputs:I

.field private newestCameraOutputNumber:J

.field private newestFrameNumber:J

.field private final outputFinalizer:Landroidx/camera/camera2/pipe/media/Finalizer;

.field private final outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

.field private final startedOutputs:Ljava/util/List;


# direct methods
.method public constructor <init>(ILandroidx/camera/camera2/pipe/media/Finalizer;Landroidx/camera/camera2/pipe/internal/OutputMatcher;)V
    .locals 2

    const-string v0, "outputFinalizer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputMatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->maximumCachedOutputs:I

    .line 51
    iput-object p2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputFinalizer:Landroidx/camera/camera2/pipe/media/Finalizer;

    .line 52
    iput-object p3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    .line 72
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lock:Ljava/lang/Object;

    const-wide/16 p1, 0x1

    .line 76
    iput-wide p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->cameraOutputSequenceNumbers:J

    const-wide/high16 p1, -0x8000000000000000L

    .line 78
    iput-wide p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestCameraOutputNumber:J

    .line 80
    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestFrameNumber:J

    .line 82
    iput-wide p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedFrameNumber:J

    .line 84
    iput-wide p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedCameraOutputNumber:J

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    .line 87
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/camera/camera2/pipe/media/Finalizer;Landroidx/camera/camera2/pipe/internal/OutputMatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x3

    .line 49
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;-><init>(ILandroidx/camera/camera2/pipe/media/Finalizer;Landroidx/camera/camera2/pipe/internal/OutputMatcher;)V

    return-void
.end method

.method private final removeOutputsOlderThan(Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;)Ljava/util/List;
    .locals 6

    .line 319
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder()Z

    move-result v1

    .line 320
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->getCameraOutputSequence()J

    move-result-wide v2

    .line 321
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->getCameraOutputNumber()J

    move-result-wide v4

    move-object v0, p0

    .line 318
    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->removeOutputsOlderThan(ZJJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final removeOutputsOlderThan(ZJJ)Ljava/util/List;
    .locals 6

    .line 333
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 334
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->isOutOfOrder()Z

    move-result v4

    if-ne v4, p1, :cond_0

    .line 335
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->getCameraOutputSequence()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-gez v4, :cond_0

    .line 336
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->getCameraOutputNumber()J

    move-result-wide v3

    cmp-long v3, v3, p4

    if-gez v3, :cond_0

    .line 865
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 346
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 346
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 350
    :try_start_1
    iput-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->closed:Z

    .line 352
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 353
    iget-object v2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 354
    iget-object v2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 355
    iget-object v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 356
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    monitor-exit v0

    .line 358
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/internal/OutputResult;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    .line 359
    iget-object v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputFinalizer:Landroidx/camera/camera2/pipe/media/Finalizer;

    .line 45
    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 359
    :goto_1
    invoke-interface {v3, v1}, Landroidx/camera/camera2/pipe/media/Finalizer;->finalize(Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 362
    sget-object v2, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getERROR_OUTPUT_ABORTED-U7r42EA()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWithFailure-tXNfJfc(I)V

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 346
    monitor-exit v0

    throw v1
.end method

.method public final onOutputFailure-Vw7M1qk(J)V
    .locals 8

    .line 298
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 298
    monitor-exit v0

    return-void

    .line 302
    :cond_0
    :try_start_1
    iput-wide p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedFrameNumber:J

    .line 303
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 671
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 672
    move-object v6, v5

    check-cast v6, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 304
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->getCameraFrameNumber-Ugla2oM()J

    move-result-wide v6

    invoke-static {v6, v7, p1, p2}, Landroidx/camera/camera2/pipe/FrameNumber;->equals-impl0(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v3, :cond_2

    :goto_1
    move-object v4, v2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    move-object v4, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    check-cast v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    if-eqz v4, :cond_5

    .line 306
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->getCameraOutputNumber()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedCameraOutputNumber:J

    .line 307
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 305
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    .line 298
    :cond_5
    monitor-exit v0

    if-eqz v2, :cond_6

    .line 313
    sget-object p1, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getERROR_OUTPUT_FAILED-U7r42EA()I

    move-result p1

    invoke-virtual {v2, p1}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWithFailure-tXNfJfc(I)V

    :cond_6
    return-void

    .line 298
    :goto_3
    monitor-exit v0

    throw p1
.end method

.method public final onOutputResult-DvZWqE8(JLjava/lang/Object;)V
    .locals 8

    .line 247
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->closed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 250
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    .line 251
    iget-wide v3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedCameraOutputNumber:J

    .line 250
    invoke-virtual {v1, v3, v4, p1, p2}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->fuzzyEqual(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 260
    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 295
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 261
    iget-object v5, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    .line 262
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->getCameraOutputNumber()J

    move-result-wide v6

    .line 261
    invoke-virtual {v5, v6, v7, p1, p2}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->fuzzyEqual(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    move-object v3, v2

    .line 260
    :goto_0
    check-cast v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    if-eqz v3, :cond_3

    .line 270
    invoke-direct {p0, v3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->removeOutputsOlderThan(Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;)Ljava/util/List;

    move-result-object v1

    .line 272
    invoke-virtual {v3, p1, p2, p3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWith-DvZWqE8(JLjava/lang/Object;)V

    .line 274
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object p1, v2

    goto :goto_3

    .line 279
    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget p2, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->maximumCachedOutputs:I

    if-le p1, p2, :cond_4

    .line 283
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 284
    iget-object p3, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    move-object v1, v2

    goto :goto_3

    :cond_4
    move-object p1, v2

    move-object v1, p1

    goto :goto_3

    .line 255
    :cond_5
    :goto_2
    invoke-static {p3}, Landroidx/camera/camera2/pipe/internal/OutputResult;->box-impl(Ljava/lang/Object;)Landroidx/camera/camera2/pipe/internal/OutputResult;

    move-result-object p1

    goto :goto_1

    .line 287
    :goto_3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit v0

    .line 290
    check-cast p1, Landroidx/camera/camera2/pipe/internal/OutputResult;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    .line 45
    invoke-static {p1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    move-object v2, p1

    :cond_6
    if-eqz v2, :cond_7

    .line 290
    iget-object p1, p0, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputFinalizer:Landroidx/camera/camera2/pipe/media/Finalizer;

    invoke-interface {p1, v2}, Landroidx/camera/camera2/pipe/media/Finalizer;->finalize(Ljava/lang/Object;)V

    :cond_7
    if-eqz v1, :cond_8

    .line 291
    check-cast v1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 291
    sget-object p3, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getERROR_OUTPUT_MISSING-U7r42EA()I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWithFailure-tXNfJfc(I)V

    goto :goto_4

    :cond_8
    return-void

    .line 247
    :goto_5
    monitor-exit v0

    throw p1
.end method

.method public final onOutputStarted-qGubWw0(JJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;)V
    .locals 21

    move-object/from16 v1, p0

    move-wide/from16 v7, p1

    move-wide/from16 v5, p5

    const-string v0, "outputListener"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 118
    iget-object v13, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lock:Ljava/lang/Object;

    monitor-enter v13

    .line 132
    :try_start_0
    iget-object v0, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 133
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->getCameraFrameNumber-Ugla2oM()J

    move-result-wide v3

    invoke-static {v3, v4, v7, v8}, Landroidx/camera/camera2/pipe/FrameNumber;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v14, v1

    goto/16 :goto_11

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    if-eqz v2, :cond_3

    .line 135
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CXCP"

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOutputStarted was invoked multiple times with a previously started output!onOutputStarted with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Landroidx/camera/camera2/pipe/FrameNumber;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string v4, ", "

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p4}, Landroidx/camera/camera2/pipe/CameraTimestamp;->toString-impl(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string v4, ", "

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    const-string v4, ". Previously started output: "

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, ". Ignoring."

    .line 136
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_2
    monitor-exit v13

    return-void

    .line 143
    :cond_3
    :try_start_1
    iget-boolean v15, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->closed:Z

    .line 144
    iget-wide v3, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->cameraOutputSequenceNumbers:J

    const-wide/16 v16, 0x1

    move/from16 v18, v15

    add-long v14, v3, v16

    iput-wide v14, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->cameraOutputSequenceNumbers:J

    if-nez v18, :cond_4

    .line 147
    iget-wide v14, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedFrameNumber:J

    cmp-long v2, v14, v7

    if-eqz v2, :cond_4

    .line 148
    iget-wide v14, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->lastFailedCameraOutputNumber:J

    cmp-long v2, v14, v5

    if-nez v2, :cond_5

    :cond_4
    move-object v14, v1

    goto/16 :goto_7

    .line 165
    :cond_5
    iget-wide v14, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestFrameNumber:J

    cmp-long v2, v7, v14

    if-gez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_7

    .line 167
    iput-wide v7, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestFrameNumber:J

    .line 171
    :cond_7
    iget-wide v14, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestCameraOutputNumber:J

    cmp-long v9, v5, v14

    if-gez v9, :cond_8

    const/4 v9, 0x1

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_9

    .line 173
    iput-wide v5, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->newestCameraOutputNumber:J

    :cond_9
    if-nez v2, :cond_b

    if-eqz v9, :cond_a

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :cond_b
    :goto_3
    const/4 v2, 0x1

    .line 179
    :goto_4
    iget-object v9, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 295
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    .line 180
    iget-object v0, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    invoke-virtual {v0, v5, v6, v14, v15}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->fuzzyEqual(JJ)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_d
    const/4 v11, 0x0

    .line 179
    :goto_5
    check-cast v11, Ljava/lang/Long;

    if-eqz v11, :cond_e

    .line 188
    iget-object v0, v1, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->removeOutputsOlderThan(ZJJ)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v1

    :goto_6
    const/16 v17, 0x1

    goto :goto_a

    :cond_e
    move-object v14, v1

    move v1, v2

    .line 198
    :try_start_2
    iget-object v15, v14, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->startedOutputs:Ljava/util/List;

    .line 199
    new-instance v0, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    const/4 v11, 0x0

    move-wide/from16 v19, v7

    move-wide v6, v3

    move-wide/from16 v2, v19

    move-wide/from16 v4, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v11}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;-><init>(ZJJJJLandroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-wide v3, v6

    .line 198
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    goto :goto_a

    :catchall_1
    move-exception v0

    goto/16 :goto_11

    .line 151
    :goto_7
    iget-object v0, v14, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 152
    iget-object v2, v14, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputMatcher:Landroidx/camera/camera2/pipe/internal/OutputMatcher;

    invoke-virtual {v2, v5, v6, v7, v8}, Landroidx/camera/camera2/pipe/internal/OutputMatcher;->fuzzyEqual(JJ)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    .line 151
    :goto_8
    move-object v11, v1

    check-cast v11, Ljava/lang/Long;

    if-eqz v11, :cond_11

    .line 158
    iget-object v0, v14, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->availableOutputs:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    .line 157
    :goto_9
    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_6

    .line 208
    :goto_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 118
    monitor-exit v13

    if-eqz v2, :cond_12

    .line 211
    check-cast v2, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;

    .line 211
    sget-object v5, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getERROR_OUTPUT_MISSING-U7r42EA()I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$StartedOutput;->completeWithFailure-tXNfJfc(I)V

    goto :goto_b

    .line 212
    :cond_12
    iget-object v1, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/camera/camera2/pipe/internal/OutputResult;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroidx/camera/camera2/pipe/internal/OutputResult;->getAvailable-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_14

    .line 212
    iget-object v2, v14, Landroidx/camera/camera2/pipe/internal/OutputDistributor;->outputFinalizer:Landroidx/camera/camera2/pipe/media/Finalizer;

    invoke-interface {v2, v1}, Landroidx/camera/camera2/pipe/media/Finalizer;->finalize(Ljava/lang/Object;)V

    :cond_14
    if-eqz v17, :cond_18

    if-eqz v18, :cond_15

    .line 217
    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    sget-object v0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getERROR_OUTPUT_ABORTED-U7r42EA()I

    move-result v0

    .line 68
    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    move-object v9, v0

    goto :goto_e

    .line 219
    :cond_15
    check-cast v0, Landroidx/camera/camera2/pipe/internal/OutputResult;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_16
    sget-object v0, Landroidx/camera/camera2/pipe/internal/OutputResult;->Companion:Landroidx/camera/camera2/pipe/internal/OutputResult$Companion;

    sget-object v0, Landroidx/camera/camera2/pipe/OutputStatus;->Companion:Landroidx/camera/camera2/pipe/OutputStatus$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/OutputStatus$Companion;->getERROR_OUTPUT_FAILED-U7r42EA()I

    move-result v0

    .line 68
    invoke-static {v0}, Landroidx/camera/camera2/pipe/OutputStatus;->box-impl(I)Landroidx/camera/camera2/pipe/OutputStatus;

    move-result-object v0

    invoke-static {v0}, Landroidx/camera/camera2/pipe/internal/OutputResult;->access$constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :goto_e
    if-eqz v11, :cond_17

    .line 225
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_f
    move-wide v7, v0

    move-wide v5, v3

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v0, p7

    goto :goto_10

    :cond_17
    const-wide/16 v0, -0x1

    goto :goto_f

    .line 226
    :goto_10
    invoke-interface/range {v0 .. v9}, Landroidx/camera/camera2/pipe/internal/OutputDistributor$OutputListener;->onOutputComplete-3ejhThk(JJJJLjava/lang/Object;)V

    :cond_18
    return-void

    .line 118
    :goto_11
    monitor-exit v13

    throw v0
.end method
