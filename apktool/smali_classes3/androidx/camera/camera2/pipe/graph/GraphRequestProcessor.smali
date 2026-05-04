.class public final Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;


# instance fields
.field private final activeBurstListener:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;

.field private final activeCaptureSequences:Ljava/util/List;

.field private final captureSequenceProcessor:Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;

.field private final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field private final debugId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->Companion:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;

    .line 55
    invoke-static {}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessorKt;->getGraphRequestProcessorIds()Lkotlinx/atomicfu/AtomicInt;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicInt;->incrementAndGet()I

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->debugId:I

    const/4 p1, 0x0

    .line 56
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    .line 61
    new-instance p1, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;

    invoke-direct {p1, p0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;-><init>(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeBurstListener:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;-><init>(Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;)V

    return-void
.end method

.method public static final synthetic access$getActiveBurstListener$p(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeBurstListener:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;

    return-object p0
.end method

.method public static final synthetic access$getActiveCaptureSequences$p(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getCaptureSequenceProcessor$p(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;

    return-object p0
.end method


# virtual methods
.method public final abortCaptures$camera_camera2_pipe()V
    .locals 10

    .line 87
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 89
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v0

    .line 94
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CaptureSequence;

    .line 235
    sget-object v2, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 55
    sget-object v2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v2, "InvokeInternalListeners"

    .line 72
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    .line 59
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 60
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_0

    .line 61
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 235
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v9

    invoke-interface {v8, v9}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 65
    :cond_1
    sget-object v2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    const-string v2, "InvokeRequestListeners"

    .line 72
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_3

    .line 70
    invoke-interface {v1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 71
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move v7, v3

    :goto_4
    if-ge v7, v6, :cond_2

    .line 72
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 235
    invoke-interface {v5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v9

    invoke-interface {v8, v9}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 76
    :cond_3
    sget-object v1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;->abortCaptures()V

    return-void

    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0

    throw v1
.end method

.method public final shutdown$camera_camera2_pipe(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 108
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;

    invoke-interface {v0, p1}, Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;->shutdown(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 112
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final stopRepeating$camera_camera2_pipe()V
    .locals 1

    .line 104
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->captureSequenceProcessor:Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;

    invoke-interface {v0}, Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;->stopRepeating()V

    return-void
.end method

.method public final submit$camera_camera2_pipe(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Z
    .locals 10

    const-string v0, "requests"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredParameters"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 124
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CXCP"

    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to submit "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is closed."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v9

    .line 130
    :cond_1
    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "CXCP#buildCaptureSequence"

    .line 72
    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 131
    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->access$getCaptureSequenceProcessor$p(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;

    move-result-object v1

    .line 137
    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->access$getActiveBurstListener$p(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;

    move-result-object v7

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 131
    invoke-interface/range {v1 .. v8}, Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;->build(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/List;)Landroidx/camera/camera2/pipe/CaptureSequence;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p3, 0x1

    if-nez p1, :cond_9

    .line 144
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 1761
    instance-of p4, p1, Ljava/util/Collection;

    if-eqz p4, :cond_2

    move-object p4, p1

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    .line 1762
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/camera2/pipe/Request;

    .line 144
    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 148
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/camera/camera2/pipe/Request;

    .line 150
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/Request;->getInputRequest()Landroidx/camera/camera2/pipe/InputRequest;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Landroidx/camera/camera2/pipe/InputRequest;->getImage()Landroidx/camera/camera2/pipe/media/ImageWrapper;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-static {p4}, Landroidx/camera/camera2/config/UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V

    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 151
    :cond_5
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 152
    invoke-interface {p5, p2}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    goto :goto_0

    :cond_6
    return p3

    .line 159
    :cond_7
    :goto_1
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "CXCP"

    .line 159
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to submit "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " failed to build CaptureSequence."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v9

    .line 168
    :cond_9
    iget-object p4, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {p4}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result p4

    if-eqz p4, :cond_b

    .line 169
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "CXCP"

    .line 169
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to submit "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is closed."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v9

    .line 174
    :cond_b
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getRepeating()Z

    move-result p2

    if-nez p2, :cond_c

    .line 175
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    monitor-enter p2

    :try_start_1
    iget-object p4, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p2

    throw p1

    .line 180
    :cond_c
    :goto_2
    :try_start_2
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "CXCP"

    .line 180
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " submitting "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 50
    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p2, v0

    move p3, v9

    goto/16 :goto_1a

    :catch_0
    move p3, v9

    goto/16 :goto_20

    .line 239
    :cond_d
    :goto_3
    sget-object p2, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 55
    const-string p2, "InvokeInternalListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move p4, v9

    :goto_4
    if-ge p4, p2, :cond_f

    .line 59
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 60
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v9

    :goto_5
    if-ge v1, v0, :cond_e

    .line 61
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 239
    invoke-interface {v2, p5}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_e
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 65
    :cond_f
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    const-string p2, "InvokeRequestListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move p4, v9

    :goto_6
    if-ge p4, p2, :cond_11

    .line 70
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 71
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v9

    :goto_7
    if-ge v1, v0, :cond_10

    .line 72
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 239
    invoke-interface {v2, p5}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_10
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    .line 76
    :cond_11
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 189
    monitor-enter p1
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    :try_start_3
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    invoke-virtual {p2}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    move-result p2

    if-eqz p2, :cond_18

    .line 192
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_12

    const-string p2, "CXCP"

    .line 192
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to submit "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " is closed."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 71
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object p2, v0

    goto/16 :goto_19

    .line 189
    :cond_12
    :goto_8
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getRepeating()Z

    move-result p2

    if-nez p2, :cond_17

    .line 220
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    monitor-enter p2

    .line 221
    iget-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 220
    monitor-exit p2

    .line 235
    sget-object p2, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 55
    const-string p2, "InvokeInternalListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move p3, v9

    :goto_9
    if-ge p3, p2, :cond_14

    .line 59
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 60
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object p5

    check-cast p5, Ljava/util/Collection;

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p5

    move v0, v9

    :goto_a
    if-ge v0, p5, :cond_13

    .line 61
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 235
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_13
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    .line 65
    :cond_14
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    const-string p2, "InvokeRequestListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move p3, v9

    :goto_b
    if-ge p3, p2, :cond_16

    .line 70
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 71
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p5

    check-cast p5, Ljava/util/Collection;

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p5

    move v0, v9

    :goto_c
    if-ge v0, p5, :cond_15

    .line 72
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 235
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_15
    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    .line 76
    :cond_16
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_17
    return v9

    .line 196
    :cond_18
    :try_start_5
    const-string p2, "CXCP#submit(CaptureSequence)"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 72
    :try_start_6
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->access$getCaptureSequenceProcessor$p(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;->submit(Landroidx/camera/camera2/pipe/CaptureSequence;)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, -0x1

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object p2, v0

    goto/16 :goto_18

    :cond_19
    move p2, p4

    .line 198
    :goto_d
    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/CaptureSequence;->setSequenceNumber(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 79
    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 189
    :try_start_8
    monitor-exit p1

    if-eq p2, p4, :cond_1f

    .line 243
    sget-object p2, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 55
    const-string p2, "InvokeInternalListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move p4, v9

    :goto_e
    if-ge p4, p2, :cond_1b

    .line 59
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 60
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v9

    :goto_f
    if-ge v1, v0, :cond_1a

    .line 61
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 243
    invoke-interface {v2, p5}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    add-int/lit8 p4, p4, 0x1

    goto :goto_e

    .line 65
    :cond_1b
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    const-string p2, "InvokeRequestListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move p4, v9

    :goto_10
    if-ge p4, p2, :cond_1d

    .line 70
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 71
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v9

    :goto_11
    if-ge v1, v0, :cond_1c

    .line 72
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 243
    invoke-interface {v2, p5}, Landroidx/camera/camera2/pipe/Request$Listener;->onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    add-int/lit8 p4, p4, 0x1

    goto :goto_10

    .line 76
    :cond_1d
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 206
    :try_start_9
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 50
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getDEBUG_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_1e

    const-string p2, "CXCP"

    .line 206
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " submitted "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 50
    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_12

    :catchall_4
    move-exception v0

    move-object p2, v0

    goto/16 :goto_1a

    :cond_1e
    :goto_12
    move p2, p3

    goto :goto_13

    .line 209
    :cond_1f
    :try_start_a
    sget-object p2, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p2}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p2

    if-eqz p2, :cond_20

    const-string p2, "CXCP"

    .line 209
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to submit "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " received -1 from submit."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 71
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_20
    move p2, v9

    move p3, p2

    :goto_13
    if-nez p2, :cond_25

    .line 219
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getRepeating()Z

    move-result p2

    if-nez p2, :cond_25

    .line 220
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    monitor-enter p2

    .line 221
    :try_start_b
    iget-object p4, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 220
    monitor-exit p2

    .line 235
    sget-object p2, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 55
    const-string p2, "InvokeInternalListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move p4, v9

    :goto_14
    if-ge p4, p2, :cond_22

    .line 59
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 60
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v9

    :goto_15
    if-ge v1, v0, :cond_21

    .line 61
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 235
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_21
    add-int/lit8 p4, p4, 0x1

    goto :goto_14

    .line 65
    :cond_22
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    const-string p2, "InvokeRequestListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move p4, v9

    :goto_16
    if-ge p4, p2, :cond_24

    .line 70
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 71
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v9

    :goto_17
    if-ge v1, v0, :cond_23

    .line 72
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 235
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_23
    add-int/lit8 p4, p4, 0x1

    goto :goto_16

    .line 76
    :cond_24
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return p3

    :catchall_5
    move-exception v0

    move-object p1, v0

    .line 220
    monitor-exit p2

    throw p1

    :cond_25
    return p3

    .line 79
    :goto_18
    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 189
    :goto_19
    :try_start_d
    monitor-exit p1

    throw p2
    :try_end_d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_1a
    if-nez p3, :cond_2a

    .line 219
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getRepeating()Z

    move-result p3

    if-nez p3, :cond_2a

    .line 220
    iget-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    monitor-enter p3

    .line 221
    :try_start_e
    iget-object p4, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 220
    monitor-exit p3

    .line 235
    sget-object p3, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 55
    sget-object p3, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p3, "InvokeInternalListeners"

    .line 72
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    move p4, v9

    :goto_1b
    if-ge p4, p3, :cond_27

    .line 59
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 60
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v9

    :goto_1c
    if-ge v1, v0, :cond_26

    .line 61
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 235
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_26
    add-int/lit8 p4, p4, 0x1

    goto :goto_1b

    .line 65
    :cond_27
    sget-object p3, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    const-string p3, "InvokeRequestListeners"

    .line 72
    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    move p4, v9

    :goto_1d
    if-ge p4, p3, :cond_29

    .line 70
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 71
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v9

    :goto_1e
    if-ge v1, v0, :cond_28

    .line 72
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 235
    invoke-interface {p5}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_28
    add-int/lit8 p4, p4, 0x1

    goto :goto_1d

    .line 76
    :cond_29
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1f

    :catchall_6
    move-exception v0

    move-object p1, v0

    .line 220
    monitor-exit p3

    throw p1

    .line 236
    :cond_2a
    :goto_1f
    throw p2

    :catch_1
    :goto_20
    if-nez p3, :cond_2f

    .line 219
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getRepeating()Z

    move-result p2

    if-nez p2, :cond_2f

    .line 220
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    monitor-enter p2

    .line 221
    :try_start_f
    iget-object p3, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->activeCaptureSequences:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 220
    monitor-exit p2

    .line 235
    sget-object p2, Landroidx/camera/camera2/pipe/CaptureSequences;->INSTANCE:Landroidx/camera/camera2/pipe/CaptureSequences;

    .line 55
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string p2, "InvokeInternalListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move p3, v9

    :goto_21
    if-ge p3, p2, :cond_2c

    .line 59
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 60
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object p5

    check-cast p5, Ljava/util/Collection;

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p5

    move v0, v9

    :goto_22
    if-ge v0, p5, :cond_2b

    .line 61
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 235
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2b
    add-int/lit8 p3, p3, 0x1

    goto :goto_21

    .line 65
    :cond_2c
    sget-object p2, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 66
    const-string p2, "InvokeRequestListeners"

    .line 72
    invoke-static {p2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    move p3, v9

    :goto_23
    if-ge p3, p2, :cond_2e

    .line 70
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getCaptureMetadataList()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/camera/camera2/pipe/RequestMetadata;

    .line 71
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object p5

    check-cast p5, Ljava/util/Collection;

    invoke-interface {p5}, Ljava/util/Collection;->size()I

    move-result p5

    move v0, v9

    :goto_24
    if-ge v0, p5, :cond_2d

    .line 72
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/Request;->getListeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/Request$Listener;

    .line 235
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequest()Landroidx/camera/camera2/pipe/Request;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/camera/camera2/pipe/Request$Listener;->onAborted(Landroidx/camera/camera2/pipe/Request;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_2d
    add-int/lit8 p3, p3, 0x1

    goto :goto_23

    .line 76
    :cond_2e
    sget-object p1, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_25

    :catchall_7
    move-exception v0

    move-object p1, v0

    .line 220
    monitor-exit p2

    throw p1

    :cond_2f
    :goto_25
    return v9

    :catchall_8
    move-exception v0

    move-object p1, v0

    .line 79
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GraphRequestProcessor-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->debugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
