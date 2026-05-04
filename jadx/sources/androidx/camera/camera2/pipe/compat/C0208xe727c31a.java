package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.compat.Camera2DeviceCache$getOrInitializeDeviceSetupWrapper$deferred$1$1$1 */
/* JADX INFO: loaded from: classes3.dex */
final class C0208xe727c31a extends SuspendLambda implements Function2 {
    final /* synthetic */ String $cameraId;
    int label;
    final /* synthetic */ Camera2DeviceCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0208xe727c31a(String str, Camera2DeviceCache camera2DeviceCache, Continuation continuation) {
        super(2, continuation);
        this.$cameraId = str;
        this.this$0 = camera2DeviceCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0208xe727c31a(this.$cameraId, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
        return ((C0208xe727c31a) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Boolean boolBoxBoolean;
        CameraDevice.CameraDeviceSetup cameraDeviceSetup;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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
                cameraErrorListener.mo1832onCameraError3M5Xam4(str, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
            } else if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo1832onCameraError3M5Xam4(str, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
            android.util.Log.d("CXCP", "Initializing CameraDeviceSetup for " + ((Object) CameraId.m1607toStringimpl(str2)));
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
                cameraErrorListener2.mo1832onCameraError3M5Xam4(str3, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e2), true);
            } else if ((e2 instanceof IllegalArgumentException) || (e2 instanceof SecurityException) || (e2 instanceof UnsupportedOperationException) || (e2 instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e2.getMessage());
                }
                cameraErrorListener2.mo1832onCameraError3M5Xam4(str3, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
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
