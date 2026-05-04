package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.compat.workaround.StillCaptureFlowKt;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1 */
/* JADX INFO: loaded from: classes3.dex */
public final class C0136x5c55b0eb extends SuspendLambda implements Function2 {
    final /* synthetic */ List $deferredList$inlined;
    final /* synthetic */ List $requests$inlined;
    Object L$0;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0136x5c55b0eb(Continuation continuation, CapturePipelineImpl capturePipelineImpl, List list, List list2) {
        super(2, continuation);
        this.this$0 = capturePipelineImpl;
        this.$deferredList$inlined = list;
        this.$requests$inlined = list2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0136x5c55b0eb(continuation, this.this$0, this.$deferredList$inlined, this.$requests$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0136x5c55b0eb) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00bc, code lost:
    
        if (r11.tryStartRepeating(r10) != r0) goto L51;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Exception {
        Ref$BooleanRef ref$BooleanRef;
        AutoCloseable autoCloseable;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
        } catch (CancellationException unused) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isInfoEnabled("CXCP")) {
                Log.i(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#submitRequestInternal: CameraGraph.Session could not be acquired, requests may need re-submission");
            }
            Iterator it = this.$deferredList$inlined.iterator();
            while (it.hasNext()) {
                ((CompletableDeferred) it.next()).completeExceptionally(new ImageCaptureException(3, "Capture request is cancelled because camera is closed", null));
            }
        }
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#submitRequestInternal: Acquiring session for submitting requests");
                }
                ref$BooleanRef = new Ref$BooleanRef();
                CameraGraph graph = this.this$0.useCaseGraphContext.getGraph();
                this.L$0 = ref$BooleanRef;
                this.label = 1;
                obj = graph.acquireSession(this);
                if (obj == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                ref$BooleanRef = (Ref$BooleanRef) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
                UseCaseCameraState useCaseCameraState = this.this$0.getUseCaseCameraState();
                this.label = 3;
            }
            CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
            boolean zShouldStopRepeatingBeforeCapture = StillCaptureFlowKt.shouldStopRepeatingBeforeCapture(this.$requests$inlined);
            ref$BooleanRef.element = zShouldStopRepeatingBeforeCapture;
            if (zShouldStopRepeatingBeforeCapture) {
                session.stopRepeating();
            }
            Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#submitRequestInternal: Submitting " + this.$requests$inlined);
            }
            session.submit(this.$requests$inlined);
            Unit unit = Unit.INSTANCE;
            AutoCloseableKt.closeFinally(autoCloseable, null);
            if (ref$BooleanRef.element) {
                List list = this.$deferredList$inlined;
                this.L$0 = null;
                this.label = 2;
                if (AwaitKt.joinAll(list, this) != coroutine_suspended) {
                    UseCaseCameraState useCaseCameraState2 = this.this$0.getUseCaseCameraState();
                    this.label = 3;
                }
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        } finally {
        }
        autoCloseable = (AutoCloseable) obj;
    }
}
