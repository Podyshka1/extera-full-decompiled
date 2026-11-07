package androidx.room.coroutines;

import android.database.SQLException;
import androidx.room.Transactor;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u00002\u00020\u0001B!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB1\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016JB\u0010\u001d\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00172\u0006\u0010\u0013\u001a\u00020\u00122\"\u0010\u001c\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u0018H\u0096@¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010$R\u0014\u0010'\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R$\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\r0)j\b\u0012\u0004\u0012\u00020\r`*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010-\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\"\u00100\u001a\u00020/8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010\u0015\u001a\u00020\u00068\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0015\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:¨\u0006;"}, d2 = {"Landroidx/room/coroutines/ConnectionPoolImpl;", "Landroidx/room/coroutines/ConnectionPool;", "Landroidx/sqlite/SQLiteDriver;", "driver", _UrlKt.FRAGMENT_ENCODE_SET, "fileName", _UrlKt.FRAGMENT_ENCODE_SET, "preparedStatementCacheSize", "<init>", "(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;I)V", "maxNumOfReaders", "maxNumOfWriters", "(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;III)V", "Landroidx/room/coroutines/PooledConnectionImpl;", "connection", "Lkotlin/coroutines/CoroutineContext;", "createConnectionContext", "(Landroidx/room/coroutines/PooledConnectionImpl;)Lkotlin/coroutines/CoroutineContext;", _UrlKt.FRAGMENT_ENCODE_SET, "isReadOnly", _UrlKt.FRAGMENT_ENCODE_SET, "onTimeout", "(Z)V", "R", "Lkotlin/Function2;", "Landroidx/room/Transactor;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "block", "useConnection", "(ZLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "close", "()V", "Landroidx/sqlite/SQLiteDriver;", "Landroidx/room/coroutines/Pool;", "readers", "Landroidx/room/coroutines/Pool;", "writers", "Landroidx/room/coroutines/ConnectionElementKey;", "connectionElementKey", "Landroidx/room/coroutines/ConnectionElementKey;", "Ljava/lang/ThreadLocal;", "Landroidx/room/concurrent/ThreadLocal;", "connectionThreadLocal", "Ljava/lang/ThreadLocal;", "isClosed", "Z", "Lkotlin/time/Duration;", "timeout", "J", "getTimeout-UwyO8pc$room_runtime", "()J", "setTimeout-LRDsOJo$room_runtime", "(J)V", "I", "getOnTimeout$room_runtime", "()I", "setOnTimeout$room_runtime", "(I)V", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/ConnectionPoolImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,624:1\n1#2:625\n*E\n"})
public final class ConnectionPoolImpl implements ConnectionPool {
    private final ConnectionElementKey connectionElementKey = new ConnectionElementKey();
    private final ThreadLocal<PooledConnectionImpl> connectionThreadLocal = new ThreadLocal<>();
    private final SQLiteDriver driver;
    private volatile boolean isClosed;
    private int onTimeout;
    private final Pool readers;
    private long timeout;
    private final Pool writers;

    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.coroutines.ConnectionPoolImpl", m921f = "ConnectionPoolImpl.kt", m922i = {2, 2, 2, 2, 2, 3, 3}, m923l = {131, 135, 154, 159}, m924m = "useConnection", m925n = {"block", "pool", "connection", "currentContext", "isReadOnly", "pool", "connection"}, m926s = {"L$0", "L$1", "L$2", "L$3", "Z$0", "L$0", "L$1"})
    public static final class C09911<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C09911(Continuation<? super C09911> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConnectionPoolImpl.this.useConnection(false, null, this);
        }
    }

    public ConnectionPoolImpl(final SQLiteDriver sQLiteDriver, final String str, int i) {
        Duration.Companion companion = Duration.INSTANCE;
        this.timeout = DurationKt.toDuration(30, DurationUnit.SECONDS);
        this.onTimeout = 2;
        this.driver = sQLiteDriver;
        Pool pool = new Pool(1, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return sQLiteDriver.open(str);
            }
        }, i);
        this.readers = pool;
        this.writers = pool;
    }

    public ConnectionPoolImpl(final SQLiteDriver sQLiteDriver, final String str, int i, int i2, int i3) {
        Duration.Companion companion = Duration.INSTANCE;
        this.timeout = DurationKt.toDuration(30, DurationUnit.SECONDS);
        this.onTimeout = 2;
        if (i <= 0) {
            f$$ExternalSyntheticBUOutline1.m215m("Maximum number of readers must be greater than 0");
            throw null;
        }
        if (i2 <= 0) {
            f$$ExternalSyntheticBUOutline1.m215m("Maximum number of writers must be greater than 0");
            throw null;
        }
        this.driver = sQLiteDriver;
        this.readers = new Pool(i, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ConnectionPoolImpl.$r8$lambda$9UyvH2443RWiLutCP1RPb0RqEy4(sQLiteDriver, str);
            }
        }, i3);
        this.writers = new Pool(i2, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return sQLiteDriver.open(str);
            }
        }, i3);
    }

    public static SQLiteConnection $r8$lambda$9UyvH2443RWiLutCP1RPb0RqEy4(SQLiteDriver sQLiteDriver, String str) {
        SQLiteConnection sQLiteConnectionOpen = sQLiteDriver.open(str);
        SQLite.execSQL(sQLiteConnectionOpen, "PRAGMA query_only = 1");
        return sQLiteConnectionOpen;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0138 A[Catch: all -> 0x0172, TRY_LEAVE, TryCatch #0 {all -> 0x0172, blocks: (B:64:0x011d, B:69:0x012d, B:71:0x0138, B:81:0x0176, B:82:0x017d), top: B:97:0x011d }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0176 A[Catch: all -> 0x0172, TRY_ENTER, TryCatch #0 {all -> 0x0172, blocks: (B:64:0x011d, B:69:0x012d, B:71:0x0138, B:81:0x0176, B:82:0x017d), top: B:97:0x011d }] */
    /* JADX WARN: Type inference failed for: r1v10, types: [T, androidx.room.coroutines.PooledConnectionImpl] */
    @Override // androidx.room.coroutines.ConnectionPool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <R> Object useConnection(boolean z, Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        C09911 c09911;
        Pool pool;
        Ref.ObjectRef objectRef;
        Throwable th;
        Pool pool2;
        CoroutineContext coroutineContext;
        Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function22;
        ConnectionElementKey connectionElementKey;
        Pool pool3;
        Ref.ObjectRef objectRef2;
        T t;
        Ref.ObjectRef objectRef3;
        PooledConnectionImpl pooledConnectionImpl;
        final boolean z2 = z;
        if (continuation instanceof C09911) {
            c09911 = (C09911) continuation;
            int i = c09911.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c09911.label = i - Integer.MIN_VALUE;
            } else {
                c09911 = new C09911(continuation);
            }
        }
        Object objWithContext = c09911.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c09911.label;
        boolean z3 = true;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithContext);
            if (this.isClosed) {
                SQLite.throwSQLiteException(21, "Connection pool is closed");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            PooledConnectionImpl connectionWrapper = this.connectionThreadLocal.get();
            if (connectionWrapper == null) {
                ConnectionElement connectionElement = (ConnectionElement) c09911.get$context().get(this.connectionElementKey);
                connectionWrapper = connectionElement != null ? connectionElement.getConnectionWrapper() : null;
            }
            if (connectionWrapper != null) {
                if (!z2 && connectionWrapper.getIsReadOnly()) {
                    SQLite.throwSQLiteException(1, "Cannot upgrade connection from reader to writer");
                    InstantKt$$ExternalSyntheticBUOutline0.m944m();
                    return null;
                }
                if (c09911.get$context().get(this.connectionElementKey) == null) {
                    CoroutineContext coroutineContextCreateConnectionContext = createConnectionContext(connectionWrapper);
                    C09922 c09922 = new C09922(function2, connectionWrapper, null);
                    c09911.label = 1;
                    Object objWithContext2 = BuildersKt.withContext(coroutineContextCreateConnectionContext, c09922, c09911);
                    if (objWithContext2 != coroutine_suspended) {
                        return objWithContext2;
                    }
                } else {
                    c09911.label = 2;
                    Object objInvoke = function2.invoke(connectionWrapper, c09911);
                    if (objInvoke != coroutine_suspended) {
                        return objInvoke;
                    }
                }
            } else {
                if (z2) {
                    pool = this.readers;
                } else {
                    pool = this.writers;
                }
                objectRef = new Ref.ObjectRef();
                try {
                    coroutineContext = c09911.get$context();
                    ConnectionElementKey connectionElementKey2 = this.connectionElementKey;
                    long j = this.timeout;
                    Function0<Unit> function0 = new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ConnectionPoolImpl.$r8$lambda$2YqOiCofN2j4fCYelVb9B9KXm0Y(this.f$0, z2);
                        }
                    };
                    c09911.L$0 = function2;
                    c09911.L$1 = pool;
                    c09911.L$2 = objectRef;
                    c09911.L$3 = coroutineContext;
                    c09911.L$4 = objectRef;
                    c09911.L$5 = connectionElementKey2;
                    c09911.Z$0 = z2;
                    c09911.label = 3;
                    Object objM2084acquireWithTimeoutKLykuaI = pool.m2084acquireWithTimeoutKLykuaI(j, function0, c09911);
                    if (objM2084acquireWithTimeoutKLykuaI != coroutine_suspended) {
                        function22 = function2;
                        connectionElementKey = connectionElementKey2;
                        pool3 = pool;
                        objWithContext = objM2084acquireWithTimeoutKLykuaI;
                        objectRef2 = objectRef;
                        ConnectionWithLock connectionWithLockMarkAcquired = ((ConnectionWithLock) objWithContext).markAcquired(coroutineContext);
                        if (this.readers != this.writers) {
                        }
                        z3 = false;
                        objectRef2.element = new PooledConnectionImpl(connectionElementKey, connectionWithLockMarkAcquired, z3);
                        t = objectRef.element;
                        if (t != 0) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    pool2 = pool;
                }
            }
            return coroutine_suspended;
        }
        if (i2 == 1) {
            ResultKt.throwOnFailure(objWithContext);
            return objWithContext;
        }
        if (i2 == 2) {
            ResultKt.throwOnFailure(objWithContext);
            return objWithContext;
        }
        if (i2 == 3) {
            z2 = c09911.Z$0;
            connectionElementKey = (ConnectionElementKey) c09911.L$5;
            Ref.ObjectRef objectRef4 = (Ref.ObjectRef) c09911.L$4;
            CoroutineContext coroutineContext2 = (CoroutineContext) c09911.L$3;
            Ref.ObjectRef objectRef5 = (Ref.ObjectRef) c09911.L$2;
            pool3 = (Pool) c09911.L$1;
            function22 = (Function2) c09911.L$0;
            try {
                ResultKt.throwOnFailure(objWithContext);
                objectRef2 = objectRef4;
                objectRef = objectRef5;
                coroutineContext = coroutineContext2;
                try {
                    ConnectionWithLock connectionWithLockMarkAcquired2 = ((ConnectionWithLock) objWithContext).markAcquired(coroutineContext);
                    if (this.readers != this.writers || !z2) {
                        z3 = false;
                    }
                    objectRef2.element = new PooledConnectionImpl(connectionElementKey, connectionWithLockMarkAcquired2, z3);
                    t = objectRef.element;
                    if (t != 0) {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                    CoroutineContext coroutineContextCreateConnectionContext2 = createConnectionContext((PooledConnectionImpl) t);
                    C09934 c09934 = new C09934(function22, objectRef, null);
                    c09911.L$0 = pool3;
                    c09911.L$1 = objectRef;
                    c09911.L$2 = null;
                    c09911.L$3 = null;
                    c09911.L$4 = null;
                    c09911.L$5 = null;
                    c09911.label = 4;
                    objWithContext = BuildersKt.withContext(coroutineContextCreateConnectionContext2, c09934, c09911);
                    if (objWithContext != coroutine_suspended) {
                        objectRef3 = objectRef;
                        pool2 = pool3;
                        pooledConnectionImpl = (PooledConnectionImpl) objectRef3.element;
                        if (pooledConnectionImpl != null) {
                        }
                        return objWithContext;
                    }
                    return coroutine_suspended;
                } catch (Throwable th3) {
                    th = th3;
                    pool2 = pool3;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                objectRef = objectRef5;
                pool2 = pool3;
                throw th;
            }
        }
        if (i2 != 4) {
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        objectRef3 = (Ref.ObjectRef) c09911.L$1;
        pool2 = (Pool) c09911.L$0;
        try {
            ResultKt.throwOnFailure(objWithContext);
            pooledConnectionImpl = (PooledConnectionImpl) objectRef3.element;
            if (pooledConnectionImpl != null) {
                pooledConnectionImpl.markRecycled();
                pooledConnectionImpl.getDelegate().markReleased();
                pool2.recycle(pooledConnectionImpl.getDelegate());
            }
            return objWithContext;
        } catch (Throwable th5) {
            objectRef = objectRef3;
            th = th5;
        }
        try {
            throw th;
        } finally {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$2 */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.coroutines.ConnectionPoolImpl$useConnection$2", m921f = "ConnectionPoolImpl.kt", m922i = {}, m923l = {132}, m924m = "invokeSuspend", m925n = {}, m926s = {})
    public static final class C09922<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
        final /* synthetic */ Function2<Transactor, Continuation<? super R>, Object> $block;
        final /* synthetic */ PooledConnectionImpl $confinedConnection;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C09922(Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, PooledConnectionImpl pooledConnectionImpl, Continuation<? super C09922> continuation) {
            super(2, continuation);
            this.$block = function2;
            this.$confinedConnection = pooledConnectionImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C09922(this.$block, this.$confinedConnection, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
            return ((C09922) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            Function2<Transactor, Continuation<? super R>, Object> function2 = this.$block;
            PooledConnectionImpl pooledConnectionImpl = this.$confinedConnection;
            this.label = 1;
            Object objInvoke = function2.invoke(pooledConnectionImpl, this);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    public static Unit $r8$lambda$2YqOiCofN2j4fCYelVb9B9KXm0Y(ConnectionPoolImpl connectionPoolImpl, boolean z) {
        connectionPoolImpl.onTimeout(z);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$4 */
    @Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "R", "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.coroutines.ConnectionPoolImpl$useConnection$4", m921f = "ConnectionPoolImpl.kt", m922i = {}, m923l = {159}, m924m = "invokeSuspend", m925n = {}, m926s = {})
    public static final class C09934<R> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super R>, Object> {
        final /* synthetic */ Function2<Transactor, Continuation<? super R>, Object> $block;
        final /* synthetic */ Ref.ObjectRef<PooledConnectionImpl> $connection;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C09934(Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, Ref.ObjectRef<PooledConnectionImpl> objectRef, Continuation<? super C09934> continuation) {
            super(2, continuation);
            this.$block = function2;
            this.$connection = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C09934(this.$block, this.$connection, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super R> continuation) {
            return ((C09934) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to androidx.room.coroutines.ConnectionPoolImpl$useConnection$4<R> for r3v2 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r4) {
            /*
                r3 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r3.label
                r2 = 1
                if (r1 == 0) goto L16
                if (r1 != r2) goto Lf
                kotlin.ResultKt.throwOnFailure(r4)
                return r4
            Lf:
                java.lang.String r3 = "call to 'resume' before 'invoke' with coroutine"
                okio.Segment$$ExternalSyntheticBUOutline1.m973m(r3)
                r3 = 0
                return r3
            L16:
                kotlin.ResultKt.throwOnFailure(r4)
                kotlin.jvm.functions.Function2<androidx.room.Transactor, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r4 = r3.$block
                kotlin.jvm.internal.Ref$ObjectRef<androidx.room.coroutines.PooledConnectionImpl> r1 = r3.$connection
                T r1 = r1.element
                r3.label = r2
                java.lang.Object r3 = r4.invoke(r1, r3)
                if (r3 != r0) goto L28
                return r0
            L28:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.ConnectionPoolImpl.C09934.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    private final CoroutineContext createConnectionContext(PooledConnectionImpl connection) {
        return new ConnectionElement(this.connectionElementKey, connection).plus(ThreadLocal_jvmAndroidKt.asContextElement(this.connectionThreadLocal, connection));
    }

    private final void onTimeout(boolean isReadOnly) {
        String str = isReadOnly ? "reader" : "writer";
        StringBuilder sb = new StringBuilder();
        sb.append("Timed out attempting to acquire a " + str + " connection.");
        sb.append("\n\nWriter pool:\n");
        this.writers.dump(sb);
        sb.append("Reader pool:");
        sb.append('\n');
        this.readers.dump(sb);
        try {
            SQLite.throwSQLiteException(5, sb.toString());
            throw new KotlinNothingValueException();
        } catch (SQLException e) {
            int i = this.onTimeout;
            if (i == 1) {
                throw e;
            }
            if (i != 2) {
                return;
            }
            e.printStackTrace();
        }
    }

    @Override // androidx.room.coroutines.ConnectionPool, java.lang.AutoCloseable
    public void close() {
        if (this.isClosed) {
            return;
        }
        this.isClosed = true;
        this.readers.close();
        this.writers.close();
    }
}
