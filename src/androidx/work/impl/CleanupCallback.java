package androidx.work.impl;

import androidx.room.RoomDatabase;
import androidx.sqlite.p002db.SupportSQLiteDatabase;
import androidx.work.Clock;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class CleanupCallback extends RoomDatabase.Callback {
    private final Clock clock;

    public CleanupCallback(Clock clock) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.clock = clock;
    }

    private final String getPruneSQL() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < " + getPruneDate() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    private final long getPruneDate() {
        return this.clock.currentTimeMillis() - WorkDatabaseKt.PRUNE_THRESHOLD_MILLIS;
    }

    @Override // androidx.room.RoomDatabase.Callback
    public void onOpen(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        super.onOpen(db);
        db.beginTransaction();
        try {
            db.execSQL(getPruneSQL());
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
        }
    }
}
