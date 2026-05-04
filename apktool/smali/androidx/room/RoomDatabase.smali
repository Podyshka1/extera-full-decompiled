.class public abstract Landroidx/room/RoomDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomDatabase$Builder;,
        Landroidx/room/RoomDatabase$Callback;,
        Landroidx/room/RoomDatabase$Companion;,
        Landroidx/room/RoomDatabase$JournalMode;,
        Landroidx/room/RoomDatabase$MigrationContainer;,
        Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/room/RoomDatabase$Companion;

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7


# instance fields
.field private allowMainThreadQueries:Z

.field private autoCloser:Landroidx/room/support/AutoCloser;

.field private final closeBarrier:Landroidx/room/concurrent/CloseBarrier;

.field private configuration:Landroidx/room/DatabaseConfiguration;

.field private connectionManager:Landroidx/room/RoomConnectionManager;

.field private coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private internalQueryExecutor:Ljava/util/concurrent/Executor;

.field private internalTracker:Landroidx/room/InvalidationTracker;

.field private internalTransactionExecutor:Ljava/util/concurrent/Executor;

.field protected mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field private final suspendingTransactionContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation
.end field

.field private transactionContext:Lkotlin/coroutines/CoroutineContext;

.field private final typeConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private useTempTrackingTable:Z


