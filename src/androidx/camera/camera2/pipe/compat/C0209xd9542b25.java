package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompat;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupCompat$deferred$1$1$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;", "<anonymous>", "(Lkotlinx/coroutines/CoroutineScope;)Landroidx/camera/featurecombinationquery/CameraDeviceSetupCompat;"}, m862k = 3, mv = {2, 1, 0})
@DebugMetadata(m872c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupCompat$deferred$1$1$1", m873f = "Camera2DeviceCache.kt", m874i = {}, m875l = {}, m876m = "invokeSuspend", m877n = {}, m878s = {}, m879v = 1)
@SourceDebugExtension({"SMAP\nCamera2DeviceCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2DeviceCache.kt\nandroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupCompat$deferred$1$1$1\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 Exceptions.kt\nandroidx/camera/camera2/pipe/compat/ExceptionsKt\n*L\n1#1,391:1\n50#2,2:392\n71#2,2:400\n50#2,2:426\n53#3,6:394\n59#3,24:402\n83#3,3:428\n*S KotlinDebug\n*F\n+ 1 Camera2DeviceCache.kt\nandroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupCompat$deferred$1$1$1\n*L\n120#1:392,2\n121#1:400,2\n121#1:426,2\n121#1:394,6\n121#1:402,24\n121#1:428,3\n*E\n"})
public final class C0209xd9542b25 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CameraDeviceSetupCompat>, Object> {
    final /* synthetic */ String $cameraId;
    int label;
    final /* synthetic */ Camera2DeviceCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0209xd9542b25(String str, Camera2DeviceCache camera2DeviceCache, Continuation<? super C0209xd9542b25> continuation) {
        super(2, continuation);
        this.$cameraId = str;
        this.this$0 = camera2DeviceCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C0209xd9542b25(this.$cameraId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CameraDeviceSetupCompat> continuation) {
        return ((C0209xd9542b25) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            Segment$$ExternalSyntheticBUOutline1.m925m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        Log log = Log.INSTANCE;
        String str = this.$cameraId;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Initializing CameraDeviceSetupCompat for " + ((Object) CameraId.m1303toStringimpl(str)));
        }
        String str2 = this.$cameraId;
        CameraErrorListener cameraErrorListener = this.this$0.cameraErrorListener;
        try {
            return this.this$0.getCameraDeviceSetupCompatFactory().getCameraDeviceSetupCompat(this.$cameraId);
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo1518onCameraError3M5Xam4(str2, CameraError.INSTANCE.m1255fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
            } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo1518onCameraError3M5Xam4(str2, CameraError.INSTANCE.m1266getERROR_GRAPH_CONFIGv7Vf74A(), false);
            } else {
                if (!(e instanceof IllegalStateException)) {
                    throw e;
                }
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                }
            }
            return null;
        }
    }
}
