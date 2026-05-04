.class final Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;
.super Landroidx/sqlite/driver/SupportSQLiteStatement;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/SQLiteStatement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JournalModeSetStatement"
.end annotation


# instance fields
.field private final delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Landroidx/sqlite/driver/SupportSQLiteStatement;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sql"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 284
    invoke-direct {p0, p1, p2, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 283
    iput-object p3, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    return-void
.end method

.method public bindText(ILjava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0, p1, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->clearBindings()V

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->close()V

    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-virtual {v0, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getColumnCount()I
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0, p1}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->reset()V

    return-void
.end method

.method public step()Z
    .locals 4

    .line 286
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->delegate:Landroidx/sqlite/driver/SupportSQLiteStatement;

    invoke-interface {v0}, Landroidx/sqlite/SQLiteStatement;->step()Z

    move-result v0

    const/4 v1, 0x0

    .line 289
    invoke-virtual {p0, v1}, Landroidx/sqlite/driver/SupportSQLiteStatement$JournalModeSetStatement;->getText(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wal"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->enableWriteAheadLogging()Z

    return v0

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->disableWriteAheadLogging()V

    return v0
.end method
