package androidx.room;

import androidx.room.util.DBUtil;
import java.util.ArrayList;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
final class TriggerBasedInvalidationTracker$createFlow$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ boolean $emitInitialState;
    final /* synthetic */ String[] $resolvedTableNames;
    final /* synthetic */ int[] $tableIds;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TriggerBasedInvalidationTracker$createFlow$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, int[] iArr, boolean z, String[] strArr, Continuation continuation) {
        super(2, continuation);
        this.this$0 = triggerBasedInvalidationTracker;
        this.$tableIds = iArr;
        this.$emitInitialState = z;
        this.$resolvedTableNames = strArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        TriggerBasedInvalidationTracker$createFlow$1 triggerBasedInvalidationTracker$createFlow$1 = new TriggerBasedInvalidationTracker$createFlow$1(this.this$0, this.$tableIds, this.$emitInitialState, this.$resolvedTableNames, continuation);
        triggerBasedInvalidationTracker$createFlow$1.L$0 = obj;
        return triggerBasedInvalidationTracker$createFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector flowCollector, Continuation continuation) {
        return ((TriggerBasedInvalidationTracker$createFlow$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006e, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext((kotlin.coroutines.CoroutineContext) r12, r5, r11) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0092, code lost:
    
        if (r12.collect(r4, r11) != r0) goto L29;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        FlowCollector flowCollector;
        FlowCollector flowCollector2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                FlowCollector flowCollector3 = (FlowCollector) this.L$0;
                if (this.this$0.observedTableStates.onObserverAdded$room_runtime(this.$tableIds)) {
                    RoomDatabase roomDatabase = this.this$0.database;
                    this.L$0 = flowCollector3;
                    this.label = 1;
                    Object coroutineContext = DBUtil.getCoroutineContext(roomDatabase, false, this);
                    if (coroutineContext != coroutine_suspended) {
                        flowCollector2 = flowCollector3;
                        obj = coroutineContext;
                    }
                    return coroutine_suspended;
                }
                flowCollector = flowCollector3;
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                ObservedTableVersions observedTableVersions = this.this$0.observedTableVersions;
                C07632 c07632 = new C07632(ref$ObjectRef, this.$emitInitialState, flowCollector, this.$resolvedTableNames, this.$tableIds);
                this.L$0 = null;
                this.label = 3;
            } else if (i == 1) {
                flowCollector2 = (FlowCollector) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    throw new KotlinNothingValueException();
                }
                flowCollector2 = (FlowCollector) this.L$0;
                ResultKt.throwOnFailure(obj);
                flowCollector = flowCollector2;
                Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                ObservedTableVersions observedTableVersions2 = this.this$0.observedTableVersions;
                C07632 c076322 = new C07632(ref$ObjectRef2, this.$emitInitialState, flowCollector, this.$resolvedTableNames, this.$tableIds);
                this.L$0 = null;
                this.label = 3;
            }
            C07621 c07621 = new C07621(this.this$0, null);
            this.L$0 = flowCollector2;
            this.label = 2;
        } catch (Throwable th) {
            this.this$0.observedTableStates.onObserverRemoved$room_runtime(this.$tableIds);
            throw th;
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1 */
    static final class C07621 extends SuspendLambda implements Function2 {
        int label;
        final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07621(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation continuation) {
            super(2, continuation);
            this.this$0 = triggerBasedInvalidationTracker;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C07621(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C07621) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
                this.label = 1;
                if (triggerBasedInvalidationTracker.syncTriggers$room_runtime(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2 */
    static final class C07632 implements FlowCollector {
        final /* synthetic */ FlowCollector $$this$flow;
        final /* synthetic */ Ref$ObjectRef $currentVersions;
        final /* synthetic */ boolean $emitInitialState;
        final /* synthetic */ String[] $resolvedTableNames;
        final /* synthetic */ int[] $tableIds;

        C07632(Ref$ObjectRef ref$ObjectRef, boolean z, FlowCollector flowCollector, String[] strArr, int[] iArr) {
            this.$currentVersions = ref$ObjectRef;
            this.$emitInitialState = z;
            this.$$this$flow = flowCollector;
            this.$resolvedTableNames = strArr;
            this.$tableIds = iArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
        
            if (r14.emit(r2, r0) == r1) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x009c, code lost:
        
            if (r14.emit(r2, r0) == r1) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x009e, code lost:
        
            return r1;
         */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(int[] iArr, Continuation continuation) {
            TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 triggerBasedInvalidationTracker$createFlow$1$2$emit$1;
            if (continuation instanceof TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) {
                triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = (TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) continuation;
                int i = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = new TriggerBasedInvalidationTracker$createFlow$1$2$emit$1(this, continuation);
                }
            }
            Object obj = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                Ref$ObjectRef ref$ObjectRef = this.$currentVersions;
                if (ref$ObjectRef.element == null) {
                    if (this.$emitInitialState) {
                        FlowCollector flowCollector = this.$$this$flow;
                        Set set = ArraysKt.toSet(this.$resolvedTableNames);
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0 = iArr;
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = 1;
                    }
                } else {
                    String[] strArr = this.$resolvedTableNames;
                    int[] iArr2 = this.$tableIds;
                    ArrayList arrayList = new ArrayList();
                    int length = strArr.length;
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < length) {
                        String str = strArr[i3];
                        int i5 = i4 + 1;
                        Object obj2 = ref$ObjectRef.element;
                        if (obj2 == null) {
                            throw new IllegalStateException("Required value was null.");
                        }
                        int i6 = iArr2[i4];
                        if (((int[]) obj2)[i6] != iArr[i6]) {
                            arrayList.add(str);
                        }
                        i3++;
                        i4 = i5;
                    }
                    if (!arrayList.isEmpty()) {
                        FlowCollector flowCollector2 = this.$$this$flow;
                        Set set2 = CollectionsKt.toSet(arrayList);
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0 = iArr;
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = 2;
                    }
                }
            } else {
                if (i2 != 1 && i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                iArr = (int[]) triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0;
                ResultKt.throwOnFailure(obj);
            }
            this.$currentVersions.element = iArr;
            return Unit.INSTANCE;
        }
    }
}
