package androidx.room.util;

import android.os.Build;
import androidx.sqlite.SQLiteStatement;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class SQLiteStatementUtil__StatementUtil_androidKt {
    public static final int columnIndexOf(SQLiteStatement sQLiteStatement, String name) {
        Intrinsics.checkNotNullParameter(sQLiteStatement, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        int iColumnIndexOfCommon = SQLiteStatementUtil.columnIndexOfCommon(sQLiteStatement, name);
        if (iColumnIndexOfCommon >= 0) {
            return iColumnIndexOfCommon;
        }
        int iColumnIndexOfCommon2 = SQLiteStatementUtil.columnIndexOfCommon(sQLiteStatement, '`' + name + '`');
        return iColumnIndexOfCommon2 >= 0 ? iColumnIndexOfCommon2 : m199x9cb9e9e(sQLiteStatement, name);
    }

    /* JADX INFO: renamed from: findColumnIndexBySuffix$SQLiteStatementUtil__StatementUtil_androidKt */
    private static final int m199x9cb9e9e(SQLiteStatement sQLiteStatement, String str) {
        if (Build.VERSION.SDK_INT <= 25 && str.length() != 0) {
            int columnCount = sQLiteStatement.getColumnCount();
            String str2 = '.' + str;
            String str3 = '.' + str + '`';
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
