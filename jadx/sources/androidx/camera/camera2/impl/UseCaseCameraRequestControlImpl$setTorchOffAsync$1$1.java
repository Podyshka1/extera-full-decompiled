package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.Logger;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
final class UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1 extends SuspendLambda implements Function1 {
    final /* synthetic */ int $aeMode;
    int I$0;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, int i, Continuation continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$aeMode = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(this.this$0, this.$aeMode, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        int i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#setTorchOffAsync");
                }
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
                int i3 = this.$aeMode;
                CameraGraph graph = useCaseCameraRequestControlImpl.useCaseGraphContext.getGraph();
                this.I$0 = i3;
                this.label = 1;
                obj = graph.acquireSession(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i = i3;
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                i = this.I$0;
                ResultKt.throwOnFailure(obj);
            }
            AutoCloseable autoCloseable = (AutoCloseable) obj;
            try {
                Deferred deferredMo1539setTorchOffNqN7i0k = ((CameraGraph.Session) autoCloseable).mo1539setTorchOffNqN7i0k(AeMode.m1484boximpl(i));
                AutoCloseableKt.closeFinally(autoCloseable, null);
                return deferredMo1539setTorchOffNqN7i0k;
            } finally {
            }
        } catch (CancellationException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire the CameraGraph.Session", e);
            }
            return UseCaseCameraRequestControlImpl.submitFailedResult;
        }
    }
}
