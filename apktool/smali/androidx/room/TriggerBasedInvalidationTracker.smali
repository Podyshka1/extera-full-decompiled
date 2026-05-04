.class public final Landroidx/room/TriggerBasedInvalidationTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/TriggerBasedInvalidationTracker$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/room/TriggerBasedInvalidationTracker$Companion;

.field private static final TRIGGERS:[Ljava/lang/String;


# instance fields
.field private final database:Landroidx/room/RoomDatabase;

.field private final observedTableStates:Landroidx/room/ObservedTableStates;

.field private final observedTableVersions:Landroidx/room/ObservedTableVersions;

.field private onAllowRefresh:Lkotlin/jvm/functions/Function0;

.field private final onInvalidatedTablesIds:Lkotlin/jvm/functions/Function1;

.field private final pendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final shadowTablesMap:Ljava/util/Map;

.field private final tableIdLookup:Ljava/util/Map;

.field private final tablesNames:[Ljava/lang/String;

.field private final useTempTable:Z

.field private final viewTables:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$NRZHa3RQXpIcgcxW1BMkNDbO3A8(Landroidx/sqlite/SQLiteStatement;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/room/TriggerBasedInvalidationTracker;->checkInvalidatedTables$lambda$14(Landroidx/sqlite/SQLiteStatement;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cM81ONhjXKWpAvdfyxzSR0BlDDY()Z
    .locals 1

    .line 0
    invoke-static {}, Landroidx/room/TriggerBasedInvalidationTracker;->onAllowRefresh$lambda$0()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/TriggerBasedInvalidationTracker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/TriggerBasedInvalidationTracker;->Companion:Landroidx/room/TriggerBasedInvalidationTracker$Companion;

    .line 463
    const-string v0, "UPDATE"

    const-string v1, "DELETE"

    const-string v2, "INSERT"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/room/TriggerBasedInvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V
    .locals 3

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shadowTablesMap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "viewTables"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tableNames"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onInvalidatedTablesIds"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->database:Landroidx/room/RoomDatabase;

    .line 150
    iput-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker;->shadowTablesMap:Ljava/util/Map;

    .line 152
    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker;->viewTables:Ljava/util/Map;

    .line 156
    iput-boolean p5, p0, Landroidx/room/TriggerBasedInvalidationTracker;->useTempTable:Z

    .line 159
    iput-object p6, p0, Landroidx/room/TriggerBasedInvalidationTracker;->onInvalidatedTablesIds:Lkotlin/jvm/functions/Function1;

    .line 174
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->pendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 177
    new-instance p1, Landroidx/room/TriggerBasedInvalidationTracker$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Landroidx/room/TriggerBasedInvalidationTracker$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->onAllowRefresh:Lkotlin/jvm/functions/Function0;

    .line 180
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->tableIdLookup:Ljava/util/Map;

    .line 182
    array-length p1, p4

    new-array p3, p1, [Ljava/lang/String;

    :goto_0
    const-string/jumbo p5, "toLowerCase(...)"

    if-ge p2, p1, :cond_2

    .line 183
    aget-object p6, p4, p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p6, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p6, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->tableIdLookup:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->shadowTablesMap:Ljava/util/Map;

    aget-object v2, p4, p2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    move-object p6, v0

    .line 186
    :goto_2
    aput-object p6, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 181
    :cond_2
    iput-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker;->tablesNames:[Ljava/lang/String;

    .line 191
    iget-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->shadowTablesMap:Ljava/util/Map;

    .line 216
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object p6, p0, Landroidx/room/TriggerBasedInvalidationTracker;->tableIdLookup:Ljava/util/Map;

    invoke-interface {p6, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_3

    .line 194
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object p4, p0, Landroidx/room/TriggerBasedInvalidationTracker;->tableIdLookup:Ljava/util/Map;

    invoke-static {p4, p3}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 199
    :cond_4
    new-instance p1, Landroidx/room/ObservedTableStates;

    iget-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker;->tablesNames:[Ljava/lang/String;

    array-length p2, p2

    invoke-direct {p1, p2}, Landroidx/room/ObservedTableStates;-><init>(I)V

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/room/ObservedTableStates;

    .line 200
    new-instance p1, Landroidx/room/ObservedTableVersions;

    iget-object p2, p0, Landroidx/room/TriggerBasedInvalidationTracker;->tablesNames:[Ljava/lang/String;

    array-length p2, p2

    invoke-direct {p1, p2}, Landroidx/room/ObservedTableVersions;-><init>(I)V

    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableVersions:Landroidx/room/ObservedTableVersions;

    return-void
.end method

.method public static final synthetic access$checkInvalidatedTables(Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/PooledConnection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2}, Landroidx/room/TriggerBasedInvalidationTracker;->checkInvalidatedTables(Landroidx/room/PooledConnection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDatabase$p(Landroidx/room/TriggerBasedInvalidationTracker;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 147
    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker;->database:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method public static final synthetic access$getObservedTableStates$p(Landroidx/room/TriggerBasedInvalidationTracker;)Landroidx/room/ObservedTableStates;
    .locals 0

    .line 147
    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/room/ObservedTableStates;

    return-object p0
.end method

.method public static final synthetic access$getObservedTableVersions$p(Landroidx/room/TriggerBasedInvalidationTracker;)Landroidx/room/ObservedTableVersions;
    .locals 0

    .line 147
    iget-object p0, p0, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableVersions:Landroidx/room/ObservedTableVersions;

    return-object p0
.end method

.method public static final synthetic access$notifyInvalidation(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->notifyInvalidation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$startTrackingTable(Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/PooledConnection;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroidx/room/TriggerBasedInvalidationTracker;->startTrackingTable(Landroidx/room/PooledConnection;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$stopTrackingTable(Landroidx/room/TriggerBasedInvalidationTracker;Landroidx/room/PooledConnection;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroidx/room/TriggerBasedInvalidationTracker;->stopTrackingTable(Landroidx/room/PooledConnection;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final checkInvalidatedTables(Landroidx/room/PooledConnection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;

    iget v1, v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;

    invoke-direct {v0, p0, p2}, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 443
    iget v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/room/PooledConnection;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 445
    new-instance p2, Landroidx/room/TriggerBasedInvalidationTracker$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroidx/room/TriggerBasedInvalidationTracker$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;->label:I

    const-string v2, "SELECT * FROM room_table_modification_log WHERE invalidated = 1"

    invoke-interface {p1, v2, p2, v0}, Landroidx/room/PooledConnection;->usePrepared(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    .line 443
    :cond_4
    :goto_1
    check-cast p2, Ljava/util/Set;

    .line 452
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 453
    iput-object p2, v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/room/TriggerBasedInvalidationTracker$checkInvalidatedTables$1;->label:I

    const-string v2, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"

    invoke-static {p1, v2, v0}, Landroidx/room/TransactorKt;->execSQL(Landroidx/room/PooledConnection;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p2
.end method

.method private static final checkInvalidatedTables$lambda$14(Landroidx/sqlite/SQLiteStatement;)Ljava/util/Set;
    .locals 3

    const-string/jumbo v0, "statement"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v0

    .line 447
    :goto_0
    invoke-interface {p0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 448
    invoke-interface {p0, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_0
    invoke-static {v0}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private final notifyInvalidation(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;

    iget v1, v0, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;

    invoke-direct {v0, p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 406
    iget v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/concurrent/CloseBarrier;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 407
    iget-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getCloseBarrier$room_runtime()Landroidx/room/concurrent/CloseBarrier;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroidx/room/concurrent/CloseBarrier;->block$room_runtime()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 408
    :try_start_1
    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker;->pendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 410
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    invoke-virtual {p1}, Landroidx/room/concurrent/CloseBarrier;->unblock$room_runtime()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_2

    .line 412
    :cond_3
    :try_start_2
    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker;->onAllowRefresh:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 414
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    invoke-virtual {p1}, Landroidx/room/concurrent/CloseBarrier;->unblock$room_runtime()V

    return-object v0

    .line 417
    :cond_4
    :try_start_3
    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker;->database:Landroidx/room/RoomDatabase;

    new-instance v5, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/room/TriggerBasedInvalidationTracker$notifyInvalidation$1;->label:I

    invoke-virtual {v2, v4, v5, v0}, Landroidx/room/RoomDatabase;->useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 406
    :goto_1
    :try_start_4
    check-cast p1, Ljava/util/Set;

    .line 433
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 434
    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableVersions:Landroidx/room/ObservedTableVersions;

    invoke-virtual {v1, p1}, Landroidx/room/ObservedTableVersions;->increment(Ljava/util/Set;)V

    .line 435
    iget-object v1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->onInvalidatedTablesIds:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    :cond_6
    invoke-virtual {v0}, Landroidx/room/concurrent/CloseBarrier;->unblock$room_runtime()V

    return-object p1

    :goto_2
    invoke-virtual {v0}, Landroidx/room/concurrent/CloseBarrier;->unblock$room_runtime()V

    throw p1

    .line 439
    :cond_7
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private static final onAllowRefresh$lambda$0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private final resolveViews([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .line 288
    invoke-static {}, Lkotlin/collections/SetsKt;->createSetBuilder()Ljava/util/Set;

    move-result-object v0

    .line 13472
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 290
    iget-object v5, p0, Landroidx/room/TriggerBasedInvalidationTracker;->viewTables:Ljava/util/Map;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "toLowerCase(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {v0}, Lkotlin/collections/SetsKt;->build(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 38
    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private final startTrackingTable(Landroidx/room/PooledConnection;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;

    iget v1, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;

    invoke-direct {v0, p0, p3}, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 327
    iget v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->I$2:I

    iget p2, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->I$1:I

    iget v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->I$0:I

    iget-object v5, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->L$2:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    iget-object v6, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->L$0:Ljava/lang/Object;

    check-cast v7, Landroidx/room/PooledConnection;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p2, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->I$0:I

    iget-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/room/PooledConnection;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 328
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR IGNORE INTO room_table_modification_log VALUES("

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", 0)"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->L$0:Ljava/lang/Object;

    iput p2, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->I$0:I

    iput v4, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->label:I

    invoke-static {p1, p3, v0}, Landroidx/room/TransactorKt;->execSQL(Landroidx/room/PooledConnection;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_4

    .line 329
    :cond_4
    :goto_1
    iget-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker;->tablesNames:[Ljava/lang/String;

    aget-object p3, p3, p2

    .line 330
    sget-object v2, Landroidx/room/TriggerBasedInvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v5, v2

    const/4 v6, 0x0

    move-object v7, p1

    move p1, v5

    move-object v5, v2

    move v2, p2

    move p2, v6

    move-object v6, p3

    :goto_2
    if-ge p2, p1, :cond_7

    aget-object p3, v5, p2

    .line 331
    iget-boolean v8, p0, Landroidx/room/TriggerBasedInvalidationTracker;->useTempTable:Z

    if-eqz v8, :cond_5

    const-string v8, "TEMP"

    goto :goto_3

    :cond_5
    const-string v8, ""

    .line 332
    :goto_3
    sget-object v9, Landroidx/room/TriggerBasedInvalidationTracker;->Companion:Landroidx/room/TriggerBasedInvalidationTracker$Companion;

    invoke-static {v9, v6, p3}, Landroidx/room/TriggerBasedInvalidationTracker$Companion;->access$getTriggerName(Landroidx/room/TriggerBasedInvalidationTracker$Companion;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 334
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CREATE "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " TRIGGER IF NOT EXISTS `"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "` AFTER "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string p3, " ON `"

    .line 334
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string p3, "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = "

    .line 334
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    const-string p3, " AND invalidated = 0; END"

    .line 334
    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 333
    iput-object v7, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->L$2:Ljava/lang/Object;

    iput v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->I$0:I

    iput p2, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->I$1:I

    iput p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->I$2:I

    iput v3, v0, Landroidx/room/TriggerBasedInvalidationTracker$startTrackingTable$1;->label:I

    invoke-static {v7, p3, v0}, Landroidx/room/TransactorKt;->execSQL(Landroidx/room/PooledConnection;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    :goto_4
    return-object v1

    :cond_6
    :goto_5
    add-int/2addr p2, v4

    goto :goto_2

    .line 341
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final stopTrackingTable(Landroidx/room/PooledConnection;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;

    iget v1, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;

    invoke-direct {v0, p0, p3}, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 343
    iget v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->I$1:I

    iget p2, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->I$0:I

    iget-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->L$2:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    iget-object v4, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/room/PooledConnection;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p3, v4

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 344
    iget-object p3, p0, Landroidx/room/TriggerBasedInvalidationTracker;->tablesNames:[Ljava/lang/String;

    aget-object p2, p3, p2

    .line 345
    sget-object p3, Landroidx/room/TriggerBasedInvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v2, p3

    const/4 v4, 0x0

    move-object v8, p2

    move-object p2, p1

    move p1, v2

    move-object v2, p3

    move-object p3, v8

    :goto_1
    if-ge v4, p1, :cond_4

    aget-object v5, v2, v4

    .line 346
    sget-object v6, Landroidx/room/TriggerBasedInvalidationTracker;->Companion:Landroidx/room/TriggerBasedInvalidationTracker$Companion;

    invoke-static {v6, p3, v5}, Landroidx/room/TriggerBasedInvalidationTracker$Companion;->access$getTriggerName(Landroidx/room/TriggerBasedInvalidationTracker$Companion;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TRIGGER IF EXISTS `"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x60

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object p2, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->L$0:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->I$0:I

    iput p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->I$1:I

    iput v3, v0, Landroidx/room/TriggerBasedInvalidationTracker$stopTrackingTable$1;->label:I

    invoke-static {p2, v5, v0}, Landroidx/room/TransactorKt;->execSQL(Landroidx/room/PooledConnection;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p2

    move p2, v4

    :goto_2
    add-int/lit8 v4, p2, 0x1

    move-object p2, v5

    goto :goto_1

    .line 349
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public final configureConnection(Landroidx/sqlite/SQLiteConnection;)V
    .locals 7

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const-string v0, "PRAGMA query_only"

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 210
    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    const/4 v0, 0x0

    .line 211
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 209
    invoke-static {v1, v2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v0, :cond_1

    .line 214
    const-string v0, "PRAGMA temp_store = MEMORY"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 215
    const-string v0, "PRAGMA recursive_triggers = 1"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 216
    const-string v0, "DROP TABLE IF EXISTS room_table_modification_log"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 217
    iget-boolean v0, p0, Landroidx/room/TriggerBasedInvalidationTracker;->useTempTable:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 220
    const-string v1, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    const-string v2, "TEMP"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    .line 225
    :goto_0
    iget-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/room/ObservedTableStates;

    invoke-virtual {p1}, Landroidx/room/ObservedTableStates;->forceNeedSync$room_runtime()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 209
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final createFlow$room_runtime([Ljava/lang/String;[IZ)Lkotlinx/coroutines/flow/Flow;
    .locals 7

    const-string/jumbo v0, "resolvedTableNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tableIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v1, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;[IZ[Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public final onObserverAdded$room_runtime([I)Z
    .locals 1

    const-string/jumbo v0, "tableIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/room/ObservedTableStates;

    invoke-virtual {v0, p1}, Landroidx/room/ObservedTableStates;->onObserverAdded$room_runtime([I)Z

    move-result p1

    return p1
.end method

.method public final onObserverRemoved$room_runtime([I)Z
    .locals 1

    const-string/jumbo v0, "tableIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/room/ObservedTableStates;

    invoke-virtual {v0, p1}, Landroidx/room/ObservedTableStates;->onObserverRemoved$room_runtime([I)Z

    move-result p1

    return p1
.end method

.method public final refreshInvalidationAsync$room_runtime(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 6

    const-string/jumbo v0, "onRefreshScheduled"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onRefreshCompleted"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker;->pendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 390
    iget-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 391
    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    const-string p1, "Room Invalidation Tracker Refresh"

    invoke-direct {v1, p1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    .line 390
    new-instance v3, Landroidx/room/TriggerBasedInvalidationTracker$refreshInvalidationAsync$3;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p2, p1}, Landroidx/room/TriggerBasedInvalidationTracker$refreshInvalidationAsync$3;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final resetSync$room_runtime()V
    .locals 1

    .line 459
    iget-object v0, p0, Landroidx/room/TriggerBasedInvalidationTracker;->observedTableStates:Landroidx/room/ObservedTableStates;

    invoke-virtual {v0}, Landroidx/room/ObservedTableStates;->resetTriggerState$room_runtime()V

    return-void
.end method

.method public final setOnAllowRefresh$room_runtime(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->onAllowRefresh:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final syncTriggers$room_runtime(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;

    iget v1, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;

    invoke-direct {v0, p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 304
    iget v2, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/concurrent/CloseBarrier;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 305
    iget-object p1, p0, Landroidx/room/TriggerBasedInvalidationTracker;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->getCloseBarrier$room_runtime()Landroidx/room/concurrent/CloseBarrier;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroidx/room/concurrent/CloseBarrier;->block$room_runtime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    :try_start_1
    iget-object v2, p0, Landroidx/room/TriggerBasedInvalidationTracker;->database:Landroidx/room/RoomDatabase;

    new-instance v4, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$2$1;-><init>(Landroidx/room/TriggerBasedInvalidationTracker;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/room/TriggerBasedInvalidationTracker$syncTriggers$1;->label:I

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroidx/room/RoomDatabase;->useConnection(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    .line 103
    :goto_1
    invoke-virtual {v0}, Landroidx/room/concurrent/CloseBarrier;->unblock$room_runtime()V

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_2
    invoke-virtual {v0}, Landroidx/room/concurrent/CloseBarrier;->unblock$room_runtime()V

    throw p1

    .line 105
    :cond_4
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final validateTableNames$room_runtime([Ljava/lang/String;)Lkotlin/Pair;
    .locals 7

    const-string/jumbo v0, "names"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, p1}, Landroidx/room/TriggerBasedInvalidationTracker;->resolveViews([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 275
    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 276
    aget-object v3, p1, v2

    .line 277
    iget-object v4, p0, Landroidx/room/TriggerBasedInvalidationTracker;->tableIdLookup:Ljava/util/Map;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 278
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no table with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_1
    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method
