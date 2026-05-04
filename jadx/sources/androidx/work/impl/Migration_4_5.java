package androidx.work.impl;

import androidx.room.migration.Migration;
import androidx.sqlite.p002db.SupportSQLiteDatabase;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class Migration_4_5 extends Migration {
    public static final Migration_4_5 INSTANCE = new Migration_4_5();

    private Migration_4_5() {
        super(4, 5);
    }

    @Override // androidx.room.migration.Migration
    public void migrate(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        db.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
        db.execSQL("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
    }
}
