.class public final Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/graph/Result3AStateListener;


# instance fields
.field private final _result:Lkotlinx/coroutines/CompletableDeferred;

.field private final exitCondition:Lkotlin/jvm/functions/Function1;

.field private final frameLimit:Ljava/lang/Integer;

.field private volatile frameNumberOfFirstUpdate:Landroidx/camera/camera2/pipe/FrameNumber;

.field private initialRequestNumber:Landroidx/camera/camera2/pipe/RequestNumber;

.field private final timeLimitNs:Ljava/lang/Long;

.field private volatile timestampOfFirstUpdateNs:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "exitConditionForKeys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerKt;->toConditionChecker(Ljava/util/Map;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 53
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "exitCondition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->exitCondition:Lkotlin/jvm/functions/Function1;

    .line 49
    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameLimit:Ljava/lang/Integer;

    .line 50
    iput-object p3, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timeLimitNs:Ljava/lang/Long;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 63
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 47
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final getResult()Lkotlinx/coroutines/Deferred;
    .locals 1

    .line 65
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public onGraphShutdown()V
    .locals 5

    .line 143
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferred;

    new-instance v1, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v2, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getSUBMIT_CANCELLED-JvTi9ms()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onGraphStopped()V
    .locals 5

    .line 139
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferred;

    new-instance v1, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v2, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getSUBMIT_CANCELLED-JvTi9ms()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRequestSequenceCreated-DThHKJ0(J)V
    .locals 1

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->initialRequestNumber:Landroidx/camera/camera2/pipe/RequestNumber;

    if-nez v0, :cond_0

    .line 76
    invoke-static {p1, p2}, Landroidx/camera/camera2/pipe/RequestNumber;->box-impl(J)Landroidx/camera/camera2/pipe/RequestNumber;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->initialRequestNumber:Landroidx/camera/camera2/pipe/RequestNumber;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public onStopRepeating()V
    .locals 5

    .line 135
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferred;

    new-instance v1, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v2, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getSUBMIT_CANCELLED-JvTi9ms()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v3}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public update-voP-kFw(JLandroidx/camera/camera2/pipe/FrameMetadata;)Z
    .locals 8

    const-string v0, "frameMetadata"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 88
    :cond_0
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->initialRequestNumber:Landroidx/camera/camera2/pipe/RequestNumber;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 90
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/RequestNumber;->unbox-impl()J

    move-result-wide v3

    cmp-long p1, p1, v3

    if-gez p1, :cond_1

    goto/16 :goto_0

    .line 93
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    .line 95
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    const-string p2, "SENSOR_TIMESTAMP"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Landroidx/camera/camera2/pipe/FrameMetadata;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 96
    invoke-interface {p3}, Landroidx/camera/camera2/pipe/FrameMetadata;->getFrameNumber-Ugla2oM()J

    move-result-wide v3

    if-eqz p1, :cond_2

    .line 98
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timestampOfFirstUpdateNs:Ljava/lang/Long;

    if-nez p2, :cond_2

    .line 99
    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timestampOfFirstUpdateNs:Ljava/lang/Long;

    .line 102
    :cond_2
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timestampOfFirstUpdateNs:Ljava/lang/Long;

    .line 104
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timeLimitNs:Ljava/lang/Long;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 107
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v6, p1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timeLimitNs:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v6, p1

    if-lez p1, :cond_3

    .line 109
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferred;

    new-instance p2, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v0, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getTIME_LIMIT_REACHED-JvTi9ms()I

    move-result v0

    invoke-direct {p2, v0, p3, v5}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return v1

    .line 113
    :cond_3
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameNumberOfFirstUpdate:Landroidx/camera/camera2/pipe/FrameNumber;

    if-nez p1, :cond_4

    .line 114
    invoke-static {v3, v4}, Landroidx/camera/camera2/pipe/FrameNumber;->box-impl(J)Landroidx/camera/camera2/pipe/FrameNumber;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameNumberOfFirstUpdate:Landroidx/camera/camera2/pipe/FrameNumber;

    .line 117
    :cond_4
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameNumberOfFirstUpdate:Landroidx/camera/camera2/pipe/FrameNumber;

    if-eqz p1, :cond_5

    .line 120
    iget-object p2, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameLimit:Ljava/lang/Integer;

    if-eqz p2, :cond_5

    .line 121
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/FrameNumber;->unbox-impl()J

    move-result-wide p1

    sub-long/2addr v3, p1

    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameLimit:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    cmp-long p1, v3, p1

    if-lez p1, :cond_5

    .line 123
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferred;

    new-instance p2, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v0, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getFRAME_LIMIT_REACHED-JvTi9ms()I

    move-result v0

    invoke-direct {p2, v0, p3, v5}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return v1

    .line 127
    :cond_5
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->exitCondition:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    .line 130
    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferred;

    new-instance p2, Landroidx/camera/camera2/pipe/Result3A;

    sget-object v0, Landroidx/camera/camera2/pipe/Result3A$Status;->Companion:Landroidx/camera/camera2/pipe/Result3A$Status$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/Result3A$Status$Companion;->getOK-JvTi9ms()I

    move-result v0

    invoke-direct {p2, v0, p3, v5}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/FrameMetadata;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 88
    :cond_7
    :goto_0
    monitor-exit p0

    return v2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_8
    :goto_2
    return v1
.end method
