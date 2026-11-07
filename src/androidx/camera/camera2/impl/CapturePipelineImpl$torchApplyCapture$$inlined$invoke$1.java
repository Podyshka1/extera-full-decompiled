package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.Logger;
import com.google.android.gms.cast.MediaError;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", _UrlKt.FRAGMENT_ENCODE_SET, "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)V"}, m910k = 3, mv = {2, 1, 0})
@DebugMetadata(m920c = "androidx.camera.camera2.impl.CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1", m921f = "CapturePipeline.kt", m922i = {}, m923l = {MediaError.DetailedErrorCode.HLS_NETWORK_PLAYLIST, 898, 900, 907}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
@SourceDebugExtension({"SMAP\nCapturePipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CapturePipeline.kt\nandroidx/camera/camera2/impl/CapturePipelineImpl$invoke$7$1\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 CapturePipeline.kt\nandroidx/camera/camera2/impl/CapturePipelineImpl\n+ 4 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseGraphContext\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,870:1\n85#2,4:871\n85#2,4:875\n85#2,4:881\n85#2,4:887\n85#2,4:893\n85#2,4:912\n85#2,4:916\n454#3,2:879\n456#3,2:885\n459#3,2:891\n462#3:897\n463#3,12:900\n242#4:898\n1#5:899\n*S KotlinDebug\n*F\n+ 1 CapturePipeline.kt\nandroidx/camera/camera2/impl/CapturePipelineImpl$invoke$7$1\n+ 2 CapturePipeline.kt\nandroidx/camera/camera2/impl/CapturePipelineImpl\n*L\n308#1:871,4\n313#1:875,4\n455#2:881,4\n457#2:887,4\n460#2:893,4\n469#2:912,4\n471#2:916,4\n462#2:898\n462#2:899\n*E\n"})
public final class CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
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
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1(this.$captureSignal, continuation, this.$torchOnRequired$inlined, this.this$0, this.$triggerAePreCapture$inlined, this.$lock3ARequired$inlined, this.$captureMode$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CapturePipelineImpl$torchApplyCapture$$inlined$invoke$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0111, code lost:
    
        if (r1.unlockAf(r3, r14) == r0) goto L69;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00dd  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Exception {
        Object objAcquireSession;
        AutoCloseable autoCloseable;
        AutoCloseable autoCloseable2;
        CameraGraph.Session session;
        Throwable th;
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
            if (i == 2) {
                ResultKt.throwOnFailure(obj);
                objAcquireSession = obj;
                autoCloseable = (AutoCloseable) objAcquireSession;
                try {
                    session = (CameraGraph.Session) autoCloseable;
                    if (this.$captureMode$inlined == 0) {
                        z = false;
                    }
                    this.L$0 = autoCloseable;
                    this.label = 3;
                    if (session.unlock3APostCapture(z, this) != coroutine_suspended) {
                        autoCloseable2 = autoCloseable;
                        Unit unit = Unit.INSTANCE;
                        AutoCloseableKt.closeFinally(autoCloseable2, null);
                        return Unit.INSTANCE;
                    }
                    return coroutine_suspended;
                } catch (Throwable th2) {
                    th = th2;
                    autoCloseable2 = autoCloseable;
                    th = th;
                    throw th;
                }
            }
            if (i != 3) {
                if (i != 4) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#torchApplyCapture: Unlocking 3A done");
                }
                return Unit.INSTANCE;
            }
            autoCloseable2 = (AutoCloseable) this.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                Unit unit2 = Unit.INSTANCE;
                AutoCloseableKt.closeFinally(autoCloseable2, null);
                return Unit.INSTANCE;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                try {
                    throw th;
                } catch (Throwable th4) {
                    AutoCloseableKt.closeFinally(autoCloseable2, th);
                    throw th4;
                }
            }
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
            TorchControl.m1201setTorchAsyncOup_wC0$camera_camera2$default(this.this$0.torchControl, TorchControl.TorchMode.INSTANCE.m1211getOFFIRs_R8(), false, false, 6, null);
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
        objAcquireSession = graph.acquireSession(this);
        if (objAcquireSession != coroutine_suspended) {
            autoCloseable = (AutoCloseable) objAcquireSession;
            session = (CameraGraph.Session) autoCloseable;
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
