.class public final Landroidx/camera/camera2/pipe/graph/GraphLoop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/graph/GraphLoop$Companion;,
        Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/graph/GraphLoop$Companion;


# instance fields
.field private final _captureProcessingEnabled:Lkotlinx/atomicfu/AtomicBoolean;

.field private _graph3AParameters:Ljava/util/Map;

.field private _graphParameters:Ljava/util/Map;

.field private _repeatingRequest:Landroidx/camera/camera2/pipe/Request;

.field private _requestListeners:Ljava/util/List;

.field private _requestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

.field private final cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

.field private volatile closed:Z

.field private currentGraph3AParameters:Ljava/util/Map;

.field private currentGraphParameters:Ljava/util/Map;

.field private currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

.field private currentRequestListeners:Ljava/util/List;

.field private currentRequestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

.field private currentRequiredParameters:Ljava/util/Map;

.field private final defaultParameters:Ljava/util/Map;

.field private final graphLoopScope:Lkotlinx/coroutines/CoroutineScope;

.field private final listeners:Ljava/util/List;

.field private final lock:Ljava/lang/Object;

.field private final processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

.field private final requiredListeners:Ljava/util/List;

.field private final requiredParameters:Ljava/util/Map;

.field private final shutdownScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->Companion:Landroidx/camera/camera2/pipe/graph/GraphLoop$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraphId;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 6

    const-string v0, "cameraGraphId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultParameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredListeners"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shutdownScope"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    .line 43
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->defaultParameters:Ljava/util/Map;

    .line 44
    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->requiredParameters:Ljava/util/Map;

    .line 45
    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->requiredListeners:Ljava/util/List;

    .line 46
    iput-object p5, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->listeners:Ljava/util/List;

    .line 47
    iput-object p6, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->shutdownScope:Lkotlinx/coroutines/CoroutineScope;

    .line 59
    new-instance p1, Lkotlinx/coroutines/CoroutineName;

    const-string p2, "CXCP-GraphLoop"

    invoke-direct {p1, p2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p7, p1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->graphLoopScope:Lkotlinx/coroutines/CoroutineScope;

    .line 61
    sget-object p2, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->Companion:Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;

    new-instance v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    new-instance v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processingQueue$1;

    invoke-direct {v2, p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop$processingQueue$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, Landroidx/camera/camera2/pipe/graph/GraphLoop$processingQueue$2;

    invoke-direct {v3, p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop$processingQueue$2;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;-><init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    invoke-virtual {p2, v0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;->processIn(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Lkotlinx/coroutines/CoroutineScope;)Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    .line 64
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->lock:Ljava/lang/Object;

    .line 69
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_graphParameters:Ljava/util/Map;

    .line 70
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_graph3AParameters:Ljava/util/Map;

    .line 71
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_requestListeners:Ljava/util/List;

    const/4 p1, 0x1

    .line 153
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_captureProcessingEnabled:Lkotlinx/atomicfu/AtomicBoolean;

    .line 212
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraphParameters:Ljava/util/Map;

    .line 213
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraph3AParameters:Ljava/util/Map;

    .line 214
    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequiredParameters:Ljava/util/Map;

    .line 215
    iput-object p4, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestListeners:Ljava/util/List;

    return-void
.end method

.method private final abortRequests(Ljava/util/List;)V
    .locals 8

    .line 604
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 605
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/Request;

    .line 606
    iget-object v5, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestListeners:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    .line 607
    iget-object v7, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestListeners:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v7, v4}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 612
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_3

    .line 613
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/camera2/pipe/Request;

    .line 614
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_2

    .line 615
    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/Request$Listener;

    invoke-interface {v6, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static final synthetic access$finalizeUnprocessedCommands(Landroidx/camera/camera2/pipe/graph/GraphLoop;Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->finalizeUnprocessedCommands(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$process(Landroidx/camera/camera2/pipe/graph/GraphLoop;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->process(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processRequestProcessor(Landroidx/camera/camera2/pipe/graph/GraphLoop;Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processRequestProcessor(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$processShutdown(Landroidx/camera/camera2/pipe/graph/GraphLoop;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processShutdown(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final buildAndSubmit(ZLjava/util/List;Ljava/util/Map;)Z
    .locals 7

    .line 644
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 651
    :cond_0
    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->defaultParameters:Ljava/util/Map;

    .line 652
    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraphParameters:Ljava/util/Map;

    .line 654
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequiredParameters:Ljava/util/Map;

    :goto_0
    move-object v5, v1

    goto :goto_1

    .line 657
    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v1

    .line 658
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraph3AParameters:Ljava/util/Map;

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/RequestsKt;->putAllMetadata(Ljava/util/Map;Ljava/util/Map;)V

    .line 659
    invoke-static {v1, p3}, Landroidx/camera/camera2/pipe/RequestsKt;->putAllMetadata(Ljava/util/Map;Ljava/util/Map;)V

    .line 660
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->requiredParameters:Ljava/util/Map;

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/RequestsKt;->putAllMetadata(Ljava/util/Map;Ljava/util/Map;)V

    .line 661
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 657
    invoke-static {v1}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 663
    :goto_1
    iget-object v6, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestListeners:Ljava/util/List;

    move v1, p1

    move-object v2, p2

    .line 648
    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->submit$camera_camera2_pipe(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 667
    const-string p2, "CXCP"

    if-eqz v1, :cond_2

    .line 668
    sget-object p3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 668
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to repeat with "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 71
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 670
    :cond_2
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 671
    sget-object p3, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 671
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to submit capture with "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 71
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 673
    :cond_3
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to trigger with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 71
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1
.end method

.method static synthetic buildAndSubmit$default(Landroidx/camera/camera2/pipe/graph/GraphLoop;ZLjava/util/List;Ljava/util/Map;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 642
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 639
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->buildAndSubmit(ZLjava/util/List;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private final finalizeUnprocessedCommands(Ljava/util/List;)V
    .locals 8

    .line 624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 627
    instance-of v1, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;->getRequests()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->abortRequests(Ljava/util/List;)V

    goto :goto_0

    .line 628
    :cond_1
    instance-of v1, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    if-eqz v1, :cond_0

    .line 629
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->shutdownScope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v4, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v5, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop$finalizeUnprocessedCommands$1;-><init>(Landroidx/camera/camera2/pipe/graph/GraphCommand;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final process(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 235
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->selectGraphCommand(Ljava/util/List;)I

    move-result v2

    .line 238
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 239
    sget-object v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 240
    :cond_0
    sget-object v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processShutdown(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 241
    :cond_2
    sget-object v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Abort;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Abort;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processAbort(Ljava/util/List;I)V

    goto :goto_0

    .line 242
    :cond_3
    sget-object v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, v2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processStop(Ljava/util/List;I)V

    goto :goto_0

    .line 243
    :cond_4
    instance-of v1, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    if-eqz v1, :cond_6

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    invoke-direct {p0, p1, v2, v0, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processRequestProcessor(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_5

    return-object p1

    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 244
    :cond_6
    instance-of p2, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    if-eqz p2, :cond_7

    move-object v3, v0

    check-cast v3, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processCapture$default(Landroidx/camera/camera2/pipe/graph/GraphLoop;Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Capture;ZILjava/lang/Object;)V

    move-object p1, v0

    goto :goto_0

    :cond_7
    move-object v1, p1

    move-object p1, p0

    .line 245
    instance-of p2, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    if-eqz p2, :cond_8

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    invoke-direct {p0, v1, v2, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processTrigger(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;)V

    goto :goto_0

    .line 246
    :cond_8
    instance-of p2, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    if-eqz p2, :cond_9

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    invoke-direct {p0, v1, v2, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processParameters(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;)V

    goto :goto_0

    .line 247
    :cond_9
    instance-of p2, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;

    if-eqz p2, :cond_a

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;

    invoke-direct {p0, v1, v2, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processListeners(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;)V

    goto :goto_0

    .line 248
    :cond_a
    instance-of p2, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    if-eqz p2, :cond_b

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processRepeat$default(Landroidx/camera/camera2/pipe/graph/GraphLoop;Ljava/util/List;IZILjava/lang/Object;)V

    .line 250
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 238
    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final processAbort(Ljava/util/List;I)V
    .locals 3

    .line 531
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->abortCaptures$camera_camera2_pipe()V

    :cond_0
    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    .line 534
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 697
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 537
    sget-object v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 538
    sget-object v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Abort;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Abort;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 539
    instance-of v2, v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    if-nez v2, :cond_3

    .line 540
    instance-of v2, v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 541
    :cond_1
    instance-of v2, v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    if-eqz v2, :cond_2

    .line 543
    check-cast v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;->getRequests()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->abortRequests(Ljava/util/List;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    :cond_3
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final processCapture(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Capture;Z)V
    .locals 7

    .line 344
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->getCaptureProcessingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;->getRequests()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->buildAndSubmit$default(Landroidx/camera/camera2/pipe/graph/GraphLoop;ZLjava/util/List;Ljava/util/Map;ILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 346
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    move-object v1, p0

    :cond_1
    if-eqz p4, :cond_3

    if-lez p2, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 354
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 357
    instance-of p3, p3, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 358
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processRepeat(Ljava/util/List;IZ)V

    return-void

    .line 357
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method static synthetic processCapture$default(Landroidx/camera/camera2/pipe/graph/GraphLoop;Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Capture;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    .line 338
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processCapture(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Capture;Z)V

    return-void
.end method

.method private final processListeners(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;)V
    .locals 1

    .line 462
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;->getListeners()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->requiredListeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestListeners:Ljava/util/List;

    .line 464
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 697
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 465
    instance-of v0, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;

    if-eqz v0, :cond_0

    .line 698
    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 466
    :cond_1
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->reissueRepeatingRequest()Z

    return-void
.end method

.method private final processParameters(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;)V
    .locals 1

    .line 440
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;->getGraphParameters()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraphParameters:Ljava/util/Map;

    .line 441
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;->getGraph3AParameters()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraph3AParameters:Ljava/util/Map;

    .line 443
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;->getGraph3AParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->requiredParameters:Ljava/util/Map;

    goto :goto_0

    .line 446
    :cond_0
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    move-result-object v0

    .line 447
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;->getGraph3AParameters()Ljava/util/Map;

    move-result-object p3

    invoke-static {v0, p3}, Landroidx/camera/camera2/pipe/RequestsKt;->putAllMetadata(Ljava/util/Map;Ljava/util/Map;)V

    .line 448
    iget-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->requiredParameters:Ljava/util/Map;

    invoke-static {v0, p3}, Landroidx/camera/camera2/pipe/RequestsKt;->putAllMetadata(Ljava/util/Map;Ljava/util/Map;)V

    .line 446
    invoke-static {v0}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    .line 442
    :goto_0
    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequiredParameters:Ljava/util/Map;

    .line 452
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p2, :cond_2

    .line 697
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 453
    instance-of v0, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    if-eqz v0, :cond_1

    .line 698
    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 454
    :cond_2
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->reissueRepeatingRequest()Z

    return-void
.end method

.method private final processRepeat(Ljava/util/List;IZ)V
    .locals 10

    move v0, p2

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ge v2, v0, :cond_3

    .line 410
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 412
    instance-of v3, v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    if-eqz v3, :cond_1

    .line 413
    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->buildAndSubmit$default(Landroidx/camera/camera2/pipe/graph/GraphLoop;ZLjava/util/List;Ljava/util/Map;ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 415
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p2

    iput-object p2, v4, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    .line 416
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    if-ge v1, v0, :cond_5

    .line 697
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 417
    instance-of p2, p2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    if-eqz p2, :cond_0

    .line 698
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v4, p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move-object v4, p0

    if-eqz p3, :cond_5

    add-int/lit8 p2, p2, 0x1

    .line 424
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_5

    .line 425
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 427
    instance-of v0, p3, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    if-eqz v0, :cond_4

    .line 428
    check-cast p3, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    invoke-direct {p0, p1, p2, p3, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processCapture(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Capture;Z)V

    return-void

    .line 429
    :cond_4
    instance-of v0, p3, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    if-eqz v0, :cond_5

    check-cast p3, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processTrigger(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;)V

    :cond_5
    return-void
.end method

.method static synthetic processRepeat$default(Landroidx/camera/camera2/pipe/graph/GraphLoop;Ljava/util/List;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 399
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processRepeat(Ljava/util/List;IZ)V

    return-void
.end method

.method private final processRequestProcessor(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    instance-of v2, v1, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;

    iget v3, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;

    invoke-direct {v2, v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;-><init>(Landroidx/camera/camera2/pipe/graph/GraphLoop;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 469
    iget v4, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->label:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v4, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    iget-object v2, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v4, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->I$1:I

    iget v10, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->I$0:I

    iget-object v11, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$1:Ljava/lang/Object;

    check-cast v13, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    iget-object v14, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget v4, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->I$1:I

    iget v10, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->I$0:I

    iget-object v11, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$4:Ljava/lang/Object;

    check-cast v11, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    iget-object v12, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$1:Ljava/lang/Object;

    check-cast v14, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    iget-object v15, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$0:Ljava/lang/Object;

    check-cast v15, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 474
    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v9, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 475
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v4, p2

    move-object/from16 v10, p3

    move-object v12, v1

    move-object v11, v2

    move v13, v7

    move-object/from16 v1, p1

    move-object v2, v1

    :goto_1
    if-ge v13, v4, :cond_b

    .line 697
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 478
    instance-of v15, v14, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    if-eqz v15, :cond_9

    .line 479
    move-object v15, v14

    check-cast v15, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    invoke-virtual {v15}, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->getOld()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v15

    if-eqz v15, :cond_6

    iput-object v2, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v10, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v12, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v1, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v14, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$4:Ljava/lang/Object;

    iput v13, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->I$0:I

    iput v4, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->I$1:I

    iput v9, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->label:I

    invoke-virtual {v15, v11}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->shutdown$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_5

    goto/16 :goto_6

    :cond_5
    move-object v15, v2

    move-object v2, v11

    move-object v11, v14

    move-object v14, v10

    move v10, v13

    move-object v13, v12

    move-object v12, v1

    :goto_2
    move-object/from16 v16, v14

    move-object v14, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v16

    goto :goto_3

    :cond_6
    move v15, v13

    move-object v13, v10

    move v10, v15

    move-object v15, v2

    move-object v2, v11

    move-object v11, v1

    .line 480
    :goto_3
    check-cast v14, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    invoke-virtual {v14}, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->getNew()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v1

    if-eqz v1, :cond_8

    iput-object v15, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v13, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$4:Ljava/lang/Object;

    iput v10, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->I$0:I

    iput v4, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->I$1:I

    iput v6, v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->label:I

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->shutdown$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    goto :goto_6

    :cond_7
    move-object v14, v15

    :goto_4
    move-object v15, v14

    :cond_8
    move-object v1, v13

    move v13, v10

    .line 481
    iget v10, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v10, v9

    iput v10, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v10, v1

    move v14, v9

    move-object v1, v11

    move-object v11, v2

    move-object v2, v15

    goto :goto_5

    :cond_9
    move v14, v7

    :goto_5
    if-eqz v14, :cond_a

    .line 698
    invoke-interface {v1, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 488
    :cond_b
    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->getOld()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v1

    if-eqz v1, :cond_d

    iput-object v2, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$0:Ljava/lang/Object;

    iput-object v10, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$1:Ljava/lang/Object;

    iput-object v12, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$2:Ljava/lang/Object;

    iput-object v8, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$3:Ljava/lang/Object;

    iput-object v8, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->L$4:Ljava/lang/Object;

    iput v5, v11, Landroidx/camera/camera2/pipe/graph/GraphLoop$processRequestProcessor$1;->label:I

    invoke-virtual {v1, v11}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->shutdown$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    :goto_6
    return-object v3

    :cond_c
    move-object v4, v10

    move-object v3, v12

    :goto_7
    move-object v12, v3

    move-object v10, v4

    .line 489
    :cond_d
    invoke-virtual {v10}, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->getNew()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v1

    iput-object v1, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    .line 493
    invoke-direct {v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->reissueRepeatingRequest()Z

    move-result v1

    if-nez v1, :cond_f

    .line 494
    iget-object v1, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    if-eqz v1, :cond_e

    .line 495
    new-instance v3, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    invoke-direct {v3, v1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;-><init>(Landroidx/camera/camera2/pipe/Request;)V

    invoke-interface {v2, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 499
    iget v1, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v1, v9, :cond_e

    .line 500
    sget-object v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_e
    iput-object v8, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    .line 505
    :cond_f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final processShutdown(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;

    invoke-direct {v0, p0, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;-><init>(Landroidx/camera/camera2/pipe/graph/GraphLoop;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 551
    iget v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->I$1:I

    iget v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->I$0:I

    iget-object v3, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->I$1:I

    iget v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->I$0:I

    iget-object v3, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    iget-object v8, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-object p1, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 552
    iput-object v6, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    .line 553
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraphParameters:Ljava/util/Map;

    .line 554
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraph3AParameters:Ljava/util/Map;

    .line 557
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move v2, v3

    :goto_1
    if-ge v2, p2, :cond_6

    .line 558
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 559
    instance-of v9, v8, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    if-eqz v9, :cond_5

    .line 561
    check-cast v8, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;->getRequests()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->abortRequests(Ljava/util/List;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 566
    :cond_6
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    if-eqz p2, :cond_7

    iput-object p1, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->label:I

    invoke-virtual {p2, v0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->shutdown$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    goto :goto_7

    .line 567
    :cond_7
    :goto_2
    iput-object v6, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    .line 569
    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move-object v8, p1

    move p1, p2

    :goto_3
    if-ge v3, p1, :cond_c

    .line 570
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 571
    instance-of v2, p2, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    if-eqz v2, :cond_b

    .line 572
    move-object v2, p2

    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->getOld()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object v2

    if-eqz v2, :cond_9

    iput-object v8, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->I$0:I

    iput p1, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->I$1:I

    iput v5, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->label:I

    invoke-virtual {v2, v0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->shutdown$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    goto :goto_7

    :cond_8
    move v2, v3

    move-object v3, p2

    :goto_4
    move-object p2, v3

    :goto_5
    move-object v3, v8

    goto :goto_6

    :cond_9
    move v2, v3

    goto :goto_5

    .line 573
    :goto_6
    check-cast p2, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->getNew()Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    move-result-object p2

    if-eqz p2, :cond_a

    iput-object v3, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->L$1:Ljava/lang/Object;

    iput v2, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->I$0:I

    iput p1, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->I$1:I

    iput v4, v0, Landroidx/camera/camera2/pipe/graph/GraphLoop$processShutdown$1;->label:I

    invoke-virtual {p2, v0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->shutdown$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    :goto_7
    return-object v1

    :cond_a
    :goto_8
    move-object v8, v3

    move v3, v2

    :cond_b
    add-int/2addr v3, v7

    goto :goto_3

    .line 576
    :cond_c
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 580
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->graphLoopScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, v6, v7, v6}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 581
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final processStop(Ljava/util/List;I)V
    .locals 3

    .line 511
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->stopRepeating$camera_camera2_pipe()V

    :cond_0
    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    .line 516
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    .line 697
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 519
    sget-object v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 520
    instance-of v1, v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 698
    :cond_2
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final processTrigger(Ljava/util/List;ILandroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;)V
    .locals 3

    .line 369
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 371
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 377
    :cond_0
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->getCaptureProcessingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 381
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 382
    invoke-virtual {p3}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;->getTriggerParameters()Ljava/util/Map;

    move-result-object p3

    .line 379
    invoke-direct {p0, v2, v0, p3}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->buildAndSubmit(ZLjava/util/List;Ljava/util/Map;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 385
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    if-lez p2, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 393
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 394
    instance-of p3, p3, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    if-eqz p3, :cond_2

    .line 395
    invoke-direct {p0, p1, p2, v2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processRepeat(Ljava/util/List;IZ)V

    return-void

    .line 394
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method private final reissueRepeatingRequest()Z
    .locals 7

    .line 585
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    if-eqz v0, :cond_1

    .line 586
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    if-eqz v1, :cond_0

    .line 589
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 590
    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->defaultParameters:Ljava/util/Map;

    .line 591
    iget-object v4, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentGraphParameters:Ljava/util/Map;

    .line 592
    iget-object v5, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequiredParameters:Ljava/util/Map;

    .line 593
    iget-object v6, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRequestListeners:Ljava/util/List;

    const/4 v1, 0x1

    .line 587
    invoke-virtual/range {v0 .. v6}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->submit$camera_camera2_pipe(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z

    move-result v0

    .line 594
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 596
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 585
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final selectGraphCommand(Ljava/util/List;)I
    .locals 10

    .line 254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 265
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v3, -0x1

    add-int/2addr v1, v3

    move v4, v3

    if-ltz v1, :cond_5

    :goto_0
    add-int/lit8 v5, v1, -0x1

    .line 266
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 267
    sget-object v7, Landroidx/camera/camera2/pipe/graph/GraphCommand$Abort;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Abort;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 268
    sget-object v7, Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 269
    sget-object v7, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 270
    sget-object v7, Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 273
    :cond_1
    instance-of v6, v6, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    if-eqz v6, :cond_2

    if-gez v4, :cond_2

    move v4, v1

    :cond_2
    if-gez v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v5

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    if-ltz v4, :cond_6

    return v4

    .line 294
    :cond_6
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    move v4, v2

    move v5, v3

    move v6, v5

    :goto_3
    if-ge v4, v1, :cond_a

    .line 295
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 296
    instance-of v8, v7, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    if-eqz v8, :cond_7

    move v5, v4

    goto :goto_4

    .line 297
    :cond_7
    instance-of v8, v7, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;

    if-eqz v8, :cond_8

    move v6, v4

    goto :goto_4

    .line 298
    :cond_8
    instance-of v7, v7, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    if-nez v7, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    :goto_5
    if-ltz v5, :cond_b

    return v5

    :cond_b
    if-ltz v6, :cond_c

    return v6

    .line 311
    :cond_c
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->currentRepeatingRequest:Landroidx/camera/camera2/pipe/Request;

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->getCaptureProcessingEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 313
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    move v4, v2

    :goto_6
    if-ge v4, v1, :cond_f

    .line 314
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 315
    instance-of v6, v5, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    if-nez v6, :cond_e

    .line 316
    instance-of v5, v5, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    return v4

    .line 324
    :cond_f
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v3

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_10

    .line 325
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/pipe/graph/GraphCommand;

    .line 326
    instance-of v4, v4, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    if-eqz v4, :cond_10

    add-int/lit8 v1, v3, 0x1

    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_8

    :cond_10
    if-ltz v1, :cond_11

    return v1

    :cond_11
    return v2
.end method


# virtual methods
.method public close()V
    .locals 9

    .line 189
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 189
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 191
    :try_start_1
    iput-boolean v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->closed:Z

    .line 193
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_requestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->shutdownScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;

    invoke-direct {v6, v0, v2}, Landroidx/camera/camera2/pipe/graph/GraphLoop$close$1$1$1;-><init>(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 194
    :cond_1
    :goto_0
    iput-object v2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_requestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    .line 201
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    sget-object v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Shutdown;

    invoke-virtual {v0, v2}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->tryEmit(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    monitor-exit v1

    .line 206
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 207
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;

    invoke-interface {v2}, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;->onGraphShutdown()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 189
    :goto_2
    monitor-exit v1

    throw v0
.end method

.method public final getCaptureProcessingEnabled()Z
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_captureProcessingEnabled:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    return v0
.end method

.method public final getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;
    .locals 2

    .line 103
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_repeatingRequest:Landroidx/camera/camera2/pipe/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final invalidate()V
    .locals 2

    .line 185
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    sget-object v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Invalidate;

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCaptureProcessingEnabled(Z)V
    .locals 1

    .line 157
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_captureProcessingEnabled:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0, p1}, Lkotlinx/atomicfu/AtomicBoolean;->setValue(Z)V

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setGraph3AParameters(Ljava/util/Map;)V
    .locals 4

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_graph3AParameters:Ljava/util/Map;

    .line 142
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    new-instance v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_graphParameters:Ljava/util/Map;

    invoke-direct {v2, v3, p1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    .line 143
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setGraphParameters(Ljava/util/Map;)V
    .locals 4

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_graphParameters:Ljava/util/Map;

    .line 134
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    new-instance v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_graph3AParameters:Ljava/util/Map;

    invoke-direct {v2, p1, v3}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Parameters;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    .line 135
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V
    .locals 3

    .line 105
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_repeatingRequest:Landroidx/camera/camera2/pipe/Request;

    .line 107
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_repeatingRequest:Landroidx/camera/camera2/pipe/Request;

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 116
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    new-instance v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;

    invoke-direct {v2, p1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Repeat;-><init>(Landroidx/camera/camera2/pipe/Request;)V

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 119
    :cond_1
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    sget-object v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;->INSTANCE:Landroidx/camera/camera2/pipe/graph/GraphCommand$Stop;

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    .line 121
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit v0

    if-nez p1, :cond_2

    .line 123
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->listeners:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 124
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;->onStopRepeating()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 105
    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final setRequestListeners(Ljava/util/List;)V
    .locals 3

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_requestListeners:Ljava/util/List;

    .line 150
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    new-instance v2, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;

    invoke-direct {v2, p1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Listeners;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    .line 151
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setRequestProcessor(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    .locals 8

    .line 76
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_requestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    .line 78
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_requestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    .line 80
    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->closed:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->_requestProcessor:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    if-eqz p1, :cond_0

    .line 83
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->shutdownScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Landroidx/camera/camera2/pipe/graph/GraphLoop$requestProcessor$2$1;

    invoke-direct {v5, p1, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop$requestProcessor$2$1;-><init>(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 76
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    if-ne v0, p1, :cond_2

    goto :goto_1

    .line 92
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    new-instance v3, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    invoke-direct {v3, v0, p1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;-><init>(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    invoke-virtual {v2, v3}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    .line 93
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    monitor-exit v1

    if-nez p1, :cond_3

    .line 96
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->listeners:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_3

    .line 97
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;

    invoke-interface {v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;->onGraphStopped()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void

    .line 76
    :goto_3
    monitor-exit v1

    throw p1
.end method

.method public final submit(Ljava/util/List;)Z
    .locals 2

    const-string v0, "requests"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    new-instance v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;

    invoke-direct {v1, p1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Capture;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->abortRequests(Ljava/util/List;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GraphLoop("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->cameraGraphId:Landroidx/camera/camera2/pipe/CameraGraphId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trigger(Ljava/util/Map;)Z
    .locals 2

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphLoop;->processingQueue:Landroidx/camera/camera2/pipe/core/ProcessingQueue;

    new-instance v1, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;

    invoke-direct {v1, p1}, Landroidx/camera/camera2/pipe/graph/GraphCommand$Trigger;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->tryEmit(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot submit parameters without an active repeating request!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
