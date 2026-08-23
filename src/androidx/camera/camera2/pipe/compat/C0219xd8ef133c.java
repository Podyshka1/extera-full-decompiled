package androidx.camera.camera2.pipe.compat;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl$openAndAwaitCameraWithRetry$2$cameraState$1 */
/* JADX INFO: loaded from: classes3.dex */
final class C0219xd8ef133c extends SuspendLambda implements Function2 {
    /* synthetic */ Object L$0;
    int label;

    C0219xd8ef133c(Continuation continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0219xd8ef133c c0219xd8ef133c = new C0219xd8ef133c(continuation);
        c0219xd8ef133c.L$0 = obj;
        return c0219xd8ef133c;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CameraState cameraState, Continuation continuation) {
        return ((C0219xd8ef133c) create(cameraState, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        return Boxing.boxBoolean(!Intrinsics.areEqual((CameraState) this.L$0, CameraStateUnopened.INSTANCE));
    }
}
