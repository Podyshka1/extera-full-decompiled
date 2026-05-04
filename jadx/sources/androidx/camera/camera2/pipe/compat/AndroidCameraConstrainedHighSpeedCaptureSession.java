package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.os.Handler;
import android.os.Trace;
import androidx.camera.camera2.pipe.core.Debug;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidCameraConstrainedHighSpeedCaptureSession extends AndroidCameraCaptureSession implements CameraConstrainedHighSpeedCaptureSessionWrapper {
    private final CameraConstrainedHighSpeedCaptureSession session;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidCameraConstrainedHighSpeedCaptureSession(CameraDeviceWrapper device, CameraConstrainedHighSpeedCaptureSession session, CameraErrorListener cameraErrorListener, Handler callbackHandler) {
        super(device, session, cameraErrorListener, callbackHandler);
        Intrinsics.checkNotNullParameter(device, "device");
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        Intrinsics.checkNotNullParameter(callbackHandler, "callbackHandler");
        this.session = session;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraConstrainedHighSpeedCaptureSessionWrapper
    public List createHighSpeedRequestList(CaptureRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        try {
            Debug debug = Debug.INSTANCE;
            try {
                Trace.beginSection("CXCP#createHighSpeedRequestList");
                return this.session.createHighSpeedRequestList(request);
            } finally {
                Trace.endSection();
            }
        } catch (IllegalArgumentException unused) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return null;
            }
            android.util.Log.w("CXCP", "Failed to createHighSpeedRequestList from " + getDevice() + " because the output surface was destroyed before calling createHighSpeedRequestList.");
            return null;
        } catch (IllegalStateException unused2) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return null;
            }
            android.util.Log.w("CXCP", "Failed to createHighSpeedRequestList. " + getDevice() + " may be closed.");
            return null;
        } catch (UnsupportedOperationException unused3) {
            if (!Log.INSTANCE.getWARN_LOGGABLE()) {
                return null;
            }
            android.util.Log.w("CXCP", "Failed to createHighSpeedRequestList from " + getDevice() + " because the output surface was not available.");
            return null;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AndroidCameraCaptureSession, androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return Intrinsics.areEqual(type, Reflection.getOrCreateKotlinClass(CameraConstrainedHighSpeedCaptureSession.class)) ? this.session : super.unwrapAs(type);
    }
}
