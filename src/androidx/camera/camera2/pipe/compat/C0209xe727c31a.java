package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1 */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;", "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(m920c = "androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1", m921f = "Camera2DeviceCache.kt", m922i = {}, m923l = {}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
@SourceDebugExtension({"SMAP\nCamera2DeviceCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2DeviceCache.kt\nandroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1\n+ 2 Exceptions.kt\nandroidx/camera/camera2/pipe/compat/ExceptionsKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,391:1\n53#2,6:392\n59#2,24:400\n83#2,3:426\n53#2,6:431\n59#2,24:439\n83#2,3:465\n71#3,2:398\n50#3,2:424\n50#3,2:429\n71#3,2:437\n50#3,2:463\n*S KotlinDebug\n*F\n+ 1 Camera2DeviceCache.kt\nandroidx/camera/camera2/pipe/compat/Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1\n*L\n152#1:392,6\n152#1:400,24\n152#1:426,3\n160#1:431,6\n160#1:439,24\n160#1:465,3\n152#1:398,2\n152#1:424,2\n159#1:429,2\n160#1:437,2\n160#1:463,2\n*E\n"})
public final class C0209xe727c31a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Camera2DeviceSetup>, Object> {
    final /* synthetic */ String $cameraId;
    int label;
    final /* synthetic */ Camera2DeviceCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0209xe727c31a(String str, Camera2DeviceCache camera2DeviceCache, Continuation<? super C0209xe727c31a> continuation) {
        super(2, continuation);
        this.$cameraId = str;
        this.this$0 = camera2DeviceCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C0209xe727c31a(this.$cameraId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Camera2DeviceSetup> continuation) {
        return ((C0209xe727c31a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Boolean boolBoxBoolean;
        CameraDevice.CameraDeviceSetup cameraDeviceSetup;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.throwOnFailure(obj);
        String str = this.$cameraId;
        CameraErrorListener cameraErrorListener = this.this$0.cameraErrorListener;
        try {
            boolBoxBoolean = Boxing.boxBoolean(((CameraManager) this.this$0.cameraManager.get()).isCameraDeviceSetupSupported(this.$cameraId));
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo1571onCameraError3M5Xam4(str, CameraError.INSTANCE.m1308fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
            } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo1571onCameraError3M5Xam4(str, CameraError.INSTANCE.m1319getERROR_GRAPH_CONFIGv7Vf74A(), false);
            } else {
                if (!(e instanceof IllegalStateException)) {
                    throw e;
                }
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                }
            }
            boolBoxBoolean = null;
        }
        if (!Intrinsics.areEqual(boolBoxBoolean, Boxing.boxBoolean(true))) {
            return null;
        }
        Log log = Log.INSTANCE;
        String str2 = this.$cameraId;
        if (log.getDEBUG_LOGGABLE()) {
            android.util.Log.d("CXCP", "Initializing CameraDeviceSetup for " + ((Object) CameraId.m1356toStringimpl(str2)));
        }
        String str3 = this.$cameraId;
        CameraErrorListener cameraErrorListener2 = this.this$0.cameraErrorListener;
        try {
            cameraDeviceSetup = ((CameraManager) this.this$0.cameraManager.get()).getCameraDeviceSetup(this.$cameraId);
        } catch (Exception e2) {
            if (e2 instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e2.getMessage());
                }
                cameraErrorListener2.mo1571onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1308fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e2), true);
            } else if ((e2 instanceof IllegalArgumentException) || (e2 instanceof SecurityException) || (e2 instanceof UnsupportedOperationException) || (e2 instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e2.getMessage());
                }
                cameraErrorListener2.mo1571onCameraError3M5Xam4(str3, CameraError.INSTANCE.m1319getERROR_GRAPH_CONFIGv7Vf74A(), false);
            } else {
                if (!(e2 instanceof IllegalStateException)) {
                    throw e2;
                }
                if (Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                }
            }
            cameraDeviceSetup = null;
        }
        if (cameraDeviceSetup != null) {
            return new Camera2DeviceSetup(cameraDeviceSetup, this.$cameraId, this.this$0.cameraErrorListener, null);
        }
        return null;
    }
}
