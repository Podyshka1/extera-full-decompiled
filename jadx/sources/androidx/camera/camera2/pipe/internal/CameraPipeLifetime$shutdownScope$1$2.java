package androidx.camera.camera2.pipe.internal;

import androidx.camera.camera2.pipe.core.Log;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: loaded from: classes3.dex */
final class CameraPipeLifetime$shutdownScope$1$2 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ CameraPipeLifetime this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraPipeLifetime$shutdownScope$1$2(CameraPipeLifetime cameraPipeLifetime, Continuation continuation) {
        super(2, continuation);
        this.this$0 = cameraPipeLifetime;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CameraPipeLifetime$shutdownScope$1$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CameraPipeLifetime$shutdownScope$1$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.pipe.internal.CameraPipeLifetime$shutdownScope$1$2$1 */
    static final class C02441 extends SuspendLambda implements Function2 {
        int label;
        final /* synthetic */ CameraPipeLifetime this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02441(CameraPipeLifetime cameraPipeLifetime, Continuation continuation) {
            super(2, continuation);
            this.this$0 = cameraPipeLifetime;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new C02441(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C02441) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Cancelling CameraPipe root Job...");
                }
                Job job = this.this$0.cameraPipeJob;
                this.label = 1;
                if (JobKt.cancelAndJoin(job, this) == coroutine_suspended) {
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
        C02441 c02441 = new C02441(this.this$0, null);
        this.label = 1;
        Object objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(3000L, c02441, this);
        return objWithTimeoutOrNull == coroutine_suspended ? coroutine_suspended : objWithTimeoutOrNull;
    }
}
