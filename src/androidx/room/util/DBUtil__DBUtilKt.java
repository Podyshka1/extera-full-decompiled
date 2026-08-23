package androidx.room.util;

import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u0017\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/sqlite/SQLiteConnection;", "connection", _UrlKt.FRAGMENT_ENCODE_SET, "dropFtsSyncTriggers", "(Landroidx/sqlite/SQLiteConnection;)V", "room-runtime"}, m754k = 5, mv = {2, 1, 0}, xi = 48, xs = "androidx/room/util/DBUtil")
@SourceDebugExtension({"SMAP\nDBUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n1869#2,2:172\n*S KotlinDebug\n*F\n+ 1 DBUtil.kt\nandroidx/room/util/DBUtil__DBUtilKt\n*L\n109#1:172,2\n*E\n"})
abstract /* synthetic */ class DBUtil__DBUtilKt {
    public static final void dropFtsSyncTriggers(SQLiteConnection sQLiteConnection) {
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare("SELECT name FROM sqlite_master WHERE type = 'trigger'");
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
                SQLite.execSQL(sQLiteConnection, "DROP TRIGGER IF EXISTS " + str);
            }
        }
    }
}
