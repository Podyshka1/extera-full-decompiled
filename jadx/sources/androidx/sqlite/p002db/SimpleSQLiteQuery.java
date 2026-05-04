package androidx.sqlite.p002db;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {
    public static final Companion Companion = new Companion(null);
    private final Object[] bindArgs;
    private final String query;

    public SimpleSQLiteQuery(String query, Object[] objArr) {
        Intrinsics.checkNotNullParameter(query, "query");
        this.query = query;
        this.bindArgs = objArr;
    }

    @Override // androidx.sqlite.p002db.SupportSQLiteQuery
    public String getSql() {
        return this.query;
    }

    @Override // androidx.sqlite.p002db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram statement) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        Companion.bind(statement, this.bindArgs);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void bind(SupportSQLiteProgram statement, Object[] objArr) {
            Intrinsics.checkNotNullParameter(statement, "statement");
            if (objArr == null) {
                return;
            }
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                Object obj = objArr[i];
                i++;
                bind(statement, i, obj);
            }
        }

        private final void bind(SupportSQLiteProgram supportSQLiteProgram, int i, Object obj) {
            if (obj == null) {
                supportSQLiteProgram.bindNull(i);
                return;
            }
            if (obj instanceof byte[]) {
                supportSQLiteProgram.bindBlob(i, (byte[]) obj);
                return;
            }
            if (obj instanceof Float) {
                supportSQLiteProgram.bindDouble(i, ((Number) obj).floatValue());
                return;
            }
            if (obj instanceof Double) {
                supportSQLiteProgram.bindDouble(i, ((Number) obj).doubleValue());
                return;
            }
            if (obj instanceof Long) {
                supportSQLiteProgram.bindLong(i, ((Number) obj).longValue());
                return;
            }
            if (obj instanceof Integer) {
                supportSQLiteProgram.bindLong(i, ((Number) obj).intValue());
                return;
            }
            if (obj instanceof Short) {
                supportSQLiteProgram.bindLong(i, ((Number) obj).shortValue());
                return;
            }
            if (obj instanceof Byte) {
                supportSQLiteProgram.bindLong(i, ((Number) obj).byteValue());
                return;
            }
            if (obj instanceof String) {
                supportSQLiteProgram.bindString(i, (String) obj);
                return;
            }
            if (obj instanceof Boolean) {
                supportSQLiteProgram.bindLong(i, ((Boolean) obj).booleanValue() ? 1L : 0L);
                return;
            }
            throw new IllegalArgumentException("Cannot bind " + obj + " at index " + i + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
        }
    }
}
