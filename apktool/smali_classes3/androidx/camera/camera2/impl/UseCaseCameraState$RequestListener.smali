.class public final Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/UseCaseCameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/UseCaseCameraState;)V
    .locals 0

    .line 336
    iput-object p1, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final complete(Lkotlin/collections/ArrayDeque;I)V
    .locals 2

    .line 380
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->getRequestNo()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 381
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->getSignal()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    .line 382
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 383
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;

    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->access$getPendingSignalCount$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final completeExceptionally(Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 5

    .line 365
    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getUSE_CASE_CAMERA_STATE_CUSTOM_TAG()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/Metadata;->get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 366
    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->access$getLock$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 367
    :try_start_0
    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->access$getUpdateSignals$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Lkotlin/collections/ArrayDeque;

    move-result-object v0

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed in framework level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 371
    invoke-interface {p2}, Landroidx/camera/camera2/pipe/RequestFailure;->getReason()I

    move-result p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " with CaptureFailure.reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 372
    :cond_0
    :goto_0
    const-string p2, ""

    .line 370
    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 369
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0, v0, p1, v2}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;->completeExceptionally(Lkotlin/collections/ArrayDeque;ILjava/lang/Throwable;)V

    .line 375
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1

    throw p1

    :cond_2
    return-void
.end method

.method private final completeExceptionally(Lkotlin/collections/ArrayDeque;ILjava/lang/Throwable;)V
    .locals 1

    .line 391
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->getRequestNo()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 392
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    invoke-virtual {v0}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->getSignal()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    invoke-interface {v0, p3}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 393
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 394
    iget-object v0, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;

    invoke-static {v0}, Landroidx/camera/camera2/impl/UseCaseCameraState;->access$getPendingSignalCount$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onAborted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/Request;)V

    return-void
.end method

.method public synthetic onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JI)V

    return-void
.end method

.method public synthetic onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JII)V

    return-void
.end method

.method public synthetic onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onCaptureProgress(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;I)V

    return-void
.end method

.method public synthetic onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method

.method public onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0

    const-string p2, "requestMetadata"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "requestFailure"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;

    invoke-static {p2}, Landroidx/camera/camera2/impl/UseCaseCameraState;->access$getPendingSignalCount$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p2

    invoke-virtual {p2}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 358
    :cond_0
    invoke-direct {p0, p1, p4}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;->completeExceptionally(Landroidx/camera/camera2/pipe/RequestMetadata;Landroidx/camera/camera2/pipe/RequestFailure;)V

    return-void
.end method

.method public synthetic onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V

    return-void
.end method

.method public synthetic onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public synthetic onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceAborted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;J)V

    return-void
.end method

.method public synthetic onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceCreated(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;)V

    return-void
.end method

.method public synthetic onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V

    return-void
.end method

.method public onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    const-string p2, "requestMetadata"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "totalCaptureResult"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;

    invoke-static {p2}, Landroidx/camera/camera2/impl/UseCaseCameraState;->access$getPendingSignalCount$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Lkotlinx/atomicfu/AtomicInt;

    move-result-object p2

    invoke-virtual {p2}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {}, Landroidx/camera/camera2/impl/TagsKt;->getUSE_CASE_CAMERA_STATE_CUSTOM_TAG()Landroidx/camera/camera2/pipe/Metadata$Key;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/Metadata;->get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;->this$0:Landroidx/camera/camera2/impl/UseCaseCameraState;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 346
    invoke-static {p2}, Landroidx/camera/camera2/impl/UseCaseCameraState;->access$getLock$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    :try_start_0
    invoke-static {p2}, Landroidx/camera/camera2/impl/UseCaseCameraState;->access$getUpdateSignals$p(Landroidx/camera/camera2/impl/UseCaseCameraState;)Lkotlin/collections/ArrayDeque;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestListener;->complete(Lkotlin/collections/ArrayDeque;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
