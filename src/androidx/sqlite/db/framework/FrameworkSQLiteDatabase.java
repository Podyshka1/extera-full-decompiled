package androidx.sqlite.db.framework;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.text.TextUtils;
import android.util.Pair;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0014\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 B2\u00020\u0001:\u0001BB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0003¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\nJ\u000f\u0010\u0015\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\u0011J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001dJ!\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b\u001b\u0010 JE\u0010*\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\"2\u0006\u0010%\u001a\u00020$2\b\u0010&\u001a\u0004\u0018\u00010\u000b2\u0012\u0010)\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010(\u0018\u00010'H\u0016¢\u0006\u0004\b*\u0010+J\u0017\u0010,\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b,\u0010-J)\u0010,\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0010\u0010.\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010(0'H\u0016¢\u0006\u0004\b,\u0010/J\u000f\u00100\u001a\u00020\u0017H\u0016¢\u0006\u0004\b0\u0010\u0019J\u000f\u00101\u001a\u00020\bH\u0016¢\u0006\u0004\b1\u0010\u0011J\u000f\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\b2\u0010\u0011J\u0017\u00106\u001a\u00020\u00172\u0006\u00103\u001a\u00020\u0002H\u0000¢\u0006\u0004\b4\u00105R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00107R\u0014\u00108\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b8\u0010\u0019R\u0016\u0010;\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010:R\u0014\u0010<\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b<\u0010\u0019R(\u0010A\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0>\u0018\u00010=8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b?\u0010@¨\u0006C"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "Landroid/database/sqlite/SQLiteDatabase;", "delegate", "<init>", "(Landroid/database/sqlite/SQLiteDatabase;)V", "Landroid/database/sqlite/SQLiteTransactionListener;", "transactionListener", _UrlKt.FRAGMENT_ENCODE_SET, "internalBeginTransactionWithListenerReadOnly", "(Landroid/database/sqlite/SQLiteTransactionListener;)V", _UrlKt.FRAGMENT_ENCODE_SET, "sql", "Landroidx/sqlite/db/SupportSQLiteStatement;", "compileStatement", "(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;", "beginTransaction", "()V", "beginTransactionNonExclusive", "beginTransactionReadOnly", "beginTransactionWithListener", "endTransaction", "setTransactionSuccessful", _UrlKt.FRAGMENT_ENCODE_SET, "inTransaction", "()Z", "Landroidx/sqlite/db/SupportSQLiteQuery;", "query", "Landroid/database/Cursor;", "(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;", "Landroid/os/CancellationSignal;", "cancellationSignal", "(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;", "table", _UrlKt.FRAGMENT_ENCODE_SET, "conflictAlgorithm", "Landroid/content/ContentValues;", "values", "whereClause", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "whereArgs", "update", "(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I", "execSQL", "(Ljava/lang/String;)V", "bindArgs", "(Ljava/lang/String;[Ljava/lang/Object;)V", "enableWriteAheadLogging", "disableWriteAheadLogging", "close", "sqLiteDatabase", "isDelegate$sqlite_framework", "(Landroid/database/sqlite/SQLiteDatabase;)Z", "isDelegate", "Landroid/database/sqlite/SQLiteDatabase;", "isOpen", "getPath", "()Ljava/lang/String;", "path", "isWriteAheadLoggingEnabled", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/util/Pair;", "getAttachedDbs", "()Ljava/util/List;", "attachedDbs", "Companion", "sqlite-framework"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFrameworkSQLiteDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrameworkSQLiteDatabase.android.kt\nandroidx/sqlite/db/framework/FrameworkSQLiteDatabase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,369:1\n1#2:370\n*E\n"})
public final class FrameworkSQLiteDatabase implements SupportSQLiteDatabase {
    private static final Lazy<Method> beginTransactionMethod$delegate;
    private static final Lazy<Method> getThreadSessionMethod$delegate;
    private final SQLiteDatabase delegate;
    private static final Companion Companion = new Companion(null);
    private static final String[] CONFLICT_VALUES = {_UrlKt.FRAGMENT_ENCODE_SET, " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    private static final String[] EMPTY_STRING_ARRAY = new String[0];

    public FrameworkSQLiteDatabase(SQLiteDatabase sQLiteDatabase) {
        this.delegate = sQLiteDatabase;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public SupportSQLiteStatement compileStatement(String sql) {
        return new FrameworkSQLiteStatement(this.delegate.compileStatement(sql));
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransaction() {
        this.delegate.beginTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionNonExclusive() {
        this.delegate.beginTransactionNonExclusive();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void beginTransactionReadOnly() throws IllegalAccessException, InvocationTargetException {
        internalBeginTransactionWithListenerReadOnly(null);
    }

    public void beginTransactionWithListener(SQLiteTransactionListener transactionListener) {
        this.delegate.beginTransactionWithListener(transactionListener);
    }

    @SuppressLint({"BanUncheckedReflection"})
    private final void internalBeginTransactionWithListenerReadOnly(SQLiteTransactionListener transactionListener) throws IllegalAccessException, InvocationTargetException {
        Companion companion = Companion;
        if (companion.getBeginTransactionMethod() == null || companion.getGetThreadSessionMethod() == null) {
            if (transactionListener != null) {
                beginTransactionWithListener(transactionListener);
                return;
            } else {
                beginTransaction();
                return;
            }
        }
        Method beginTransactionMethod = companion.getBeginTransactionMethod();
        Object objInvoke = companion.getGetThreadSessionMethod().invoke(this.delegate, null);
        if (objInvoke != null) {
            beginTransactionMethod.invoke(objInvoke, 0, transactionListener, 0, null);
        } else {
            Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void endTransaction() {
        this.delegate.endTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void setTransactionSuccessful() {
        this.delegate.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean inTransaction() {
        return this.delegate.inTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public Cursor query(final SupportSQLiteQuery query) {
        final Function4 function4 = new Function4() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return FrameworkSQLiteDatabase.$r8$lambda$lJwI5rfEgbbousRT0mbuHaL1K3E(query, (SQLiteDatabase) obj, (SQLiteCursorDriver) obj2, (String) obj3, (SQLiteQuery) obj4);
            }
        };
        return this.delegate.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda2
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                return FrameworkSQLiteDatabase.m1766$r8$lambda$TcD1j6gYKY4LbAnrkCXD1zFcJk(function4, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, query.getQuery(), EMPTY_STRING_ARRAY, null);
    }

    public static SQLiteCursor $r8$lambda$lJwI5rfEgbbousRT0mbuHaL1K3E(SupportSQLiteQuery supportSQLiteQuery, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        supportSQLiteQuery.bindTo(new FrameworkSQLiteProgram(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    /* JADX INFO: renamed from: $r8$lambda$TcD1j6gYKY4LbAnrkC-XD1zFcJk, reason: not valid java name */
    public static Cursor m1766$r8$lambda$TcD1j6gYKY4LbAnrkCXD1zFcJk(Function4 function4, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        return (Cursor) function4.invoke(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public Cursor query(final SupportSQLiteQuery query, CancellationSignal cancellationSignal) {
        return this.delegate.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda0
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                return FrameworkSQLiteDatabase.$r8$lambda$VAdvOeOMNnZUpsfStEPetT5hHTM(query, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, query.getQuery(), EMPTY_STRING_ARRAY, null, cancellationSignal);
    }

    public static Cursor $r8$lambda$VAdvOeOMNnZUpsfStEPetT5hHTM(SupportSQLiteQuery supportSQLiteQuery, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        supportSQLiteQuery.bindTo(new FrameworkSQLiteProgram(sQLiteQuery));
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public int update(String table, int conflictAlgorithm, ContentValues values, String whereClause, Object[] whereArgs) {
        int i = 0;
        if (values.size() == 0) {
            f$$ExternalSyntheticBUOutline1.m178m("Empty values");
            return 0;
        }
        int size = values.size();
        int length = whereArgs == null ? size : whereArgs.length + size;
        Object[] objArr = new Object[length];
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append(CONFLICT_VALUES[conflictAlgorithm]);
        sb.append(table);
        sb.append(" SET ");
        for (String str : values.keySet()) {
            sb.append(i > 0 ? "," : _UrlKt.FRAGMENT_ENCODE_SET);
            sb.append(str);
            objArr[i] = values.get(str);
            sb.append("=?");
            i++;
        }
        if (whereArgs != null) {
            for (int i2 = size; i2 < length; i2++) {
                objArr[i2] = whereArgs[i2 - size];
            }
        }
        if (!TextUtils.isEmpty(whereClause)) {
            sb.append(" WHERE ");
            sb.append(whereClause);
        }
        SupportSQLiteStatement supportSQLiteStatementCompileStatement = compileStatement(sb.toString());
        SimpleSQLiteQuery.INSTANCE.bind(supportSQLiteStatementCompileStatement, objArr);
        return supportSQLiteStatementCompileStatement.executeUpdateDelete();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void execSQL(String sql) {
        this.delegate.execSQL(sql);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void execSQL(String sql, Object[] bindArgs) {
        this.delegate.execSQL(sql, bindArgs);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isOpen() {
        return this.delegate.isOpen();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public String getPath() {
        return this.delegate.getPath();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean enableWriteAheadLogging() {
        return this.delegate.enableWriteAheadLogging();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public void disableWriteAheadLogging() {
        this.delegate.disableWriteAheadLogging();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public boolean isWriteAheadLoggingEnabled() {
        return this.delegate.isWriteAheadLoggingEnabled();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public List<Pair<String, String>> getAttachedDbs() {
        return this.delegate.getAttachedDbs();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    public final boolean isDelegate$sqlite_framework(SQLiteDatabase sqLiteDatabase) {
        return Intrinsics.areEqual(this.delegate, sqLiteDatabase);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u001d\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\u000f\u001a\u0004\u0018\u00010\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u000e\u001a\u0004\b\u0010\u0010\f¨\u0006\u0012"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "CONFLICT_VALUES", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/String;", "EMPTY_STRING_ARRAY", "getThreadSessionMethod", "Ljava/lang/reflect/Method;", "getGetThreadSessionMethod", "()Ljava/lang/reflect/Method;", "getThreadSessionMethod$delegate", "Lkotlin/Lazy;", "beginTransactionMethod", "getBeginTransactionMethod", "beginTransactionMethod$delegate", "sqlite-framework"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Method getGetThreadSessionMethod() {
            return (Method) FrameworkSQLiteDatabase.getThreadSessionMethod$delegate.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Method getBeginTransactionMethod() {
            return (Method) FrameworkSQLiteDatabase.beginTransactionMethod$delegate.getValue();
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        getThreadSessionMethod$delegate = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FrameworkSQLiteDatabase.$r8$lambda$dKqImjZeKtSaT9NYGZ8XQAtPq7s();
            }
        });
        beginTransactionMethod$delegate = LazyKt.lazy(lazyThreadSafetyMode, new Function0() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FrameworkSQLiteDatabase.$r8$lambda$4rXSxUDV5Jwg_myyvvGbHMZMbGM();
            }
        });
    }

    public static Method $r8$lambda$dKqImjZeKtSaT9NYGZ8XQAtPq7s() {
        try {
            Method declaredMethod = SQLiteDatabase.class.getDeclaredMethod("getThreadSession", null);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Method $r8$lambda$4rXSxUDV5Jwg_myyvvGbHMZMbGM() {
        Class<?> returnType;
        try {
            Method getThreadSessionMethod = Companion.getGetThreadSessionMethod();
            if (getThreadSessionMethod == null || (returnType = getThreadSessionMethod.getReturnType()) == null) {
                return null;
            }
            Class cls = Integer.TYPE;
            return returnType.getDeclaredMethod("beginTransaction", cls, SQLiteTransactionListener.class, cls, CancellationSignal.class);
        } catch (Throwable unused) {
            return null;
        }
    }
}
