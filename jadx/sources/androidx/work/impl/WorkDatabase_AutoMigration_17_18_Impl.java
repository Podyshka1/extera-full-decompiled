package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class WorkDatabase_AutoMigration_17_18_Impl extends Migration {
    public WorkDatabase_AutoMigration_17_18_Impl() {
        super(17, 18);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SQLiteConnection connection) throws Exception {
        Intrinsics.checkNotNullParameter(connection, "connection");
        SQLite.execSQL(connection, "ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807");
        SQLite.execSQL(connection, "ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0");
    }
}
