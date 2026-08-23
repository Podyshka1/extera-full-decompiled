package androidx.room;

import androidx.room.util.DBUtil;
import java.util.ArrayList;
import java.util.Set;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/flow/FlowCollector;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET}, m754k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m765c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1", m766f = "InvalidationTracker.kt", m767i = {0, 1}, m768l = {239, 239, 243}, m769m = "invokeSuspend", m770n = {"$this$flow", "$this$flow"}, m771s = {"L$0", "L$0"})
public final class TriggerBasedInvalidationTracker$createFlow$1 extends SuspendLambda implements Function2<FlowCollector<? super Set<? extends String>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $emitInitialState;
    final /* synthetic */ String[] $resolvedTableNames;
    final /* synthetic */ int[] $tableIds;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$createFlow$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, int[] iArr, boolean z, String[] strArr, Continuation<? super TriggerBasedInvalidationTracker$createFlow$1> continuation) {
        super(2, continuation);
        this.this$0 = triggerBasedInvalidationTracker;
        this.$tableIds = iArr;
        this.$emitInitialState = z;
        this.$resolvedTableNames = strArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        TriggerBasedInvalidationTracker$createFlow$1 triggerBasedInvalidationTracker$createFlow$1 = new TriggerBasedInvalidationTracker$createFlow$1(this.this$0, this.$tableIds, this.$emitInitialState, this.$resolvedTableNames, continuation);
        triggerBasedInvalidationTracker$createFlow$1.L$0 = obj;
        return triggerBasedInvalidationTracker$createFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super Set<? extends String>> flowCollector, Continuation<? super Unit> continuation) {
        return invoke2((FlowCollector<? super Set<String>>) flowCollector, continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(FlowCollector<? super Set<String>> flowCollector, Continuation<? super Unit> continuation) {
        return ((TriggerBasedInvalidationTracker$createFlow$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006d, code lost:
    
        if (kotlinx.coroutines.BuildersKt.withContext((kotlin.coroutines.CoroutineContext) r12, r5, r11) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0091, code lost:
    
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
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                ObservedTableVersions observedTableVersions = this.this$0.observedTableVersions;
                C07552 c07552 = new C07552(objectRef, this.$emitInitialState, flowCollector, this.$resolvedTableNames, this.$tableIds);
                this.L$0 = null;
                this.label = 3;
            } else if (i == 1) {
                flowCollector2 = (FlowCollector) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    if (i != 3) {
                        Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.throwOnFailure(obj);
                    throw new KotlinNothingValueException();
                }
                flowCollector2 = (FlowCollector) this.L$0;
                ResultKt.throwOnFailure(obj);
                flowCollector = flowCollector2;
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                ObservedTableVersions observedTableVersions2 = this.this$0.observedTableVersions;
                C07552 c075522 = new C07552(objectRef2, this.$emitInitialState, flowCollector, this.$resolvedTableNames, this.$tableIds);
                this.L$0 = null;
                this.label = 3;
            }
            C07541 c07541 = new C07541(this.this$0, null);
            this.L$0 = flowCollector2;
            this.label = 2;
        } catch (Throwable th) {
            this.this$0.observedTableStates.onObserverRemoved$room_runtime(this.$tableIds);
            throw th;
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m754k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m765c = "androidx.room.TriggerBasedInvalidationTracker$createFlow$1$1", m766f = "InvalidationTracker.kt", m767i = {}, m768l = {239}, m769m = "invokeSuspend", m770n = {}, m771s = {})
    public static final class C07541 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ TriggerBasedInvalidationTracker this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07541(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Continuation<? super C07541> continuation) {
            super(2, continuation);
            this.this$0 = triggerBasedInvalidationTracker;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C07541(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C07541) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$createFlow$1$2 */
    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,640:1\n3912#2:641\n4011#2:642\n13537#2,2:643\n4012#2,2:645\n13539#2:647\n4014#2:648\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2\n*L\n251#1:641\n251#1:642\n251#1:643,2\n251#1:645,2\n251#1:647\n251#1:648\n*E\n"})
    public static final class C07552<T> implements FlowCollector {
        final /* synthetic */ FlowCollector<Set<String>> $$this$flow;
        final /* synthetic */ Ref.ObjectRef<int[]> $currentVersions;
        final /* synthetic */ boolean $emitInitialState;
        final /* synthetic */ String[] $resolvedTableNames;
        final /* synthetic */ int[] $tableIds;

        /* JADX WARN: Multi-variable type inference failed */
        public C07552(Ref.ObjectRef<int[]> objectRef, boolean z, FlowCollector<? super Set<String>> flowCollector, String[] strArr, int[] iArr) {
            this.$currentVersions = objectRef;
            this.$emitInitialState = z;
            this.$$this$flow = flowCollector;
            this.$resolvedTableNames = strArr;
            this.$tableIds = iArr;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return emit((int[]) obj, (Continuation<? super Unit>) continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
        
            if (r15.emit(r2, r0) == r1) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x0099, code lost:
        
            if (r15.emit(r2, r0) == r1) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x009b, code lost:
        
            return r1;
         */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object emit(int[] iArr, Continuation<? super Unit> continuation) {
            TriggerBasedInvalidationTracker$createFlow$1$2$emit$1 triggerBasedInvalidationTracker$createFlow$1$2$emit$1;
            Object obj;
            if (continuation instanceof TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) {
                triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = (TriggerBasedInvalidationTracker$createFlow$1$2$emit$1) continuation;
                int i = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = i - Integer.MIN_VALUE;
                } else {
                    triggerBasedInvalidationTracker$createFlow$1$2$emit$1 = new TriggerBasedInvalidationTracker$createFlow$1$2$emit$1(this, continuation);
                }
            }
            Object obj2 = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj2);
                Ref.ObjectRef<int[]> objectRef = this.$currentVersions;
                if (objectRef.element == null) {
                    obj = iArr;
                    if (this.$emitInitialState) {
                        FlowCollector<Set<String>> flowCollector = this.$$this$flow;
                        Set<String> set = ArraysKt.toSet(this.$resolvedTableNames);
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0 = iArr;
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = 1;
                        obj = iArr;
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
                        int[] iArr3 = objectRef.element;
                        if (iArr3 == null) {
                            Segment$$ExternalSyntheticBUOutline1.m848m("Required value was null.");
                            return null;
                        }
                        int i6 = iArr2[i4];
                        if (iArr3[i6] != iArr[i6]) {
                            arrayList.add(str);
                        }
                        i3++;
                        i4 = i5;
                    }
                    obj = iArr;
                    if (!arrayList.isEmpty()) {
                        FlowCollector<Set<String>> flowCollector2 = this.$$this$flow;
                        Set<String> set2 = CollectionsKt.toSet(arrayList);
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0 = iArr;
                        triggerBasedInvalidationTracker$createFlow$1$2$emit$1.label = 2;
                        obj = iArr;
                    }
                }
            } else {
                if (i2 != 1 && i2 != 2) {
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                Object obj3 = (T) ((int[]) triggerBasedInvalidationTracker$createFlow$1$2$emit$1.L$0);
                ResultKt.throwOnFailure(obj2);
                obj = obj3;
            }
            this.$currentVersions.element = (T) obj;
            return Unit.INSTANCE;
        }
    }
}
