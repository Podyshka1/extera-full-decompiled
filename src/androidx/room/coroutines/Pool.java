package androidx.room.coroutines;

import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import com.android.dx.io.Opcodes;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ&\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\n0\u0004H\u0086@¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0010H\u0086@¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0010¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\n¢\u0006\u0004\b\u0019\u0010\fJ\u0019\u0010\u001d\u001a\u00020\n2\n\u0010\u001c\u001a\u00060\u001aj\u0002`\u001b¢\u0006\u0004\b\u001d\u0010\u001eR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001f\u001a\u0004\b \u0010!R\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\"\u001a\u0004\b#\u0010$R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001f\u001a\u0004\b%\u0010!R\u0018\u0010(\u001a\u00060&j\u0002`'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010*\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u001fR\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u001c\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00102\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u001a\u00105\u001a\b\u0012\u0004\u0012\u00020\u0010048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106¨\u00067"}, d2 = {"Landroidx/room/coroutines/Pool;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "capacity", "Lkotlin/Function0;", "Landroidx/sqlite/SQLiteConnection;", "connectionFactory", "preparedStatementCacheSize", "<init>", "(ILkotlin/jvm/functions/Function0;I)V", _UrlKt.FRAGMENT_ENCODE_SET, "tryOpenNewConnectionLocked", "()V", "Lkotlin/time/Duration;", "timeout", "onTimeout", "Landroidx/room/coroutines/ConnectionWithLock;", "acquireWithTimeout-KLykuaI", "(JLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "acquireWithTimeout", "acquire", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "connection", "recycle", "(Landroidx/room/coroutines/ConnectionWithLock;)V", "close", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "builder", "dump", "(Ljava/lang/StringBuilder;)V", "I", "getCapacity", "()I", "Lkotlin/jvm/functions/Function0;", "getConnectionFactory", "()Lkotlin/jvm/functions/Function0;", "getPreparedStatementCacheSize", "Ljava/util/concurrent/locks/ReentrantLock;", "Landroidx/room/concurrent/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "size", _UrlKt.FRAGMENT_ENCODE_SET, "isClosed", "Z", _UrlKt.FRAGMENT_ENCODE_SET, "connections", "[Landroidx/room/coroutines/ConnectionWithLock;", "Lkotlinx/coroutines/sync/Semaphore;", "connectionPermits", "Lkotlinx/coroutines/sync/Semaphore;", "Lkotlin/collections/ArrayDeque;", "availableConnections", "Lkotlin/collections/ArrayDeque;", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/Pool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ReentrantLock.kt\nandroidx/room/concurrent/ReentrantLockKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,624:1\n1#2:625\n28#3,5:626\n28#3,5:631\n28#3,3:636\n32#3:641\n28#3,3:642\n32#3:648\n13472#4,2:639\n13537#4,3:645\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/Pool\n*L\n255#1:626,5\n285#1:631,5\n290#1:636,3\n290#1:641\n298#1:642,3\n298#1:648\n292#1:639,2\n309#1:645,3\n*E\n"})
final class Pool {
    private final ArrayDeque<ConnectionWithLock> availableConnections;
    private final int capacity;
    private final Function0<SQLiteConnection> connectionFactory;
    private final Semaphore connectionPermits;
    private final ConnectionWithLock[] connections;
    private boolean isClosed;
    private final ReentrantLock lock = new ReentrantLock();
    private final int preparedStatementCacheSize;
    private int size;

