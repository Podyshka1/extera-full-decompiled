.class final Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/TriggerBasedInvalidationTracker;->syncTriggers$room_runtime(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/room/TriggerBasedInvalidationTracker;


# direct methods
.method constructor <init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;

    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-direct {v0, v1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Landroidx/room/Transactor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/room/Transactor;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->invoke(Landroidx/room/Transactor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 306
    iget v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/room/ObservedTableStates;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/room/Transactor;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/room/Transactor;

    .line 307
    iput-object v2, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->L$0:Ljava/lang/Object;

    iput v5, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->label:I

    invoke-interface {v2, v1}, Landroidx/room/Transactor;->inTransaction(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_0
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 311
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 313
    :cond_4
    iget-object v6, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-static {v6}, Landroidx/room/TriggerBasedInvalidationTracker;->access$getObservedTableStates$p(Landroidx/room/TriggerBasedInvalidationTracker;)Landroidx/room/ObservedTableStates;

    move-result-object v6

    iget-object v7, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->this$0:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 526
    invoke-static {v6}, Landroidx/room/ObservedTableStates;->access$getOnSyncLock$p(Landroidx/room/ObservedTableStates;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    .line 28
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 527
    :try_start_1
    invoke-static {v6, v5}, Landroidx/room/ObservedTableStates;->access$setInProgressSync$p(Landroidx/room/ObservedTableStates;Z)V

    .line 529
    invoke-static {v6}, Landroidx/room/ObservedTableStates;->access$getLock$p(Landroidx/room/ObservedTableStates;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v9

    .line 28
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 530
    :try_start_2
    invoke-static {v6}, Landroidx/room/ObservedTableStates;->access$getNeedsSync$p(Landroidx/room/ObservedTableStates;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_6

    :cond_5
    move-object v12, v11

    goto :goto_5

    .line 534
    :cond_6
    invoke-static {v6, v4}, Landroidx/room/ObservedTableStates;->access$setNeedsSync$p(Landroidx/room/ObservedTableStates;Z)V

    .line 537
    invoke-static {v6}, Landroidx/room/ObservedTableStates;->access$getTableObserversCount$p(Landroidx/room/ObservedTableStates;)[J

    move-result-object v10

    array-length v10, v10

    new-array v12, v10, [Landroidx/room/ObservedTableStates$ObserveOp;

    move v13, v4

    move v14, v13

    :goto_1
    if-ge v13, v10, :cond_a

    .line 538
    invoke-static {v6}, Landroidx/room/ObservedTableStates;->access$getTableObserversCount$p(Landroidx/room/ObservedTableStates;)[J

    move-result-object v15

    aget-wide v16, v15, v13

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_7

    move v15, v5

    goto :goto_2

    :cond_7
    move v15, v4

    .line 539
    :goto_2
    invoke-static {v6}, Landroidx/room/ObservedTableStates;->access$getTableObservedState$p(Landroidx/room/ObservedTableStates;)[Z

    move-result-object v16

    aget-boolean v5, v16, v13

    if-eq v15, v5, :cond_9

    .line 541
    invoke-static {v6}, Landroidx/room/ObservedTableStates;->access$getTableObservedState$p(Landroidx/room/ObservedTableStates;)[Z

    move-result-object v5

    aput-boolean v15, v5, v13

    if-eqz v15, :cond_8

    .line 542
    sget-object v5, Landroidx/room/ObservedTableStates$ObserveOp;->ADD:Landroidx/room/ObservedTableStates$ObserveOp;

    :goto_3
    const/4 v14, 0x1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_8
    sget-object v5, Landroidx/room/ObservedTableStates$ObserveOp;->REMOVE:Landroidx/room/ObservedTableStates$ObserveOp;

    goto :goto_3

    .line 544
    :cond_9
    sget-object v5, Landroidx/room/ObservedTableStates$ObserveOp;->NO_OP:Landroidx/room/ObservedTableStates$ObserveOp;

    :goto_4
    aput-object v5, v12, v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_a
    if-eqz v14, :cond_5

    .line 32
    :goto_5
    :try_start_3
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v12, :cond_d

    .line 550
    :try_start_4
    array-length v5, v12

    if-nez v5, :cond_b

    goto :goto_9

    .line 314
    :cond_b
    sget-object v5, Landroidx/room/Transactor$SQLiteTransactionType;->IMMEDIATE:Landroidx/room/Transactor$SQLiteTransactionType;

    new-instance v9, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1;

    invoke-direct {v9, v12, v7, v2, v11}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1;-><init>([Landroidx/room/ObservedTableStates$ObserveOp;Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/Transactor;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->L$1:Ljava/lang/Object;

    iput v3, v1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;->label:I

    invoke-interface {v2, v5, v9, v1}, Landroidx/room/Transactor;->withTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v2, v0, :cond_c

    :goto_6
    return-object v0

    :cond_c
    move-object v3, v6

    move-object v2, v8

    :goto_7
    move-object v8, v2

    move-object v6, v3

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v3, v6

    move-object v2, v8

    .line 554
    :goto_8
    :try_start_5
    invoke-static {v3, v4}, Landroidx/room/ObservedTableStates;->access$setInProgressSync$p(Landroidx/room/ObservedTableStates;Z)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v8, v2

    goto :goto_b

    :cond_d
    :goto_9
    :try_start_6
    invoke-static {v6, v4}, Landroidx/room/ObservedTableStates;->access$setInProgressSync$p(Landroidx/room/ObservedTableStates;Z)V

    .line 556
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 32
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 324
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_4
    move-exception v0

    goto :goto_b

    .line 32
    :goto_a
    :try_start_7
    invoke-virtual {v9}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_b
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
