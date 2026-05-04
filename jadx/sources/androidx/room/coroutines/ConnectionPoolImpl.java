package androidx.room.coroutines;

import android.database.SQLException;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class ConnectionPoolImpl implements ConnectionPool {
    private final ConnectionElementKey connectionElementKey;
    private final ThreadLocal connectionThreadLocal;
    private final SQLiteDriver driver;
    private volatile boolean isClosed;
    private int onTimeout;
    private final Pool readers;
    private long timeout;
    private final Pool writers;

    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$1 */
    static final class C07681 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C07681(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConnectionPoolImpl.this.useConnection(false, null, this);
        }
    }

    public ConnectionPoolImpl(final SQLiteDriver driver, final String fileName, int i) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.connectionElementKey = new ConnectionElementKey();
        this.connectionThreadLocal = new ThreadLocal();
        Duration.Companion companion = Duration.Companion;
        this.timeout = DurationKt.toDuration(30, DurationUnit.SECONDS);
        this.onTimeout = 2;
        this.driver = driver;
        Pool pool = new Pool(1, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return driver.open(fileName);
            }
        }, i);
        this.readers = pool;
        this.writers = pool;
    }

    public ConnectionPoolImpl(final SQLiteDriver driver, final String fileName, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(driver, "driver");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.connectionElementKey = new ConnectionElementKey();
        this.connectionThreadLocal = new ThreadLocal();
        Duration.Companion companion = Duration.Companion;
        this.timeout = DurationKt.toDuration(30, DurationUnit.SECONDS);
        this.onTimeout = 2;
        if (i <= 0) {
            throw new IllegalArgumentException("Maximum number of readers must be greater than 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("Maximum number of writers must be greater than 0");
        }
        this.driver = driver;
        this.readers = new Pool(i, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ConnectionPoolImpl._init_$lambda$4(driver, fileName);
            }
        }, i3);
        this.writers = new Pool(i2, new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return driver.open(fileName);
            }
        }, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SQLiteConnection _init_$lambda$4(SQLiteDriver sQLiteDriver, String str) throws Exception {
        SQLiteConnection sQLiteConnectionOpen = sQLiteDriver.open(str);
        SQLite.execSQL(sQLiteConnectionOpen, "PRAGMA query_only = 1");
        return sQLiteConnectionOpen;
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x013c A[Catch: all -> 0x0176, TRY_LEAVE, TryCatch #2 {all -> 0x0176, blocks: (B:64:0x0121, B:69:0x0131, B:71:0x013c, B:81:0x017a, B:82:0x0181), top: B:101:0x0121 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x017a A[Catch: all -> 0x0176, TRY_ENTER, TryCatch #2 {all -> 0x0176, blocks: (B:64:0x0121, B:69:0x0131, B:71:0x013c, B:81:0x017a, B:82:0x0181), top: B:101:0x0121 }] */
    @Override // androidx.room.coroutines.ConnectionPool
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object useConnection(boolean z, Function2 function2, Continuation continuation) throws Exception {
        C07681 c07681;
        Pool pool;
        Ref$ObjectRef ref$ObjectRef;
        Throwable th;
        Pool pool2;
        CoroutineContext context;
        Function2 function22;
        ConnectionElementKey connectionElementKey;
        Pool pool3;
        Ref$ObjectRef ref$ObjectRef2;
        Object obj;
        Ref$ObjectRef ref$ObjectRef3;
        PooledConnectionImpl pooledConnectionImpl;
        final boolean z2 = z;
        if (continuation instanceof C07681) {
            c07681 = (C07681) continuation;
            int i = c07681.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07681.label = i - Integer.MIN_VALUE;
            } else {
                c07681 = new C07681(continuation);
            }
        }
        Object objWithContext = c07681.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07681.label;
        boolean z3 = true;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objWithContext);
            if (this.isClosed) {
                SQLite.throwSQLiteException(21, "Connection pool is closed");
                throw new KotlinNothingValueException();
            }
            PooledConnectionImpl connectionWrapper = (PooledConnectionImpl) this.connectionThreadLocal.get();
            if (connectionWrapper == null) {
                ConnectionElement connectionElement = (ConnectionElement) c07681.getContext().get(this.connectionElementKey);
                connectionWrapper = connectionElement != null ? connectionElement.getConnectionWrapper() : null;
            }
            if (connectionWrapper != null) {
                if (!z2 && connectionWrapper.isReadOnly()) {
                    SQLite.throwSQLiteException(1, "Cannot upgrade connection from reader to writer");
                    throw new KotlinNothingValueException();
                }
                if (c07681.getContext().get(this.connectionElementKey) == null) {
                    CoroutineContext coroutineContextCreateConnectionContext = createConnectionContext(connectionWrapper);
                    C07692 c07692 = new C07692(function2, connectionWrapper, null);
                    c07681.label = 1;
                    Object objWithContext2 = BuildersKt.withContext(coroutineContextCreateConnectionContext, c07692, c07681);
                    if (objWithContext2 != coroutine_suspended) {
                        return objWithContext2;
                    }
                } else {
                    c07681.label = 2;
                    Object objInvoke = function2.invoke(connectionWrapper, c07681);
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
                ref$ObjectRef = new Ref$ObjectRef();
                try {
                    context = c07681.getContext();
                    ConnectionElementKey connectionElementKey2 = this.connectionElementKey;
                    long j = this.timeout;
                    Function0 function0 = new Function0() { // from class: androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ConnectionPoolImpl.useConnection$lambda$6(this.f$0, z2);
                        }
                    };
                    c07681.L$0 = function2;
                    c07681.L$1 = pool;
                    c07681.L$2 = ref$ObjectRef;
                    c07681.L$3 = context;
                    c07681.L$4 = ref$ObjectRef;
                    c07681.L$5 = connectionElementKey2;
                    c07681.Z$0 = z2;
                    c07681.label = 3;
                    Object objM2162acquireWithTimeoutKLykuaI = pool.m2162acquireWithTimeoutKLykuaI(j, function0, c07681);
                    if (objM2162acquireWithTimeoutKLykuaI != coroutine_suspended) {
                        function22 = function2;
                        connectionElementKey = connectionElementKey2;
                        pool3 = pool;
                        objWithContext = objM2162acquireWithTimeoutKLykuaI;
                        ref$ObjectRef2 = ref$ObjectRef;
                        ConnectionWithLock connectionWithLockMarkAcquired = ((ConnectionWithLock) objWithContext).markAcquired(context);
                        if (this.readers != this.writers) {
                        }
                        z3 = false;
                        ref$ObjectRef2.element = new PooledConnectionImpl(connectionElementKey, connectionWithLockMarkAcquired, z3);
                        obj = ref$ObjectRef.element;
                        if (obj != null) {
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
            z2 = c07681.Z$0;
            connectionElementKey = (ConnectionElementKey) c07681.L$5;
            Ref$ObjectRef ref$ObjectRef4 = (Ref$ObjectRef) c07681.L$4;
            CoroutineContext coroutineContext = (CoroutineContext) c07681.L$3;
            Ref$ObjectRef ref$ObjectRef5 = (Ref$ObjectRef) c07681.L$2;
            pool3 = (Pool) c07681.L$1;
            function22 = (Function2) c07681.L$0;
            try {
                ResultKt.throwOnFailure(objWithContext);
                ref$ObjectRef2 = ref$ObjectRef4;
                ref$ObjectRef = ref$ObjectRef5;
                context = coroutineContext;
                try {
                    ConnectionWithLock connectionWithLockMarkAcquired2 = ((ConnectionWithLock) objWithContext).markAcquired(context);
                    if (this.readers != this.writers || !z2) {
                        z3 = false;
                    }
                    ref$ObjectRef2.element = new PooledConnectionImpl(connectionElementKey, connectionWithLockMarkAcquired2, z3);
                    obj = ref$ObjectRef.element;
                    if (obj != null) {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                    CoroutineContext coroutineContextCreateConnectionContext2 = createConnectionContext((PooledConnectionImpl) obj);
                    C07704 c07704 = new C07704(function22, ref$ObjectRef, null);
                    c07681.L$0 = pool3;
                    c07681.L$1 = ref$ObjectRef;
                    c07681.L$2 = null;
                    c07681.L$3 = null;
                    c07681.L$4 = null;
                    c07681.L$5 = null;
                    c07681.label = 4;
                    objWithContext = BuildersKt.withContext(coroutineContextCreateConnectionContext2, c07704, c07681);
                    if (objWithContext != coroutine_suspended) {
                        ref$ObjectRef3 = ref$ObjectRef;
                        pool2 = pool3;
                        pooledConnectionImpl = (PooledConnectionImpl) ref$ObjectRef3.element;
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
                ref$ObjectRef = ref$ObjectRef5;
                pool2 = pool3;
                throw th;
            }
        }
        if (i2 != 4) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ref$ObjectRef3 = (Ref$ObjectRef) c07681.L$1;
        pool2 = (Pool) c07681.L$0;
        try {
            ResultKt.throwOnFailure(objWithContext);
            pooledConnectionImpl = (PooledConnectionImpl) ref$ObjectRef3.element;
            if (pooledConnectionImpl != null) {
                pooledConnectionImpl.markRecycled();
                pooledConnectionImpl.getDelegate().markReleased();
                pool2.recycle(pooledConnectionImpl.getDelegate());
            }
            return objWithContext;
        } catch (Throwable th5) {
            ref$ObjectRef = ref$ObjectRef3;
            th = th5;
        }
        try {
            throw th;
        } finally {
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$2 */
    static final class C07692 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function2 $block;
        final /* synthetic */ PooledConnectionImpl $confinedConnection;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07692(Function2 function2, PooledConnectionImpl pooledConnectionImpl, Continuation continuation) {
            super(2, continuation);
            this.$block = function2;
            this.$confinedConnection = pooledConnectionImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C07692(this.$block, this.$confinedConnection, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C07692) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            Function2 function2 = this.$block;
            PooledConnectionImpl pooledConnectionImpl = this.$confinedConnection;
            this.label = 1;
            Object objInvoke = function2.invoke(pooledConnectionImpl, this);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit useConnection$lambda$6(ConnectionPoolImpl connectionPoolImpl, boolean z) {
        connectionPoolImpl.onTimeout(z);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.ConnectionPoolImpl$useConnection$4 */
    static final class C07704 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function2 $block;
        final /* synthetic */ Ref$ObjectRef $connection;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07704(Function2 function2, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
            super(2, continuation);
            this.$block = function2;
            this.$connection = ref$ObjectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C07704(this.$block, this.$connection, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C07704) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return obj;
            }
            ResultKt.throwOnFailure(obj);
            Function2 function2 = this.$block;
            Object obj2 = this.$connection.element;
            this.label = 1;
            Object objInvoke = function2.invoke(obj2, this);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    private final CoroutineContext createConnectionContext(PooledConnectionImpl pooledConnectionImpl) {
        return new ConnectionElement(this.connectionElementKey, pooledConnectionImpl).plus(ThreadLocal_jvmAndroidKt.asContextElement(this.connectionThreadLocal, pooledConnectionImpl));
    }

    private final void onTimeout(boolean z) {
        String str = z ? "reader" : "writer";
        StringBuilder sb = new StringBuilder();
        sb.append("Timed out attempting to acquire a " + str + " connection.");
        sb.append('\n');
        sb.append('\n');
        sb.append("Writer pool:");
        sb.append('\n');
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
