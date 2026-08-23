package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraPipeConfigModule {
    private final CameraPipe.Config config;

    public CameraPipeConfigModule(CameraPipe.Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.config = config;
    }

    public final CameraPipe.Config provideCameraPipeConfig() {
        return this.config;
    }

    public final CameraPipe.Flags provideCameraPipeFlags() {
        return this.config.getFlags();
    }

    public final CameraPipe.CameraInteropConfig provideCameraInteropConfig(CameraPipe.Config cameraPipeConfig) {
        Intrinsics.checkNotNullParameter(cameraPipeConfig, "cameraPipeConfig");
        return cameraPipeConfig.getCameraInteropConfig();
    }
}
