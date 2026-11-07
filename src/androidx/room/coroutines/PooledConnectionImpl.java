package androidx.room.coroutines;

import android.database.SQLException;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.InstantKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.sync.Mutex;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u000389:B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJO\u0010\u0014\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\f2-\u0010\u0013\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e¢\u0006\u0002\b\u0012H\u0082@¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\fH\u0082@¢\u0006\u0004\b\u0017\u0010\u0018J\u0018\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u0007H\u0082@¢\u0006\u0004\b\u001a\u0010\u001bJ2\u0010 \u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000b2\u0006\u0010\u001d\u001a\u00020\u001c2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00028\u00000\u001eH\u0096@¢\u0006\u0004\b \u0010!JM\u0010\"\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000b2\u0006\u0010\r\u001a\u00020\f2-\u0010\u0013\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000e¢\u0006\u0002\b\u0012H\u0096@¢\u0006\u0004\b\"\u0010\u0015J\u0010\u0010#\u001a\u00020\u0007H\u0096@¢\u0006\u0004\b#\u0010$J\r\u0010%\u001a\u00020\u0016¢\u0006\u0004\b%\u0010&R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010*\u001a\u0004\b+\u0010,R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010-\u001a\u0004\b\b\u0010.R\u001a\u00101\u001a\b\u0012\u0004\u0012\u0002000/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00103\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010-R\u0014\u00107\u001a\u0002048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b5\u00106¨\u0006;"}, d2 = {"Landroidx/room/coroutines/PooledConnectionImpl;", "Landroidx/room/Transactor;", "Landroidx/room/coroutines/RawConnectionAccessor;", "Landroidx/room/coroutines/ConnectionElementKey;", "connectionElementKey", "Landroidx/room/coroutines/ConnectionWithLock;", "delegate", _UrlKt.FRAGMENT_ENCODE_SET, "isReadOnly", "<init>", "(Landroidx/room/coroutines/ConnectionElementKey;Landroidx/room/coroutines/ConnectionWithLock;Z)V", "R", "Landroidx/room/Transactor$SQLiteTransactionType;", "type", "Lkotlin/Function2;", "Landroidx/room/TransactionScope;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/ExtensionFunctionType;", "block", "transaction", "(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "beginTransaction", "(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "success", "endTransaction", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "sql", "Lkotlin/Function1;", "Landroidx/sqlite/SQLiteStatement;", "usePrepared", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withTransaction", "inTransaction", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markRecycled", "()V", "Landroidx/room/coroutines/ConnectionElementKey;", "getConnectionElementKey", "()Landroidx/room/coroutines/ConnectionElementKey;", "Landroidx/room/coroutines/ConnectionWithLock;", "getDelegate", "()Landroidx/room/coroutines/ConnectionWithLock;", "Z", "()Z", "Lkotlin/collections/ArrayDeque;", "Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;", "transactionStack", "Lkotlin/collections/ArrayDeque;", "isRecycled", "Landroidx/sqlite/SQLiteConnection;", "getRawConnection", "()Landroidx/sqlite/SQLiteConnection;", "rawConnection", "TransactionItem", "TransactionImpl", "StatementWrapper", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,624:1\n551#1,11:625\n551#1,11:646\n551#1,11:657\n116#2,7:636\n124#2,2:644\n116#2,10:668\n116#2,10:678\n1#3:643\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl\n*L\n434#1:625,11\n443#1:646,11\n445#1:657,11\n435#1:636,7\n435#1:644,2\n490#1:668,10\n507#1:678,10\n*E\n"})
final class PooledConnectionImpl implements Transactor, RawConnectionAccessor {
    private final ConnectionElementKey connectionElementKey;
    private final ConnectionWithLock delegate;
    private final boolean isReadOnly;
    private volatile boolean isRecycled;
    private final ArrayDeque<TransactionItem> transactionStack = new ArrayDeque<>();

    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
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
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.coroutines.PooledConnectionImpl", m921f = "ConnectionPoolImpl.kt", m922i = {0, 0}, m923l = {629}, m924m = "beginTransaction", m925n = {"type", "$this$withLock_u24default$iv"}, m926s = {"L$0", "L$1"})
    public static final class C10011 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C10011(Continuation<? super C10011> continuation) {
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
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.coroutines.PooledConnectionImpl", m921f = "ConnectionPoolImpl.kt", m922i = {0, 0}, m923l = {629}, m924m = "endTransaction", m925n = {"$this$withLock_u24default$iv", "success"}, m926s = {"L$0", "Z$0"})
    public static final class C10021 extends ContinuationImpl {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        public C10021(Continuation<? super C10021> continuation) {
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
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.coroutines.PooledConnectionImpl", m921f = "ConnectionPoolImpl.kt", m922i = {0, 1, 4}, m923l = {464, 468, 482, 482, 482}, m924m = "transaction", m925n = {"block", "success", "exception"}, m926s = {"L$0", "I$0", "L$0"})
    public static final class C10031<R> extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C10031(Continuation<? super C10031> continuation) {
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
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.coroutines.PooledConnectionImpl", m921f = "ConnectionPoolImpl.kt", m922i = {0, 0, 0}, m923l = {640}, m924m = "usePrepared", m925n = {"sql", "block", "$this$withLock_u24default$iv"}, m926s = {"L$0", "L$1", "L$2"})
    public static final class C10041<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C10041(Continuation<? super C10041> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PooledConnectionImpl.this.usePrepared(null, null, this);
        }
    }

    public PooledConnectionImpl(ConnectionElementKey connectionElementKey, ConnectionWithLock connectionWithLock, boolean z) {
        this.connectionElementKey = connectionElementKey;
        this.delegate = connectionWithLock;
        this.isReadOnly = z;
    }

    public final ConnectionElementKey getConnectionElementKey() {
        return this.connectionElementKey;
    }

    public final ConnectionWithLock getDelegate() {
        return this.delegate;
    }

    /* JADX INFO: renamed from: isReadOnly, reason: from getter */
    public final boolean getIsReadOnly() {
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
    public <R> Object usePrepared(String str, Function1<? super SQLiteStatement, ? extends R> function1, Continuation<? super R> continuation) {
        C10041 c10041;
        Mutex mutex;
        if (continuation instanceof C10041) {
            c10041 = (C10041) continuation;
            int i = c10041.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10041.label = i - Integer.MIN_VALUE;
            } else {
                c10041 = new C10041(continuation);
            }
        }
        Object obj = c10041.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10041.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.isRecycled) {
                SQLite.throwSQLiteException(21, "Connection is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            ConnectionElement connectionElement = (ConnectionElement) c10041.get$context().get(getConnectionElementKey());
            if (connectionElement != null && connectionElement.getConnectionWrapper() == this) {
                mutex = this.delegate;
                c10041.L$0 = str;
                c10041.L$1 = function1;
                c10041.L$2 = mutex;
                c10041.label = 1;
                if (mutex.lock(null, c10041) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Mutex mutex2 = (Mutex) c10041.L$2;
            function1 = (Function1) c10041.L$1;
            String str2 = (String) c10041.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str2;
        }
        try {
            StatementWrapper statementWrapper = new StatementWrapper(this.delegate.prepare(str));
            try {
                R rInvoke = function1.invoke(statementWrapper);
                AutoCloseableKt.closeFinally(statementWrapper, null);
                return rInvoke;
            } finally {
            }
        } finally {
            mutex.unlock(null);
        }
    }

    public final void markRecycled() {
        if (this.isRecycled) {
            return;
        }
        this.isRecycled = true;
        if (this.delegate.inTransaction()) {
            SQLite.execSQL(this.delegate, "ROLLBACK TRANSACTION");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0093 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final <R> Object transaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2<? super TransactionScope<R>, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) throws Throwable {
        C10031 c10031;
        SQLException e;
        Throwable th;
        int i;
        if (continuation instanceof C10031) {
            c10031 = (C10031) continuation;
            int i2 = c10031.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c10031.label = i2 - Integer.MIN_VALUE;
            } else {
                c10031 = new C10031(continuation);
            }
        }
        Object objInvoke = c10031.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = c10031.label;
        try {
            if (i3 == 0) {
                ResultKt.throwOnFailure(objInvoke);
                if (sQLiteTransactionType == null) {
                    sQLiteTransactionType = Transactor.SQLiteTransactionType.DEFERRED;
                }
                c10031.L$0 = function2;
                c10031.label = 1;
                if (beginTransaction(sQLiteTransactionType, c10031) != coroutine_suspended) {
                }
            }
            if (i3 == 1) {
                function2 = (Function2) c10031.L$0;
                ResultKt.throwOnFailure(objInvoke);
            } else {
                if (i3 == 2) {
                    i = c10031.I$0;
                    ResultKt.throwOnFailure(objInvoke);
                    boolean z = i != 0;
                    c10031.L$0 = objInvoke;
                    c10031.label = 3;
                    return endTransaction(z, c10031) != coroutine_suspended ? coroutine_suspended : objInvoke;
                }
                if (i3 == 3 || i3 == 4) {
                    Object obj = c10031.L$0;
                    ResultKt.throwOnFailure(objInvoke);
                    return obj;
                }
                if (i3 != 5) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                th = (Throwable) c10031.L$1;
                th = (Throwable) c10031.L$0;
                try {
                    ResultKt.throwOnFailure(objInvoke);
                    throw th;
                } catch (SQLException e2) {
                    e = e2;
                    if (th != null) {
                    }
                }
            }
            TransactionImpl transactionImpl = new TransactionImpl();
            c10031.L$0 = null;
            c10031.I$0 = 1;
            c10031.label = 2;
            objInvoke = function2.invoke(transactionImpl, c10031);
            if (objInvoke != coroutine_suspended) {
                i = 1;
                if (i != 0) {
                }
                c10031.L$0 = objInvoke;
                c10031.label = 3;
                if (endTransaction(z, c10031) != coroutine_suspended) {
                }
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                throw th;
            } catch (Throwable th3) {
                try {
                    c10031.L$0 = th;
                    c10031.L$1 = th3;
                    c10031.label = 5;
                    if (endTransaction(false, c10031) != coroutine_suspended) {
                        throw th3;
                    }
                } catch (SQLException e3) {
                    e = e3;
                    th = th3;
                    if (th != null) {
                        throw e;
                    }
                    ExceptionsKt.addSuppressed(th, e);
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object beginTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Continuation<? super Unit> continuation) {
        C10011 c10011;
        Mutex mutex;
        if (continuation instanceof C10011) {
            c10011 = (C10011) continuation;
            int i = c10011.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10011.label = i - Integer.MIN_VALUE;
            } else {
                c10011 = new C10011(continuation);
            }
        }
        Object obj = c10011.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10011.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            mutex = this.delegate;
            c10011.L$0 = sQLiteTransactionType;
            c10011.L$1 = mutex;
            c10011.label = 1;
            if (mutex.lock(null, c10011) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Mutex mutex2 = (Mutex) c10011.L$1;
            Transactor.SQLiteTransactionType sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) c10011.L$0;
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
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object endTransaction(boolean z, Continuation<? super Unit> continuation) {
        C10021 c10021;
        Mutex mutex;
        if (continuation instanceof C10021) {
            c10021 = (C10021) continuation;
            int i = c10021.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c10021.label = i - Integer.MIN_VALUE;
            } else {
                c10021 = new C10021(continuation);
            }
        }
        Object obj = c10021.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c10021.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            ConnectionWithLock connectionWithLock = this.delegate;
            c10021.L$0 = connectionWithLock;
            c10021.Z$0 = z;
            c10021.label = 1;
            if (connectionWithLock.lock(null, c10021) == coroutine_suspended) {
                return coroutine_suspended;
            }
            mutex = connectionWithLock;
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = c10021.Z$0;
            mutex = (Mutex) c10021.L$0;
            ResultKt.throwOnFailure(obj);
        }
        try {
            if (this.transactionStack.isEmpty()) {
                throw new IllegalStateException("Not in a transaction");
            }
            TransactionItem transactionItem = (TransactionItem) CollectionsKt.removeLast(this.transactionStack);
            if (z && !transactionItem.getShouldRollback()) {
                boolean zIsEmpty = this.transactionStack.isEmpty();
                ConnectionWithLock connectionWithLock2 = this.delegate;
                if (zIsEmpty) {
                    SQLite.execSQL(connectionWithLock2, "END TRANSACTION");
                } else {
                    SQLite.execSQL(connectionWithLock2, "RELEASE SAVEPOINT '" + transactionItem.getId() + '\'');
                }
            } else {
                boolean zIsEmpty2 = this.transactionStack.isEmpty();
                ConnectionWithLock connectionWithLock3 = this.delegate;
                if (zIsEmpty2) {
                    SQLite.execSQL(connectionWithLock3, "ROLLBACK TRANSACTION");
                } else {
                    SQLite.execSQL(connectionWithLock3, "ROLLBACK TRANSACTION TO SAVEPOINT '" + transactionItem.getId() + '\'');
                }
            }
            Unit unit = Unit.INSTANCE;
            mutex.unlock(null);
            return unit;
        } catch (Throwable th) {
            mutex.unlock(null);
            throw th;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\b\u001a\u0004\b\t\u0010\nR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "shouldRollback", "<init>", "(IZ)V", "I", "getId", "()I", "Z", "getShouldRollback", "()Z", "setShouldRollback", "(Z)V", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TransactionItem {
        private final int id;
        private boolean shouldRollback;

        public TransactionItem(int i, boolean z) {
            this.id = i;
            this.shouldRollback = z;
        }

        public final int getId() {
            return this.id;
        }

        public final boolean getShouldRollback() {
            return this.shouldRollback;
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J2\u0010\f\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00062\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028\u00010\tH\u0096@¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;", "T", "Landroidx/room/TransactionScope;", "Landroidx/room/coroutines/RawConnectionAccessor;", "<init>", "(Landroidx/room/coroutines/PooledConnectionImpl;)V", "R", _UrlKt.FRAGMENT_ENCODE_SET, "sql", "Lkotlin/Function1;", "Landroidx/sqlite/SQLiteStatement;", "block", "usePrepared", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/sqlite/SQLiteConnection;", "getRawConnection", "()Landroidx/sqlite/SQLiteConnection;", "rawConnection", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$TransactionImpl\n+ 2 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,624:1\n551#2,11:625\n551#2,11:636\n116#3,10:647\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$TransactionImpl\n*L\n539#1:625,11\n541#1:636,11\n545#1:647,10\n*E\n"})
    public final class TransactionImpl<T> implements TransactionScope<T>, RawConnectionAccessor {
        public TransactionImpl() {
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public SQLiteConnection getRawConnection() {
            return PooledConnectionImpl.this.getRawConnection();
        }

        @Override // androidx.room.PooledConnection
        public <R> Object usePrepared(String str, Function1<? super SQLiteStatement, ? extends R> function1, Continuation<? super R> continuation) {
            return PooledConnectionImpl.this.usePrepared(str, function1, continuation);
        }
    }

    @Override // androidx.room.Transactor
    public Object inTransaction(Continuation<? super Boolean> continuation) {
        if (this.isRecycled) {
            SQLite.throwSQLiteException(21, "Connection is recycled");
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return null;
        }
        ConnectionElement connectionElement = (ConnectionElement) continuation.get$context().get(getConnectionElementKey());
        if (connectionElement != null && connectionElement.getConnectionWrapper() == this) {
            return Boxing.boxBoolean(!this.transactionStack.isEmpty() || this.delegate.inTransaction());
        }
        SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
        InstantKt$$ExternalSyntheticBUOutline0.m944m();
        return null;
    }

    @Override // androidx.room.Transactor
    public <R> Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2<? super TransactionScope<R>, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        if (this.isRecycled) {
            SQLite.throwSQLiteException(21, "Connection is recycled");
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return null;
        }
        ConnectionElement connectionElement = (ConnectionElement) continuation.get$context().get(getConnectionElementKey());
        if (connectionElement != null && connectionElement.getConnectionWrapper() == this) {
            return transaction(sQLiteTransactionType, function2, continuation);
        }
        SQLite.throwSQLiteException(21, "Attempted to use connection on a different coroutine");
        InstantKt$$ExternalSyntheticBUOutline0.m944m();
        return null;
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0019J\u000f\u0010 \u001a\u00020\u001aH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\tH\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\tH\u0016¢\u0006\u0004\b$\u0010#J\u000f\u0010%\u001a\u00020\tH\u0016¢\u0006\u0004\b%\u0010#R\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010&R\u0014\u0010'\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006)"}, d2 = {"Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;", "Landroidx/sqlite/SQLiteStatement;", "delegate", "<init>", "(Landroidx/room/coroutines/PooledConnectionImpl;Landroidx/sqlite/SQLiteStatement;)V", _UrlKt.FRAGMENT_ENCODE_SET, "index", _UrlKt.FRAGMENT_ENCODE_SET, "value", _UrlKt.FRAGMENT_ENCODE_SET, "bindBlob", "(I[B)V", _UrlKt.FRAGMENT_ENCODE_SET, "bindLong", "(IJ)V", _UrlKt.FRAGMENT_ENCODE_SET, "bindText", "(ILjava/lang/String;)V", "bindNull", "(I)V", "getBlob", "(I)[B", "getLong", "(I)J", "getText", "(I)Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "isNull", "(I)Z", "getColumnCount", "()I", "getColumnName", "step", "()Z", "reset", "()V", "clearBindings", "close", "Landroidx/sqlite/SQLiteStatement;", "threadId", "J", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nConnectionPoolImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$StatementWrapper\n*L\n1#1,624:1\n611#1,10:625\n611#1,10:635\n611#1,10:645\n611#1,10:655\n611#1,10:665\n611#1,10:675\n611#1,10:685\n611#1,10:695\n611#1,10:705\n611#1,10:715\n611#1,10:725\n611#1,10:735\n611#1,10:745\n611#1,10:755\n611#1,10:765\n611#1,10:775\n611#1,10:785\n*S KotlinDebug\n*F\n+ 1 ConnectionPoolImpl.kt\nandroidx/room/coroutines/PooledConnectionImpl$StatementWrapper\n*L\n568#1:625,10\n572#1:635,10\n576#1:645,10\n580#1:655,10\n584#1:665,10\n586#1:675,10\n588#1:685,10\n590#1:695,10\n592#1:705,10\n594#1:715,10\n596#1:725,10\n598#1:735,10\n600#1:745,10\n602#1:755,10\n604#1:765,10\n606#1:775,10\n608#1:785,10\n*E\n"})
    public final class StatementWrapper implements SQLiteStatement {
        private final SQLiteStatement delegate;
        private final long threadId = ThreadLocal_jvmAndroidKt.currentThreadId();

        public StatementWrapper(SQLiteStatement sQLiteStatement) {
            this.delegate = sQLiteStatement;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindBlob(int index, byte[] value) {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            } else if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.bindBlob(index, value);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindLong(int index, long value) {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            } else if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.bindLong(index, value);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindNull(int index) {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            } else if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.bindNull(index);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void bindText(int index, String value) {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            } else if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.bindText(index, value);
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void clearBindings() {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            } else if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.clearBindings();
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            } else if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.close();
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public byte[] getBlob(int index) {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getBlob(index);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return 0;
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getColumnCount();
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getColumnName(int index) {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getColumnName(index);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int index) {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return 0L;
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getLong(index);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return 0L;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getText(int index) {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return null;
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.getText(index);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int index) {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return false;
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.isNull(index);
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return false;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            } else if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                this.delegate.reset();
            } else {
                SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            if (PooledConnectionImpl.this.isRecycled) {
                SQLite.throwSQLiteException(21, "Statement is recycled");
                InstantKt$$ExternalSyntheticBUOutline0.m944m();
                return false;
            }
            if (this.threadId == ThreadLocal_jvmAndroidKt.currentThreadId()) {
                return this.delegate.step();
            }
            SQLite.throwSQLiteException(21, "Attempted to use statement on a different thread");
            InstantKt$$ExternalSyntheticBUOutline0.m944m();
            return false;
        }
    }
}
