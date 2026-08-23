package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetup;", "Landroidx/camera/camera2/pipe/compat/Camera2DeviceSetupWrapper;", "cameraDeviceSetup", "Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;", "cameraId", "Landroidx/camera/camera2/pipe/CameraId;", "cameraErrorListener", "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;", "<init>", "(Landroid/hardware/camera2/CameraDevice$CameraDeviceSetup;Ljava/lang/String;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Ljava/lang/String;", "createCaptureRequest", "Landroid/hardware/camera2/CaptureRequest$Builder;", "templateType", _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2DeviceSetupWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2DeviceSetupWrapper.kt\nandroidx/camera/camera2/pipe/compat/Camera2DeviceSetup\n+ 2 Exceptions.kt\nandroidx/camera/camera2/pipe/compat/ExceptionsKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,48:1\n53#2,6:49\n59#2,24:57\n83#2,3:83\n71#3,2:55\n50#3,2:81\n*S KotlinDebug\n*F\n+ 1 Camera2DeviceSetupWrapper.kt\nandroidx/camera/camera2/pipe/compat/Camera2DeviceSetup\n*L\n44#1:49,6\n44#1:57,24\n44#1:83,3\n44#1:55,2\n44#1:81,2\n*E\n"})
public final class Camera2DeviceSetup implements Camera2DeviceSetupWrapper {
    private final CameraDevice.CameraDeviceSetup cameraDeviceSetup;
    private final CameraErrorListener cameraErrorListener;
    private final String cameraId;

    public /* synthetic */ Camera2DeviceSetup(CameraDevice.CameraDeviceSetup cameraDeviceSetup, String str, CameraErrorListener cameraErrorListener, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraDeviceSetup, str, cameraErrorListener);
    }

    private Camera2DeviceSetup(CameraDevice.CameraDeviceSetup cameraDeviceSetup, String str, CameraErrorListener cameraErrorListener) {
        this.cameraDeviceSetup = cameraDeviceSetup;
        this.cameraId = str;
        this.cameraErrorListener = cameraErrorListener;
    }

    @Override // androidx.camera.camera2.pipe.compat.Camera2DeviceSetupWrapper
    public CaptureRequest.Builder createCaptureRequest(int templateType) throws Exception {
        String str = this.cameraId;
        CameraErrorListener cameraErrorListener = this.cameraErrorListener;
        try {
            return this.cameraDeviceSetup.createCaptureRequest(templateType);
        } catch (Exception e) {
            if (e instanceof CameraAccessException) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Camera encountered an error: " + e.getMessage());
                }
                cameraErrorListener.mo1428onCameraError3M5Xam4(str, CameraError.INSTANCE.m1165fromPVuDhNw$camera_camera2_pipe((CameraAccessException) e), true);
                return null;
            }
            if ((e instanceof IllegalArgumentException) || (e instanceof SecurityException) || (e instanceof UnsupportedOperationException) || (e instanceof NullPointerException)) {
                if (Log.INSTANCE.getWARN_LOGGABLE()) {
                    android.util.Log.w("CXCP", "Failed to execute call: Unexpected exception: " + e.getMessage());
                }
                cameraErrorListener.mo1428onCameraError3M5Xam4(str, CameraError.INSTANCE.m1176getERROR_GRAPH_CONFIGv7Vf74A(), false);
                return null;
            }
            if (!(e instanceof IllegalStateException)) {
                throw e;
            }
            if (!Log.INSTANCE.getDEBUG_LOGGABLE()) {
                return null;
            }
            android.util.Log.d("CXCP", "Failed to execute call: Camera may be closed");
            return null;
        }
    }
}
