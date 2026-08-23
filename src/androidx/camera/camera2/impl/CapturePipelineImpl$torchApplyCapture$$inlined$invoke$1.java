package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.Logger;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ int $captureMode$inlined;
    final /* synthetic */ List $captureSignal;
    final /* synthetic */ boolean $lock3ARequired$inlined;
    final /* synthetic */ boolean $torchOnRequired$inlined;
    final /* synthetic */ boolean $triggerAePreCapture$inlined;
    Object L$0;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(List list, Continuation continuation, boolean z, CapturePipelineImpl capturePipelineImpl, boolean z2, boolean z3, int i) {
        super(2, continuation);
        this.$captureSignal = list;
        this.$torchOnRequired$inlined = z;
        this.this$0 = capturePipelineImpl;
        this.$triggerAePreCapture$inlined = z2;
        this.$lock3ARequired$inlined = z3;
        this.$captureMode$inlined = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(this.$captureSignal, continuation, this.$torchOnRequired$inlined, this.this$0, this.$triggerAePreCapture$inlined, this.$lock3ARequired$inlined, this.$captureMode$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x010f, code lost:
    
        if (r14.unlockAf(r3, r13) == r0) goto L66;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00de  */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Exception {
        CameraGraph.Session session;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r1 = this.label;
        boolean z = true;
        try {
            if (r1 == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal");
                }
                List list = this.$captureSignal;
                this.label = 1;
                if (AwaitKt.joinAll(list, this) != coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (r1 != 1) {
                if (r1 == 2) {
                    ResultKt.throwOnFailure(obj);
                    AutoCloseable autoCloseable = (AutoCloseable) obj;
                    session = (CameraGraph.Session) autoCloseable;
                    if (this.$captureMode$inlined == 0) {
                        z = false;
                    }
                    this.L$0 = autoCloseable;
                    this.label = 3;
                    r1 = autoCloseable;
                    if (session.unlock3APostCapture(z, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Unit unit = Unit.INSTANCE;
                    AutoCloseableKt.closeFinally(r1, null);
                    return Unit.INSTANCE;
                }
                if (r1 == 3) {
                    AutoCloseable autoCloseable2 = (AutoCloseable) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    r1 = autoCloseable2;
                    Unit unit2 = Unit.INSTANCE;
                    AutoCloseableKt.closeFinally(r1, null);
                    return Unit.INSTANCE;
                }
                if (r1 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Unlocking 3A done");
                }
                return Unit.INSTANCE;
            }
            ResultKt.throwOnFailure(obj);
            Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done");
            }
            if (this.$torchOnRequired$inlined) {
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Unsetting torch");
                }
                TorchControl.m1452setTorchAsyncOup_wC0$camera_camera2$default(this.this$0.torchControl, TorchControl.TorchMode.Companion.m1462getOFFIRs_R8(), false, false, 6, null);
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Unsetting torch done");
                }
            }
            if (!this.$triggerAePreCapture$inlined) {
                if (this.$lock3ARequired$inlined && this.$captureMode$inlined == 0) {
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Unlocking 3A");
                    }
                    CapturePipelineImpl capturePipelineImpl = this.this$0;
                    long j = CapturePipelineKt.CHECK_3A_TIMEOUT_IN_NS;
                    this.label = 4;
                }
                return Unit.INSTANCE;
            }
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Unlocking 3A for capture");
            }
            CameraGraph graph = this.this$0.useCaseGraphContext.getGraph();
            this.label = 2;
            obj = graph.acquireSession(this);
            if (obj != coroutine_suspended) {
                AutoCloseable autoCloseable3 = (AutoCloseable) obj;
                session = (CameraGraph.Session) autoCloseable3;
                if (this.$captureMode$inlined == 0) {
                }
                this.L$0 = autoCloseable3;
                this.label = 3;
                r1 = autoCloseable3;
                if (session.unlock3APostCapture(z, this) == coroutine_suspended) {
                }
                Unit unit22 = Unit.INSTANCE;
                AutoCloseableKt.closeFinally(r1, null);
                return Unit.INSTANCE;
            }
            return coroutine_suspended;
        } finally {
        }
    }
}
