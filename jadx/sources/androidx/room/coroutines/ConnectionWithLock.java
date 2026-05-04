package androidx.room.coroutines;

import androidx.collection.LruCache;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.Iterator;
import kotlin.ExceptionsKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes4.dex */
final class ConnectionWithLock implements SQLiteConnection, Mutex {
    private CoroutineContext acquireCoroutineContext;
    private Throwable acquireThrowable;
    private final SQLiteConnection delegate;
    private final Mutex lock;
    private final PreparedStatementCache preparedStatementCache;

    @Override // androidx.sqlite.SQLiteConnection
    public boolean inTransaction() {
        return this.delegate.inTransaction();
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean isLocked() {
        return this.lock.isLocked();
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public Object lock(Object obj, Continuation continuation) {
        return this.lock.lock(obj, continuation);
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean tryLock(Object obj) {
        return this.lock.tryLock(obj);
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public void unlock(Object obj) {
        this.lock.unlock(obj);
    }

    public ConnectionWithLock(SQLiteConnection delegate, Mutex lock, int i) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(lock, "lock");
        this.delegate = delegate;
        this.lock = lock;
        this.preparedStatementCache = i > 0 ? new PreparedStatementCache(i) : null;
    }

    public /* synthetic */ ConnectionWithLock(SQLiteConnection sQLiteConnection, Mutex mutex, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(sQLiteConnection, (i2 & 2) != 0 ? MutexKt.Mutex$default(false, 1, null) : mutex, i);
    }

    @Override // androidx.sqlite.SQLiteConnection
    public SQLiteStatement prepare(String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        PreparedStatementCache preparedStatementCache = this.preparedStatementCache;
        if (preparedStatementCache != null) {
            Object obj = preparedStatementCache.get(sql);
            Intrinsics.checkNotNull(obj);
            return new CachedStatement((SQLiteStatement) obj);
        }
        return this.delegate.prepare(sql);
    }

    @Override // androidx.sqlite.SQLiteConnection, java.lang.AutoCloseable
    public void close() {
        PreparedStatementCache preparedStatementCache = this.preparedStatementCache;
        if (preparedStatementCache != null) {
            preparedStatementCache.evictAll();
        }
        this.delegate.close();
    }

    public final ConnectionWithLock markAcquired(CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.acquireCoroutineContext = context;
        this.acquireThrowable = new Throwable();
        return this;
    }

    public final ConnectionWithLock markReleased() {
        this.acquireCoroutineContext = null;
        this.acquireThrowable = null;
        return this;
    }

    public final void dump(StringBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        if (this.acquireCoroutineContext != null || this.acquireThrowable != null) {
            builder.append("\t\tStatus: Acquired connection");
            builder.append('\n');
            CoroutineContext coroutineContext = this.acquireCoroutineContext;
            if (coroutineContext != null) {
                builder.append("\t\tCoroutine: " + coroutineContext);
                builder.append('\n');
            }
            Throwable th = this.acquireThrowable;
            if (th != null) {
                builder.append("\t\tAcquired:");
                builder.append('\n');
                Iterator it = CollectionsKt.drop(StringsKt.lines(ExceptionsKt.stackTraceToString(th)), 1).iterator();
                while (it.hasNext()) {
                    builder.append("\t\t" + ((String) it.next()));
                    builder.append('\n');
                }
            }
        } else {
            builder.append("\t\tStatus: Free connection");
            builder.append('\n');
        }
        if (this.preparedStatementCache != null) {
            builder.append("\t\tPrepared Statement Cache Size: " + this.preparedStatementCache.size());
            builder.append('\n');
        }
    }

    public String toString() {
        return this.delegate.toString();
    }

    private final class PreparedStatementCache extends LruCache {
        public PreparedStatementCache(int i) {
            super(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.collection.LruCache
        public SQLiteStatement create(String key) {
            Intrinsics.checkNotNullParameter(key, "key");
            return ConnectionWithLock.this.delegate.prepare(key);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.collection.LruCache
        public void entryRemoved(boolean z, String key, SQLiteStatement oldValue, SQLiteStatement sQLiteStatement) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(oldValue, "oldValue");
            oldValue.close();
            super.entryRemoved(z, (Object) key, (Object) oldValue, (Object) sQLiteStatement);
        }
    }

    private static final class CachedStatement implements SQLiteStatement {
        private final SQLiteStatement delegate;

        @Override // androidx.sqlite.SQLiteStatement
        public void bindBlob(int i, byte[] value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.delegate.bindBlob(i, value);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindLong(int i, long j) {
            this.delegate.bindLong(i, j);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindNull(int i) {
            this.delegate.bindNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindText(int i, String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.delegate.bindText(i, value);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void clearBindings() {
            this.delegate.clearBindings();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public byte[] getBlob(int i) {
            return this.delegate.getBlob(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean getBoolean(int i) {
            return this.delegate.getBoolean(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            return this.delegate.getColumnCount();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getColumnName(int i) {
            return this.delegate.getColumnName(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i) {
            return this.delegate.getLong(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getText(int i) {
            return this.delegate.getText(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i) {
            return this.delegate.isNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            this.delegate.reset();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            return this.delegate.step();
        }

        public CachedStatement(SQLiteStatement delegate) {
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.delegate = delegate;
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            this.delegate.reset();
            this.delegate.clearBindings();
        }
    }
}
