package androidx.camera.camera2.pipe.compat;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
final class CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;

    CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1(Continuation continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1 = new CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1(continuation);
        cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1.L$0 = obj;
        return cameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CameraState cameraState, Continuation continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$resultDeferred$1$result$1) create(cameraState, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return Boxing.boxBoolean(!(((CameraState) this.L$0) instanceof CameraStateUnopened));
    }
}
