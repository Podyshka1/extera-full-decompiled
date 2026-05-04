package androidx.room.util;

import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
abstract /* synthetic */ class DBUtil__DBUtilKt {
    public static final void dropFtsSyncTriggers(SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        SQLiteStatement sQLiteStatementPrepare = connection.prepare("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (sQLiteStatementPrepare.step()) {
            try {
                listCreateListBuilder.add(sQLiteStatementPrepare.getText(0));
            } finally {
            }
        }
        Unit unit = Unit.INSTANCE;
        AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
        for (String str : CollectionsKt.build(listCreateListBuilder)) {
            if (StringsKt.startsWith$default(str, "room_fts_content_sync_", false, 2, (Object) null)) {
                SQLite.execSQL(connection, "DROP TRIGGER IF EXISTS " + str);
            }
        }
    }
}
