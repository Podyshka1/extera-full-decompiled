package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Build;
import androidx.work.Constraints;
import androidx.work.impl.constraints.NetworkRequestConstraintController;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.model.WorkSpec;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes.dex */
public final class NetworkRequestConstraintController implements ConstraintController {
    private final ConnectivityManager connManager;
    private final long timeoutMs;

    public NetworkRequestConstraintController(ConnectivityManager connManager, long j) {
        Intrinsics.checkNotNullParameter(connManager, "connManager");
        this.connManager = connManager;
        this.timeoutMs = j;
    }

    public /* synthetic */ NetworkRequestConstraintController(ConnectivityManager connectivityManager, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(connectivityManager, (i & 2) != 0 ? 1000L : j);
    }

    /* JADX INFO: renamed from: androidx.work.impl.constraints.NetworkRequestConstraintController$track$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C08551 extends SuspendLambda implements Function2 {
        final /* synthetic */ Constraints $constraints;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ NetworkRequestConstraintController this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08551(Constraints constraints, NetworkRequestConstraintController networkRequestConstraintController, Continuation continuation) {
            super(2, continuation);
            this.$constraints = constraints;
            this.this$0 = networkRequestConstraintController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            C08551 c08551 = new C08551(this.$constraints, this.this$0, continuation);
            c08551.L$0 = obj;
            return c08551;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope producerScope, Continuation continuation) {
            return ((C08551) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            final Function0 function0AddCallback;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final ProducerScope producerScope = (ProducerScope) this.L$0;
                NetworkRequest requiredNetworkRequest = this.$constraints.getRequiredNetworkRequest();
                if (requiredNetworkRequest != null) {
                    final Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(producerScope, null, null, new NetworkRequestConstraintController$track$1$timeoutJob$1(this.this$0, producerScope, null), 3, null);
                    Function1 function1 = new Function1() { // from class: androidx.work.impl.constraints.NetworkRequestConstraintController$track$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            return NetworkRequestConstraintController.C08551.invokeSuspend$lambda$0(jobLaunch$default, producerScope, (ConstraintsState) obj2);
                        }
                    };
                    if (Build.VERSION.SDK_INT >= 30) {
                        function0AddCallback = SharedNetworkCallback.INSTANCE.addCallback(this.this$0.connManager, requiredNetworkRequest, function1);
                    } else {
                        function0AddCallback = IndividualNetworkCallback.Companion.addCallback(this.this$0.connManager, requiredNetworkRequest, function1);
                    }
                    Function0 function0 = new Function0() { // from class: androidx.work.impl.constraints.NetworkRequestConstraintController$track$1$$ExternalSyntheticLambda1
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return NetworkRequestConstraintController.C08551.invokeSuspend$lambda$1(function0AddCallback);
                        }
                    };
                    this.label = 1;
                    if (ProduceKt.awaitClose(producerScope, function0, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    SendChannel.DefaultImpls.close$default(producerScope.getChannel(), null, 1, null);
                    return Unit.INSTANCE;
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
        public static final Unit invokeSuspend$lambda$0(Job job, ProducerScope producerScope, ConstraintsState constraintsState) {
            Job.DefaultImpls.cancel$default(job, null, 1, null);
            producerScope.mo3670trySendJP2dKIU(constraintsState);
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit invokeSuspend$lambda$1(Function0 function0) {
            function0.invoke();
            return Unit.INSTANCE;
        }
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public Flow track(Constraints constraints) {
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        return FlowKt.callbackFlow(new C08551(constraints, this, null));
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean hasConstraint(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        return workSpec.constraints.getRequiredNetworkRequest() != null;
    }

    @Override // androidx.work.impl.constraints.controllers.ConstraintController
    public boolean isCurrentlyConstrained(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        if (hasConstraint(workSpec)) {
            throw new IllegalStateException("isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn't supported");
        }
        return false;
    }
}
