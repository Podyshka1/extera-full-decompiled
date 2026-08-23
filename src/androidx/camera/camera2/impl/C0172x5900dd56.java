package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$runOnSequential$$inlined$confineDeferredSuspend$1 */
/* JADX INFO: loaded from: classes3.dex */
public final class C0172x5900dd56 extends SuspendLambda implements Function2 {
    final /* synthetic */ Function1 $block;
    final /* synthetic */ CompletableDeferred $signal;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0172x5900dd56(Function1 function1, CompletableDeferred completableDeferred, Continuation continuation) {
        super(2, continuation);
        this.$block = function1;
        this.$signal = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0172x5900dd56(this.$block, this.$signal, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0172x5900dd56) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Function1 function1 = this.$block;
            this.label = 1;
            obj = function1.invoke(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        CoroutineAdaptersKt.propagateTo((Deferred) obj, this.$signal);
        return Unit.INSTANCE;
    }
}
