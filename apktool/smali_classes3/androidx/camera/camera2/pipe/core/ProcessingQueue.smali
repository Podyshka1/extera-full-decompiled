.class public final Landroidx/camera/camera2/pipe/core/ProcessingQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;


# instance fields
.field private final capacity:I

.field private final channel:Lkotlinx/coroutines/channels/Channel;

.field private final onUnprocessedElements:Lkotlin/jvm/functions/Function1;

.field private final process:Lkotlin/jvm/functions/Function2;

.field private final queue:Lkotlin/collections/ArrayDeque;

.field private final started:Lkotlinx/atomicfu/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$S7l7sqMHhvUaxQ5VH8QW7tCGrXU(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel$lambda$0(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WIhvWBrNSeX5RqXKtse-OPkvHt4(Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->_init_$lambda$0(Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->Companion:Landroidx/camera/camera2/pipe/core/ProcessingQueue$Companion;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "onUnprocessedElements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "process"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->capacity:I

    .line 65
    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->onUnprocessedElements:Lkotlin/jvm/functions/Function1;

    .line 66
    iput-object p3, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->process:Lkotlin/jvm/functions/Function2;

    const/4 p2, 0x0

    .line 68
    invoke-static {p2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->started:Lkotlinx/atomicfu/AtomicBoolean;

    .line 69
    new-instance p2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Landroidx/camera/camera2/pipe/core/ProcessingQueue$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/pipe/core/ProcessingQueue;)V

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3, v0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    .line 70
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const p1, 0x7fffffff

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 65
    new-instance p2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroidx/camera/camera2/pipe/core/ProcessingQueue$$ExternalSyntheticLambda0;-><init>()V

    .line 63
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;-><init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$getStarted$p(Landroidx/camera/camera2/pipe/core/ProcessingQueue;)Lkotlinx/atomicfu/AtomicBoolean;
    .locals 0

    .line 63
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->started:Lkotlinx/atomicfu/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$processingLoop(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->processingLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$releaseUnprocessedElements(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Ljava/lang/Throwable;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->releaseUnprocessedElements(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final channel$lambda$0(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final processingLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;-><init>(Landroidx/camera/camera2/pipe/core/ProcessingQueue;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 91
    iget v2, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget v2, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->I$0:I

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    :cond_4
    :goto_1
    :try_start_2
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    iput v4, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_4

    .line 103
    :cond_5
    :goto_2
    iget-object v2, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2, p1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_6
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 108
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object p1

    .line 109
    :goto_3
    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 110
    iget-object v2, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->getOrThrow-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 116
    :cond_7
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v2

    .line 117
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->process:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    iput v2, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->I$0:I

    iput v3, v0, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    invoke-interface {p1, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_4
    return-object v1

    .line 118
    :cond_8
    :goto_5
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, p1, :cond_6

    goto :goto_1

    .line 124
    :goto_6
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->releaseUnprocessedElements(Ljava/lang/Throwable;)V

    .line 125
    throw p1
.end method

.method private final releaseUnprocessedElements(Ljava/lang/Throwable;)V
    .locals 1

    .line 136
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object p1

    .line 142
    :goto_0
    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->getOrThrow-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 149
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->onUnprocessedElements:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final tryEmit(Ljava/lang/Object;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/ProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
