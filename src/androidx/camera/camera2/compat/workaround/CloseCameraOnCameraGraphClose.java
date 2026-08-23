package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CloseCameraDeviceOnCameraGraphCloseQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;

/* JADX INFO: loaded from: classes3.dex */
public final class CloseCameraOnCameraGraphClose {
    private final CloseCameraDeviceOnCameraGraphCloseQuirk closeCameraDeviceOnCameraGraphCloseQuirk = (CloseCameraDeviceOnCameraGraphCloseQuirk) DeviceQuirks.INSTANCE.get(CloseCameraDeviceOnCameraGraphCloseQuirk.class);

    public final boolean shouldCloseCameraDevice(boolean z) {
        CloseCameraDeviceOnCameraGraphCloseQuirk closeCameraDeviceOnCameraGraphCloseQuirk = this.closeCameraDeviceOnCameraGraphCloseQuirk;
        if (closeCameraDeviceOnCameraGraphCloseQuirk != null) {
            return closeCameraDeviceOnCameraGraphCloseQuirk.shouldCloseCameraDevice(z);
        }
        return false;
    }
}
