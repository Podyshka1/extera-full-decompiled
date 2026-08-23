package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraGraph;

/* JADX INFO: loaded from: classes3.dex */
public interface AudioRestrictionController {

    public interface Listener {
        /* JADX INFO: renamed from: onCameraAudioRestrictionUpdated-LwUUkyU */
        void mo1798onCameraAudioRestrictionUpdatedLwUUkyU(int i);
    }

    void addListener(Listener listener);

    void removeCameraGraph(CameraGraph cameraGraph);

    void removeListener(Listener listener);
}
