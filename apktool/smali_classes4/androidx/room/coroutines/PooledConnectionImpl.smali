.class final Landroidx/room/coroutines/PooledConnectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/room/Transactor;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;,
        Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;,
        Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;,
        Landroidx/room/coroutines/PooledConnectionImpl$WhenMappings;
    }
.end annotation


# instance fields
.field private final connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

.field private final delegate:Landroidx/room/coroutines/ConnectionWithLock;

.field private final isReadOnly:Z

.field private volatile isRecycled:Z

.field private final transactionStack:Lkotlin/collections/ArrayDeque;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/ConnectionElementKey;Landroidx/room/coroutines/ConnectionWithLock;Z)V
    .locals 1

    const-string v0, "connectionElementKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    .line 423
    iput-object p2, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 424
    iput-boolean p3, p0, Landroidx/room/coroutines/PooledConnectionImpl;->isReadOnly:Z

    .line 426
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->transactionStack:Lkotlin/collections/ArrayDeque;

    return-void
.end method

.method public static final synthetic access$beginTransaction(Landroidx/room/coroutines/PooledConnectionImpl;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-direct {p0, p1, p2}, Landroidx/room/coroutines/PooledConnectionImpl;->beginTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$endTransaction(Landroidx/room/coroutines/PooledConnectionImpl;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-direct {p0, p1, p2}, Landroidx/room/coroutines/PooledConnectionImpl;->endTransaction(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isRecycled$p(Landroidx/room/coroutines/PooledConnectionImpl;)Z
    .locals 0

    .line 421
    iget-boolean p0, p0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    return p0
.end method

.method public static final synthetic access$transaction(Landroidx/room/coroutines/PooledConnectionImpl;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-direct {p0, p1, p2, p3}, Landroidx/room/coroutines/PooledConnectionImpl;->transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final beginTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;

    iget v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;

    invoke-direct {v0, p0, p2}, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 489
    iget v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/Transactor$SQLiteTransactionType;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 490
    iget-object p2, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 672
    iput-object p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/room/coroutines/PooledConnectionImpl$beginTransaction$1;->label:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 491
    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl;->transactionStack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableList;->size()I

    move-result v0

    .line 492
    iget-object v1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->transactionStack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 493
    sget-object v1, Landroidx/room/coroutines/PooledConnectionImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 498
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    const-string v1, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 493
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 496
    :cond_5
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    const-string v1, "BEGIN IMMEDIATE TRANSACTION"

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_2

    .line 494
    :cond_6
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    const-string v1, "BEGIN DEFERRED TRANSACTION"

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_2

    .line 501
    :cond_7
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAVEPOINT \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 503
    :goto_2
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->transactionStack:Lkotlin/collections/ArrayDeque;

    new-instance v1, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;-><init>(IZ)V

    invoke-virtual {p1, v1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 504
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_3
    invoke-interface {p2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method private final endTransaction(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;

    iget v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;

    invoke-direct {v0, p0, p2}, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 506
    iget v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->Z$0:Z

    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 507
    iget-object p2, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 682
    iput-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->L$0:Ljava/lang/Object;

    iput-boolean p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->Z$0:Z

    iput v3, v0, Landroidx/room/coroutines/PooledConnectionImpl$endTransaction$1;->label:I

    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p2

    .line 508
    :goto_1
    :try_start_0
    iget-object p2, p0, Landroidx/room/coroutines/PooledConnectionImpl;->transactionStack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 511
    iget-object p2, p0, Landroidx/room/coroutines/PooledConnectionImpl;->transactionStack:Lkotlin/collections/ArrayDeque;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;

    const/16 v1, 0x27

    if-eqz p1, :cond_5

    .line 512
    invoke-virtual {p2}, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;->getShouldRollback()Z

    move-result p1

    if-nez p1, :cond_5

    .line 513
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->transactionStack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 514
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    const-string p2, "END TRANSACTION"

    invoke-static {p1, p2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 516
    :cond_4
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELEASE SAVEPOINT \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;->getId()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_2

    .line 519
    :cond_5
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->transactionStack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 520
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    const-string p2, "ROLLBACK TRANSACTION"

    invoke-static {p1, p2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_2

    .line 522
    :cond_6
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ROLLBACK TRANSACTION TO SAVEPOINT \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;->getId()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 525
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    .line 508
    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 509
    const-string p2, "Not in a transaction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    :goto_3
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method private final transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;

    iget v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;

    invoke-direct {v0, p0, p3}, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 460
    iget v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    const/4 p1, 0x4

    if-eq v2, p1, :cond_2

    if-eq v2, v4, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->L$0:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p3

    goto :goto_5

    :cond_2
    iget-object p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    iget p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->I$0:I

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p2, p1

    goto :goto_3

    :cond_4
    iget-object p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p1, :cond_6

    .line 464
    sget-object p1, Landroidx/room/Transactor$SQLiteTransactionType;->DEFERRED:Landroidx/room/Transactor$SQLiteTransactionType;

    :cond_6
    iput-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->label:I

    invoke-direct {p0, p1, v0}, Landroidx/room/coroutines/PooledConnectionImpl;->beginTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_4

    .line 468
    :cond_7
    :goto_1
    :try_start_2
    new-instance p1, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;

    invoke-direct {p1, p0}, Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;)V

    const/4 p3, 0x0

    iput-object p3, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->I$0:I

    iput v6, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_8

    goto :goto_4

    :cond_8
    move p1, v7

    :goto_2
    if-eqz p1, :cond_9

    move v3, v7

    .line 482
    :cond_9
    iput-object p3, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->label:I

    invoke-direct {p0, v3, v0}, Landroidx/room/coroutines/PooledConnectionImpl;->endTransaction(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_4

    :cond_a
    return-object p3

    .line 478
    :goto_3
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 482
    :try_start_4
    iput-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/room/coroutines/PooledConnectionImpl$transaction$1;->label:I

    invoke-direct {p0, v3, v0}, Landroidx/room/coroutines/PooledConnectionImpl;->endTransaction(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    if-ne p2, v1, :cond_b

    :goto_4
    return-object v1

    :goto_5
    if-eqz p2, :cond_c

    .line 484
    invoke-static {p2, p3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    throw p1

    :cond_c
    throw p3
.end method


# virtual methods
.method public final getConnectionElementKey()Landroidx/room/coroutines/ConnectionElementKey;
    .locals 1

    .line 422
    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl;->connectionElementKey:Landroidx/room/coroutines/ConnectionElementKey;

    return-object v0
.end method

.method public final getDelegate()Landroidx/room/coroutines/ConnectionWithLock;
    .locals 1

    .line 423
    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    return-object v0
.end method

.method public getRawConnection()Landroidx/sqlite/SQLiteConnection;
    .locals 1

    .line 431
    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    return-object v0
.end method

.method public inTransaction(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 551
    invoke-static {p0}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled$p(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_3

    .line 554
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/room/coroutines/PooledConnectionImpl;->getConnectionElementKey()Landroidx/room/coroutines/ConnectionElementKey;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    check-cast p1, Landroidx/room/coroutines/ConnectionElement;

    if-eqz p1, :cond_2

    .line 555
    invoke-virtual {p1}, Landroidx/room/coroutines/ConnectionElement;->getConnectionWrapper()Landroidx/room/coroutines/PooledConnectionImpl;

    move-result-object p1

    if-ne p1, p0, :cond_2

    .line 446
    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->transactionStack:Lkotlin/collections/ArrayDeque;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    invoke-virtual {p1}, Landroidx/room/coroutines/ConnectionWithLock;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 558
    :cond_2
    const-string p1, "Attempted to use connection on a different coroutine"

    .line 556
    invoke-static {v1, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 552
    :cond_3
    const-string p1, "Connection is recycled"

    invoke-static {v1, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final isReadOnly()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Landroidx/room/coroutines/PooledConnectionImpl;->isReadOnly:Z

    return v0
.end method

.method public final markRecycled()V
    .locals 2

    .line 450
    iget-boolean v0, p0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 451
    iput-boolean v0, p0, Landroidx/room/coroutines/PooledConnectionImpl;->isRecycled:Z

    .line 454
    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    invoke-virtual {v0}, Landroidx/room/coroutines/ConnectionWithLock;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    const-string v1, "ROLLBACK TRANSACTION"

    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;

    iget v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;

    invoke-direct {v0, p0, p3}, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 433
    iget v2, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 551
    invoke-static {p0}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled$p(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result p3

    const/16 v2, 0x15

    if-nez p3, :cond_5

    .line 554
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-virtual {p0}, Landroidx/room/coroutines/PooledConnectionImpl;->getConnectionElementKey()Landroidx/room/coroutines/ConnectionElementKey;

    move-result-object v5

    invoke-interface {p3, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p3

    check-cast p3, Landroidx/room/coroutines/ConnectionElement;

    if-eqz p3, :cond_4

    .line 555
    invoke-virtual {p3}, Landroidx/room/coroutines/ConnectionElement;->getConnectionWrapper()Landroidx/room/coroutines/PooledConnectionImpl;

    move-result-object p3

    if-ne p3, p0, :cond_4

    .line 435
    iget-object p3, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    .line 640
    iput-object p1, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Landroidx/room/coroutines/PooledConnectionImpl$usePrepared$1;->label:I

    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    .line 436
    :cond_3
    :goto_1
    :try_start_0
    new-instance v0, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;

    iget-object v1, p0, Landroidx/room/coroutines/PooledConnectionImpl;->delegate:Landroidx/room/coroutines/ConnectionWithLock;

    invoke-virtual {v1, p1}, Landroidx/room/coroutines/ConnectionWithLock;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;-><init>(Landroidx/room/coroutines/PooledConnectionImpl;Landroidx/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v4}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 644
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 436
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-static {v0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 644
    :goto_2
    invoke-interface {p3, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 558
    :cond_4
    const-string p1, "Attempted to use connection on a different coroutine"

    .line 556
    invoke-static {v2, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 552
    :cond_5
    const-string p1, "Connection is recycled"

    invoke-static {v2, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public withTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 551
    invoke-static {p0}, Landroidx/room/coroutines/PooledConnectionImpl;->access$isRecycled$p(Landroidx/room/coroutines/PooledConnectionImpl;)Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_1

    .line 554
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/room/coroutines/PooledConnectionImpl;->getConnectionElementKey()Landroidx/room/coroutines/ConnectionElementKey;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Landroidx/room/coroutines/ConnectionElement;

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {v0}, Landroidx/room/coroutines/ConnectionElement;->getConnectionWrapper()Landroidx/room/coroutines/PooledConnectionImpl;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 443
    invoke-direct {p0, p1, p2, p3}, Landroidx/room/coroutines/PooledConnectionImpl;->transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 558
    :cond_0
    const-string p1, "Attempted to use connection on a different coroutine"

    .line 556
    invoke-static {v1, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 552
    :cond_1
    const-string p1, "Connection is recycled"

    invoke-static {v1, p1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method
