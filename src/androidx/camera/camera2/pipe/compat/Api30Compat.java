package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api30Compat {
    public static final Api30Compat INSTANCE = new Api30Compat();

    private Api30Compat() {
    }

    public static final Set getConcurrentCameraIds(CameraManager cameraManager) throws CameraAccessException {
        Intrinsics.checkNotNullParameter(cameraManager, "cameraManager");
        Set<Set<String>> concurrentCameraIds = cameraManager.getConcurrentCameraIds();
        Intrinsics.checkNotNullExpressionValue(concurrentCameraIds, "getConcurrentCameraIds(...)");
        return concurrentCameraIds;
    }

    public static final void setCameraAudioRestriction(CameraDevice cameraDevice, int i) throws CameraAccessException {
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        cameraDevice.setCameraAudioRestriction(i);
    }
}
