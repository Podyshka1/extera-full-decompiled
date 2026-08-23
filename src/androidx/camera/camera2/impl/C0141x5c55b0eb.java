package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.camera2.compat.workaround.StillCaptureFlowKt;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Logger;
import com.android.dx.io.Opcodes;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: androidx.camera.camera2.impl.CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", _UrlKt.FRAGMENT_ENCODE_SET, "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)V"}, m754k = 3, mv = {2, 1, 0})
@DebugMetadata(m765c = "androidx.camera.camera2.impl.CapturePipelineImpl$submitRequestInternal$$inlined$confineLaunch$1", m766f = "CapturePipeline.kt", m767i = {0}, m768l = {Opcodes.MUL_INT_LIT16, 246, 247}, m769m = "invokeSuspend", m770n = {"requiresStopRepeating"}, m771s = {"L$0"}, m772v = 1)
@SourceDebugExtension({"SMAP\nUseCaseThreads.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads$confineLaunch$1\n+ 2 CapturePipeline.kt\nandroidx/camera/camera2/impl/CapturePipelineImpl\n+ 3 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 4 UseCaseCameraConfig.kt\nandroidx/camera/camera2/config/UseCaseGraphContext\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,200:1\n724#2:201\n725#2:204\n728#2,4:206\n732#2,6:212\n738#2,4:222\n742#2,2:228\n747#2:231\n748#2,8:233\n756#2,8:242\n85#3,2:202\n88#3:205\n85#3,4:218\n102#3,2:226\n105#3:230\n242#4:210\n1#5:211\n1869#6:232\n1870#6:241\n*S KotlinDebug\n*F\n+ 1 CapturePipeline.kt\nandroidx/camera/camera2/impl/CapturePipelineImpl\n*L\n724#1:202,2\n724#1:205\n737#1:218,4\n741#1:226,2\n741#1:230\n731#1:210\n731#1:211\n747#1:232\n747#1:241\n*E\n"})
public final class C0141x5c55b0eb extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List $deferredList$inlined;
    final /* synthetic */ List $requests$inlined;
    Object L$0;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0141x5c55b0eb(Continuation continuation, CapturePipelineImpl capturePipelineImpl, List list, List list2) {
        super(2, continuation);
        this.this$0 = capturePipelineImpl;
        this.$deferredList$inlined = list;
        this.$requests$inlined = list2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C0141x5c55b0eb(continuation, this.this$0, this.$deferredList$inlined, this.$requests$inlined);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((C0141x5c55b0eb) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b7, code lost:
    
        if (r11.tryStartRepeating(r10) != r1) goto L51;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) throws Exception {
        Ref.BooleanRef booleanRef;
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
                booleanRef = new Ref.BooleanRef();
                CameraGraph graph = this.this$0.useCaseGraphContext.getGraph();
                this.L$0 = booleanRef;
                this.label = 1;
                obj = graph.acquireSession(this);
                if (obj == coroutine_suspended) {
                }
                return coroutine_suspended;
            }
            if (i == 1) {
                booleanRef = (Ref.BooleanRef) this.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    if (i == 3) {
                        ResultKt.throwOnFailure(obj);
                        return Unit.INSTANCE;
                    }
                    Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
                UseCaseCameraState useCaseCameraState = this.this$0.getUseCaseCameraState();
                this.label = 3;
            }
            CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
            boolean zShouldStopRepeatingBeforeCapture = StillCaptureFlowKt.shouldStopRepeatingBeforeCapture(this.$requests$inlined);
            booleanRef.element = zShouldStopRepeatingBeforeCapture;
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
            if (booleanRef.element) {
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
