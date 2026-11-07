package androidx.camera.core.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.internal.StreamSpecsCalculator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraFactory extends CameraPresenceMonitor {

    public interface Interrogator {
        List<String> getAvailableCameraIds(List<String> list);
    }

    public interface Provider {
        @SuppressLint({"LambdaLast"})
        CameraFactory newInstance(Context context, CameraThreadConfig cameraThreadConfig, CameraSelector cameraSelector, long j, CameraXConfig cameraXConfig, StreamSpecsCalculator streamSpecsCalculator);
    }

    Set<String> getAvailableCameraIds();

    CameraInternal getCamera(String str);

    CameraCoordinator getCameraCoordinator();

    Object getCameraManager();

    Observable<List<CameraIdentifier>> getCameraPresenceSource();

    void shutdown();
}
