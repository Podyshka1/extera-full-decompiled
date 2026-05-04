.class public Landroidx/room/InvalidationTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/InvalidationTracker$Companion;,
        Landroidx/room/InvalidationTracker$Observer;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/room/InvalidationTracker$Companion;


# instance fields
.field private autoCloser:Landroidx/room/support/AutoCloser;

.field private final database:Landroidx/room/RoomDatabase;

.field private final implementation:Landroidx/room/TriggerBasedInvalidationTracker;

.field private final invalidationLiveDataContainer:Landroidx/room/InvalidationLiveDataContainer;

.field private multiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

.field private multiInstanceInvalidationIntent:Landroid/content/Intent;

.field private final observerMap:Ljava/util/Map;

.field private final observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final onRefreshCompleted:Lkotlin/jvm/functions/Function0;

.field private final onRefreshScheduled:Lkotlin/jvm/functions/Function0;

.field private final shadowTablesMap:Ljava/util/Map;

.field private final tableNames:[Ljava/lang/String;

.field private final trackerLock:Ljava/lang/Object;

.field private final viewTables:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$S0GAeZVlYzHdkENrWO-BCuj8x5g(Landroidx/room/InvalidationTracker;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/room/InvalidationTracker;->onRefreshCompleted$lambda$1(Landroidx/room/InvalidationTracker;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rV938R3HpEbbZMJ5mxkZVyQwHqY(Landroidx/room/InvalidationTracker;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/room/InvalidationTracker;->_init_$lambda$2(Landroidx/room/InvalidationTracker;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z_vz9Tqx65AifWN0It6OfeI4bTk(Landroidx/room/InvalidationTracker;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/room/InvalidationTracker;->onRefreshScheduled$lambda$0(Landroidx/room/InvalidationTracker;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/InvalidationTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/InvalidationTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/InvalidationTracker;->Companion:Landroidx/room/InvalidationTracker$Companion;

    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 8

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shadowTablesMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewTables"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tableNames"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    .line 53
    iput-object p2, p0, Landroidx/room/InvalidationTracker;->shadowTablesMap:Ljava/util/Map;

    .line 54
    iput-object p3, p0, Landroidx/room/InvalidationTracker;->viewTables:Ljava/util/Map;

    .line 55
    iput-object p4, p0, Landroidx/room/InvalidationTracker;->tableNames:[Ljava/lang/String;

    .line 58
    new-instance v1, Landroidx/room/TriggerBasedInvalidationTracker;

    .line 63
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getUseTempTrackingTable$room_runtime()Z

    move-result v6

    .line 64
    new-instance v7, Landroidx/room/InvalidationTracker$implementation$1;

    invoke-direct {v7, p0}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(Ljava/lang/Object;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 58
    invoke-direct/range {v1 .. v7}, Landroidx/room/TriggerBasedInvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    .line 67
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/Map;

    .line 68
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationTracker;->observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    new-instance p1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda0;-><init>(Landroidx/room/InvalidationTracker;)V

    iput-object p1, p0, Landroidx/room/InvalidationTracker;->onRefreshScheduled:Lkotlin/jvm/functions/Function0;

    .line 80
    new-instance p1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda1;-><init>(Landroidx/room/InvalidationTracker;)V

    iput-object p1, p0, Landroidx/room/InvalidationTracker;->onRefreshCompleted:Lkotlin/jvm/functions/Function0;

    .line 83
    new-instance p1, Landroidx/room/InvalidationLiveDataContainer;

    invoke-direct {p1, v2}, Landroidx/room/InvalidationLiveDataContainer;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object p1, p0, Landroidx/room/InvalidationTracker;->invalidationLiveDataContainer:Landroidx/room/InvalidationLiveDataContainer;

    .line 91
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationTracker;->trackerLock:Ljava/lang/Object;

    .line 109
    new-instance p1, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Landroidx/room/InvalidationTracker$$ExternalSyntheticLambda2;-><init>(Landroidx/room/InvalidationTracker;)V

    invoke-virtual {v1, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->setOnAllowRefresh$room_runtime(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final _init_$lambda$2(Landroidx/room/InvalidationTracker;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->inCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isOpenInternal$room_runtime()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final synthetic access$getImplementation$p(Landroidx/room/InvalidationTracker;)Landroidx/room/TriggerBasedInvalidationTracker;
    .locals 0

    .line 49
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    return-object p0
.end method

.method public static final synthetic access$notifyInvalidatedObservers(Landroidx/room/InvalidationTracker;Ljava/util/Set;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker;->notifyInvalidatedObservers(Ljava/util/Set;)V

    return-void
.end method

.method public static final synthetic access$onAutoCloseCallback(Landroidx/room/InvalidationTracker;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/room/InvalidationTracker;->onAutoCloseCallback()V

    return-void
.end method

.method private final addObserverOnly(Landroidx/room/InvalidationTracker$Observer;)Z
    .locals 4

    .line 265
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {p1}, Landroidx/room/InvalidationTracker$Observer;->getTables$room_runtime()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/room/TriggerBasedInvalidationTracker;->validateTableNames$room_runtime([Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 267
    new-instance v2, Landroidx/room/ObserverWrapper;

    invoke-direct {v2, p1, v0, v1}, Landroidx/room/ObserverWrapper;-><init>(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 275
    :try_start_0
    iget-object v3, p0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    iget-object v2, p0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/Map;

    invoke-static {v2, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/ObserverWrapper;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 278
    :cond_0
    iget-object v3, p0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/ObserverWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_1

    .line 281
    iget-object p1, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {p1, v0}, Landroidx/room/TriggerBasedInvalidationTracker;->onObserverAdded$room_runtime([I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 32
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private final getAllObservers()Ljava/util/List;
    .locals 2

    .line 322
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 322
    :try_start_0
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private final notifyInvalidatedObservers(Ljava/util/Set;)V
    .locals 2

    .line 349
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 350
    :try_start_0
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    check-cast v1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/ObserverWrapper;

    .line 351
    invoke-virtual {v1, p1}, Landroidx/room/ObserverWrapper;->notifyByTableIds$room_runtime(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private final onAutoCloseCallback()V
    .locals 6

    .line 181
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->trackerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->multiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

    if-eqz v1, :cond_2

    .line 183
    invoke-direct {p0}, Landroidx/room/InvalidationTracker;->getAllObservers()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 827
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/room/InvalidationTracker$Observer;

    .line 183
    invoke-virtual {v5}, Landroidx/room/InvalidationTracker$Observer;->isRemote$room_runtime()Z

    move-result v5

    if-nez v5, :cond_0

    .line 855
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 183
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    invoke-virtual {v1}, Landroidx/room/MultiInstanceInvalidationClient;->stop()V

    .line 188
    :cond_2
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {v1}, Landroidx/room/TriggerBasedInvalidationTracker;->resetSync$room_runtime()V

    .line 189
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method private static final onRefreshCompleted$lambda$1(Landroidx/room/InvalidationTracker;)Lkotlin/Unit;
    .locals 0

    .line 80
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->autoCloser:Landroidx/room/support/AutoCloser;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/room/support/AutoCloser;->decrementCountAndScheduleClose()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onRefreshScheduled$lambda$0(Landroidx/room/InvalidationTracker;)Lkotlin/Unit;
    .locals 0

    .line 77
    iget-object p0, p0, Landroidx/room/InvalidationTracker;->autoCloser:Landroidx/room/support/AutoCloser;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/room/support/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 78
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final removeObserverOnly(Landroidx/room/InvalidationTracker$Observer;)Z
    .locals 2

    .line 318
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 318
    :try_start_0
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/room/ObserverWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {p1}, Landroidx/room/ObserverWrapper;->getTableIds$room_runtime()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->onObserverRemoved$room_runtime([I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method


# virtual methods
.method public final addRemoteObserver$room_runtime(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 1

    const-string/jumbo v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Landroidx/room/InvalidationTracker$Observer;->isRemote$room_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker;->addObserverOnly(Landroidx/room/InvalidationTracker$Observer;)Z

    return-void

    .line 259
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "isRemote was false of observer argument"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createFlow([Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    const-string/jumbo v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {v0, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->validateTableNames$room_runtime([Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 223
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {v1, v0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker;->createFlow$room_runtime([Ljava/lang/String;[IZ)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 224
    iget-object p2, p0, Landroidx/room/InvalidationTracker;->multiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroidx/room/MultiInstanceInvalidationClient;->createFlow([Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x2

    .line 226
    new-array v0, v0, [Lkotlinx/coroutines/flow/Flow;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final getDatabase$room_runtime()Landroidx/room/RoomDatabase;
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->database:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method public final getTableNames$room_runtime()[Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->tableNames:[Ljava/lang/String;

    return-object v0
.end method

.method public final initMultiInstanceInvalidation$room_runtime(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "serviceIntent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iput-object p3, p0, Landroidx/room/InvalidationTracker;->multiInstanceInvalidationIntent:Landroid/content/Intent;

    .line 455
    new-instance p3, Landroidx/room/MultiInstanceInvalidationClient;

    invoke-direct {p3, p1, p2, p0}, Landroidx/room/MultiInstanceInvalidationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/room/InvalidationTracker;)V

    iput-object p3, p0, Landroidx/room/InvalidationTracker;->multiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

    return-void
.end method

.method public final internalInit$room_runtime(Landroidx/sqlite/SQLiteConnection;)V
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {v0, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->configureConnection(Landroidx/sqlite/SQLiteConnection;)V

    .line 134
    iget-object p1, p0, Landroidx/room/InvalidationTracker;->trackerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 135
    :try_start_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->multiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/room/InvalidationTracker;->multiInstanceInvalidationIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/MultiInstanceInvalidationClient;->start(Landroid/content/Intent;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw v0
.end method

.method public final notifyObserversByTableNames$room_runtime(Ljava/util/Set;)V
    .locals 3

    const-string/jumbo v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->observerMapLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 364
    :try_start_0
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->observerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    check-cast v1, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/ObserverWrapper;

    .line 366
    invoke-virtual {v1}, Landroidx/room/ObserverWrapper;->getObserver$room_runtime()Landroidx/room/InvalidationTracker$Observer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/InvalidationTracker$Observer;->isRemote$room_runtime()Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    invoke-virtual {v1, p1}, Landroidx/room/ObserverWrapper;->notifyByTableNames$room_runtime(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public final refreshAsync()V
    .locals 3

    .line 165
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    iget-object v1, p0, Landroidx/room/InvalidationTracker;->onRefreshScheduled:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Landroidx/room/InvalidationTracker;->onRefreshCompleted:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Landroidx/room/TriggerBasedInvalidationTracker;->refreshInvalidationAsync$room_runtime(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public refreshVersionsAsync()V
    .locals 3

    .line 334
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    iget-object v1, p0, Landroidx/room/InvalidationTracker;->onRefreshScheduled:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Landroidx/room/InvalidationTracker;->onRefreshCompleted:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2}, Landroidx/room/TriggerBasedInvalidationTracker;->refreshInvalidationAsync$room_runtime(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public removeObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 1

    const-string/jumbo v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker;->removeObserverOnly(Landroidx/room/InvalidationTracker$Observer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 310
    new-instance p1, Landroidx/room/InvalidationTracker$removeObserver$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/room/InvalidationTracker$removeObserver$1;-><init>(Landroidx/room/InvalidationTracker;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt;->runBlockingUninterruptible(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setAutoCloser$room_runtime(Landroidx/room/support/AutoCloser;)V
    .locals 1

    const-string v0, "autoCloser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Landroidx/room/InvalidationTracker;->autoCloser:Landroidx/room/support/AutoCloser;

    .line 128
    new-instance v0, Landroidx/room/InvalidationTracker$setAutoCloser$1;

    invoke-direct {v0, p0}, Landroidx/room/InvalidationTracker$setAutoCloser$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/room/support/AutoCloser;->setAutoCloseCallback(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final stop$room_runtime()V
    .locals 1

    .line 460
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->multiInstanceInvalidationClient:Landroidx/room/MultiInstanceInvalidationClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/room/MultiInstanceInvalidationClient;->stop()V

    :cond_0
    return-void
.end method

.method public final sync$room_runtime(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 148
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->implementation:Landroidx/room/TriggerBasedInvalidationTracker;

    invoke-virtual {v0, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->syncTriggers$room_runtime(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final syncBlocking$room_runtime()V
    .locals 2

    .line 152
    new-instance v0, Landroidx/room/InvalidationTracker$syncBlocking$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker$syncBlocking$1;-><init>(Landroidx/room/InvalidationTracker;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Landroidx/room/coroutines/RunBlockingUninterruptible_androidKt;->runBlockingUninterruptible(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    return-void
.end method
