.class public final Lkotlinx/coroutines/channels/ChannelSegment;
.super Lkotlinx/coroutines/internal/Segment;
.source "SourceFile"


# instance fields
.field private final _channel:Lkotlinx/coroutines/channels/BufferedChannel;

.field private final synthetic data:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V
    .locals 0

    .line 2802
    invoke-direct {p0, p1, p2, p3, p5}, Lkotlinx/coroutines/internal/Segment;-><init>(JLkotlinx/coroutines/internal/Segment;I)V

    .line 2803
    iput-object p4, p0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2806
    sget p2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    mul-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method private final synthetic getData()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private final setElementLazy(ILjava/lang/Object;)V
    .locals 1

    .line 2827
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ChannelSegment;->getData()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 2840
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ChannelSegment;->getData()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1, p2, p3}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final cleanElement$kotlinx_coroutines_core(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2823
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    return-void
.end method

.method public final getAndSetState$kotlinx_coroutines_core(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2842
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ChannelSegment;->getData()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getChannel()Lkotlinx/coroutines/channels/BufferedChannel;
    .locals 1

    .line 2804
    iget-object v0, p0, Lkotlinx/coroutines/channels/ChannelSegment;->_channel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;
    .locals 1

    .line 2818
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ChannelSegment;->getData()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNumberOfSlots()I
    .locals 1

    .line 2807
    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    return v0
.end method

.method public final getState$kotlinx_coroutines_core(I)Ljava/lang/Object;
    .locals 1

    .line 2834
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ChannelSegment;->getData()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onCancellation(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 3

    .line 2852
    sget p2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sub-int/2addr p1, p2

    .line 2856
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object p2

    .line 2861
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelSegment;->getState$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v1

    .line 2864
    instance-of v2, v1, Lkotlinx/coroutines/Waiter;

    if-nez v2, :cond_9

    instance-of v2, v1, Lkotlinx/coroutines/channels/WaiterEB;

    if-eqz v2, :cond_3

    goto :goto_3

    .line 2885
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_8

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 2901
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v1, v2, :cond_5

    goto :goto_1

    .line 2904
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    if-eq v1, p1, :cond_b

    sget-object p1, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v1, p1, :cond_6

    goto :goto_5

    .line 2907
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    if-ne v1, p1, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2908
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unexpected state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2888
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    if-eqz v0, :cond_b

    .line 2891
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ChannelSegment;->getChannel()Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iget-object p1, p1, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_b

    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    return-void

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 2867
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    goto :goto_4

    :cond_a
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    .line 2868
    :goto_4
    invoke-virtual {p0, p1, v1, v2}, Lkotlinx/coroutines/channels/ChannelSegment;->casState$kotlinx_coroutines_core(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2875
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    xor-int/lit8 v1, v0, 0x1

    .line 2876
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/channels/ChannelSegment;->onCancelledRequest(IZ)V

    if-eqz v0, :cond_b

    .line 2879
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ChannelSegment;->getChannel()Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iget-object p1, p1, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_b

    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElement(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public final onCancelledRequest(IZ)V
    .locals 4

    if-eqz p2, :cond_0

    .line 2918
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ChannelSegment;->getChannel()Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p2

    iget-wide v0, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->waitExpandBufferCompletion$kotlinx_coroutines_core(J)V

    .line 2919
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->onSlotCleaned()V

    return-void
.end method

.method public final retrieveElement$kotlinx_coroutines_core(I)Ljava/lang/Object;
    .locals 1

    .line 2820
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelSegment;->getElement$kotlinx_coroutines_core(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ChannelSegment;->cleanElement$kotlinx_coroutines_core(I)V

    return-object v0
.end method

.method public final setState$kotlinx_coroutines_core(ILjava/lang/Object;)V
    .locals 1

    .line 2837
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ChannelSegment;->getData()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final storeElement$kotlinx_coroutines_core(ILjava/lang/Object;)V
    .locals 0

    .line 2814
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment;->setElementLazy(ILjava/lang/Object;)V

    return-void
.end method
