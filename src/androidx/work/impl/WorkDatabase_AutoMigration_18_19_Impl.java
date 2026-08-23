package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class WorkDatabase_AutoMigration_18_19_Impl extends Migration {
    public WorkDatabase_AutoMigration_18_19_Impl() {
        super(18, 19);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SQLiteConnection connection) throws Exception {
        Intrinsics.checkNotNullParameter(connection, "connection");
        SQLite.execSQL(connection, "ALTER TABLE `WorkSpec` ADD COLUMN `stop_reason` INTEGER NOT NULL DEFAULT -256");
    }
}
