package androidx.camera.camera2.impl;

import android.util.Log;
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
public final class CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1 extends SuspendLambda implements Function2 {
    final /* synthetic */ int $captureMode$inlined;
    final /* synthetic */ List $captureSignal;
    Object L$0;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1(List list, Continuation continuation, CapturePipelineImpl capturePipelineImpl, int i) {
        super(2, continuation);
        this.$captureSignal = list;
        this.this$0 = capturePipelineImpl;
        this.$captureMode$inlined = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1(this.$captureSignal, continuation, this.this$0, this.$captureMode$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0090 A[Catch: all -> 0x009a, TryCatch #0 {all -> 0x009a, blocks: (B:32:0x0085, B:34:0x0090, B:37:0x009f, B:41:0x00a5), top: B:55:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b9 A[Catch: all -> 0x001c, TryCatch #2 {all -> 0x001c, blocks: (B:8:0x0017, B:45:0x00b1, B:47:0x00b9, B:48:0x00c2), top: B:59:0x0017 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Exception {
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2;
        Throwable th;
        CameraGraph.Session session;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        boolean z = true;
        if (i == 0) {
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
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                autoCloseable2 = (AutoCloseable) this.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                        Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Unlocking 3A done");
                    }
                    Unit unit = Unit.INSTANCE;
                    AutoCloseableKt.closeFinally(autoCloseable2, null);
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        AutoCloseableKt.closeFinally(autoCloseable2, th);
                        throw th3;
                    }
                }
            }
            ResultKt.throwOnFailure(obj);
            autoCloseable = (AutoCloseable) obj;
            try {
                session = (CameraGraph.Session) autoCloseable;
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Unlocking 3A");
                }
                if (this.$captureMode$inlined == 0) {
                    z = false;
                }
                this.L$0 = autoCloseable;
                this.label = 3;
                if (session.unlock3APostCapture(z, this) != coroutine_suspended) {
                    autoCloseable2 = autoCloseable;
                    Camera2Logger camera2Logger22 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled("CXCP")) {
                    }
                    Unit unit2 = Unit.INSTANCE;
                    AutoCloseableKt.closeFinally(autoCloseable2, null);
                    return Unit.INSTANCE;
                }
                return coroutine_suspended;
            } catch (Throwable th4) {
                autoCloseable2 = autoCloseable;
                th = th4;
                throw th;
            }
        }
        ResultKt.throwOnFailure(obj);
        Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done");
        }
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Acquiring session for unlocking 3A");
        }
        CameraGraph graph = this.this$0.useCaseGraphContext.getGraph();
        this.label = 2;
        obj = graph.acquireSession(this);
        if (obj != coroutine_suspended) {
            autoCloseable = (AutoCloseable) obj;
            session = (CameraGraph.Session) autoCloseable;
            Camera2Logger camera2Logger32 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
            }
            if (this.$captureMode$inlined == 0) {
            }
            this.L$0 = autoCloseable;
            this.label = 3;
            if (session.unlock3APostCapture(z, this) != coroutine_suspended) {
            }
        }
        return coroutine_suspended;
    }
}
