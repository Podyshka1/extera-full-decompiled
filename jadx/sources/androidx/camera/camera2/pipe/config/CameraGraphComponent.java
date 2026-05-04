package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraGraphComponent {

    public interface Builder {
        CameraGraphComponent build();

        Builder cameraGraphConfigModule(CameraGraphConfigModule cameraGraphConfigModule);
    }

    CameraGraph cameraGraph();
}
