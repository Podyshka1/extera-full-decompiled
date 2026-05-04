.class final Landroidx/room/coroutines/PassthroughConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/room/Transactor;
.implements Landroidx/room/coroutines/RawConnectionAccessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;,
        Landroidx/room/coroutines/PassthroughConnection$WhenMappings;
    }
.end annotation


# instance fields
.field private currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

.field private final delegate:Landroidx/sqlite/SQLiteConnection;

.field private nestedTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final transactionWrapper:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection;->transactionWrapper:Lkotlin/jvm/functions/Function2;

    .line 79
    iput-object p2, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    .line 82
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection;->nestedTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final synthetic access$transaction(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/room/coroutines/PassthroughConnection;->transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Landroidx/room/coroutines/PassthroughConnection$transaction$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;

    iget v1, v0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;

    invoke-direct {v0, p0, p3}, Landroidx/room/coroutines/PassthroughConnection$transaction$1;-><init>(Landroidx/room/coroutines/PassthroughConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 109
    iget v2, v0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->label:I

    const-string v3, "ROLLBACK TRANSACTION"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget v5, v0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->I$0:I

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 113
    sget-object p3, Landroidx/room/coroutines/PassthroughConnection$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p3, p3, v2

    if-eq p3, v5, :cond_5

    const/4 v2, 0x2

    if-eq p3, v2, :cond_4

    const/4 v2, 0x3

    if-ne p3, v2, :cond_3

    .line 119
    iget-object p3, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p3, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 117
    :cond_4
    iget-object p3, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    const-string v2, "BEGIN IMMEDIATE TRANSACTION"

    invoke-static {p3, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_5
    iget-object p3, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    const-string v2, "BEGIN DEFERRED TRANSACTION"

    invoke-static {p3, v2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 121
    :goto_1
    iget-object p3, p0, Landroidx/room/coroutines/PassthroughConnection;->nestedTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    if-lez p3, :cond_6

    .line 122
    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnection;->currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

    .line 127
    :cond_6
    :try_start_1
    new-instance p1, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;

    invoke-direct {p1, p0}, Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;-><init>(Landroidx/room/coroutines/PassthroughConnection;)V

    iput v5, v0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->I$0:I

    iput v5, v0, Landroidx/room/coroutines/PassthroughConnection$transaction$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p3, v1, :cond_7

    return-object v1

    .line 139
    :cond_7
    :goto_2
    iget-object p1, p0, Landroidx/room/coroutines/PassthroughConnection;->nestedTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_8

    .line 140
    iput-object v4, p0, Landroidx/room/coroutines/PassthroughConnection;->currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

    :cond_8
    if-eqz v5, :cond_9

    .line 143
    iget-object p1, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    const-string p2, "END TRANSACTION"

    invoke-static {p1, p2}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-object p3

    .line 145
    :cond_9
    iget-object p1, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    invoke-static {p1, v3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-object p3

    .line 135
    :goto_3
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    .line 139
    :try_start_3
    iget-object p3, p0, Landroidx/room/coroutines/PassthroughConnection;->nestedTransactionCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p3

    if-nez p3, :cond_a

    .line 140
    iput-object v4, p0, Landroidx/room/coroutines/PassthroughConnection;->currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

    goto :goto_4

    :catch_0
    move-exception p3

    goto :goto_5

    .line 145
    :cond_a
    :goto_4
    iget-object p3, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    invoke-static {p3, v3}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 148
    :goto_5
    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw p2
.end method


# virtual methods
.method public final getDelegate()Landroidx/sqlite/SQLiteConnection;
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    return-object v0
.end method

.method public getRawConnection()Landroidx/sqlite/SQLiteConnection;
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    return-object v0
.end method

.method public inTransaction(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 154
    iget-object p1, p0, Landroidx/room/coroutines/PassthroughConnection;->currentTransactionType:Landroidx/room/Transactor$SQLiteTransactionType;

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    invoke-interface {p1}, Landroidx/sqlite/SQLiteConnection;->inTransaction()Z

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
.end method

.method public usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;

    iget v1, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;

    invoke-direct {v0, p0, p3}, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;-><init>(Landroidx/room/coroutines/PassthroughConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 88
    iget v2, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    iput-object p1, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->label:I

    invoke-virtual {p0, v0}, Landroidx/room/coroutines/PassthroughConnection;->inTransaction(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroidx/room/coroutines/PassthroughConnection;->transactionWrapper:Lkotlin/jvm/functions/Function2;

    if-eqz p3, :cond_6

    .line 91
    new-instance v4, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;

    invoke-direct {v4, p0, p1, p2, v2}, Landroidx/room/coroutines/PassthroughConnection$usePrepared$2;-><init>(Landroidx/room/coroutines/PassthroughConnection;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object v2, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/room/coroutines/PassthroughConnection$usePrepared$1;->label:I

    invoke-interface {p3, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1

    .line 93
    :cond_6
    iget-object p3, p0, Landroidx/room/coroutines/PassthroughConnection;->delegate:Landroidx/sqlite/SQLiteConnection;

    invoke-interface {p3, p1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    :try_start_0
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public withTransaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 101
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnection;->transactionWrapper:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/room/coroutines/PassthroughConnection$withTransaction$2;-><init>(Landroidx/room/coroutines/PassthroughConnection;Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v0, v1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p1

    .line 105
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/room/coroutines/PassthroughConnection;->transaction(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
