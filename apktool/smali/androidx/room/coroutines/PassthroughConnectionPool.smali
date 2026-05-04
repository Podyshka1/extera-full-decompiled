.class public final Landroidx/room/coroutines/PassthroughConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/room/coroutines/ConnectionPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;
    }
.end annotation


# instance fields
.field private final connection:Lkotlin/Lazy;

.field private final driver:Landroidx/sqlite/SQLiteDriver;

.field private final fileName:Ljava/lang/String;

.field private final transactionWrapper:Lkotlin/jvm/functions/Function2;


# direct methods
.method public static synthetic $r8$lambda$5PfN97KPsXXXOapSC9IzcedL70w(Landroidx/room/coroutines/PassthroughConnectionPool;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/room/coroutines/PassthroughConnectionPool;->connection$lambda$0(Landroidx/room/coroutines/PassthroughConnectionPool;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "driver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->driver:Landroidx/sqlite/SQLiteDriver;

    .line 43
    iput-object p2, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->fileName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->transactionWrapper:Lkotlin/jvm/functions/Function2;

    .line 47
    new-instance p1, Landroidx/room/coroutines/PassthroughConnectionPool$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/room/coroutines/PassthroughConnectionPool$$ExternalSyntheticLambda0;-><init>(Landroidx/room/coroutines/PassthroughConnectionPool;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lkotlin/Lazy;

    return-void
.end method

.method private static final connection$lambda$0(Landroidx/room/coroutines/PassthroughConnectionPool;)Landroidx/sqlite/SQLiteConnection;
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->driver:Landroidx/sqlite/SQLiteDriver;

    iget-object p0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->fileName:Ljava/lang/String;

    invoke-interface {v0, p0}, Landroidx/sqlite/SQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteConnection;->close()V

    :cond_0
    return-void
.end method

.method public useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 53
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    sget-object v0, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->Key:Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    check-cast p1, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;->getConnectionWrapper()Landroidx/room/coroutines/PassthroughConnection;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 55
    invoke-interface {p2, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    new-instance p1, Landroidx/room/coroutines/PassthroughConnection;

    iget-object v1, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->transactionWrapper:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Landroidx/room/coroutines/PassthroughConnectionPool;->connection:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/sqlite/SQLiteConnection;

    invoke-direct {p1, v1, v2}, Landroidx/room/coroutines/PassthroughConnection;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/sqlite/SQLiteConnection;)V

    .line 59
    new-instance v1, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;

    invoke-direct {v1, p1}, Landroidx/room/coroutines/PassthroughConnectionPool$ConnectionElement;-><init>(Landroidx/room/coroutines/PassthroughConnection;)V

    new-instance v2, Landroidx/room/coroutines/PassthroughConnectionPool$useConnection$2;

    invoke-direct {v2, p2, p1, v0}, Landroidx/room/coroutines/PassthroughConnectionPool$useConnection$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/room/coroutines/PassthroughConnection;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
