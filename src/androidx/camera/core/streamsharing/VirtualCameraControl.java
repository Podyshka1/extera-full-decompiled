package androidx.camera.core.streamsharing;

import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.ForwardingCameraControl;
import androidx.camera.core.streamsharing.StreamSharing;

/* JADX INFO: loaded from: classes4.dex */
public class VirtualCameraControl extends ForwardingCameraControl {
    private final StreamSharing.Control mStreamSharingControl;

    VirtualCameraControl(CameraControlInternal cameraControlInternal, StreamSharing.Control control) {
        super(cameraControlInternal);
        this.mStreamSharingControl = control;
    }
}
