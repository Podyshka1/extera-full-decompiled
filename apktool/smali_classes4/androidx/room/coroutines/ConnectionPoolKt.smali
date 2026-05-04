.class public abstract Landroidx/room/coroutines/ConnectionPoolKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final newConnectionPool(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;III)Landroidx/room/coroutines/ConnectionPool;
    .locals 7

    const-string v0, "driver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v1, Landroidx/room/coroutines/ConnectionPoolImpl;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;III)V

    return-object v1
.end method

.method public static final newSingleConnectionPool(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;I)Landroidx/room/coroutines/ConnectionPool;
    .locals 1

    const-string v0, "driver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Landroidx/room/coroutines/ConnectionPoolImpl;

    invoke-direct {v0, p0, p1, p2}, Landroidx/room/coroutines/ConnectionPoolImpl;-><init>(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;I)V

    return-object v0
.end method