# direct methods
.method public static synthetic $r8$lambda$6MGYE43iSeDShiNg5-eYEczLGjs(Lkotlin/jvm/functions/Function0;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/room/RoomDatabase;->runInTransaction$lambda$12(Lkotlin/jvm/functions/Function0;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$A2u6_8X-j1AdhDIbxnjbR7Trwkg(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/room/RoomDatabase;->runInTransaction$lambda$11(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$POcKqU42ARGeTbGQYNjzs2-OAdI(Landroidx/room/RoomDatabase;Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroidx/room/RoomDatabase;->createConnectionManager$lambda$2(Landroidx/room/RoomDatabase;Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bNnW08bMruDX4DuvntvGeRm0ICM(Ljava/lang/Runnable;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/room/RoomDatabase;->runInTransaction$lambda$10(Ljava/lang/Runnable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/RoomDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/RoomDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/RoomDatabase;->Companion:Landroidx/room/RoomDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Landroidx/room/concurrent/CloseBarrier;

    new-instance v1, Landroidx/room/RoomDatabase$closeBarrier$1;

    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/room/concurrent/CloseBarrier;-><init>(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->closeBarrier:Landroidx/room/concurrent/CloseBarrier;

    .line 186
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->suspendingTransactionContext:Ljava/lang/ThreadLocal;

    .line 191
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/Map;

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Landroidx/room/RoomDatabase;->useTempTrackingTable:Z

    return-void
.end method

.method public static final synthetic access$getConnectionManager$p(Landroidx/room/RoomDatabase;)Landroidx/room/RoomConnectionManager;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    return-object p0
.end method

.method public static final synthetic access$onClosed(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->onClosed()V

    return-void
.end method

.method private static final createConnectionManager$lambda$2(Landroidx/room/RoomDatabase;Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p0

    return-object p0
.end method

.method protected static synthetic getMCallbacks$annotations()V
    .locals 0

    return-void
.end method

.method protected static synthetic getMDatabase$annotations()V
    .locals 0

    return-void
.end method

.method private final internalBeginTransaction()V
    .locals 2

    .line 694
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 695
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 696
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/InvalidationTracker;->syncBlocking$room_runtime()V

    .line 699
    :cond_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isWriteAheadLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    return-void

    .line 702
    :cond_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method private final internalEndTransaction()V
    .locals 1

    .line 717
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 718
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->refreshVersionsAsync()V

    :cond_0
    return-void
.end method

.method private final isThreadInSuspendingTransaction()Z
    .locals 2

    .line 189
    iget-object v0, p0, Landroidx/room/RoomDatabase;->suspendingTransactionContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Landroidx/room/TransactionElement;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final onClosed()V
    .locals 3

    .line 577
    iget-object v0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "coroutineScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 578
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->stop$room_runtime()V

    .line 579
    iget-object v0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-nez v0, :cond_1

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/room/RoomConnectionManager;->close()V

    return-void
.end method

.method public static synthetic query$default(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 658
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: query"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2

    .line 772
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 775
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    .line 776
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1

    .line 782
    :cond_0
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroidx/room/util/DBUtil;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static final runInTransaction$lambda$10(Ljava/lang/Runnable;)Lkotlin/Unit;
    .locals 0

    .line 750
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final runInTransaction$lambda$11(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    .line 767
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final runInTransaction$lambda$12(Lkotlin/jvm/functions/Function0;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addTypeConverter$room_runtime(Lkotlin/reflect/KClass;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "kclass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public assertNotMainThread()V
    .locals 2

    .line 589
    iget-boolean v0, p0, Landroidx/room/RoomDatabase;->allowMainThreadQueries:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isMainThread$room_runtime()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertNotSuspendingTransaction()V
    .locals 2

    .line 601
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/room/RoomDatabase;->isThreadInSuspendingTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public beginTransaction()V
    .locals 0

    .line 689
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 690
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->internalBeginTransaction()V

    return-void
.end method

.method public abstract clearAllTables()V
.end method

.method public close()V
    .locals 1

    .line 573
    iget-object v0, p0, Landroidx/room/RoomDatabase;->closeBarrier:Landroidx/room/concurrent/CloseBarrier;

    invoke-virtual {v0}, Landroidx/room/concurrent/CloseBarrier;->close$room_runtime()V

    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1

    const-string/jumbo v0, "sql"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 678
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 679
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object p1

    return-object p1
.end method

.method public createAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2223
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2224
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 1252
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1253
    check-cast v1, Ljava/util/Map$Entry;

    .line 364
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KClass;

    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v2

    .line 2224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 1253
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 366
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->getAutoMigrations(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final createConnectionManager$room_runtime(Landroidx/room/DatabaseConfiguration;)Landroidx/room/RoomConnectionManager;
    .locals 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    :try_start_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->createOpenDelegate()Landroidx/room/RoomOpenDelegateMarker;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type androidx.room.RoomOpenDelegate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/room/RoomOpenDelegate;
    :try_end_0
    .catch Lkotlin/NotImplementedError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroidx/room/RoomConnectionManager;

    .line 331
    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda1;-><init>(Landroidx/room/RoomDatabase;)V

    .line 332
    new-instance v2, Landroidx/room/RoomDatabase$createConnectionManager$2;

    invoke-direct {v2, p0}, Landroidx/room/RoomDatabase$createConnectionManager$2;-><init>(Ljava/lang/Object;)V

    .line 329
    invoke-direct {v0, p1, v1, v2}, Landroidx/room/RoomConnectionManager;-><init>(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    goto :goto_1

    .line 335
    :cond_0
    new-instance v1, Landroidx/room/RoomConnectionManager;

    .line 338
    new-instance v2, Landroidx/room/RoomDatabase$createConnectionManager$3;

    invoke-direct {v2, p0}, Landroidx/room/RoomDatabase$createConnectionManager$3;-><init>(Ljava/lang/Object;)V

    .line 335
    invoke-direct {v1, p1, v0, v2}, Landroidx/room/RoomConnectionManager;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;Lkotlin/jvm/functions/Function2;)V

    move-object v0, v1

    :goto_1
    return-object v0
.end method

.method protected abstract createInvalidationTracker()Landroidx/room/InvalidationTracker;
.end method

.method protected createOpenDelegate()Landroidx/room/RoomOpenDelegateMarker;
    .locals 3

    .line 419
    new-instance v0, Lkotlin/NotImplementedError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 2

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    new-instance p1, Lkotlin/NotImplementedError;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public endTransaction()V
    .locals 0

    .line 713
    invoke-direct {p0}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    return-void
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getCloseBarrier$room_runtime()Landroidx/room/concurrent/CloseBarrier;
    .locals 1

    .line 163
    iget-object v0, p0, Landroidx/room/RoomDatabase;->closeBarrier:Landroidx/room/concurrent/CloseBarrier;

    return-object v0
.end method

.method public final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 434
    iget-object v0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_0

    const-string v0, "coroutineScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final getDriver()Landroidx/sqlite/SQLiteDriver;
    .locals 2

    .line 140
    iget-object v0, p0, Landroidx/room/RoomDatabase;->configuration:Landroidx/room/DatabaseConfiguration;

    if-nez v0, :cond_0

    const-string v0, "configuration"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->sqliteDriver:Landroidx/sqlite/SQLiteDriver;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No SQLiteDriver was configured with Room."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 1

    .line 153
    iget-object v0, p0, Landroidx/room/RoomDatabase;->internalTracker:Landroidx/room/InvalidationTracker;

    if-nez v0, :cond_0

    const-string v0, "internalTracker"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 2

    .line 132
    iget-object v0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-nez v0, :cond_0

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 134
    const-string v1, "Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 4

    .line 110
    iget-object v0, p0, Landroidx/room/RoomDatabase;->configuration:Landroidx/room/DatabaseConfiguration;

    const-string v1, "configuration"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/room/RoomDatabase;->configuration:Landroidx/room/DatabaseConfiguration;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    iget-object v1, v2, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v2
.end method

.method public final getQueryContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 439
    iget-object v0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_0

    const-string v0, "coroutineScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "internalQueryExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getRequiredAutoMigrationSpecClasses()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass;",
            ">;"
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getRequiredAutoMigrationSpecs()Ljava/util/Set;

    move-result-object v0

    .line 1563
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    check-cast v2, Ljava/lang/Class;

    .line 502
    invoke-static {v2}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 1635
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 502
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 493
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getRequiredTypeConverterClasses()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass;",
            ">;>;"
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getRequiredTypeConverters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xa

    .line 1193
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 1194
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1267
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1268
    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 475
    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    check-cast v2, Ljava/lang/Iterable;

    .line 1563
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1635
    check-cast v6, Ljava/lang/Class;

    .line 475
    invoke-static {v6}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    .line 1635
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    :cond_0
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 1268
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public final getRequiredTypeConverterClassesMap$room_runtime()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass;",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass;",
            ">;>;"
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getRequiredTypeConverterClasses()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 457
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getSuspendingTransactionContext()Ljava/lang/ThreadLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Lkotlin/coroutines/CoroutineContext;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Landroidx/room/RoomDatabase;->suspendingTransactionContext:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public final getTransactionContext$room_runtime()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 443
    iget-object v0, p0, Landroidx/room/RoomDatabase;->transactionContext:Lkotlin/coroutines/CoroutineContext;

    if-nez v0, :cond_0

    const-string/jumbo v0, "transactionContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getTransactionExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 120
    iget-object v0, p0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    const-string v0, "internalTransactionExecutor"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public getTypeConverter(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string/jumbo v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getTypeConverter(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass;",
            ")TT;"
        }
    .end annotation

    const-string/jumbo v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Landroidx/room/RoomDatabase;->typeConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type T of androidx.room.RoomDatabase.getTypeConverter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getUseTempTrackingTable$room_runtime()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Landroidx/room/RoomDatabase;->useTempTrackingTable:Z

    return v0
.end method

.method public final inCompatibilityMode()Z
    .locals 1

    .line 631
    iget-object v0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-nez v0, :cond_0

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 819
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isOpenInternal$room_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroidx/room/DatabaseConfiguration;)V
    .locals 7

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iput-object p1, p0, Landroidx/room/RoomDatabase;->configuration:Landroidx/room/DatabaseConfiguration;

    .line 242
    invoke-virtual {p1}, Landroidx/room/DatabaseConfiguration;->getUseTempTrackingTable$room_runtime()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/room/RoomDatabase;->useTempTrackingTable:Z

    .line 244
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->createConnectionManager$room_runtime(Landroidx/room/DatabaseConfiguration;)Landroidx/room/RoomConnectionManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    .line 245
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->createInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->internalTracker:Landroidx/room/InvalidationTracker;

    .line 246
    invoke-static {p0, p1}, Landroidx/room/RoomDatabaseKt;->validateAutoMigrations(Landroidx/room/RoomDatabase;Landroidx/room/DatabaseConfiguration;)V

    .line 247
    invoke-static {p0, p1}, Landroidx/room/RoomDatabaseKt;->validateTypeConverters(Landroidx/room/RoomDatabase;Landroidx/room/DatabaseConfiguration;)V

    .line 249
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    const/4 v1, 0x1

    const-string v2, "internalQueryExecutor"

    const-string v3, "coroutineScope"

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 253
    sget-object v5, Lkotlin/coroutines/ContinuationInterceptor;->Key:Lkotlin/coroutines/ContinuationInterceptor$Key;

    invoke-interface {v0, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    const-string/jumbo v5, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 254
    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->asExecutor(Lkotlinx/coroutines/CoroutineDispatcher;)Ljava/util/concurrent/Executor;

    move-result-object v5

    iput-object v5, p0, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    .line 255
    new-instance v6, Landroidx/room/TransactionExecutor;

    if-nez v5, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_0
    invoke-direct {v6, v5}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v6, p0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Ljava/util/concurrent/Executor;

    .line 258
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v2, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    .line 260
    iget-object v5, p1, Landroidx/room/DatabaseConfiguration;->queryCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    invoke-interface {v5, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    .line 259
    iput-object v2, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 262
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    iget-object v2, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_1
    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism(I)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_3
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 261
    :goto_0
    iput-object v0, p0, Landroidx/room/RoomDatabase;->transactionContext:Lkotlin/coroutines/CoroutineContext;

    goto :goto_1

    .line 273
    :cond_4
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    .line 274
    new-instance v0, Landroidx/room/TransactionExecutor;

    iget-object v5, p1, Landroidx/room/DatabaseConfiguration;->transactionExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v5}, Landroidx/room/TransactionExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Ljava/util/concurrent/Executor;

    .line 278
    iget-object v0, p0, Landroidx/room/RoomDatabase;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_5
    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v4, v1, v4}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 277
    iput-object v0, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_6

    .line 280
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_6
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 281
    iget-object v1, p0, Landroidx/room/RoomDatabase;->internalTransactionExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_7

    const-string v1, "internalTransactionExecutor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_7
    invoke-static {v1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    .line 280
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 279
    iput-object v0, p0, Landroidx/room/RoomDatabase;->transactionContext:Lkotlin/coroutines/CoroutineContext;

    .line 284
    :goto_1
    iget-boolean v0, p1, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-boolean v0, p0, Landroidx/room/RoomDatabase;->allowMainThreadQueries:Z

    .line 287
    iget-object v0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    const-string v1, "connectionManager"

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_8
    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    move-object v0, v4

    goto :goto_3

    .line 384
    :cond_a
    :goto_2
    instance-of v2, v0, Landroidx/room/support/PrePackagedCopyOpenHelper;

    if-eqz v2, :cond_b

    goto :goto_3

    .line 387
    :cond_b
    instance-of v2, v0, Landroidx/room/DelegatingOpenHelper;

    if-eqz v2, :cond_9

    .line 388
    check-cast v0, Landroidx/room/DelegatingOpenHelper;

    invoke-interface {v0}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    goto :goto_2

    .line 287
    :goto_3
    check-cast v0, Landroidx/room/support/PrePackagedCopyOpenHelper;

    if-eqz v0, :cond_c

    .line 288
    invoke-virtual {v0, p1}, Landroidx/room/support/PrePackagedCopyOpenHelper;->setDatabaseConfiguration(Landroidx/room/DatabaseConfiguration;)V

    .line 291
    :cond_c
    iget-object v0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-nez v0, :cond_d

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_d
    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->getSupportOpenHelper$room_runtime()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    move-object v0, v4

    goto :goto_5

    .line 384
    :cond_f
    :goto_4
    instance-of v1, v0, Landroidx/room/support/AutoClosingRoomOpenHelper;

    if-eqz v1, :cond_10

    goto :goto_5

    .line 387
    :cond_10
    instance-of v1, v0, Landroidx/room/DelegatingOpenHelper;

    if-eqz v1, :cond_e

    .line 388
    check-cast v0, Landroidx/room/DelegatingOpenHelper;

    invoke-interface {v0}, Landroidx/room/DelegatingOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    goto :goto_4

    .line 291
    :goto_5
    check-cast v0, Landroidx/room/support/AutoClosingRoomOpenHelper;

    if-eqz v0, :cond_12

    .line 292
    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper;->getAutoCloser$room_runtime()Landroidx/room/support/AutoCloser;

    move-result-object v1

    iput-object v1, p0, Landroidx/room/RoomDatabase;->autoCloser:Landroidx/room/support/AutoCloser;

    .line 293
    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper;->getAutoCloser$room_runtime()Landroidx/room/support/AutoCloser;

    move-result-object v1

    iget-object v2, p0, Landroidx/room/RoomDatabase;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v2, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    move-object v4, v2

    :goto_6
    invoke-virtual {v1, v4}, Landroidx/room/support/AutoCloser;->initCoroutineScope(Lkotlinx/coroutines/CoroutineScope;)V

    .line 294
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/room/support/AutoClosingRoomOpenHelper;->getAutoCloser$room_runtime()Landroidx/room/support/AutoCloser;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/room/InvalidationTracker;->setAutoCloser$room_runtime(Landroidx/room/support/AutoCloser;)V

    .line 298
    :cond_12
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_14

    .line 299
    iget-object v0, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 300
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    .line 301
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    .line 302
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 303
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->multiInstanceInvalidationServiceIntent:Landroid/content/Intent;

    .line 300
    invoke-virtual {v0, v1, v2, p1}, Landroidx/room/InvalidationTracker;->initMultiInstanceInvalidation$room_runtime(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    .line 299
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    return-void
.end method

.method protected final internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker;->internalInit$room_runtime(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method protected internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteConnection;

    invoke-direct {v0, p1}, Landroidx/sqlite/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method public final isMainThread$room_runtime()Z
    .locals 2

    .line 584
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 559
    iget-object v0, p0, Landroidx/room/RoomDatabase;->autoCloser:Landroidx/room/support/AutoCloser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/room/support/AutoCloser;->isActive()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-nez v0, :cond_1

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->isSupportDatabaseOpen()Z

    move-result v0

    return v0
.end method

.method public final isOpenInternal$room_runtime()Z
    .locals 1

    .line 564
    iget-object v0, p0, Landroidx/room/RoomDatabase;->autoCloser:Landroidx/room/support/AutoCloser;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/room/support/AutoCloser;->getDelegateDatabase$room_runtime()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 565
    :cond_1
    iget-object v0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-nez v0, :cond_2

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v0}, Landroidx/room/RoomConnectionManager;->isSupportDatabaseOpen()Z

    move-result v0

    return v0
.end method

.method protected final varargs performClear(Z[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "tableNames"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 529
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 530
    new-instance v0, Landroidx/room/RoomDatabase$performClear$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/room/RoomDatabase$performClear$1;-><init>(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt;->runBlockingUninterruptible(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method

.method public final query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 2

    .line 0
    const-string/jumbo v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/room/RoomDatabase;->query$default(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    const-string/jumbo v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 661
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    if-eqz p2, :cond_0

    .line 663
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 665
    :cond_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p2

    invoke-interface {p2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p2

    invoke-interface {p2, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2

    const-string/jumbo v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 646
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 647
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v1, p1, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 750
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Landroidx/room/RoomDatabase;->runInTransaction(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .line 735
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final setUseTempTrackingTable$room_runtime(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Landroidx/room/RoomDatabase;->useTempTrackingTable:Z

    return-void
.end method

.method public final useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/room/Transactor;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Landroidx/room/RoomDatabase;->connectionManager:Landroidx/room/RoomConnectionManager;

    if-nez v0, :cond_0

    const-string v0, "connectionManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/room/RoomConnectionManager;->useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
