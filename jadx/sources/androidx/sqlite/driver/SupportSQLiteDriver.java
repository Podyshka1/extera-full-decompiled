package androidx.sqlite.driver;

import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.p002db.SupportSQLiteOpenHelper;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class SupportSQLiteDriver implements SQLiteDriver {
    private final SupportSQLiteOpenHelper openHelper;

    @Override // androidx.sqlite.SQLiteDriver
    public boolean hasConnectionPool() {
        return true;
    }

    public SupportSQLiteDriver(SupportSQLiteOpenHelper openHelper) {
        Intrinsics.checkNotNullParameter(openHelper, "openHelper");
        this.openHelper = openHelper;
    }

    @Override // androidx.sqlite.SQLiteDriver
    public SupportSQLiteConnection open(String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        String databaseName = this.openHelper.getDatabaseName();
        if (databaseName == null) {
            if (!Intrinsics.areEqual(fileName, ":memory:")) {
                throw new IllegalArgumentException(("This driver is configured to open an in-memory database but a file-based named '" + fileName + "' was requested.").toString());
            }
        } else if (!Intrinsics.areEqual(databaseName, fileName) && !Intrinsics.areEqual(StringsKt.substringAfterLast$default(databaseName, '/', null, 2, null), StringsKt.substringAfterLast$default(fileName, '/', null, 2, null))) {
            throw new IllegalArgumentException(("This driver is configured to open a database named '" + this.openHelper.getDatabaseName() + "' but '" + fileName + "' was requested.").toString());
        }
        return new SupportSQLiteConnection(this.openHelper.getWritableDatabase());
    }
}
