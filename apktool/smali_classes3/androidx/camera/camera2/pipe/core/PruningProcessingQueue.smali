.class public final Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;


# instance fields
.field private final capacity:I

.field private final channel:Lkotlinx/coroutines/channels/Channel;

.field private final onUnprocessedElements:Lkotlin/jvm/functions/Function1;

.field private final process:Lkotlin/jvm/functions/Function2;

.field private final prune:Lkotlin/jvm/functions/Function1;

.field private final queue:Lkotlin/collections/ArrayDeque;

.field private final started:Lkotlinx/atomicfu/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$RG3ppoJODn6AVP6U8lNR6Aptzas(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel$lambda$0(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$afzN2lQHS0xYpouZuz7-EA9T4vo(Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->_init_$lambda$0(Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fSuzXocaviOMyioLIrFHk-7Y22E(Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->_init_$lambda$1(Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->Companion:Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$Companion;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "prune"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUnprocessedElements"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "process"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->capacity:I

    .line 77
    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->prune:Lkotlin/jvm/functions/Function1;

    .line 78
    iput-object p3, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->onUnprocessedElements:Lkotlin/jvm/functions/Function1;

    .line 79
    iput-object p4, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->process:Lkotlin/jvm/functions/Function2;

    const/4 p2, 0x0

    .line 81
    invoke-static {p2}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->started:Lkotlinx/atomicfu/AtomicBoolean;

    .line 82
    new-instance p2, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)V

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-static {p1, p4, p2, p3, p4}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    .line 83
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const p1, 0x7fffffff

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 77
    new-instance p2, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$$ExternalSyntheticLambda0;-><init>()V

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    .line 78
    new-instance p3, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$$ExternalSyntheticLambda1;-><init>()V

    .line 75
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;-><init>(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final _init_$lambda$0(Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _init_$lambda$1(Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic access$closeAndReleaseUnprocessedElements(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Throwable;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->closeAndReleaseUnprocessedElements(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$getChannel$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    return-object p0
.end method

.method public static final synthetic access$getProcess$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->process:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getPrune$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->prune:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getQueue$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lkotlin/collections/ArrayDeque;
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    return-object p0
.end method

.method public static final synthetic access$getStarted$p(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;)Lkotlinx/atomicfu/AtomicBoolean;
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->started:Lkotlinx/atomicfu/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$processingLoop(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->processingLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final channel$lambda$0(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    .line 82
    iget-object p0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final closeAndReleaseUnprocessedElements(Ljava/lang/Throwable;)V
    .locals 1

    .line 174
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object p1

    .line 179
    :goto_0
    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->getOrThrow-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 186
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->onUnprocessedElements:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object p1, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->queue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->clear()V

    :cond_1
    return-void
.end method

.method private final processingLoop(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 104
    new-instance v0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue$processingLoop$2;-><init>(Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p1}, Lkotlinx/coroutines/SupervisorKt;->supervisorScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final tryEmit(Ljava/lang/Object;)Z
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/camera/camera2/pipe/core/PruningProcessingQueue;->channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
