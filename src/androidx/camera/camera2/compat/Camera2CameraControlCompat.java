package androidx.camera.camera2.compat;

import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.pipe.Request;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
public interface Camera2CameraControlCompat extends Request.Listener {
    void addRequestOption(CaptureRequestOptions captureRequestOptions);

    Deferred applyAsync(UseCaseCameraRequestControl useCaseCameraRequestControl, boolean z);

    void cancelCurrentTask();

    void clearRequestOption();

    CaptureRequestOptions getRequestOption();

    /* JADX INFO: renamed from: androidx.camera.camera2.compat.Camera2CameraControlCompat$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static /* synthetic */ Deferred applyAsync$default(Camera2CameraControlCompat camera2CameraControlCompat, UseCaseCameraRequestControl useCaseCameraRequestControl, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: applyAsync");
            }
            if ((i & 2) != 0) {
                z = true;
            }
            return camera2CameraControlCompat.applyAsync(useCaseCameraRequestControl, z);
        }
    }
}
