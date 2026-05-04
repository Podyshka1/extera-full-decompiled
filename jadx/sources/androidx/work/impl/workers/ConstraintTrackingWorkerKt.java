package androidx.work.impl.workers;

import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ConstraintTrackingWorkerKt {
    private static final String TAG;

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$1 */
    static final class C08791 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C08791(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConstraintTrackingWorkerKt.awaitConstraintsNotMet(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitConstraintsNotMet(WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation continuation) {
        C08791 c08791;
        if (continuation instanceof C08791) {
            c08791 = (C08791) continuation;
            int i = c08791.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c08791.label = i - Integer.MIN_VALUE;
            } else {
                c08791 = new C08791(continuation);
            }
        }
        Object objFirst = c08791.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c08791.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objFirst);
            final Flow flowOnEach = FlowKt.onEach(workConstraintsTracker.track(workSpec), new C08802(workSpec, null));
            Flow flow = new Flow() { // from class: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1
                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector flowCollector, Continuation continuation2) {
                    Object objCollect = flowOnEach.collect(new AnonymousClass2(flowCollector), continuation2);
                    return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2, reason: invalid class name */
                public static final class AnonymousClass2 implements FlowCollector {
                    final /* synthetic */ FlowCollector $this_unsafeFlow;

                    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$$inlined$filterIsInstance$1$2$1, reason: invalid class name */
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.$this_unsafeFlow = flowCollector;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                    */
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i = anonymousClass1.label;
                            if ((i & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label = i - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        }
                        Object obj2 = anonymousClass1.result;
                        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i2 = anonymousClass1.label;
                        if (i2 == 0) {
                            ResultKt.throwOnFailure(obj2);
                            FlowCollector flowCollector = this.$this_unsafeFlow;
                            if (obj instanceof ConstraintsState.ConstraintsNotMet) {
                                anonymousClass1.label = 1;
                                if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                        } else {
                            if (i2 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj2);
                        }
                        return Unit.INSTANCE;
                    }
                }
            };
            c08791.label = 1;
            objFirst = FlowKt.first(flow, c08791);
            if (objFirst == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objFirst);
        }
        return Boxing.boxInt(((ConstraintsState.ConstraintsNotMet) objFirst).getReason());
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorkerKt$awaitConstraintsNotMet$2 */
    static final class C08802 extends SuspendLambda implements Function2 {
        final /* synthetic */ WorkSpec $workSpec;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08802(WorkSpec workSpec, Continuation continuation) {
            super(2, continuation);
            this.$workSpec = workSpec;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C08802(this.$workSpec, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ConstraintsState constraintsState, Continuation continuation) {
            return ((C08802) create(constraintsState, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String str = ConstraintTrackingWorkerKt.TAG;
            WorkSpec workSpec = this.$workSpec;
            Logger.get().debug(str, "Constraints changed for " + workSpec);
            return Unit.INSTANCE;
        }
    }

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("ConstraintTrkngWrkr");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }
}
