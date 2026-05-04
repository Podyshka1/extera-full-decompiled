package androidx.room.coroutines;

import android.database.SQLException;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.ExceptionsKt;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes4.dex */
final class PooledConnectionImpl implements Transactor, RawConnectionAccessor {
    private final ConnectionElementKey connectionElementKey;
    private final ConnectionWithLock delegate;
    private final boolean isReadOnly;
    private volatile boolean isRecycled;
    private final ArrayDeque transactionStack;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Transactor.SQLiteTransactionType.values().length];
            try {
                iArr[Transactor.SQLiteTransactionType.DEFERRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.IMMEDIATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.EXCLUSIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PooledConnectionImpl$beginTransaction$1 */
    static final class C07781 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07781(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PooledConnectionImpl.this.beginTransaction(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PooledConnectionImpl$endTransaction$1 */
    static final class C07791 extends ContinuationImpl {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C07791(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PooledConnectionImpl.this.endTransaction(false, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PooledConnectionImpl$transaction$1 */
    static final class C07801 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07801(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PooledConnectionImpl.this.transaction(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PooledConnectionImpl$usePrepared$1 */
    static final class C07811 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C07811(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PooledConnectionImpl.this.usePrepared(null, null, this);
        }
    }

    public PooledConnectionImpl(ConnectionElementKey connectionElementKey, ConnectionWithLock delegate, boolean z) {
        Intrinsics.checkNotNullParameter(connectionElementKey, "connectionElementKey");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.connectionElementKey = connectionElementKey;
        this.delegate = delegate;
        this.isReadOnly = z;
        this.transactionStack = new ArrayDeque();
    }

    public final ConnectionElementKey getConnectionElementKey() {
        return this.connectionElementKey;
    }

    public final ConnectionWithLock getDelegate() {
        return this.delegate;
    }

    public final boolean isReadOnly() {
        return this.isReadOnly;
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public SQLiteConnection getRawConnection() {
        return this.delegate;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // androidx.room.PooledConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object usePrepared(String str, Function1 function1, Continuation continuation) {
        C07811 c07811;
        Mutex mutex;
        if (continuation instanceof C07811) {
            c07811 = (C07811) continuation;
            int i = c07811.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07811.label = i - Integer.MIN_VALUE;
            } else {
                c07811 = new C07811(continuation);
            }
        }
        Object obj = c07811.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07811.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.isRecycled) {
                SQLite.throwSQLiteException(21, "Connection is recycled");
                throw new KotlinNothingValueException();
            }
            ConnectionElement connectionElement = (ConnectionElement) c07811.getContext().get(getConnectionElementKey());
            if (connectionElement != null && connectionElement.getConnectionWrapper() == this) {
                mutex = this.delegate;
                c07811.L$0 = str;
                c07811.L$1 = function1;
                c07811.L$2 = mutex;
                c07811.label = 1;
                if (mutex.lock(null, c07811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
                throw new KotlinNothingValueException();
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = (Mutex) c07811.L$2;
            function1 = (Function1) c07811.L$1;
            String str2 = (String) c07811.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str2;
        }
        try {
            StatementWrapper statementWrapper = new StatementWrapper(this, this.delegate.prepare(str));
            try {
                Object objInvoke = function1.invoke(statementWrapper);
                AutoCloseableKt.closeFinally(statementWrapper, null);
                return objInvoke;
            } finally {
            }
        } finally {
            mutex.unlock(null);
        }
    }

    public final void markRecycled() throws Exception {
        if (this.isRecycled) {
            return;
        }
        this.isRecycled = true;
        if (this.delegate.inTransaction()) {
            SQLite.execSQL(this.delegate, "ROLLBACK TRANSACTION");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a2, code lost:
    
        if (endTransaction(false, r0) != r1) goto L54;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0095 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.lang.Object, kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r10v4, types: [kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [androidx.room.coroutines.PooledConnectionImpl] */
    /* JADX WARN: Type inference failed for: r9v0, types: [androidx.room.Transactor$SQLiteTransactionType] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v21 */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r9v5, types: [androidx.room.Transactor$SQLiteTransactionType] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object transaction(Transactor.SQLiteTransactionType th, Function2 function2, Continuation continuation) {
        C07801 c07801;
        ?? r9;
        ?? r10;
        if (continuation instanceof C07801) {
            c07801 = (C07801) continuation;
            int i = c07801.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07801.label = i - Integer.MIN_VALUE;
            } else {
                c07801 = new C07801(continuation);
            }
        }
        Object objInvoke = c07801.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07801.label;
        try {
            try {
            } catch (Throwable th2) {
                th = th2;
                function2 = th;
                try {
                    throw function2;
                } catch (Throwable th3) {
                    c07801.L$0 = function2;
                    c07801.L$1 = th3;
                    c07801.label = 5;
                    r9 = th3;
                }
            }
        } catch (SQLException e) {
            if (function2 == 0) {
                throw e;
            }
            ExceptionsKt.addSuppressed(function2, e);
            r9 = th;
        }
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInvoke);
            ?? r92 = th;
            if (th == 0) {
                r92 = Transactor.SQLiteTransactionType.DEFERRED;
            }
            c07801.L$0 = function2;
            c07801.label = 1;
            r10 = function2;
            if (beginTransaction(r92, c07801) != coroutine_suspended) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                int i3 = c07801.I$0;
                ResultKt.throwOnFailure(objInvoke);
                th = i3;
                function2 = function2;
                boolean z = th != 0;
                c07801.L$0 = objInvoke;
                c07801.label = 3;
                return endTransaction(z, c07801) != coroutine_suspended ? coroutine_suspended : objInvoke;
            }
            if (i2 == 3 || i2 == 4) {
                Object obj = c07801.L$0;
                ResultKt.throwOnFailure(objInvoke);
                return obj;
            }
            if (i2 != 5) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Throwable th4 = (Throwable) c07801.L$1;
            ResultKt.throwOnFailure(objInvoke);
            r9 = th4;
            throw r9;
        }
        Function2 function22 = (Function2) c07801.L$0;
        ResultKt.throwOnFailure(objInvoke);
        r10 = function22;
        TransactionImpl transactionImpl = new TransactionImpl();
        c07801.L$0 = null;
        c07801.I$0 = 1;
        c07801.label = 2;
        objInvoke = r10.invoke(transactionImpl, c07801);
        if (objInvoke != coroutine_suspended) {
            th = 1;
            function2 = r10;
            if (th != 0) {
            }
            c07801.L$0 = objInvoke;
            c07801.label = 3;
            if (endTransaction(z, c07801) != coroutine_suspended) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object beginTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Continuation continuation) {
        C07781 c07781;
        Mutex mutex;
        if (continuation instanceof C07781) {
            c07781 = (C07781) continuation;
            int i = c07781.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07781.label = i - Integer.MIN_VALUE;
            } else {
                c07781 = new C07781(continuation);
            }
        }
        Object obj = c07781.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07781.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            mutex = this.delegate;
            c07781.L$0 = sQLiteTransactionType;
            c07781.L$1 = mutex;
            c07781.label = 1;
            if (mutex.lock(null, c07781) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = (Mutex) c07781.L$1;
            Transactor.SQLiteTransactionType sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) c07781.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            sQLiteTransactionType = sQLiteTransactionType2;
        }
        try {
            int size = this.transactionStack.size();
            if (this.transactionStack.isEmpty()) {
                int i3 = WhenMappings.$EnumSwitchMapping$0[sQLiteTransactionType.ordinal()];
                if (i3 == 1) {
                    SQLite.execSQL(this.delegate, "BEGIN DEFERRED TRANSACTION");
                } else if (i3 == 2) {
                    SQLite.execSQL(this.delegate, "BEGIN IMMEDIATE TRANSACTION");
                } else {
                    if (i3 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    SQLite.execSQL(this.delegate, "BEGIN EXCLUSIVE TRANSACTION");
                }
            } else {
                SQLite.execSQL(this.delegate, "SAVEPOINT '" + size + '\'');
            }
            this.transactionStack.addLast(new TransactionItem(size, false));
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            return unit;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object endTransaction(boolean z, Continuation continuation) {
        C07791 c07791;
        Mutex mutex;
        if (continuation instanceof C07791) {
            c07791 = (C07791) continuation;
            int i = c07791.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07791.label = i - Integer.MIN_VALUE;
            } else {
                c07791 = new C07791(continuation);
            }
        }
        Object obj = c07791.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07791.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            ConnectionWithLock connectionWithLock = this.delegate;
            c07791.L$0 = connectionWithLock;
            c07791.Z$0 = z;
            c07791.label = 1;
            if (connectionWithLock.lock(null, c07791) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutex = connectionWithLock;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = c07791.Z$0;
            mutex = (Mutex) c07791.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            if (this.transactionStack.isEmpty()) {
                throw new IllegalStateException("Not in a transaction");
            }
            TransactionItem transactionItem = (TransactionItem) CollectionsKt.removeLast(this.transactionStack);
            if (z && !transactionItem.getShouldRollback()) {
                if (this.transactionStack.isEmpty()) {
                    SQLite.execSQL(this.delegate, "END TRANSACTION");
                } else {
                    SQLite.execSQL(this.delegate, "RELEASE SAVEPOINT '" + transactionItem.getId() + '\'');
                }
            } else if (this.transactionStack.isEmpty()) {
                SQLite.execSQL(this.delegate, "ROLLBACK TRANSACTION");
            } else {
                SQLite.execSQL(this.delegate, "ROLLBACK TRANSACTION TO SAVEPOINT '" + transactionItem.getId() + '\'');
            }
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            return unit;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    private static final class TransactionItem {

        /* JADX INFO: renamed from: id */
        private final int f67id;
        private boolean shouldRollback;

        public TransactionItem(int i, boolean z) {
            this.f67id = i;
            this.shouldRollback = z;
        }

        public final int getId() {
            return this.f67id;
        }

        public final boolean getShouldRollback() {
            return this.shouldRollback;
        }
    }

    private final class TransactionImpl implements TransactionScope, RawConnectionAccessor {
        public TransactionImpl() {
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public SQLiteConnection getRawConnection() {
            return PooledConnectionImpl.this.getRawConnection();
        }

        @Override // androidx.room.PooledConnection
        public Object usePrepared(String str, Function1 function1, Continuation continuation) {
            return PooledConnectionImpl.this.usePrepared(str, function1, continuation);
        }
    }

    @Override // androidx.room.Transactor
    public Object inTransaction(Continuation continuation) {
        if (this.isRecycled) {
            SQLite.throwSQLiteException(21, "Connection is recycled");
            throw new KotlinNothingValueException();
        }
        ConnectionElement connectionElement = (ConnectionElement) continuation.getContext().get(getConnectionElementKey());
        if (connectionElement != null && connectionElement.getConnectionWrapper() == this) {
            return Boxing.boxBoolean(!this.transactionStack.isEmpty() || this.delegate.inTransaction());
        }
        SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
        throw new KotlinNothingValueException();
    }

    @Override // androidx.room.Transactor
    public Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) {
        if (this.isRecycled) {
            SQLite.throwSQLiteException(21, "Connection is recycled");
            throw new KotlinNothingValueException();
        }
        ConnectionElement connectionElement = (ConnectionElement) continuation.getContext().get(getConnectionElementKey());
        if (connectionElement != null && connectionElement.getConnectionWrapper() == this) {
            return transaction(sQLiteTransactionType, function2, continuation);
        }
        SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
        throw new KotlinNothingValueException();
    }

    private final class StatementWrapper implements SQLiteStatement {
        private final SQLiteStatement delegate;
        final /* synthetic */ PooledConnectionImpl this$0;
        private final long threadId;

        @Override // androidx.sqlite.SQLiteStatement
        public /* synthetic */ boolean getBoolean(int i) {
            return SQLiteStatement.CC.$default$getBoolean(this, i);
        }

        public StatementWrapper(PooledConnectionImpl pooledConnectionImpl, SQLiteStatement delegate) {
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.this$0 = pooledConnectionImpl;
            this.delegate = delegate;
            this.threadId = ThreadLocal_jvmAndroidKt.currentThreadId();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindBlob(int i, byte[] value) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.bindBlob(i, value);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindLong(int i, long j) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.bindLong(i, j);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindNull(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.bindNull(i);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindText(int i, String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.bindText(i, value);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void clearBindings() {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.clearBindings();
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.close();
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public byte[] getBlob(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getBlob(i);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getColumnCount();
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getColumnName(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getColumnName(i);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getLong(i);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getText(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getText(i);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i) {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.isNull(i);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.reset();
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                throw new KotlinNothingValueException();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            if (this.this$0.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                throw new KotlinNothingValueException();
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.step();
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            throw new KotlinNothingValueException();
        }
    }
}
