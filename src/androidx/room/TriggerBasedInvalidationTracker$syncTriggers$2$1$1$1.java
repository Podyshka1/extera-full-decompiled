package androidx.room;

import androidx.room.ObservedTableStates;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
final class TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ Transactor $connection;
    final /* synthetic */ ObservedTableStates.ObserveOp[] $tablesToSync;
    int I$0;
    int I$1;
    int I$2;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ObservedTableStates.ObserveOp.values().length];
            try {
                iArr[ObservedTableStates.ObserveOp.NO_OP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ObservedTableStates.ObserveOp.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ObservedTableStates.ObserveOp.REMOVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1(ObservedTableStates.ObserveOp[] observeOpArr, TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Transactor transactor, Continuation continuation) {
        super(2, continuation);
        this.$tablesToSync = observeOpArr;
        this.this$0 = triggerBasedInvalidationTracker;
        this.$connection = transactor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1(this.$tablesToSync, this.this$0, this.$connection, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(TransactionScope transactionScope, Continuation continuation) {
        return ((TriggerBasedInvalidationTracker$syncTriggers$2$1$1$1) create(transactionScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0083, code lost:
    
        if (r7.startTrackingTable(r12, r6, r11) == r0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0068, code lost:
    
        r6 = r12;
        r5 = r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0089  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0086 -> B:27:0x0087). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        int i;
        ObservedTableStates.ObserveOp[] observeOpArr;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker;
        Transactor transactor;
        int i2;
        int i3;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            ObservedTableStates.ObserveOp[] observeOpArr2 = this.$tablesToSync;
            TriggerBasedInvalidationTracker triggerBasedInvalidationTracker2 = this.this$0;
            Transactor transactor2 = this.$connection;
            int length = observeOpArr2.length;
            i = 0;
            observeOpArr = observeOpArr2;
            triggerBasedInvalidationTracker = triggerBasedInvalidationTracker2;
            transactor = transactor2;
            i2 = length;
            i3 = 0;
            if (i3 >= i2) {
            }
        } else {
            if (i4 != 1 && i4 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i2 = this.I$2;
            i3 = this.I$1;
            int i5 = this.I$0;
            Transactor transactor3 = (Transactor) this.L$2;
            triggerBasedInvalidationTracker = (TriggerBasedInvalidationTracker) this.L$1;
            observeOpArr = (ObservedTableStates.ObserveOp[]) this.L$0;
            ResultKt.throwOnFailure(obj);
            transactor = transactor3;
            i = i5;
            i3++;
            if (i3 >= i2) {
                int i6 = i + 1;
                int i7 = WhenMappings.$EnumSwitchMapping$0[observeOpArr[i3].ordinal()];
                if (i7 == 1) {
                    i = i6;
                    i3++;
                    if (i3 >= i2) {
                        return Unit.INSTANCE;
                    }
                } else {
                    if (i7 != 2) {
                        if (i7 != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        this.L$0 = observeOpArr;
                        this.L$1 = triggerBasedInvalidationTracker;
                        this.L$2 = transactor;
                        this.I$0 = i6;
                        this.I$1 = i3;
                        this.I$2 = i2;
                        this.label = 2;
                        if (triggerBasedInvalidationTracker.stopTrackingTable(transactor, i, this) != coroutine_suspended) {
                            transactor3 = transactor;
                            i5 = i6;
                            transactor = transactor3;
                            i = i5;
                        }
                        return coroutine_suspended;
                    }
                    this.L$0 = observeOpArr;
                    this.L$1 = triggerBasedInvalidationTracker;
                    this.L$2 = transactor;
                    this.I$0 = i6;
                    this.I$1 = i3;
                    this.I$2 = i2;
                    this.label = 1;
                    i3++;
                    if (i3 >= i2) {
                    }
                }
            }
        }
    }
}
