package androidx.camera.camera2.impl;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$close$$inlined$confineLaunch$1 */
/* JADX INFO: loaded from: classes3.dex */
public final class C0144x4d9c11a4 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ DeferredUseCaseCameraRequestControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0144x4d9c11a4(Continuation continuation, DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl) {
        super(2, continuation);
        this.this$0 = deferredUseCaseCameraRequestControl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0144x4d9c11a4(continuation, this.this$0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0144x4d9c11a4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0.impl;
            if (useCaseCameraRequestControlImpl != null) {
                useCaseCameraRequestControlImpl.close();
            }
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