    /* JADX INFO: renamed from: androidx.room.coroutines.Pool$acquire$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.coroutines.Pool", m921f = "ConnectionPoolImpl.kt", m922i = {}, m923l = {Opcodes.INVOKE_CUSTOM_RANGE}, m924m = "acquire", m925n = {}, m926s = {})
    public static final class C10001 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        public C10001(Continuation<? super C10001> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Pool.this.acquire(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Pool(int i, Function0<? extends SQLiteConnection> function0, int i2) {
        this.capacity = i;
        this.connectionFactory = function0;
        this.preparedStatementCacheSize = i2;
        this.connections = new ConnectionWithLock[i];
        this.connectionPermits = SemaphoreKt.Semaphore$default(i, 0, 2, null);
        this.availableConnections = new ArrayDeque<>(i);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:11|45|12|24|43|28|(1:(1:38)(2:34|(1:36)))(1:30)|37|19|47|20|(1:22)(10:23|24|43|28|(0)(0)|37|19|47|20|(0)(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005f, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0064, code lost:
    
        r11 = r11;
        r10 = r10;
        r2 = r0;
        r0 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006d A[Catch: all -> 0x0071, TryCatch #0 {all -> 0x0071, blocks: (B:28:0x0069, B:30:0x006d, B:34:0x0075, B:38:0x007c), top: B:43:0x0069 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0058 -> B:24:0x005a). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: acquireWithTimeout-KLykuaI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m2084acquireWithTimeoutKLykuaI(long j, Function0<Unit> function0, Continuation<? super ConnectionWithLock> continuation) {
        Pool$acquireWithTimeout$1 pool$acquireWithTimeout$1;
        Ref.ObjectRef objectRef;
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
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            pool$acquireWithTimeout$2 = new Pool$acquireWithTimeout$2(objectRef2, this, null);
            pool$acquireWithTimeout$1.L$0 = function0;
            pool$acquireWithTimeout$1.L$1 = objectRef2;
            pool$acquireWithTimeout$1.J$0 = j;
            pool$acquireWithTimeout$1.label = 1;
            if (TimeoutKt.m5113withTimeoutKLykuaI(j, pool$acquireWithTimeout$2, pool$acquireWithTimeout$1) != coroutine_suspended) {
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            j = pool$acquireWithTimeout$1.J$0;
            Ref.ObjectRef objectRef3 = (Ref.ObjectRef) pool$acquireWithTimeout$1.L$1;
            Function0<Unit> function02 = (Function0) pool$acquireWithTimeout$1.L$0;
            try {
                try {
                    ResultKt.throwOnFailure(obj);
                } catch (Throwable th2) {
                    objectRef = objectRef3;
                    function0 = function02;
                    pool$acquireWithTimeout$12 = pool$acquireWithTimeout$1;
                    th = th2;
                    if (th instanceof TimeoutCancellationException) {
                    }
                    pool$acquireWithTimeout$1 = pool$acquireWithTimeout$12;
                    Ref.ObjectRef objectRef22 = new Ref.ObjectRef();
                    pool$acquireWithTimeout$2 = new Pool$acquireWithTimeout$2(objectRef22, this, null);
                    pool$acquireWithTimeout$1.L$0 = function0;
                    pool$acquireWithTimeout$1.L$1 = objectRef22;
                    pool$acquireWithTimeout$1.J$0 = j;
                    pool$acquireWithTimeout$1.label = 1;
                    if (TimeoutKt.m5113withTimeoutKLykuaI(j, pool$acquireWithTimeout$2, pool$acquireWithTimeout$1) != coroutine_suspended) {
                    }
                }
                if (th instanceof TimeoutCancellationException) {
                    function0.invoke();
                } else {
                    if (th != null) {
                        throw th;
                    }
                    T t = objectRef.element;
                    if (t != 0) {
                        return t;
                    }
                }
                pool$acquireWithTimeout$1 = pool$acquireWithTimeout$12;
                Ref.ObjectRef objectRef222 = new Ref.ObjectRef();
                pool$acquireWithTimeout$2 = new Pool$acquireWithTimeout$2(objectRef222, this, null);
                pool$acquireWithTimeout$1.L$0 = function0;
                pool$acquireWithTimeout$1.L$1 = objectRef222;
                pool$acquireWithTimeout$1.J$0 = j;
                pool$acquireWithTimeout$1.label = 1;
                if (TimeoutKt.m5113withTimeoutKLykuaI(j, pool$acquireWithTimeout$2, pool$acquireWithTimeout$1) != coroutine_suspended) {
                    return coroutine_suspended;
                }
                function02 = function0;
                objectRef3 = objectRef222;
                objectRef = objectRef3;
                function0 = function02;
                pool$acquireWithTimeout$12 = pool$acquireWithTimeout$1;
                th = null;
                if (th instanceof TimeoutCancellationException) {
                }
                pool$acquireWithTimeout$1 = pool$acquireWithTimeout$12;
                Ref.ObjectRef objectRef2222 = new Ref.ObjectRef();
                pool$acquireWithTimeout$2 = new Pool$acquireWithTimeout$2(objectRef2222, this, null);
                pool$acquireWithTimeout$1.L$0 = function0;
                pool$acquireWithTimeout$1.L$1 = objectRef2222;
                pool$acquireWithTimeout$1.J$0 = j;
                pool$acquireWithTimeout$1.label = 1;
                if (TimeoutKt.m5113withTimeoutKLykuaI(j, pool$acquireWithTimeout$2, pool$acquireWithTimeout$1) != coroutine_suspended) {
                }
            } catch (Throwable th3) {
                ConnectionWithLock connectionWithLock = (ConnectionWithLock) objectRef.element;
                if (connectionWithLock != null) {
                    recycle(connectionWithLock);
                }
                throw th3;
            }
            objectRef = objectRef3;
            function0 = function02;
            pool$acquireWithTimeout$12 = pool$acquireWithTimeout$1;
            th = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object acquire(Continuation<? super ConnectionWithLock> continuation) {
        C10001 c10001;
        if (continuation instanceof C10001) {
            c10001 = (C10001) continuation;
            int i = c10001.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10001.label = i - Integer.MIN_VALUE;
            } else {
                c10001 = new C10001(continuation);
            }
        }
        Object obj = c10001.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10001.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Semaphore semaphore = this.connectionPermits;
            c10001.label = 1;
            if (semaphore.acquire(c10001) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
                ConnectionWithLock connectionWithLockRemoveLast = this.availableConnections.removeLast();
                reentrantLock.unlock();
                return connectionWithLockRemoveLast;
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
        ConnectionWithLock connectionWithLock = new ConnectionWithLock(this.connectionFactory.invoke(), null, this.preparedStatementCacheSize, 2, null);
        ConnectionWithLock[] connectionWithLockArr = this.connections;
        int i = this.size;
        this.size = i + 1;
        connectionWithLockArr[i] = connectionWithLock;
        this.availableConnections.addLast(connectionWithLock);
    }

    public final void recycle(ConnectionWithLock connection) {
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
