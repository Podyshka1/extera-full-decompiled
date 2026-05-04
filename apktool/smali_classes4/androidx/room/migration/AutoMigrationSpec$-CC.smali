.class public abstract synthetic Landroidx/room/migration/AutoMigrationSpec$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$onPostMigrate(Landroidx/room/migration/AutoMigrationSpec;Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    .line 0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    instance-of v0, p1, Landroidx/sqlite/driver/SupportSQLiteConnection;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Landroidx/sqlite/driver/SupportSQLiteConnection;

    invoke-virtual {p1}, Landroidx/sqlite/driver/SupportSQLiteConnection;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/room/migration/AutoMigrationSpec;->onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    :cond_0
    return-void
.end method
