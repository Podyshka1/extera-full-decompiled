package androidx.camera.camera2.config;

import android.content.Context;
import androidx.camera.camera2.impl.CameraInteropStateCallbackRepository;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.core.CameraXConfig;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraThreadConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraAppConfig {
    private final CameraInteropStateCallbackRepository camera2InteropCallbacks;
    private final CameraCoordinator cameraCoordinator;
    private final CameraPipe cameraPipe;
    private final CameraThreadConfig cameraThreadConfig;
    private final CameraXConfig cameraXConfig;
    private final Context context;

    public CameraAppConfig(Context context, CameraThreadConfig cameraThreadConfig, CameraPipe cameraPipe, CameraInteropStateCallbackRepository camera2InteropCallbacks, CameraCoordinator cameraCoordinator, CameraXConfig cameraXConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cameraThreadConfig, "cameraThreadConfig");
        Intrinsics.checkNotNullParameter(cameraPipe, "cameraPipe");
        Intrinsics.checkNotNullParameter(camera2InteropCallbacks, "camera2InteropCallbacks");
        Intrinsics.checkNotNullParameter(cameraCoordinator, "cameraCoordinator");
        Intrinsics.checkNotNullParameter(cameraXConfig, "cameraXConfig");
        this.context = context;
        this.cameraThreadConfig = cameraThreadConfig;
        this.cameraPipe = cameraPipe;
        this.camera2InteropCallbacks = camera2InteropCallbacks;
        this.cameraCoordinator = cameraCoordinator;
        this.cameraXConfig = cameraXConfig;
    }

    public final Context provideContext() {
        return this.context;
    }

    public final CameraThreadConfig provideCameraThreadConfig() {
        return this.cameraThreadConfig;
    }

    public final CameraPipe provideCameraPipe() {
        return this.cameraPipe;
    }

    public final CameraInteropStateCallbackRepository provideCamera2InteropCallbacks() {
        return this.camera2InteropCallbacks;
    }

    public final CameraCoordinator provideCameraCoordinator() {
        return this.cameraCoordinator;
    }

    public final CameraXConfig provideCameraXConfig() {
        return this.cameraXConfig;
    }

    public final DisplayInfoManager provideDisplayInfoManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return DisplayInfoManager.Companion.getInstance(context);
    }
}
