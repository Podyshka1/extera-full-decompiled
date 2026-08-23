package androidx.room.util;

import androidx.sqlite.SQLiteStatement;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
abstract /* synthetic */ class SQLiteStatementUtil__StatementUtilKt {
    public static final int getColumnIndexOrThrow(SQLiteStatement stmt, String name) {
        Intrinsics.checkNotNullParameter(stmt, "stmt");
        Intrinsics.checkNotNullParameter(name, "name");
        int iColumnIndexOf = SQLiteStatementUtil.columnIndexOf(stmt, name);
        if (iColumnIndexOf >= 0) {
            return iColumnIndexOf;
        }
        int columnCount = stmt.getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i = 0; i < columnCount; i++) {
            arrayList.add(stmt.getColumnName(i));
        }
        throw new IllegalArgumentException("Column '" + name + "' does not exist. Available columns: [" + CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null) + ']');
    }

    public static final int columnIndexOfCommon(SQLiteStatement sQLiteStatement, String name) {
        Intrinsics.checkNotNullParameter(sQLiteStatement, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        int columnCount = sQLiteStatement.getColumnCount();
        for (int i = 0; i < columnCount; i++) {
            if (Intrinsics.areEqual(name, sQLiteStatement.getColumnName(i))) {
                return i;
            }
        }
        return -1;
    }
}
