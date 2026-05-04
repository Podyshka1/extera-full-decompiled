.class public final Landroidx/camera/camera2/pipe/compat/SessionSequencer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;
    }
.end annotation


# instance fields
.field private final concurrentSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

.field private final state:Lkotlinx/atomicfu/AtomicRef;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;)V
    .locals 1

    const-string v0, "concurrentSequencer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->concurrentSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    .line 94
    sget-object p1, Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;->PENDING:Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;

    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->state:Lkotlinx/atomicfu/AtomicRef;

    return-void
.end method


# virtual methods
.method public final awaitSessionLock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/SessionSequencer$awaitSessionLock$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/camera2/pipe/compat/SessionSequencer$awaitSessionLock$1;

    iget v1, v0, Landroidx/camera/camera2/pipe/compat/SessionSequencer$awaitSessionLock$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/camera/camera2/pipe/compat/SessionSequencer$awaitSessionLock$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/camera/camera2/pipe/compat/SessionSequencer$awaitSessionLock$1;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/compat/SessionSequencer$awaitSessionLock$1;-><init>(Landroidx/camera/camera2/pipe/compat/SessionSequencer;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/camera/camera2/pipe/compat/SessionSequencer$awaitSessionLock$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget v2, v0, Landroidx/camera/camera2/pipe/compat/SessionSequencer$awaitSessionLock$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->concurrentSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;->getSharedMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput v4, v0, Landroidx/camera/camera2/pipe/compat/SessionSequencer$awaitSessionLock$1;->label:I

    invoke-static {p1, v3, v0, v4, v3}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->lock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 100
    :cond_3
    :goto_1
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->state:Lkotlinx/atomicfu/AtomicRef;

    sget-object v0, Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;->PENDING:Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;

    sget-object v1, Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;->CREATING:Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;

    invoke-virtual {p1, v0, v1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 101
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->concurrentSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;->getSharedMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    invoke-static {p1, v3, v4, v3}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 103
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final release()V
    .locals 3

    .line 110
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->state:Lkotlinx/atomicfu/AtomicRef;

    sget-object v1, Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;->CREATED:Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;->CREATING:Landroidx/camera/camera2/pipe/compat/SessionSequencer$State;

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/SessionSequencer;->concurrentSequencer:Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/compat/ConcurrentSessionSequencer;->getSharedMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/sync/Mutex$DefaultImpls;->unlock$default(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
