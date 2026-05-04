package androidx.camera.camera2.pipe.compat;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
final class CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1 extends SuspendLambda implements Function2 {
    int label;
    final /* synthetic */ CameraStateOpener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1(CameraStateOpener cameraStateOpener, Continuation continuation) {
        super(2, continuation);
        this.this$0 = cameraStateOpener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (kotlinx.coroutines.DelayKt.delay(2000, r4) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CompletableDeferred completableDeferred = this.this$0.cameraOpenCancelled;
            this.label = 1;
            if (completableDeferred.await(this) != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(obj);
        this.label = 2;
    }
}
