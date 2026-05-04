package androidx.room.util;

import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;

/* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1 */
/* JADX INFO: loaded from: classes4.dex */
public final class C0776x5eaa2107 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function1 $block$inlined;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ boolean $isReadOnly;
    final /* synthetic */ RoomDatabase $this_internalPerform;
    /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0776x5eaa2107(boolean z, boolean z2, RoomDatabase roomDatabase, Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.$inTransaction = z;
        this.$isReadOnly = z2;
        this.$this_internalPerform = roomDatabase;
        this.$block$inlined = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0776x5eaa2107 c0776x5eaa2107 = new C0776x5eaa2107(this.$inTransaction, this.$isReadOnly, this.$this_internalPerform, continuation, this.$block$inlined);
        c0776x5eaa2107.L$0 = obj;
        return c0776x5eaa2107;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Transactor transactor, Continuation continuation) {
        return ((C0776x5eaa2107) create(transactor, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.room.util.DBUtil__DBUtil_androidKt$performInTransactionSuspending$lambda$3$$inlined$internalPerform$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2 {
        final /* synthetic */ Function1 $block$inlined;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, Function1 function1) {
            super(2, continuation);
            this.$block$inlined = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.$block$inlined);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(TransactionScope transactionScope, Continuation continuation) {
            return ((AnonymousClass1) create(transactionScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            Function1 function1 = this.$block$inlined;
            this.label = 1;
            InlineMarker.mark(6);
            Object objInvoke = function1.invoke(this);
            InlineMarker.mark(7);
            return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x008b, code lost:
    
        if (r9.sync$room_runtime(r8) == r0) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a8 A[PHI: r1 r9
  0x00a8: PHI (r1v12 androidx.room.Transactor) = (r1v9 androidx.room.Transactor), (r1v19 androidx.room.Transactor) binds: [B:36:0x00a5, B:14:0x002a] A[DONT_GENERATE, DONT_INLINE]
  0x00a8: PHI (r9v14 java.lang.Object) = (r9v13 java.lang.Object), (r9v0 java.lang.Object) binds: [B:36:0x00a5, B:14:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cb A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Transactor.SQLiteTransactionType sQLiteTransactionType;
        Transactor transactor;
        Transactor transactor2;
        Transactor.SQLiteTransactionType sQLiteTransactionType2;
        Object obj2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Transactor transactor3 = (Transactor) this.L$0;
            if (this.$inTransaction) {
                boolean z = this.$isReadOnly;
                if (z) {
                    sQLiteTransactionType = Transactor.SQLiteTransactionType.DEFERRED;
                } else {
                    sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
                }
                if (!z) {
                    this.L$0 = transactor3;
                    this.L$1 = sQLiteTransactionType;
                    this.label = 1;
                    Object objInTransaction = transactor3.inTransaction(this);
                    if (objInTransaction != coroutine_suspended) {
                        Transactor.SQLiteTransactionType sQLiteTransactionType3 = sQLiteTransactionType;
                        transactor2 = transactor3;
                        obj = objInTransaction;
                        sQLiteTransactionType2 = sQLiteTransactionType3;
                    }
                } else {
                    transactor = transactor3;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, this.$block$inlined);
                    this.L$0 = transactor;
                    this.L$1 = null;
                    this.label = 3;
                    obj = transactor.withTransaction(sQLiteTransactionType, anonymousClass1, this);
                    if (obj != coroutine_suspended) {
                    }
                }
            } else {
                Function1 function1 = this.$block$inlined;
                this.label = 5;
                InlineMarker.mark(6);
                Object objInvoke = function1.invoke(this);
                InlineMarker.mark(7);
                if (objInvoke != coroutine_suspended) {
                    return objInvoke;
                }
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i == 2) {
                sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) this.L$1;
                transactor2 = (Transactor) this.L$0;
                ResultKt.throwOnFailure(obj);
                Transactor transactor4 = transactor2;
                sQLiteTransactionType = sQLiteTransactionType2;
                transactor = transactor4;
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(null, this.$block$inlined);
                this.L$0 = transactor;
                this.L$1 = null;
                this.label = 3;
                obj = transactor.withTransaction(sQLiteTransactionType, anonymousClass12, this);
                if (obj != coroutine_suspended) {
                    if (!this.$isReadOnly) {
                    }
                }
                return coroutine_suspended;
            }
            if (i != 3) {
                if (i != 4) {
                    if (i != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                obj2 = this.L$0;
                ResultKt.throwOnFailure(obj);
                if (!((Boolean) obj).booleanValue()) {
                    this.$this_internalPerform.getInvalidationTracker().refreshAsync();
                }
                return obj2;
            }
            transactor = (Transactor) this.L$0;
            ResultKt.throwOnFailure(obj);
            if (!this.$isReadOnly) {
                return obj;
            }
            this.L$0 = obj;
            this.label = 4;
            Object objInTransaction2 = transactor.inTransaction(this);
            if (objInTransaction2 != coroutine_suspended) {
                obj2 = obj;
                obj = objInTransaction2;
                if (!((Boolean) obj).booleanValue()) {
                }
                return obj2;
            }
            return coroutine_suspended;
        }
        sQLiteTransactionType2 = (Transactor.SQLiteTransactionType) this.L$1;
        transactor2 = (Transactor) this.L$0;
        ResultKt.throwOnFailure(obj);
        if (!((Boolean) obj).booleanValue()) {
            InvalidationTracker invalidationTracker = this.$this_internalPerform.getInvalidationTracker();
            this.L$0 = transactor2;
            this.L$1 = sQLiteTransactionType2;
            this.label = 2;
        }
        Transactor transactor42 = transactor2;
        sQLiteTransactionType = sQLiteTransactionType2;
        transactor = transactor42;
        AnonymousClass1 anonymousClass122 = new AnonymousClass1(null, this.$block$inlined);
        this.L$0 = transactor;
        this.L$1 = null;
        this.label = 3;
        obj = transactor.withTransaction(sQLiteTransactionType, anonymousClass122, this);
        if (obj != coroutine_suspended) {
        }
        return coroutine_suspended;
    }
}
