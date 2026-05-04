package androidx.room.coroutines;

import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class PassthroughConnection implements Transactor, RawConnectionAccessor {
    private Transactor.SQLiteTransactionType currentTransactionType;
    private final SQLiteConnection delegate;
    private AtomicInteger nestedTransactionCount;
    private final Function2 transactionWrapper;

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

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnection$transaction$1 */
    static final class C07721 extends ContinuationImpl {
        int I$0;
        int label;
        /* synthetic */ Object result;

        C07721(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PassthroughConnection.this.transaction(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnection$usePrepared$1 */
    static final class C07731 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C07731(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PassthroughConnection.this.usePrepared(null, null, this);
        }
    }

    public PassthroughConnection(Function2 function2, SQLiteConnection delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.transactionWrapper = function2;
        this.delegate = delegate;
        this.nestedTransactionCount = new AtomicInteger(0);
    }

    public final SQLiteConnection getDelegate() {
        return this.delegate;
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
    public Object usePrepared(String str, Function1 function1, Continuation continuation) throws Exception {
        C07731 c07731;
        Function2 function2;
        if (continuation instanceof C07731) {
            c07731 = (C07731) continuation;
            int i = c07731.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07731.label = i - Integer.MIN_VALUE;
            } else {
                c07731 = new C07731(continuation);
            }
        }
        Object objInTransaction = c07731.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07731.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInTransaction);
            c07731.L$0 = str;
            c07731.L$1 = function1;
            c07731.label = 1;
            objInTransaction = inTransaction(c07731);
            if (objInTransaction != coroutine_suspended) {
            }
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objInTransaction);
            return objInTransaction;
        }
        function1 = (Function1) c07731.L$1;
        str = (String) c07731.L$0;
        ResultKt.throwOnFailure(objInTransaction);
        if (((Boolean) objInTransaction).booleanValue() && (function2 = this.transactionWrapper) != null) {
            C07742 c07742 = new C07742(str, function1, null);
            c07731.L$0 = null;
            c07731.L$1 = null;
            c07731.label = 2;
            Object objInvoke = function2.invoke(c07742, c07731);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
        SQLiteStatement sQLiteStatementPrepare = this.delegate.prepare(str);
        try {
            Object objInvoke2 = function1.invoke(sQLiteStatementPrepare);
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return objInvoke2;
        } finally {
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnection$usePrepared$2 */
    static final class C07742 extends SuspendLambda implements Function1 {
        final /* synthetic */ Function1 $block;
        final /* synthetic */ String $sql;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07742(String str, Function1 function1, Continuation continuation) {
            super(1, continuation);
            this.$sql = str;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return PassthroughConnection.this.new C07742(this.$sql, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C07742) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            SQLiteStatement sQLiteStatementPrepare = PassthroughConnection.this.getDelegate().prepare(this.$sql);
            try {
                Object objInvoke = this.$block.invoke(sQLiteStatementPrepare);
                AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
                return objInvoke;
            } finally {
            }
        }
    }

    @Override // androidx.room.Transactor
    public Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) {
        Function2 function22 = this.transactionWrapper;
        if (function22 != null) {
            Object objInvoke = function22.invoke(new C07752(sQLiteTransactionType, function2, null), continuation);
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return objInvoke;
        }
        return transaction(sQLiteTransactionType, function2, continuation);
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnection$withTransaction$2 */
    static final class C07752 extends SuspendLambda implements Function1 {
        final /* synthetic */ Function2 $block;
        final /* synthetic */ Transactor.SQLiteTransactionType $type;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07752(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) {
            super(1, continuation);
            this.$type = sQLiteTransactionType;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return PassthroughConnection.this.new C07752(this.$type, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation continuation) {
            return ((C07752) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
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
            PassthroughConnection passthroughConnection = PassthroughConnection.this;
            Transactor.SQLiteTransactionType sQLiteTransactionType = this.$type;
            Function2 function2 = this.$block;
            this.label = 1;
            Object objTransaction = passthroughConnection.transaction(sQLiteTransactionType, function2, this);
            return objTransaction == coroutine_suspended ? coroutine_suspended : objTransaction;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object transaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, Continuation continuation) throws Exception {
        C07721 c07721;
        if (continuation instanceof C07721) {
            c07721 = (C07721) continuation;
            int i = c07721.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07721.label = i - Integer.MIN_VALUE;
            } else {
                c07721 = new C07721(continuation);
            }
        }
        Object objInvoke = c07721.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07721.label;
        int i3 = 1;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objInvoke);
                int i4 = WhenMappings.$EnumSwitchMapping$0[sQLiteTransactionType.ordinal()];
                if (i4 == 1) {
                    SQLite.execSQL(this.delegate, "BEGIN DEFERRED TRANSACTION");
                } else if (i4 == 2) {
                    SQLite.execSQL(this.delegate, "BEGIN IMMEDIATE TRANSACTION");
                } else {
                    if (i4 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    SQLite.execSQL(this.delegate, "BEGIN EXCLUSIVE TRANSACTION");
                }
                if (this.nestedTransactionCount.incrementAndGet() > 0) {
                    this.currentTransactionType = sQLiteTransactionType;
                }
                PassthroughTransactor passthroughTransactor = new PassthroughTransactor();
                c07721.I$0 = 1;
                c07721.label = 1;
                objInvoke = function2.invoke(passthroughTransactor, c07721);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i3 = c07721.I$0;
                ResultKt.throwOnFailure(objInvoke);
            }
            if (this.nestedTransactionCount.decrementAndGet() == 0) {
                this.currentTransactionType = null;
            }
            if (i3 != 0) {
                SQLite.execSQL(this.delegate, "END TRANSACTION");
                return objInvoke;
            }
            SQLite.execSQL(this.delegate, "ROLLBACK TRANSACTION");
            return objInvoke;
        } finally {
        }
    }

    @Override // androidx.room.Transactor
    public Object inTransaction(Continuation continuation) {
        return Boxing.boxBoolean(this.currentTransactionType != null || this.delegate.inTransaction());
    }

    private final class PassthroughTransactor implements TransactionScope, RawConnectionAccessor {
        public PassthroughTransactor() {
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public SQLiteConnection getRawConnection() {
            return PassthroughConnection.this.getRawConnection();
        }

        @Override // androidx.room.PooledConnection
        public Object usePrepared(String str, Function1 function1, Continuation continuation) {
            return PassthroughConnection.this.usePrepared(str, function1, continuation);
        }
    }
}
