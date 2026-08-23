package androidx.room.coroutines;

import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;

/* JADX INFO: loaded from: classes4.dex */
final class Pool {
    private final ArrayDeque availableConnections;
    private final int capacity;
    private final Function0 connectionFactory;
    private final Semaphore connectionPermits;
    private final ConnectionWithLock[] connections;
    private boolean isClosed;
    private final ReentrantLock lock;
    private final int preparedStatementCacheSize;
    private int size;

    /* JADX INFO: renamed from: androidx.room.coroutines.Pool$acquire$1 */
    static final class C07771 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C07771(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Pool.this.acquire(this);
        }
    }

    public Pool(int i, Function0 connectionFactory, int i2) {
        Intrinsics.checkNotNullParameter(connectionFactory, "connectionFactory");
        this.capacity = i;
        this.connectionFactory = connectionFactory;
        this.preparedStatementCacheSize = i2;
        this.lock = new ReentrantLock();
        this.connections = new ConnectionWithLock[i];
        this.connectionPermits = SemaphoreKt.Semaphore$default(i, 0, 2, null);
        this.availableConnections = new ArrayDeque(i);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:(2:47|12)|45|28|(1:(1:38)(2:34|(1:36)))(1:30)|37|19|43|20|(1:22)(10:23|24|45|28|(0)(0)|37|19|43|20|(0)(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0066, code lost:
    
        r11 = r11;
        r10 = r10;
        r2 = r0;
        r0 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006f A[Catch: all -> 0x0073, TryCatch #1 {all -> 0x0073, blocks: (B:28:0x006b, B:30:0x006f, B:34:0x0077, B:38:0x007e), top: B:45:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x005a -> B:24:0x005c). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: acquireWithTimeout-KLykuaI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m2162acquireWithTimeoutKLykuaI(long j, Function0 function0, Continuation continuation) {
        Pool$acquireWithTimeout$1 pool$acquireWithTimeout$1;
        Ref$ObjectRef ref$ObjectRef;
        Pool$acquireWithTimeout$1 pool$acquireWithTimeout$12;
        Throwable th;
        Pool$acquireWithTimeout$2 pool$acquireWithTimeout$2;
        if (continuation instanceof Pool$acquireWithTimeout$1) {
            pool$acquireWithTimeout$1 = (Pool$acquireWithTimeout$1) continuation;
            int i = pool$acquireWithTimeout$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                pool$acquireWithTimeout$1.label = i - Integer.MIN_VALUE;
            } else {
                pool$acquireWithTimeout$1 = new Pool$acquireWithTimeout$1(this, continuation);
            }
        }
        Object obj = pool$acquireWithTimeout$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = pool$acquireWithTimeout$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            pool$acquireWithTimeout$2 = new Pool$acquireWithTimeout$2(ref$ObjectRef2, this, null);
            pool$acquireWithTimeout$1.L$0 = function0;
            pool$acquireWithTimeout$1.L$1 = ref$ObjectRef2;
            pool$acquireWithTimeout$1.J$0 = j;
            pool$acquireWithTimeout$1.label = 1;
            if (TimeoutKt.m3660withTimeoutKLykuaI(j, pool$acquireWithTimeout$2, pool$acquireWithTimeout$1) != coroutine_suspended) {
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = pool$acquireWithTimeout$1.J$0;
            Ref$ObjectRef ref$ObjectRef3 = (Ref$ObjectRef) pool$acquireWithTimeout$1.L$1;
            Function0 function02 = (Function0) pool$acquireWithTimeout$1.L$0;
            try {
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (Throwable th2) {
                    ref$ObjectRef = ref$ObjectRef3;
                    function0 = function02;
                    pool$acquireWithTimeout$12 = pool$acquireWithTimeout$1;
                    th = th2;
                    if (th instanceof TimeoutCancellationException) {
                    }
                    pool$acquireWithTimeout$1 = pool$acquireWithTimeout$12;
                    Ref$ObjectRef ref$ObjectRef22 = new Ref$ObjectRef();
                    pool$acquireWithTimeout$2 = new Pool$acquireWithTimeout$2(ref$ObjectRef22, this, null);
                    pool$acquireWithTimeout$1.L$0 = function0;
                    pool$acquireWithTimeout$1.L$1 = ref$ObjectRef22;
                    pool$acquireWithTimeout$1.J$0 = j;
                    pool$acquireWithTimeout$1.label = 1;
                    if (TimeoutKt.m3660withTimeoutKLykuaI(j, pool$acquireWithTimeout$2, pool$acquireWithTimeout$1) != coroutine_suspended) {
                    }
                }
                if (th instanceof TimeoutCancellationException) {
                    function0.invoke();
                } else {
                    if (th != null) {
                        throw th;
                    }
                    Object obj2 = ref$ObjectRef.element;
                    if (obj2 != null) {
                        return obj2;
                    }
                }
                pool$acquireWithTimeout$1 = pool$acquireWithTimeout$12;
                Ref$ObjectRef ref$ObjectRef222 = new Ref$ObjectRef();
                pool$acquireWithTimeout$2 = new Pool$acquireWithTimeout$2(ref$ObjectRef222, this, null);
                pool$acquireWithTimeout$1.L$0 = function0;
                pool$acquireWithTimeout$1.L$1 = ref$ObjectRef222;
                pool$acquireWithTimeout$1.J$0 = j;
                pool$acquireWithTimeout$1.label = 1;
                if (TimeoutKt.m3660withTimeoutKLykuaI(j, pool$acquireWithTimeout$2, pool$acquireWithTimeout$1) != coroutine_suspended) {
                    return coroutine_suspended;
                }
                function02 = function0;
                ref$ObjectRef3 = ref$ObjectRef222;
                ref$ObjectRef = ref$ObjectRef3;
                function0 = function02;
                pool$acquireWithTimeout$12 = pool$acquireWithTimeout$1;
                th = null;
                if (th instanceof TimeoutCancellationException) {
                }
                pool$acquireWithTimeout$1 = pool$acquireWithTimeout$12;
                Ref$ObjectRef ref$ObjectRef2222 = new Ref$ObjectRef();
                pool$acquireWithTimeout$2 = new Pool$acquireWithTimeout$2(ref$ObjectRef2222, this, null);
                pool$acquireWithTimeout$1.L$0 = function0;
                pool$acquireWithTimeout$1.L$1 = ref$ObjectRef2222;
                pool$acquireWithTimeout$1.J$0 = j;
                pool$acquireWithTimeout$1.label = 1;
                if (TimeoutKt.m3660withTimeoutKLykuaI(j, pool$acquireWithTimeout$2, pool$acquireWithTimeout$1) != coroutine_suspended) {
                }
            } catch (Throwable th3) {
                ConnectionWithLock connectionWithLock = (ConnectionWithLock) ref$ObjectRef.element;
                if (connectionWithLock != null) {
                    recycle(connectionWithLock);
                }
                throw th3;
            }
            ref$ObjectRef = ref$ObjectRef3;
            function0 = function02;
            pool$acquireWithTimeout$12 = pool$acquireWithTimeout$1;
            th = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object acquire(Continuation continuation) {
        C07771 c07771;
        if (continuation instanceof C07771) {
            c07771 = (C07771) continuation;
            int i = c07771.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07771.label = i - Integer.MIN_VALUE;
            } else {
                c07771 = new C07771(continuation);
            }
        }
        Object obj = c07771.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07771.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Semaphore semaphore = this.connectionPermits;
            c07771.label = 1;
            if (semaphore.acquire(c07771) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        try {
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (this.isClosed) {
                    SQLite.throwSQLiteException(21, "Connection pool is closed");
                    throw new KotlinNothingValueException();
                }
                if (this.availableConnections.isEmpty()) {
                    tryOpenNewConnectionLocked();
                }
                ConnectionWithLock connectionWithLock = (ConnectionWithLock) this.availableConnections.removeLast();
                reentrantLock.unlock();
                return connectionWithLock;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        } catch (Throwable th2) {
            this.connectionPermits.release();
            throw th2;
        }
    }

    private final void tryOpenNewConnectionLocked() {
        if (this.size >= this.capacity) {
            return;
        }
        ConnectionWithLock connectionWithLock = new ConnectionWithLock((SQLiteConnection) this.connectionFactory.invoke(), null, this.preparedStatementCacheSize, 2, null);
        ConnectionWithLock[] connectionWithLockArr = this.connections;
        int i = this.size;
        this.size = i + 1;
        connectionWithLockArr[i] = connectionWithLock;
        this.availableConnections.addLast(connectionWithLock);
    }

    public final void recycle(ConnectionWithLock connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.availableConnections.addLast(connection);
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            this.connectionPermits.release();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void close() {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.isClosed = true;
            for (ConnectionWithLock connectionWithLock : this.connections) {
                if (connectionWithLock != null) {
                    connectionWithLock.close();
                }
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void dump(StringBuilder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            List listCreateListBuilder = CollectionsKt.createListBuilder();
            int size = this.availableConnections.size();
            for (int i = 0; i < size; i++) {
                listCreateListBuilder.add(this.availableConnections.get(i));
            }
            List listBuild = CollectionsKt.build(listCreateListBuilder);
            builder.append('\t' + super.toString() + " (");
            builder.append("capacity=" + this.capacity + ", ");
            builder.append("permits=" + this.connectionPermits.getAvailablePermits() + ", ");
            builder.append("queue=(size=" + listBuild.size() + ")[" + CollectionsKt.joinToString$default(listBuild, null, null, null, 0, null, null, 63, null) + ']');
            builder.append(")");
            builder.append('\n');
            ConnectionWithLock[] connectionWithLockArr = this.connections;
            int length = connectionWithLockArr.length;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                ConnectionWithLock connectionWithLock = connectionWithLockArr[i3];
                i2++;
                StringBuilder sb = new StringBuilder();
                sb.append("\t\t[");
                sb.append(i2);
                sb.append("] - ");
                sb.append(connectionWithLock != null ? connectionWithLock.toString() : null);
                builder.append(sb.toString());
                builder.append('\n');
                if (connectionWithLock != null) {
                    connectionWithLock.dump(builder);
                }
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
