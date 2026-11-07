package androidx.room;

import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\b'\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H$J\u001d\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0000H$¢\u0006\u0002\u0010\fJ\u001d\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u000b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u0010J'\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0012¢\u0006\u0002\u0010\u0013J \u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0010\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0014J\u001d\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u000b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u0017J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0010\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u001aJ'\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0012¢\u0006\u0002\u0010\u001bJ-\u0010\u001c\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00160\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0010\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u001a¢\u0006\u0002\u0010\u001dJ/\u0010\u001c\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00160\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0012¢\u0006\u0002\u0010\u001eJ-\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00160 2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u0012¢\u0006\u0002\u0010!J&\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00160 2\u0006\u0010\u000e\u001a\u00020\u000f2\u0010\u0010\u0011\u001a\f\u0012\u0006\u0012\u0004\u0018\u00018\u0000\u0018\u00010\u001a¨\u0006\""}, d2 = {"Landroidx/room/EntityInsertAdapter;", "T", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "createQuery", _UrlKt.FRAGMENT_ENCODE_SET, "bind", _UrlKt.FRAGMENT_ENCODE_SET, "statement", "Landroidx/sqlite/SQLiteStatement;", "entity", "(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V", "insert", "connection", "Landroidx/sqlite/SQLiteConnection;", "(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V", "entities", _UrlKt.FRAGMENT_ENCODE_SET, "(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)V", _UrlKt.FRAGMENT_ENCODE_SET, "insertAndReturnId", _UrlKt.FRAGMENT_ENCODE_SET, "(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J", "insertAndReturnIdsArray", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)[J", "insertAndReturnIdsArrayBox", "(Landroidx/sqlite/SQLiteConnection;Ljava/util/Collection;)[Ljava/lang/Long;", "(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)[Ljava/lang/Long;", "insertAndReturnIdsList", _UrlKt.FRAGMENT_ENCODE_SET, "(Landroidx/sqlite/SQLiteConnection;[Ljava/lang/Object;)Ljava/util/List;", "room-runtime"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEntityInsertAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EntityInsertAdapter.kt\nandroidx/room/EntityInsertAdapter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,270:1\n13472#2,2:271\n1869#3,2:273\n*S KotlinDebug\n*F\n+ 1 EntityInsertAdapter.kt\nandroidx/room/EntityInsertAdapter\n*L\n229#1:271,2\n256#1:273,2\n*E\n"})
public abstract class EntityInsertAdapter<T> {
    public abstract void bind(SQLiteStatement statement, T entity);

    public abstract String createQuery();

    public final void insert(SQLiteConnection connection, T entity) throws Exception {
        if (entity == null) {
            return;
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            bind(sQLiteStatementPrepare, entity);
            sQLiteStatementPrepare.step();
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void insert(SQLiteConnection connection, T[] entities) throws Exception {
        if (entities == null) {
            return;
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            Iterator it = ArrayIteratorKt.iterator(entities);
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

    public final void insert(SQLiteConnection connection, Iterable<? extends T> entities) throws Exception {
        if (entities == null) {
            return;
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            for (T t : entities) {
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                }
            }
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
        } finally {
        }
    }

    public final long insertAndReturnId(SQLiteConnection connection, T entity) throws Exception {
        if (entity == null) {
            return -1L;
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            bind(sQLiteStatementPrepare, entity);
            sQLiteStatementPrepare.step();
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return SQLiteConnectionUtil.getLastInsertedRowId(connection);
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long[] insertAndReturnIdsArray(SQLiteConnection connection, Collection<? extends T> entities) throws Exception {
        long lastInsertedRowId;
        if (entities == null) {
            return new long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            int size = entities.size();
            long[] jArr = new long[size];
            for (int i = 0; i < size; i++) {
                Object objElementAt = CollectionsKt.elementAt(entities, i);
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

    public final long[] insertAndReturnIdsArray(SQLiteConnection connection, T[] entities) throws Exception {
        long lastInsertedRowId;
        if (entities == null) {
            return new long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            int length = entities.length;
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                T t = entities[i];
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
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

    /* JADX WARN: Multi-variable type inference failed */
    public final Long[] insertAndReturnIdsArrayBox(SQLiteConnection connection, Collection<? extends T> entities) throws Exception {
        long lastInsertedRowId;
        if (entities == null) {
            return new Long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            int size = entities.size();
            Long[] lArr = new Long[size];
            for (int i = 0; i < size; i++) {
                Object objElementAt = CollectionsKt.elementAt(entities, i);
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

    public final Long[] insertAndReturnIdsArrayBox(SQLiteConnection connection, T[] entities) throws Exception {
        long lastInsertedRowId;
        if (entities == null) {
            return new Long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            int length = entities.length;
            Long[] lArr = new Long[length];
            for (int i = 0; i < length; i++) {
                T t = entities[i];
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
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

    public final List<Long> insertAndReturnIdsList(SQLiteConnection connection, T[] entities) throws Exception {
        if (entities == null) {
            return CollectionsKt.emptyList();
        }
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            for (T t : entities) {
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
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

    public final List<Long> insertAndReturnIdsList(SQLiteConnection connection, Collection<? extends T> entities) throws Exception {
        if (entities == null) {
            return CollectionsKt.emptyList();
        }
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        SQLiteStatement sQLiteStatementPrepare = connection.prepare(createQuery());
        try {
            for (T t : entities) {
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
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
