package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2DeviceSetup implements Camera2DeviceSetupWrapper {
    private final CameraDevice.CameraDeviceSetup cameraDeviceSetup;
    private final CameraErrorListener cameraErrorListener;
    private final String cameraId;

    public /* synthetic */ Camera2DeviceSetup(CameraDevice.CameraDeviceSetup cameraDeviceSetup, String str, CameraErrorListener cameraErrorListener, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraDeviceSetup, str, cameraErrorListener);
    }

    private Camera2DeviceSetup(CameraDevice.CameraDeviceSetup cameraDeviceSetup, String cameraId, CameraErrorListener cameraErrorListener) {
        Intrinsics.checkNotNullParameter(cameraDeviceSetup, "cameraDeviceSetup");
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        this.cameraDeviceSetup = cameraDeviceSetup;
        this.cameraId = cameraId;
        this.cameraErrorListener = cameraErrorListener;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceSetupWrapper
    public CaptureRequest.Builder createCaptureRequest(int i) throws Exception {
        String str = this.cameraId;
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            return this.cameraDeviceSetup.createCaptureRequest(i);
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo1832onCameraError3M5Xam4(str, CameraError.Companion.m1559fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                return null;
            }
            if (!(e instanceof IllegalArgumentException) && !(e instanceof SecurityException) && !(e instanceof UnsupportedOperationException) && !(e instanceof NullPointerException)) {
                if (!(e instanceof IllegalStateException)) {
                    throw e;
                }
                if (!Log.INSTANCE.getDEBUG_LOGGABLE()) {
                    return null;
                }
                android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
                return null;
            }
            if (Log.INSTANCE.getWARN_LOGGABLE()) {
                android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
            }
            cameraErrorListener.mo1832onCameraError3M5Xam4(str, CameraError.Companion.m1570getERROR_GRAPH_CONFIGv7Vf74A(), false);
            return null;
        }
    }
}
