.class final Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;
.super Landroidx/collection/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/ConnectionWithLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreparedStatementCache"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/coroutines/ConnectionWithLock;


# direct methods
.method public constructor <init>(Landroidx/room/coroutines/ConnectionWithLock;I)V
    .locals 0

    .line 378
    iput-object p1, p0, Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;->this$0:Landroidx/room/coroutines/ConnectionWithLock;

    .line 379
    invoke-direct {p0, p2}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;->this$0:Landroidx/room/coroutines/ConnectionWithLock;

    invoke-static {v0}, Landroidx/room/coroutines/ConnectionWithLock;->access$getDelegate$p(Landroidx/room/coroutines/ConnectionWithLock;)Landroidx/sqlite/SQLiteConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 378
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;->create(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 378
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroidx/sqlite/SQLiteStatement;

    check-cast p4, Landroidx/sqlite/SQLiteStatement;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/room/coroutines/ConnectionWithLock$PreparedStatementCache;->entryRemoved(ZLjava/lang/String;Landroidx/sqlite/SQLiteStatement;Landroidx/sqlite/SQLiteStatement;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroidx/sqlite/SQLiteStatement;Landroidx/sqlite/SQLiteStatement;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-interface {p3}, Landroidx/sqlite/SQLiteStatement;->close()V

    .line 393
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
