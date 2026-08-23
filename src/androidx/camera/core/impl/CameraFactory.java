package androidx.camera.core.impl;

import android.content.Context;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.internal.StreamSpecsCalculator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface CameraFactory extends CameraPresenceMonitor {

    public interface Interrogator {
        List getAvailableCameraIds(List list);
    }

    public interface Provider {
        CameraFactory newInstance(Context context, CameraThreadConfig cameraThreadConfig, CameraSelector cameraSelector, long j, CameraXConfig cameraXConfig, StreamSpecsCalculator streamSpecsCalculator);
    }

    Set getAvailableCameraIds();

    CameraInternal getCamera(String str);

    CameraCoordinator getCameraCoordinator();

    Object getCameraManager();

    Observable getCameraPresenceSource();

    void shutdown();
}
