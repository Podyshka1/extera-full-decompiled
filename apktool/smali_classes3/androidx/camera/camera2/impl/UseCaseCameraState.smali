.class public final Landroidx/camera/camera2/impl/UseCaseCameraState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;,
        Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;
    }
.end annotation


# instance fields
.field private final currentInternalParameters:Ljava/util/Map;

.field private final currentListeners:Ljava/util/Set;

.field private final currentParameters:Ljava/util/Map;

.field private final currentStreams:Ljava/util/Set;

.field private currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

.field private lastAeMode:Landroidx/camera/camera2/pipe/AeMode;

.field private lastAfMode:Landroidx/camera/camera2/pipe/AfMode;

.field private lastAwbMode:Landroidx/camera/camera2/pipe/AwbMode;

.field private final lock:Ljava/lang/Object;

.field private final pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

.field private final requestListener:Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;

.field private final submittedRequestCounter:Lkotlinx/atomicfu/AtomicInt;

.field private final templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

.field private updateSignal:Lkotlinx/coroutines/CompletableDeferred;

.field private updateSignals:Lkotlin/collections/ArrayDeque;

.field private updating:Z

.field private final useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/config/UseCaseGraphContext;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;)V
    .locals 1

    const-string/jumbo v0, "useCaseGraphContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "templateParamsOverride"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 59
    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    .line 61
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 65
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->submittedRequestCounter:Lkotlinx/atomicfu/AtomicInt;

    .line 69
    new-instance p2, Lkotlin/collections/ArrayDeque;

    invoke-direct {p2}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    .line 73
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/Map;

    .line 75
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/Map;

    .line 77
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    .line 79
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/Set;

    .line 87
    new-instance p2, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;

    invoke-direct {p2, p0}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraState;)V

    iput-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->requestListener:Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;

    .line 88
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    return-void
.end method

.method public static final synthetic access$getLock$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Ljava/lang/Object;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getPendingSignalCount$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Lkotlinx/atomicfu/AtomicInt;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    return-object p0
.end method

.method public static final synthetic access$getUpdateSignals$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Lkotlin/collections/ArrayDeque;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    return-object p0
.end method

