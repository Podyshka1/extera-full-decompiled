.class public final Landroidx/work/impl/WorkDatabase_AutoMigration_22_23_Impl;
.super Landroidx/room/migration/Migration;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x16

    const/16 v1, 0x17

    .line 10
    invoke-direct {p0, v0, v1}, Landroidx/room/migration/Migration;-><init>(II)V

    return-void
.end method


# virtual methods
.method public migrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    const-string v0, "ALTER TABLE `WorkSpec` ADD COLUMN `trace_tag` TEXT DEFAULT NULL"

    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->execSQL(Landroidx/sqlite/SQLiteConnection;Ljava/lang/String;)V

    return-void
.end method
