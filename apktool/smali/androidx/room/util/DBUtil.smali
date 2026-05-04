.class public abstract Landroidx/room/util/DBUtil;
.super Ljava/lang/Object;


# direct methods
.method public static final dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/util/DBUtil__DBUtilKt;->dropFtsSyncTriggers(Landroidx/sqlite/SQLiteConnection;)V

    return-void
.end method

.method public static final getCoroutineContext(Landroidx/room/RoomDatabase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/room/util/DBUtil__DBUtil_androidKt;->getCoroutineContext(Landroidx/room/RoomDatabase;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/room/util/DBUtil__DBUtil_androidKt;->performBlocking(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/room/util/DBUtil__DBUtil_androidKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/room/util/DBUtil__DBUtil_androidKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final readVersion(Ljava/io/File;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/room/util/DBUtil__DBUtil_androidKt;->readVersion(Ljava/io/File;)I

    move-result p0

    return p0
.end method
