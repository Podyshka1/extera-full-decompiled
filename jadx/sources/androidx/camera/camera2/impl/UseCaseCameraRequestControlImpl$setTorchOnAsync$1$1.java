package androidx.camera.camera2.impl;

import android.util.Log;
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
final class UseCaseCameraRequestControlImpl$setTorchOnAsync$1$1 extends SuspendLambda implements Function1 {
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UseCaseCameraRequestControlImpl$setTorchOnAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, Continuation continuation) {
        super(1, continuation);
        this.this$0 = useCaseCameraRequestControlImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new UseCaseCameraRequestControlImpl$setTorchOnAsync$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation continuation) {
        return ((UseCaseCameraRequestControlImpl$setTorchOnAsync$1$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#setTorchOnAsync");
                }
                CameraGraph graph = this.this$0.useCaseGraphContext.getGraph();
                this.label = 1;
                obj = graph.acquireSession(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            AutoCloseable autoCloseable = (AutoCloseable) obj;
            try {
                Deferred torchOn = ((CameraGraph.Session) autoCloseable).setTorchOn();
                AutoCloseableKt.closeFinally(autoCloseable, null);
                return torchOn;
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
