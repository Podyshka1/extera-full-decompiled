package androidx.room.migration;

import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.sqlite.p002db.SupportSQLiteDatabase;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public interface AutoMigrationSpec {
    void onPostMigrate(SQLiteConnection sQLiteConnection);

    void onPostMigrate(SupportSQLiteDatabase supportSQLiteDatabase);

    /* JADX INFO: renamed from: androidx.room.migration.AutoMigrationSpec$-CC, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    public abstract /* synthetic */ class CC {
        public static void $default$onPostMigrate(AutoMigrationSpec autoMigrationSpec, SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            if (connection instanceof SupportSQLiteConnection) {
                autoMigrationSpec.onPostMigrate(((SupportSQLiteConnection) connection).getDb());
            }
        }
    }
}
