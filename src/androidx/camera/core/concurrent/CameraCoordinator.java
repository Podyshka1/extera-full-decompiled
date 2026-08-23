package androidx.camera.core.concurrent;

import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.InternalCameraPresenceListener;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraCoordinator extends InternalCameraPresenceListener {
    void addPendingCameraInfo(CameraInfo cameraInfo);

    List<CameraInfo> getActiveConcurrentCameraInfos();

    int getCameraOperatingMode();

    List<List<CameraSelector>> getConcurrentCameraSelectors();

    void init(CameraRepository cameraRepository);

    void removePendingCameraInfo(CameraInfo cameraInfo);

    void setActiveConcurrentCameraInfos(List<CameraInfo> list);

    void setCameraOperatingMode(int i);
}
