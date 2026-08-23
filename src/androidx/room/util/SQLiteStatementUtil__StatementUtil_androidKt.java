package androidx.room.util;

import android.os.Build;
import androidx.sqlite.SQLiteStatement;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0019\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"columnIndexOf", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/sqlite/SQLiteStatement;", "name", _UrlKt.FRAGMENT_ENCODE_SET, "findColumnIndexBySuffix", "findColumnIndexBySuffix$SQLiteStatementUtil__StatementUtil_androidKt", "room-runtime"}, m754k = 5, mv = {2, 1, 0}, xi = 48, xs = "androidx/room/util/SQLiteStatementUtil")
abstract /* synthetic */ class SQLiteStatementUtil__StatementUtil_androidKt {
    public static final int columnIndexOf(SQLiteStatement sQLiteStatement, String str) {
        int iColumnIndexOfCommon = SQLiteStatementUtil.columnIndexOfCommon(sQLiteStatement, str);
        if (iColumnIndexOfCommon >= 0) {
            return iColumnIndexOfCommon;
        }
        int iColumnIndexOfCommon2 = SQLiteStatementUtil.columnIndexOfCommon(sQLiteStatement, "`" + str + '`');
        return iColumnIndexOfCommon2 >= 0 ? iColumnIndexOfCommon2 : m165x9cb9e9e(sQLiteStatement, str);
    }

    /* JADX INFO: renamed from: findColumnIndexBySuffix$SQLiteStatementUtil__StatementUtil_androidKt */
    private static final int m165x9cb9e9e(SQLiteStatement sQLiteStatement, String str) {
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            int columnCount = sQLiteStatement.getColumnCount();
            String str2 = "." + str;
            String str3 = "." + str + '`';
            for (int i = 0; i < columnCount; i++) {
                String columnName = sQLiteStatement.getColumnName(i);
                if (columnName.length() >= str.length() + 2 && (StringsKt.endsWith$default(columnName, str2, false, 2, (Object) null) || (columnName.charAt(0) == '`' && StringsKt.endsWith$default(columnName, str3, false, 2, (Object) null)))) {
                    return i;
                }
            }
        }
        return -1;
    }
}
