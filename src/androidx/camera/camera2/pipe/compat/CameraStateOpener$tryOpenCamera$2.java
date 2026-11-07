package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.selects.SelectImplementation;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/compat/OpenCameraResult;", "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.CameraStateOpener$tryOpenCamera$2", m921f = "RetryingCameraStateOpener.kt", m922i = {0, 0, 0, 0, 0}, m923l = {670}, m924m = "invokeSuspend", m925n = {"$this$supervisorScope", "cameraOpenDeferred", "resultDeferred", "timeoutJob", "cameraOpenCancelJob"}, m926s = {"L$0", "L$1", "L$2", "L$3", "L$4"}, m927v = 1)
@SourceDebugExtension({"SMAP\nRetryingCameraStateOpener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,665:1\n54#2,5:666\n59#3,2:671\n86#3,2:673\n*S KotlinDebug\n*F\n+ 1 RetryingCameraStateOpener.kt\nandroidx/camera/camera2/pipe/compat/CameraStateOpener$tryOpenCamera$2\n*L\n324#1:666,5\n358#1:671,2\n368#1:673,2\n*E\n"})
public final class CameraStateOpener$tryOpenCamera$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OpenCameraResult>, Object> {
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
    public CameraStateOpener$tryOpenCamera$2(CameraStateOpener cameraStateOpener, String str, AndroidCameraState androidCameraState, Continuation<? super CameraStateOpener$tryOpenCamera$2> continuation) {
        super(2, continuation);
        this.this$0 = cameraStateOpener;
        this.$cameraId = str;
        this.$cameraState = androidCameraState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CameraStateOpener$tryOpenCamera$2 cameraStateOpener$tryOpenCamera$2 = new CameraStateOpener$tryOpenCamera$2(this.this$0, this.$cameraId, this.$cameraState, continuation);
        cameraStateOpener$tryOpenCamera$2.L$0 = obj;
        return cameraStateOpener$tryOpenCamera$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super OpenCameraResult> continuation) {
        return ((CameraStateOpener$tryOpenCamera$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0095 A[Catch: all -> 0x0027, TRY_ENTER, TryCatch #0 {all -> 0x0027, blocks: (B:6:0x0022, B:30:0x00fd, B:15:0x0095, B:17:0x00a8, B:18:0x00b4, B:20:0x00ba, B:21:0x00c6, B:23:0x00cc, B:24:0x00d8, B:26:0x00de, B:27:0x00ea, B:32:0x0101, B:34:0x0109, B:35:0x011d, B:37:0x0123, B:38:0x0126, B:40:0x012c, B:41:0x012f, B:43:0x0135, B:44:0x0138, B:46:0x013e), top: B:54:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0101 A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:6:0x0022, B:30:0x00fd, B:15:0x0095, B:17:0x00a8, B:18:0x00b4, B:20:0x00ba, B:21:0x00c6, B:23:0x00cc, B:24:0x00d8, B:26:0x00de, B:27:0x00ea, B:32:0x0101, B:34:0x0109, B:35:0x011d, B:37:0x0123, B:38:0x0126, B:40:0x012c, B:41:0x012f, B:43:0x0135, B:44:0x0138, B:46:0x013e), top: B:54:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0150  */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r6v4, types: [T, kotlinx.coroutines.Deferred] */
    /* JADX WARN: Type inference failed for: r6v6, types: [T, kotlinx.coroutines.Job] */
    /* JADX WARN: Type inference failed for: r6v9, types: [T, kotlinx.coroutines.Job] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00fa -> B:30:0x00fd). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        CoroutineScope coroutineScope;
        Ref.ObjectRef objectRef3;
        Ref.ObjectRef objectRef4;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
            Ref.ObjectRef objectRef5 = new Ref.ObjectRef();
            objectRef5.element = BuildersKt__Builders_commonKt.async$default(coroutineScope2, null, null, new CameraStateOpener$tryOpenCamera$2$cameraOpenDeferred$1(this.this$0, this.$cameraId, this.$cameraState, null), 3, null);
            Ref.ObjectRef objectRef6 = new Ref.ObjectRef();
            objectRef6.element = BuildersKt__Builders_commonKt.async$default(coroutineScope2, null, null, new CameraStateOpener$tryOpenCamera$2$resultDeferred$1(this.$cameraState, null), 3, null);
            Ref.ObjectRef objectRef7 = new Ref.ObjectRef();
            objectRef7.element = BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new CameraStateOpener$tryOpenCamera$2$timeoutJob$1(null), 3, null);
            Ref.ObjectRef objectRef8 = new Ref.ObjectRef();
            objectRef8.element = BuildersKt__Builders_commonKt.launch$default(coroutineScope2, null, null, new CameraStateOpener$tryOpenCamera$2$cameraOpenCancelJob$1(this.this$0, null), 3, null);
            objectRef = objectRef5;
            objectRef2 = objectRef6;
            coroutineScope = coroutineScope2;
            objectRef3 = objectRef7;
            objectRef4 = objectRef8;
            if (CoroutineScopeKt.isActive(coroutineScope)) {
            }
        } else {
            if (i != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            objectRef4 = (Ref.ObjectRef) this.L$4;
            objectRef3 = (Ref.ObjectRef) this.L$3;
            objectRef2 = (Ref.ObjectRef) this.L$2;
            objectRef = (Ref.ObjectRef) this.L$1;
            coroutineScope = (CoroutineScope) this.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                OpenCameraResult openCameraResult = (OpenCameraResult) obj;
                if (openCameraResult != null) {
                    if (Log.INSTANCE.getINFO_LOGGABLE()) {
                        android.util.Log.i("CXCP", "Camera open completed: " + openCameraResult);
                    }
                    Deferred deferred = (Deferred) objectRef.element;
                    if (deferred != null) {
                        Job.cancel$default(deferred, null, 1, null);
                    }
                    Deferred deferred2 = (Deferred) objectRef2.element;
                    if (deferred2 != null) {
                        Job.cancel$default(deferred2, null, 1, null);
                    }
                    Job job = (Job) objectRef3.element;
                    if (job != null) {
                        Job.cancel$default(job, null, 1, null);
                    }
                    Job job2 = (Job) objectRef4.element;
                    if (job2 != null) {
                        Job.cancel$default(job2, null, 1, null);
                    }
                    return openCameraResult;
                }
                if (CoroutineScopeKt.isActive(coroutineScope)) {
                    String str = this.$cameraId;
                    AndroidCameraState androidCameraState = this.$cameraState;
                    SelectImplementation selectImplementation = new SelectImplementation(get$context());
                    Deferred deferred3 = (Deferred) objectRef.element;
                    if (deferred3 != null) {
                        selectImplementation.invoke(deferred3.getOnAwait(), new CameraStateOpener$tryOpenCamera$2$result$1$1(objectRef, str, null));
                    }
                    Deferred deferred4 = (Deferred) objectRef2.element;
                    if (deferred4 != null) {
                        selectImplementation.invoke(deferred4.getOnAwait(), new CameraStateOpener$tryOpenCamera$2$result$1$2(objectRef2, str, null));
                    }
                    Job job3 = (Job) objectRef3.element;
                    if (job3 != null) {
                        selectImplementation.invoke(job3.getOnJoin(), new CameraStateOpener$tryOpenCamera$2$result$1$3(objectRef3, objectRef, androidCameraState, null));
                    }
                    Job job4 = (Job) objectRef4.element;
                    if (job4 != null) {
                        selectImplementation.invoke(job4.getOnJoin(), new CameraStateOpener$tryOpenCamera$2$result$1$4(objectRef4, null));
                    }
                    this.L$0 = coroutineScope;
                    this.L$1 = objectRef;
                    this.L$2 = objectRef2;
                    this.L$3 = objectRef3;
                    this.L$4 = objectRef4;
                    this.label = 1;
                    obj = selectImplementation.doSelect(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    OpenCameraResult openCameraResult2 = (OpenCameraResult) obj;
                    if (openCameraResult2 != null) {
                    }
                    if (CoroutineScopeKt.isActive(coroutineScope)) {
                        return new OpenCameraResult(null, CameraError.m1299boximpl(CameraError.INSTANCE.m1315getERROR_CAMERA_OPENERv7Vf74A()), 1, null);
                    }
                }
            } finally {
            }
        }
    }
}
