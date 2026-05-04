.class public abstract Landroidx/room/EntityInsertAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
.end method

.method protected abstract createQuery()Ljava/lang/String;
.end method

.method public final insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroidx/room/EntityInsertAdapter;->createQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    .line 88
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0, p1, v0}, Landroidx/room/EntityInsertAdapter;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 91
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 92
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 94
    :cond_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 87
    invoke-static {p1, p2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :goto_1
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroidx/room/EntityInsertAdapter;->createQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    .line 58
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroidx/room/EntityInsertAdapter;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 59
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 57
    invoke-static {p1, p2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final insert(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroidx/room/EntityInsertAdapter;->createQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object p1

    .line 71
    :try_start_0
    invoke-static {p2}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0, p1, v0}, Landroidx/room/EntityInsertAdapter;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 74
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 75
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 77
    :cond_2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 70
    invoke-static {p1, p2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :goto_1
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/lang/Object;",
            ")J"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 105
    :cond_0
    invoke-virtual {p0}, Landroidx/room/EntityInsertAdapter;->createQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v0

    .line 106
    :try_start_0
    invoke-virtual {p0, v0, p2}, Landroidx/room/EntityInsertAdapter;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 107
    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    .line 105
    invoke-static {v0, p2}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 109
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide p1

    return-wide p1

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v0, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final insertAndReturnIdsArray(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)[J"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 122
    new-array p1, v0, [J

    return-object p1

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroidx/room/EntityInsertAdapter;->createQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 124
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v3, v2, [J

    :goto_0
    if-ge v0, v2, :cond_2

    .line 125
    move-object v4, p2

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {p0, v1, v4}, Landroidx/room/EntityInsertAdapter;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 128
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 129
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 130
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-wide/16 v4, -0x1

    .line 132
    :goto_1
    aput-wide v4, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 123
    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final insertAndReturnIdsArray(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "[",
            "Ljava/lang/Object;",
            ")[J"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 148
    new-array p1, v0, [J

    return-object p1

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroidx/room/EntityInsertAdapter;->createQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 150
    :try_start_0
    array-length v2, p2

    new-array v3, v2, [J

    :goto_0
    if-ge v0, v2, :cond_2

    .line 151
    aget-object v4, p2, v0

    if-eqz v4, :cond_1

    .line 153
    invoke-virtual {p0, v1, v4}, Landroidx/room/EntityInsertAdapter;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 154
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 155
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 156
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-wide/16 v4, -0x1

    .line 158
    :goto_1
    aput-wide v4, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 149
    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final insertAndReturnIdsArrayBox(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)[Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 174
    new-array p1, v0, [Ljava/lang/Long;

    return-object p1

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroidx/room/EntityInsertAdapter;->createQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 176
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Long;

    :goto_0
    if-ge v0, v2, :cond_2

    .line 177
    move-object v4, p2

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {p0, v1, v4}, Landroidx/room/EntityInsertAdapter;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 180
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 181
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 182
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-wide/16 v4, -0x1

    .line 184
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 175
    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final insertAndReturnIdsArrayBox(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)[Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Long;"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 200
    new-array p1, v0, [Ljava/lang/Long;

    return-object p1

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroidx/room/EntityInsertAdapter;->createQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 202
    :try_start_0
    array-length v2, p2

    new-array v3, v2, [Ljava/lang/Long;

    :goto_0
    if-ge v0, v2, :cond_2

    .line 203
    aget-object v4, p2, v0

    if-eqz v4, :cond_1

    .line 205
    invoke-virtual {p0, v1, v4}, Landroidx/room/EntityInsertAdapter;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 206
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 207
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 208
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-wide/16 v4, -0x1

    .line 210
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 201
    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v3

    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 253
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 254
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Landroidx/room/EntityInsertAdapter;->createQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 256
    :try_start_0
    check-cast p2, Ljava/lang/Iterable;

    .line 1869
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 258
    invoke-virtual {p0, v1, v2}, Landroidx/room/EntityInsertAdapter;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 259
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 260
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 261
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-wide/16 v2, -0x1

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 255
    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 254
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 255
    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final insertAndReturnIdsList(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/sqlite/SQLiteConnection;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 226
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 227
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Landroidx/room/EntityInsertAdapter;->createQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    .line 13472
    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    if-eqz v4, :cond_1

    .line 231
    invoke-virtual {p0, v1, v4}, Landroidx/room/EntityInsertAdapter;->bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 232
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 233
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->reset()V

    .line 234
    invoke-static {p1}, Landroidx/room/util/SQLiteConnectionUtil;->getLastInsertedRowId(Landroidx/sqlite/SQLiteConnection;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-wide/16 v4, -0x1

    .line 236
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 228
    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 227
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 228
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method
