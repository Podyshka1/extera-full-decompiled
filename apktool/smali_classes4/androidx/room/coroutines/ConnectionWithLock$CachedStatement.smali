.class final Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/SQLiteStatement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/coroutines/ConnectionWithLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachedStatement"
.end annotation


# instance fields
.field private final delegate:Landroidx/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/sqlite/SQLiteStatement;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public bindText(ILjava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 401
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 402
    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->reset()V

    return-void
.end method

.method public step()Z
    .locals 1

    iget-object v0, p0, Landroidx/room/coroutines/ConnectionWithLock$CachedStatement;->delegate:Landroidx/sqlite/SQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    return v0
.end method
