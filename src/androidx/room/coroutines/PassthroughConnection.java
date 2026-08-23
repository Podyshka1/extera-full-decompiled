package androidx.room.coroutines;

import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.scilab.forge.jlatexmath.TeXSymbolParser;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001,BQ\u0012@\u0010\b\u001a<\b\u0001\u0012\u0018\u0012\u0016\b\u0001\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0003j\b\u0012\u0002\b\u0003\u0018\u0001`\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJM\u0010\u0013\u001a\u00028\u0000\"\u0004\b\u0000\u0010\r2\u0006\u0010\u000f\u001a\u00020\u000e2-\u0010\u0012\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0011H\u0082@¢\u0006\u0004\b\u0013\u0010\u0014J2\u0010\u0018\u001a\u00028\u0000\"\u0004\b\u0000\u0010\r2\u0006\u0010\u0016\u001a\u00020\u00152\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00028\u00000\u0004H\u0096@¢\u0006\u0004\b\u0018\u0010\u0019JM\u0010\u001a\u001a\u00028\u0000\"\u0004\b\u0000\u0010\r2\u0006\u0010\u000f\u001a\u00020\u000e2-\u0010\u0012\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0011H\u0096@¢\u0006\u0004\b\u001a\u0010\u0014J\u0010\u0010\u001c\u001a\u00020\u001bH\u0096@¢\u0006\u0004\b\u001c\u0010\u001dRQ\u0010\b\u001a<\b\u0001\u0012\u0018\u0012\u0016\b\u0001\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0003j\b\u0012\u0002\b\u0003\u0018\u0001`\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\n\u0010!\u001a\u0004\b\"\u0010#R\u001a\u0010&\u001a\u00060$j\u0002`%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010(\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010+\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010#¨\u0006-"}, d2 = {"Landroidx/room/coroutines/PassthroughConnection;", "Landroidx/room/Transactor;", "Landroidx/room/coroutines/RawConnectionAccessor;", "Lkotlin/Function2;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/coroutines/TransactionWrapper;", "transactionWrapper", "Landroidx/sqlite/SQLiteConnection;", "delegate", "<init>", "(Lkotlin/jvm/functions/Function2;Landroidx/sqlite/SQLiteConnection;)V", "R", "Landroidx/room/Transactor$SQLiteTransactionType;", TeXSymbolParser.TYPE_ATTR, "Landroidx/room/TransactionScope;", "Lkotlin/ExtensionFunctionType;", "block", "transaction", "(Landroidx/room/Transactor$SQLiteTransactionType;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "sql", "Landroidx/sqlite/SQLiteStatement;", "usePrepared", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "withTransaction", _UrlKt.FRAGMENT_ENCODE_SET, "inTransaction", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/jvm/functions/Function2;", "getTransactionWrapper", "()Lkotlin/jvm/functions/Function2;", "Landroidx/sqlite/SQLiteConnection;", "getDelegate", "()Landroidx/sqlite/SQLiteConnection;", "Ljava/util/concurrent/atomic/AtomicInteger;", "Landroidx/room/concurrent/AtomicInt;", "nestedTransactionCount", "Ljava/util/concurrent/atomic/AtomicInteger;", "currentTransactionType", "Landroidx/room/Transactor$SQLiteTransactionType;", "getRawConnection", "rawConnection", "PassthroughTransactor", "room-runtime"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPassthroughConnectionPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PassthroughConnectionPool.kt\nandroidx/room/coroutines/PassthroughConnection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1#2:178\n*E\n"})
final class PassthroughConnection implements Transactor, RawConnectionAccessor {
    private Transactor.SQLiteTransactionType currentTransactionType;
    private final SQLiteConnection delegate;
    private AtomicInteger nestedTransactionCount = new AtomicInteger(0);
    private final Function2<Function1<? super Continuation<Object>, ? extends Object>, Continuation<Object>, Object> transactionWrapper;

    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
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
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.room.coroutines.PassthroughConnection", m766f = "PassthroughConnectionPool.kt", m767i = {0}, m768l = {127}, m769m = "transaction", m770n = {"success"}, m771s = {"I$0"})
    public static final class C07641<R> extends ContinuationImpl {
        int I$0;
        int label;
        /* synthetic */ Object result;

        public C07641(Continuation<? super C07641> continuation) {
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
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.room.coroutines.PassthroughConnection", m766f = "PassthroughConnectionPool.kt", m767i = {0, 0}, m768l = {89, 91}, m769m = "usePrepared", m770n = {"sql", "block"}, m771s = {"L$0", "L$1"})
    public static final class C07651<R> extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public C07651(Continuation<? super C07651> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PassthroughConnection.this.usePrepared(null, null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PassthroughConnection(Function2<? super Function1<? super Continuation<Object>, ? extends Object>, ? super Continuation<Object>, ? extends Object> function2, SQLiteConnection sQLiteConnection) {
        this.transactionWrapper = function2;
        this.delegate = sQLiteConnection;
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
    public <R> Object usePrepared(String str, Function1<? super SQLiteStatement, ? extends R> function1, Continuation<? super R> continuation) throws Exception {
        C07651 c07651;
        Function2<Function1<? super Continuation<Object>, ? extends Object>, Continuation<Object>, Object> function2;
        if (continuation instanceof C07651) {
            c07651 = (C07651) continuation;
            int i = c07651.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07651.label = i - Integer.MIN_VALUE;
            } else {
                c07651 = new C07651(continuation);
            }
        }
        Object objInTransaction = c07651.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07651.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objInTransaction);
            c07651.L$0 = str;
            c07651.L$1 = function1;
            c07651.label = 1;
            objInTransaction = inTransaction(c07651);
            if (objInTransaction != coroutine_suspended) {
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                ResultKt.throwOnFailure(objInTransaction);
                return objInTransaction;
            }
            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        function1 = (Function1) c07651.L$1;
        str = (String) c07651.L$0;
        ResultKt.throwOnFailure(objInTransaction);
        if (((Boolean) objInTransaction).booleanValue() && (function2 = this.transactionWrapper) != null) {
            C07662 c07662 = new C07662(str, function1, null);
            c07651.L$0 = null;
            c07651.L$1 = null;
            c07651.label = 2;
            Object objInvoke = function2.invoke(c07662, c07651);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
        SQLiteStatement sQLiteStatementPrepare = this.delegate.prepare(str);
        try {
            R rInvoke = function1.invoke(sQLiteStatementPrepare);
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            return rInvoke;
        } finally {
        }
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnection$usePrepared$2 */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.room.coroutines.PassthroughConnection$usePrepared$2", m766f = "PassthroughConnectionPool.kt", m767i = {}, m768l = {}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    @SourceDebugExtension({"SMAP\nPassthroughConnectionPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PassthroughConnectionPool.kt\nandroidx/room/coroutines/PassthroughConnection$usePrepared$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n1#2:178\n*E\n"})
    public static final class C07662 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
        final /* synthetic */ Function1<SQLiteStatement, R> $block;
        final /* synthetic */ String $sql;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C07662(String str, Function1<? super SQLiteStatement, ? extends R> function1, Continuation<? super C07662> continuation) {
            super(1, continuation);
            this.$sql = str;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return PassthroughConnection.this.new C07662(this.$sql, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
            return invoke2((Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Continuation<Object> continuation) {
            return ((C07662) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
    public <R> Object withTransaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2<? super TransactionScope<R>, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        Function2<Function1<? super Continuation<Object>, ? extends Object>, Continuation<Object>, Object> function22 = this.transactionWrapper;
        if (function22 != null) {
            Object objInvoke = function22.invoke(new C07672(sQLiteTransactionType, function2, null), continuation);
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return objInvoke;
        }
        return transaction(sQLiteTransactionType, function2, continuation);
    }

    /* JADX INFO: renamed from: androidx.room.coroutines.PassthroughConnection$withTransaction$2 */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.room.coroutines.PassthroughConnection$withTransaction$2", m766f = "PassthroughConnectionPool.kt", m767i = {}, m768l = {103}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C07672 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
        final /* synthetic */ Function2<TransactionScope<R>, Continuation<? super R>, Object> $block;
        final /* synthetic */ Transactor.SQLiteTransactionType $type;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C07672(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2<? super TransactionScope<R>, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super C07672> continuation) {
            super(1, continuation);
            this.$type = sQLiteTransactionType;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return PassthroughConnection.this.new C07672(this.$type, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
            return invoke2((Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Continuation<Object> continuation) {
            return ((C07672) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
                Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj);
            PassthroughConnection passthroughConnection = PassthroughConnection.this;
            Transactor.SQLiteTransactionType sQLiteTransactionType = this.$type;
            Function2<TransactionScope<R>, Continuation<? super R>, Object> function2 = this.$block;
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
    public final <R> Object transaction(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2<? super TransactionScope<R>, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        C07641 c07641;
        if (continuation instanceof C07641) {
            c07641 = (C07641) continuation;
            int i = c07641.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07641.label = i - Integer.MIN_VALUE;
            } else {
                c07641 = new C07641(continuation);
            }
        }
        Object objInvoke = c07641.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07641.label;
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
                        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                        return null;
                    }
                    SQLite.execSQL(this.delegate, "BEGIN EXCLUSIVE TRANSACTION");
                }
                if (this.nestedTransactionCount.incrementAndGet() > 0) {
                    this.currentTransactionType = sQLiteTransactionType;
                }
                PassthroughTransactor passthroughTransactor = new PassthroughTransactor();
                c07641.I$0 = 1;
                c07641.label = 1;
                objInvoke = function2.invoke(passthroughTransactor, c07641);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i2 != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i3 = c07641.I$0;
                ResultKt.throwOnFailure(objInvoke);
            }
            if (this.nestedTransactionCount.decrementAndGet() == 0) {
                this.currentTransactionType = null;
            }
            SQLiteConnection sQLiteConnection = this.delegate;
            if (i3 != 0) {
                SQLite.execSQL(sQLiteConnection, "END TRANSACTION");
                return objInvoke;
            }
            SQLite.execSQL(sQLiteConnection, "ROLLBACK TRANSACTION");
            return objInvoke;
        } finally {
        }
    }

    @Override // androidx.room.Transactor
    public Object inTransaction(Continuation<? super Boolean> continuation) {
        return Boxing.boxBoolean(this.currentTransactionType != null || this.delegate.inTransaction());
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J2\u0010\f\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00062\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028\u00010\tH\u0096@¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/room/coroutines/PassthroughConnection$PassthroughTransactor;", "T", "Landroidx/room/TransactionScope;", "Landroidx/room/coroutines/RawConnectionAccessor;", "<init>", "(Landroidx/room/coroutines/PassthroughConnection;)V", "R", _UrlKt.FRAGMENT_ENCODE_SET, "sql", "Lkotlin/Function1;", "Landroidx/sqlite/SQLiteStatement;", "block", "usePrepared", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/sqlite/SQLiteConnection;", "getRawConnection", "()Landroidx/sqlite/SQLiteConnection;", "rawConnection", "room-runtime"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public final class PassthroughTransactor<T> implements TransactionScope<T>, RawConnectionAccessor {
        public PassthroughTransactor() {
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public SQLiteConnection getRawConnection() {
            return PassthroughConnection.this.getRawConnection();
        }

        @Override // androidx.room.PooledConnection
        public <R> Object usePrepared(String str, Function1<? super SQLiteStatement, ? extends R> function1, Continuation<? super R> continuation) {
            return PassthroughConnection.this.usePrepared(str, function1, continuation);
        }
    }
}
