package androidx.camera.camera2.pipe.compat;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraStateOpen extends CameraState {
    private final CameraDeviceWrapper cameraDevice;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CameraStateOpen) && Intrinsics.areEqual(this.cameraDevice, ((CameraStateOpen) obj).cameraDevice);
    }

    public int hashCode() {
        return this.cameraDevice.hashCode();
    }

    public String toString() {
        return "CameraStateOpen(cameraDevice=" + this.cameraDevice + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CameraStateOpen(CameraDeviceWrapper cameraDevice) {
        super(null);
        Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
        this.cameraDevice = cameraDevice;
    }

    public final CameraDeviceWrapper getCameraDevice() {
        return this.cameraDevice;
    }
}