.method public static final synthetic access$submitLatest(Landroidx/camera/camera2/impl/UseCaseCameraState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraState;->submitLatest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getIntOrNull(Ljava/util/Map;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 334
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_1
    return-object v0
.end method

.method private final submitLatest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;

    iget v3, v2, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;

    invoke-direct {v2, v1, v0}, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 202
    iget v4, v2, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v2, v2, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 210
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 213
    :try_start_1
    iget-object v0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 242
    invoke-virtual {v0}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object v0

    iput-object v4, v2, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->L$0:Ljava/lang/Object;

    iput v6, v2, Landroidx/camera/camera2/impl/UseCaseCameraState$submitLatest$1;->label:I

    invoke-interface {v0, v2}, Landroidx/camera/camera2/pipe/CameraGraphBase;->acquireSession(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    move-object v2, v4

    .line 202
    :goto_1
    :try_start_2
    move-object v3, v0

    check-cast v3, Ljava/lang/AutoCloseable;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object v0, v3

    check-cast v0, Landroidx/camera/camera2/pipe/CameraGraph$Session;

    .line 214
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 215
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 218
    iget-object v8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    :try_start_4
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 220
    iput-object v7, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 224
    :cond_4
    iget-object v14, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

    .line 225
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    .line 227
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->templateParamsOverride:Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;

    iget-object v11, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

    invoke-interface {v9, v11}, Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;->getOverrideParams-xlOpshk(Landroidx/camera/camera2/pipe/RequestTemplate;)Ljava/util/Map;

    move-result-object v9

    .line 228
    iget-object v11, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/Map;

    invoke-static {v11}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 227
    invoke-static {v9, v11}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    .line 230
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/Map;

    invoke-static {v9}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    .line 231
    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getUSE_CASE_CAMERA_STATE_CUSTOM_TAG()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v9

    .line 232
    iget-object v13, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->submittedRequestCounter:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v13}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result v13

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/Set;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v13

    .line 236
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->requestListener:Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v9, Landroidx/camera/camera2/pipe/Request;

    const/16 v16, 0x20

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v17}, Landroidx/camera/camera2/pipe/Request;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 222
    iput-object v9, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 240
    :goto_2
    iget-object v9, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    iput-object v9, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 241
    iput-boolean v5, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 242
    iput-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 243
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    :try_start_5
    monitor-exit v8

    .line 245
    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v8, :cond_5

    .line 246
    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->stopRepeating()V

    .line 247
    iget-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v0

    goto :goto_6

    .line 249
    :cond_5
    check-cast v9, Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v9, :cond_6

    .line 250
    iget-object v6, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 251
    :try_start_6
    iget-object v8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    new-instance v10, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    iget-object v11, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->submittedRequestCounter:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v11}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v11

    invoke-direct {v10, v11, v9}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;-><init>(ILkotlinx/coroutines/CompletableDeferred;)V

    invoke-virtual {v8, v10}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v8, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v8}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 250
    :try_start_7
    monitor-exit v6

    .line 253
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 250
    monitor-exit v6

    throw v0

    .line 255
    :cond_6
    :goto_3
    sget-object v6, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v6, "CXCP"

    invoke-static {v6}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v6

    .line 255
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update RepeatingRequest: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_7
    iget-object v6, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroidx/camera/camera2/pipe/Request;

    invoke-interface {v0, v6}, Landroidx/camera/camera2/pipe/CameraGraph$Session;->startRepeating(Landroidx/camera/camera2/pipe/Request;)V

    .line 257
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/camera2/pipe/Request;

    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/Request;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Landroidx/camera/camera2/impl/UseCaseCameraState;->update3A(Landroidx/camera/camera2/pipe/CameraGraph$Session;Ljava/util/Map;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 242
    :goto_4
    :try_start_8
    invoke-static {v3, v7}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_9

    .line 218
    :goto_5
    :try_start_9
    monitor-exit v8

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 242
    :goto_6
    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-static {v3, v4}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_0

    :catch_1
    move-exception v0

    move-object v2, v4

    .line 261
    :goto_7
    sget-object v3, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 95
    const-string v3, "CXCP"

    invoke-static {v3}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 96
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v3

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot acquire session at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    :cond_8
    iget-object v3, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 263
    :try_start_c
    iget-boolean v0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    if-eqz v0, :cond_9

    .line 264
    iput-boolean v5, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 265
    iget-object v0, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 266
    iput-object v7, v1, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_a

    .line 268
    :cond_9
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 262
    monitor-exit v3

    .line 274
    :goto_9
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v0, :cond_a

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 275
    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 262
    :goto_a
    monitor-exit v3

    throw v0
.end method

.method private final update3A(Landroidx/camera/camera2/pipe/CameraGraph$Session;Ljava/util/Map;)V
    .locals 11

    .line 299
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "CONTROL_AE_MODE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->getIntOrNull(Ljava/util/Map;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 300
    sget-object v2, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/AeMode$Companion;->fromIntOrNull-kQd0u18(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 303
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "CONTROL_AF_MODE"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->getIntOrNull(Ljava/util/Map;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 304
    sget-object v2, Landroidx/camera/camera2/pipe/AfMode;->Companion:Landroidx/camera/camera2/pipe/AfMode$Companion;

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/AfMode$Companion;->fromIntOrNull-MKXwA8g(I)Landroidx/camera/camera2/pipe/AfMode;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 307
    :goto_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v2, "CONTROL_AWB_MODE"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->getIntOrNull(Ljava/util/Map;Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 308
    sget-object v0, Landroidx/camera/camera2/pipe/AwbMode;->Companion:Landroidx/camera/camera2/pipe/AwbMode$Companion;

    invoke-virtual {v0, p2}, Landroidx/camera/camera2/pipe/AwbMode$Companion;->fromIntOrNull--SaEiwI(I)Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v1

    :cond_2
    move-object v5, v1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz v3, :cond_3

    .line 311
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAeMode:Landroidx/camera/camera2/pipe/AeMode;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, p2

    :goto_2
    if-eqz v4, :cond_4

    .line 312
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAfMode:Landroidx/camera/camera2/pipe/AfMode;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, p2

    :goto_3
    if-eqz v5, :cond_5

    .line 313
    iget-object v6, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAwbMode:Landroidx/camera/camera2/pipe/AwbMode;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move p2, v0

    :cond_5
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-eqz p2, :cond_a

    .line 316
    :cond_6
    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UseCaseCameraState: Updating 3A modes: AE("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", changed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, "), AF("

    .line 317
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    const-string v1, "), AWB("

    .line 317
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v9, 0x38

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    .line 324
    invoke-static/range {v2 .. v10}, Landroidx/camera/camera2/pipe/CameraControls3A$-CC;->update3A-ydBZfZg$default(Landroidx/camera/camera2/pipe/CameraControls3A;Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    if-eqz v3, :cond_8

    .line 327
    iput-object v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAeMode:Landroidx/camera/camera2/pipe/AeMode;

    :cond_8
    if-eqz v4, :cond_9

    .line 328
    iput-object v4, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAfMode:Landroidx/camera/camera2/pipe/AfMode;

    :cond_9
    if-eqz v5, :cond_a

    .line 329
    iput-object v5, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lastAwbMode:Landroidx/camera/camera2/pipe/AwbMode;

    :cond_a
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 278
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 280
    iput-boolean v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 281
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v1, :cond_0

    .line 282
    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "UseCaseCameraState closed"

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 281
    invoke-interface {v1, v2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 284
    iput-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 287
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 288
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    .line 289
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    .line 290
    invoke-virtual {v1}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->getSignal()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    .line 291
    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "UseCaseCameraState closed"

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 292
    iget-object v1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I

    goto :goto_1

    .line 294
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method

.method public final tryStartRepeating(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 200
    invoke-direct {p0, p1}, Landroidx/camera/camera2/impl/UseCaseCameraState;->submitLatest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final updateAsync-Tp9XwKQ(Ljava/util/Map;ZLjava/util/Map;ZLjava/util/Set;Landroidx/camera/camera2/pipe/RequestTemplate;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p8, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p8

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;

    iget v1, v0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;

    invoke-direct {v0, p0, p8}, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;-><init>(Landroidx/camera/camera2/impl/UseCaseCameraState;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p8, v0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 103
    iget v2, v0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    new-instance p8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 113
    iget-object v2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_0
    sget-object v4, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    .line 85
    const-string v4, "CXCP"

    invoke-static {v4}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 86
    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v4

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UseCaseCameraState#updateState: parameters = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", internalParameters = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string v6, ", streams = "

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    const-string v6, ", template = "

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    .line 173
    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 175
    :cond_4
    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentParameters:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    if-eqz p3, :cond_7

    if-nez p4, :cond_6

    .line 179
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 181
    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentInternalParameters:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_7
    if-eqz p5, :cond_8

    .line 184
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 185
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentStreams:Ljava/util/Set;

    invoke-interface {p1, p5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_8
    if-eqz p6, :cond_9

    .line 188
    iput-object p6, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentTemplate:Landroidx/camera/camera2/pipe/RequestTemplate;

    :cond_9
    if-eqz p7, :cond_a

    .line 191
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 192
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->currentListeners:Ljava/util/Set;

    invoke-interface {p1, p7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 138
    :cond_a
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    if-nez p1, :cond_b

    const/4 p1, 0x0

    .line 139
    invoke-static {p1, v3, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    .line 141
    :cond_b
    iget-boolean p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    if-eqz p1, :cond_c

    .line 142
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit v2

    return-object p1

    .line 146
    :cond_c
    :try_start_1
    iput-boolean v3, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updating:Z

    .line 147
    iget-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignal:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 148
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    monitor-exit v2

    .line 150
    iput-object p8, v0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/impl/UseCaseCameraState$updateAsync$1;->label:I

    invoke-direct {p0, v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->submitLatest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    return-object v1

    :cond_d
    move-object p1, p8

    .line 151
    :goto_2
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p1

    .line 113
    :goto_3
    monitor-exit v2

    throw p1
.end method
