package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.selects.SelectImplementation;

/* JADX INFO: loaded from: classes3.dex */
final class CameraStateOpener$tryOpenCamera$2 extends SuspendLambda implements Function2 {
    final /* synthetic */ String $cameraId;
    final /* synthetic */ AndroidCameraState $cameraState;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final /* synthetic */ CameraStateOpener this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CameraStateOpener$tryOpenCamera$2(CameraStateOpener cameraStateOpener, String str, AndroidCameraState androidCameraState, Continuation continuation) {
        super(2, continuation);
        this.this$0 = cameraStateOpener;
        this.$cameraId = str;
        this.$cameraState = androidCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CameraStateOpener$tryOpenCamera$2 cameraStateOpener$tryOpenCamera$2 = new CameraStateOpener$tryOpenCamera$2(this.this$0, this.$cameraId, this.$cameraState, continuation);
        cameraStateOpener$tryOpenCamera$2.L$0 = obj;
        return cameraStateOpener$tryOpenCamera$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((CameraStateOpener$tryOpenCamera$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0097 A[Catch: all -> 0x0027, TRY_ENTER, TryCatch #0 {all -> 0x0027, blocks: (B:6:0x0022, B:30:0x00ff, B:15:0x0097, B:17:0x00aa, B:18:0x00b6, B:20:0x00bc, B:21:0x00c8, B:23:0x00ce, B:24:0x00da, B:26:0x00e0, B:27:0x00ec, B:32:0x0103, B:34:0x010b, B:35:0x011f, B:37:0x0125, B:38:0x0128, B:40:0x012e, B:41:0x0131, B:43:0x0137, B:44:0x013a, B:46:0x0140), top: B:54:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0103 A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:6:0x0022, B:30:0x00ff, B:15:0x0097, B:17:0x00aa, B:18:0x00b6, B:20:0x00bc, B:21:0x00c8, B:23:0x00ce, B:24:0x00da, B:26:0x00e0, B:27:0x00ec, B:32:0x0103, B:34:0x010b, B:35:0x011f, B:37:0x0125, B:38:0x0128, B:40:0x012e, B:41:0x0131, B:43:0x0137, B:44:0x013a, B:46:0x0140), top: B:54:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0152  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00fc -> B:30:0x00ff). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        CoroutineScope coroutineScope;
        Ref$ObjectRef ref$ObjectRef3;
        Ref$ObjectRef ref$ObjectRef4;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            Ref$ObjectRef ref$ObjectRef5 = new Ref$ObjectRef();
            ref$ObjectRef5.element = BuildersKt__Builders_commonKt.async$default(coroutineScope2, null, null, new CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1(this.this$0, this.$cameraId, this.$cameraState, null), 3, null);
            Ref$ObjectRef ref$ObjectRef6 = new Ref$ObjectRef();
            ref$ObjectRef6.element = BuildersKt__Builders_commonKt.async$default(coroutineScope2, null, null, new CameraStateOpener$tryOpenCamera$2$resultDeferred$1(this.$cameraState, null), 3, null);
            Ref$ObjectRef ref$ObjectRef7 = new Ref$ObjectRef();
            ref$ObjectRef7.element = BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new CameraStateOpener$tryOpenCamera$2$timeoutJob$1(null), 3, null);
            Ref$ObjectRef ref$ObjectRef8 = new Ref$ObjectRef();
            ref$ObjectRef8.element = BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1(this.this$0, null), 3, null);
            ref$ObjectRef = ref$ObjectRef5;
            ref$ObjectRef2 = ref$ObjectRef6;
            coroutineScope = coroutineScope2;
            ref$ObjectRef3 = ref$ObjectRef7;
            ref$ObjectRef4 = ref$ObjectRef8;
            if (CoroutineScopeKt.isActive(coroutineScope)) {
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef4 = (Ref$ObjectRef) this.L$4;
            ref$ObjectRef3 = (Ref$ObjectRef) this.L$3;
            ref$ObjectRef2 = (Ref$ObjectRef) this.L$2;
            ref$ObjectRef = (Ref$ObjectRef) this.L$1;
            coroutineScope = (CoroutineScope) this.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                OpenCameraResult openCameraResult = (OpenCameraResult) obj;
                if (openCameraResult != null) {
                    if (Log.INSTANCE.getINFO_LOGGABLE()) {
                        android.util.Log.i("CXCP", "Camera open completed: " + openCameraResult);
                    }
                    Deferred deferred = (Deferred) ref$ObjectRef.element;
                    if (deferred != null) {
                        Job.DefaultImpls.cancel$default(deferred, null, 1, null);
                    }
                    Deferred deferred2 = (Deferred) ref$ObjectRef2.element;
                    if (deferred2 != null) {
                        Job.DefaultImpls.cancel$default(deferred2, null, 1, null);
                    }
                    Job job = (Job) ref$ObjectRef3.element;
                    if (job != null) {
                        Job.DefaultImpls.cancel$default(job, null, 1, null);
                    }
                    Job job2 = (Job) ref$ObjectRef4.element;
                    if (job2 != null) {
                        Job.DefaultImpls.cancel$default(job2, null, 1, null);
                    }
                    return openCameraResult;
                }
                if (CoroutineScopeKt.isActive(coroutineScope)) {
                    String str = this.$cameraId;
                    AndroidCameraState androidCameraState = this.$cameraState;
                    SelectImplementation selectImplementation = new SelectImplementation(getContext());
                    Deferred deferred3 = (Deferred) ref$ObjectRef.element;
                    if (deferred3 != null) {
                        selectImplementation.invoke(deferred3.getOnAwait(), new CameraStateOpener$tryOpenCamera$2$result$1$1(ref$ObjectRef, str, null));
                    }
                    Deferred deferred4 = (Deferred) ref$ObjectRef2.element;
                    if (deferred4 != null) {
                        selectImplementation.invoke(deferred4.getOnAwait(), new CameraStateOpener$tryOpenCamera$2$result$1$2(ref$ObjectRef2, str, null));
                    }
                    Job job3 = (Job) ref$ObjectRef3.element;
                    if (job3 != null) {
                        selectImplementation.invoke(job3.getOnJoin(), new CameraStateOpener$tryOpenCamera$2$result$1$3(ref$ObjectRef3, ref$ObjectRef, androidCameraState, null));
                    }
                    Job job4 = (Job) ref$ObjectRef4.element;
                    if (job4 != null) {
                        selectImplementation.invoke(job4.getOnJoin(), new CameraStateOpener$tryOpenCamera$2$result$1$4(ref$ObjectRef4, null));
                    }
                    this.L$0 = coroutineScope;
                    this.L$1 = ref$ObjectRef;
                    this.L$2 = ref$ObjectRef2;
                    this.L$3 = ref$ObjectRef3;
                    this.L$4 = ref$ObjectRef4;
                    this.label = 1;
                    obj = selectImplementation.doSelect(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    OpenCameraResult openCameraResult2 = (OpenCameraResult) obj;
                    if (openCameraResult2 != null) {
                    }
                    if (CoroutineScopeKt.isActive(coroutineScope)) {
                        return new OpenCameraResult(null, CameraError.m1550boximpl(CameraError.Companion.m1566getERROR_CAMERA_OPENERv7Vf74A()), 1, null);
                    }
                }
            } finally {
            }
        }
    }
}
