package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraGraphId;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraGraphConfigModule {
    private final CameraGraphId cameraGraphId;
    private final CameraGraph.Config config;

    public CameraGraphConfigModule(CameraGraph.Config config, CameraGraphId cameraGraphId) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(cameraGraphId, "cameraGraphId");
        this.config = config;
        this.cameraGraphId = cameraGraphId;
    }

    public final CameraGraph.Config provideCameraGraphConfig() {
        return this.config;
    }

    public final CameraGraphId provideCameraGraphId() {
        return this.cameraGraphId;
    }
}
