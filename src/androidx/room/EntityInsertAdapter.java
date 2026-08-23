package androidx.room;

import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class EntityInsertAdapter {
    protected abstract void bind(SQLiteStatement sQLiteStatement, Object obj);

    protected abstract String createQuery();

    public final void insert(SQLiteConnection connection, Object obj) throws Exception {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (obj == null) {
            return;
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            bind(sQLiteStatementPrepare, obj);
            sQLiteStatementPrepare.step();
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
        } finally {
        }
    }

    public final void insert(SQLiteConnection connection, Object[] objArr) throws Exception {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (objArr == null) {
            return;
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            Iterator it = ArrayIteratorKt.iterator(objArr);
            while (it.hasNext()) {
                Object next = it.next();
                if (next != null) {
                    bind(sQLiteStatementPrepare, next);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                }
            }
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
        } finally {
        }
    }

    public final void insert(SQLiteConnection connection, Iterable<Object> iterable) throws Exception {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (iterable == null) {
            return;
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            for (Object obj : iterable) {
                if (obj != null) {
                    bind(sQLiteStatementPrepare, obj);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                }
            }
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
        } finally {
        }
    }

    public final long insertAndReturnId(SQLiteConnection connection, Object obj) throws Exception {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (obj == null) {
            return -1L;
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            bind(sQLiteStatementPrepare, obj);
            sQLiteStatementPrepare.step();
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return SQLiteConnectionUtil.getLastInsertedRowId(connection);
        } finally {
        }
    }

    public final long[] insertAndReturnIdsArray(SQLiteConnection connection, Collection<Object> collection) throws Exception {
        long lastInsertedRowId;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (collection == null) {
            return new long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            int size = collection.size();
            long[] jArr = new long[size];
            for (int i = 0; i < size; i++) {
                Object objElementAt = CollectionsKt.elementAt(collection, i);
                if (objElementAt != null) {
                    bind(sQLiteStatementPrepare, objElementAt);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    lastInsertedRowId = SQLiteConnectionUtil.getLastInsertedRowId(connection);
                } else {
                    lastInsertedRowId = -1;
                }
                jArr[i] = lastInsertedRowId;
            }
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return jArr;
        } finally {
        }
    }

    public final long[] insertAndReturnIdsArray(SQLiteConnection connection, Object[] objArr) throws Exception {
        long lastInsertedRowId;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (objArr == null) {
            return new long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            int length = objArr.length;
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                if (obj != null) {
                    bind(sQLiteStatementPrepare, obj);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    lastInsertedRowId = SQLiteConnectionUtil.getLastInsertedRowId(connection);
                } else {
                    lastInsertedRowId = -1;
                }
                jArr[i] = lastInsertedRowId;
            }
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return jArr;
        } finally {
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(SQLiteConnection connection, Collection<Object> collection) throws Exception {
        long lastInsertedRowId;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (collection == null) {
            return new Long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            int size = collection.size();
            Long[] lArr = new Long[size];
            for (int i = 0; i < size; i++) {
                Object objElementAt = CollectionsKt.elementAt(collection, i);
                if (objElementAt != null) {
                    bind(sQLiteStatementPrepare, objElementAt);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    lastInsertedRowId = SQLiteConnectionUtil.getLastInsertedRowId(connection);
                } else {
                    lastInsertedRowId = -1;
                }
                lArr[i] = Long.valueOf(lastInsertedRowId);
            }
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return lArr;
        } finally {
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(SQLiteConnection connection, Object[] objArr) throws Exception {
        long lastInsertedRowId;
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (objArr == null) {
            return new Long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            int length = objArr.length;
            Long[] lArr = new Long[length];
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                if (obj != null) {
                    bind(sQLiteStatementPrepare, obj);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    lastInsertedRowId = SQLiteConnectionUtil.getLastInsertedRowId(connection);
                } else {
                    lastInsertedRowId = -1;
                }
                lArr[i] = Long.valueOf(lastInsertedRowId);
            }
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return lArr;
        } finally {
        }
    }

    public final List<Long> insertAndReturnIdsList(SQLiteConnection connection, Object[] objArr) throws Exception {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (objArr == null) {
            return CollectionsKt.emptyList();
        }
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            for (Object obj : objArr) {
                if (obj != null) {
                    bind(sQLiteStatementPrepare, obj);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    listCreateListBuilder.add(Long.valueOf(SQLiteConnectionUtil.getLastInsertedRowId(connection)));
                } else {
                    listCreateListBuilder.add(-1L);
                }
            }
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return CollectionsKt.build(listCreateListBuilder);
        } finally {
        }
    }

    public final List<Long> insertAndReturnIdsList(SQLiteConnection connection, Collection<Object> collection) throws Exception {
        Intrinsics.checkNotNullParameter(connection, "connection");
        if (collection == null) {
            return CollectionsKt.emptyList();
        }
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            for (Object obj : collection) {
                if (obj != null) {
                    bind(sQLiteStatementPrepare, obj);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    listCreateListBuilder.add(Long.valueOf(SQLiteConnectionUtil.getLastInsertedRowId(connection)));
                } else {
                    listCreateListBuilder.add(-1L);
                }
            }
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return CollectionsKt.build(listCreateListBuilder);
        } finally {
        }
    }
}
