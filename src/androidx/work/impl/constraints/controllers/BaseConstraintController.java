package androidx.work.impl.constraints.controllers;

import androidx.work.Constraints;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.controllers.BaseConstraintController;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.model.WorkSpec;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseConstraintController implements ConstraintController {
    private final ConstraintTracker tracker;

    protected abstract int getReason();

    protected abstract boolean isConstrained(Object obj);

    public BaseConstraintController(ConstraintTracker tracker) {
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        this.tracker = tracker;
    }

    /* JADX INFO: renamed from: androidx.work.impl.constraints.controllers.BaseConstraintController$track$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C08611 extends SuspendLambda implements Function2 {
        private /* synthetic */ Object L$0;
        int label;

        C08611(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C08611 c08611 = BaseConstraintController.this.new C08611(continuation);
            c08611.L$0 = obj;
            return c08611;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((C08611) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.work.impl.constraints.ConstraintListener, androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final ProducerScope producerScope = (ProducerScope) this.L$0;
                final BaseConstraintController baseConstraintController = BaseConstraintController.this;
                final ?? r1 = new ConstraintListener() { // from class: androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1
                    @Override // androidx.work.impl.constraints.ConstraintListener
                    public void onConstraintChanged(Object obj2) {
                        producerScope.getChannel().mo3670trySendJP2dKIU(baseConstraintController.isConstrained(obj2) ? new ConstraintsState.ConstraintsNotMet(baseConstraintController.getReason()) : ConstraintsState.ConstraintsMet.INSTANCE);
                    }
                };
                BaseConstraintController.this.tracker.addListener(r1);
                final BaseConstraintController baseConstraintController2 = BaseConstraintController.this;
                Function0 function0 = new Function0() { // from class: androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BaseConstraintController.C08611.invokeSuspend$lambda$0(baseConstraintController2, r1);
                    }
                };
                this.label = 1;
                if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
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

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$0(BaseConstraintController baseConstraintController, BaseConstraintController$track$1$listener$1 baseConstraintController$track$1$listener$1) {
            baseConstraintController.tracker.removeListener(baseConstraintController$track$1$listener$1);
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public Flow track(Constraints constraints) {
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        return FlowKt.callbackFlow(new C08611(null));
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean isCurrentlyConstrained(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        return hasConstraint(workSpec) && isConstrained(this.tracker.readSystemState());
    }
}
