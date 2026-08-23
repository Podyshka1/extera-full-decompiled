package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.config.CameraGraphComponent;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraPipeComponent {
    CameraBackends cameraBackends();

    CameraContext cameraContext();

    CameraGraphComponent.Builder cameraGraphComponentBuilder();

    CameraPipeLifetime cameraPipeLifetime();

    CameraSurfaceManager cameraSurfaceManager();

    CameraDevices cameras();
}
