.class public Lkotlinx/coroutines/selects/SelectImplementation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CancelHandler;
.implements Lkotlinx/coroutines/selects/SelectBuilder;
.implements Lkotlinx/coroutines/selects/SelectInstance;
.implements Lkotlinx/coroutines/Waiter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    }
.end annotation


# static fields
.field private static final synthetic state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private clauses:Ljava/util/List;

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private disposableHandleOrSegment:Ljava/lang/Object;

.field private indexInSegment:I

.field private internalResult:Ljava/lang/Object;

.field private volatile synthetic state$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "state$volatile"

    const-class v2, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    .line 360
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile:Ljava/lang/Object;

    .line 392
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    const/4 p1, -0x1

    .line 412
    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    .line 433
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$doSelectSuspend(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInternalResult$p(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;
    .locals 0

    .line 251
    iget-object p0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 251
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$reregisterClause(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->reregisterClause(Ljava/lang/Object;)V

    return-void
.end method

.method private final checkClauseObject(Ljava/lang/Object;)V
    .locals 2

    .line 527
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 529
    check-cast v0, Ljava/lang/Iterable;

    .line 2632
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2633
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 529
    iget-object v1, v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    if-eq v1, p1, :cond_1

    goto :goto_0

    .line 530
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot use select clauses on the same object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 529
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private final cleanup(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;)V
    .locals 2

    .line 746
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 926
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eq v1, p1, :cond_1

    .line 750
    invoke-virtual {v1}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->dispose()V

    goto :goto_0

    .line 927
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    .line 753
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_COMPLETED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 754
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 755
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    return-void
.end method

.method private final complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 701
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 704
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 708
    iget-object v1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 709
    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->cleanup(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;)V

    .line 714
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->processResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 715
    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->invokeBlock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method static synthetic doSelect$suspendImpl(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 444
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 445
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final doSelectSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    iget v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 450
    iget v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/selects/SelectImplementation;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 453
    iput-object p0, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->waitUntilSelected(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    :goto_1
    const/4 p1, 0x0

    .line 456
    iput-object p1, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/selects/SelectImplementation$doSelectSuspend$1;->label:I

    invoke-direct {v2, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->complete(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method

.method private final findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;
    .locals 4

    .line 679
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 681
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    iget-object v3, v3, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    if-ne v3, p1, :cond_1

    move-object v1, v2

    :cond_2
    check-cast v1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clause with object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final synthetic getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/selects/SelectImplementation;->state$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final isSelected()Z
    .locals 1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 376
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    return v0
.end method

.method public static synthetic register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 487
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: register"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final reregisterClause(Ljava/lang/Object;)V
    .locals 1

    .line 613
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 614
    iput-object v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 615
    iput v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    const/4 v0, 0x1

    .line 616
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V

    return-void
.end method

.method private final trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    .line 635
    :cond_0
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 636
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 638
    instance-of v1, v0, Lkotlinx/coroutines/CancellableContinuation;

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    .line 639
    invoke-direct {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->findClause(Ljava/lang/Object;)Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 640
    :cond_1
    invoke-virtual {v1, p0, p2}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->createOnCancellationAction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;

    move-result-object v3

    .line 641
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    invoke-static {v4, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    .line 646
    iput-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    .line 647
    invoke-static {v0, v3}, Lkotlinx/coroutines/selects/SelectKt;->access$tryResume(Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function3;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 649
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return v2

    .line 654
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_COMPLETED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    instance-of v1, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v1, :cond_4

    goto :goto_1

    .line 656
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_CANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 660
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 664
    :cond_6
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, p1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 666
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_1
    const/4 p1, 0x3

    return p1
.end method

.method private final waitUntilSelected(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 427
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 433
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 569
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 575
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {v3, p0, v2, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    invoke-static {v0, p0}, Lkotlinx/coroutines/CancellableContinuationKt;->invokeOnCancellation(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/CancelHandler;)V

    goto :goto_1

    .line 590
    :cond_1
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_REG$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    invoke-static {v3, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    check-cast v2, Ljava/lang/Iterable;

    .line 918
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 593
    invoke-static {p0, v3}, Lkotlinx/coroutines/selects/SelectImplementation;->access$reregisterClause(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;)V

    goto :goto_0

    .line 596
    :cond_2
    instance-of v1, v2, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v1, :cond_5

    .line 597
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast v2, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    invoke-static {p0}, Lkotlinx/coroutines/selects/SelectImplementation;->access$getInternalResult$p(Lkotlinx/coroutines/selects/SelectImplementation;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->createOnCancellationAction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)Lkotlin/jvm/functions/Function3;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    .line 435
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 426
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_4

    return-object v0

    .line 436
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 598
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public disposeOnCompletion(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    return-void
.end method

.method public doSelect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/selects/SelectImplementation;->doSelect$suspendImpl(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 253
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectImplementation;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 2

    .line 759
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 767
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_COMPLETED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 768
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getSTATE_CANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 774
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 928
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    .line 774
    invoke-virtual {v0}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->dispose()V

    goto :goto_1

    .line 776
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->access$getNO_RESULT$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 777
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause0;Lkotlin/jvm/functions/Function1;)V
    .locals 8

    .line 464
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause;->getClauseObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause;->getRegFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause;->getProcessResFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getPARAM_CLAUSE_0()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause;->getOnCancellationConstructor()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V

    return-void
.end method

.method public invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    .locals 8

    .line 467
    new-instance v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause;->getClauseObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause;->getRegFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause;->getProcessResFunc()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectClause;->getOnCancellationConstructor()Lkotlin/jvm/functions/Function3;

    move-result-object v7

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;-><init>(Lkotlinx/coroutines/selects/SelectImplementation;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->register$default(Lkotlinx/coroutines/selects/SelectImplementation;Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;ZILjava/lang/Object;)V

    return-void
.end method

.method public invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 0

    .line 550
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    .line 551
    iput p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    return-void
.end method

.method public final register(Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;Z)V
    .locals 1

    .line 491
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 494
    iget-object v0, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->clauseObject:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/SelectImplementation;->checkClauseObject(Ljava/lang/Object;)V

    .line 496
    :cond_1
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->tryRegisterAsWaiter(Lkotlinx/coroutines/selects/SelectImplementation;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    .line 508
    iget-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->clauses:Ljava/util/List;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_2
    iget-object p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    iput-object p2, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->disposableHandleOrSegment:Ljava/lang/Object;

    .line 510
    iget p2, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    iput p2, p1, Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;->indexInSegment:I

    const/4 p1, 0x0

    .line 511
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->disposableHandleOrSegment:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 512
    iput p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->indexInSegment:I

    return-void

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/selects/SelectImplementation;->getState$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p2

    .line 516
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public selectInRegistrationPhase(Ljava/lang/Object;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lkotlinx/coroutines/selects/SelectImplementation;->internalResult:Ljava/lang/Object;

    return-void
.end method

.method public trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 624
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final trySelectDetailed(Ljava/lang/Object;Ljava/lang/Object;)Lkotlinx/coroutines/selects/TrySelectDetailedResult;
    .locals 0

    .line 632
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectImplementation;->trySelectInternal(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lkotlinx/coroutines/selects/SelectKt;->access$TrySelectDetailedResult(I)Lkotlinx/coroutines/selects/TrySelectDetailedResult;

    move-result-object p1

    return-object p1
.end method
