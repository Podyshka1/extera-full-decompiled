.class public Lkotlinx/coroutines/channels/ConflatedBufferedChannel;
.super Lkotlinx/coroutines/channels/BufferedChannel;
.source "SourceFile"


# instance fields
.field private final capacity:I

.field private final onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/channels/BufferedChannel;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 15
    iput p1, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->capacity:I

    .line 16
    iput-object p2, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 20
    sget-object p3, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    if-eq p2, p3, :cond_1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Buffered channel capacity must be at least 1, but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This implementation does not support suspension for senders, use "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic send$suspendImpl(Lkotlinx/coroutines/channels/ConflatedBufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    const/4 p2, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySendImpl-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    .line 1047
    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelResult$Closed;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 34
    iget-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 36
    throw p1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BufferedChannel;->getSendException()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 40
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final trySendDropLatest-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 64
    iget-object p2, p0, Lkotlinx/coroutines/channels/BufferedChannel;->onUndeliveredElement:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Lkotlinx/coroutines/internal/OnUndeliveredElementKt;->callUndeliveredElementCatchingException$default(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlinx/coroutines/internal/UndeliveredElementException;ILjava/lang/Object;)Lkotlinx/coroutines/internal/UndeliveredElementException;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    throw p1

    .line 68
    :cond_2
    :goto_0
    sget-object p1, Lkotlinx/coroutines/channels/ChannelResult;->Companion:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelResult$Companion;->success-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private final trySendImpl-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .line 52
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_LATEST:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySendDropLatest-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BufferedChannel;->trySendDropOldest-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected isConflatedDropOldest()Z
    .locals 2

    .line 29
    iget-object v0, p0, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->onBufferOverflow:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->send$suspendImpl(Lkotlinx/coroutines/channels/ConflatedBufferedChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/ConflatedBufferedChannel;->trySendImpl-Mj0NB7M(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
