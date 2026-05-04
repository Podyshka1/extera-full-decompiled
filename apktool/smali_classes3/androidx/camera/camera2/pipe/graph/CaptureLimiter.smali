.class public final Landroidx/camera/camera2/pipe/graph/CaptureLimiter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;
.implements Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;


# instance fields
.field private _graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

.field private final frameCount:Lkotlinx/atomicfu/AtomicLong;

.field private final requestsUntilActive:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->requestsUntilActive:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 42
    invoke-static {v0, v1}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->frameCount:Lkotlinx/atomicfu/AtomicLong;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getRequestsUntilActive$p(Landroidx/camera/camera2/pipe/graph/CaptureLimiter;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->requestsUntilActive:J

    return-wide v0
.end method

.method public static final synthetic access$get_graphLoop$p(Landroidx/camera/camera2/pipe/graph/CaptureLimiter;)Landroidx/camera/camera2/pipe/graph/GraphLoop;
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->_graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    return-object p0
.end method


# virtual methods
.method public final getGraphLoop()Landroidx/camera/camera2/pipe/graph/GraphLoop;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->_graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

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

.method public onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 2

    const-string p2, "requestMetadata"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->frameCount:Lkotlinx/atomicfu/AtomicLong;

    .line 500
    :cond_0
    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide p2

    const-wide/16 v0, -0x1

    cmp-long p4, p2, v0

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    .line 502
    :goto_0
    invoke-virtual {p1, p2, p3, v0, v1}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 62
    iget-wide p1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->requestsUntilActive:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_3

    .line 63
    sget-object p1, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Capture processing is now enabled for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->access$get_graphLoop$p(Landroidx/camera/camera2/pipe/graph/CaptureLimiter;)Landroidx/camera/camera2/pipe/graph/GraphLoop;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " after "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " frames."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string p2, "CXCP"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_2
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->getGraphLoop()Landroidx/camera/camera2/pipe/graph/GraphLoop;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setCaptureProcessingEnabled(Z)V

    :cond_3
    return-void
.end method

.method public synthetic onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V

    return-void
.end method

.method public onGraphShutdown()V
    .locals 3

    .line 83
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->frameCount:Lkotlinx/atomicfu/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicLong;->setValue(J)V

    .line 84
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->getGraphLoop()Landroidx/camera/camera2/pipe/graph/GraphLoop;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setCaptureProcessingEnabled(Z)V

    return-void
.end method

.method public onGraphStopped()V
    .locals 6

    .line 74
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->frameCount:Lkotlinx/atomicfu/AtomicLong;

    .line 478
    :cond_0
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    .line 480
    :goto_0
    invoke-virtual {v0, v1, v2, v3, v4}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->getGraphLoop()Landroidx/camera/camera2/pipe/graph/GraphLoop;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setCaptureProcessingEnabled(Z)V

    .line 76
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture processing has been disabled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->getGraphLoop()Landroidx/camera/camera2/pipe/graph/GraphLoop;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " until "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->access$getRequestsUntilActive$p(Landroidx/camera/camera2/pipe/graph/CaptureLimiter;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " frames have been completed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v1, "CXCP"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
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

.method public onStopRepeating()V
    .locals 0

    return-void
.end method

.method public synthetic onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/Request$Listener$-CC;->$default$onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/Request$Listener;Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V

    return-void
.end method

.method public final setGraphLoop(Landroidx/camera/camera2/pipe/graph/GraphLoop;)V
    .locals 3

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->_graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    if-nez v0, :cond_1

    .line 48
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->_graphLoop:Landroidx/camera/camera2/pipe/graph/GraphLoop;

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroidx/camera/camera2/pipe/graph/GraphLoop;->setCaptureProcessingEnabled(Z)V

    .line 50
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 71
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getWARN_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture processing has been disabled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " until "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/CaptureLimiter;->access$getRequestsUntilActive$p(Landroidx/camera/camera2/pipe/graph/CaptureLimiter;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " frames have been completed."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GraphLoop has already been set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
