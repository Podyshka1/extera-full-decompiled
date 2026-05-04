package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.params.OutputConfiguration;
import android.util.Size;
import android.view.Surface;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api26Compat {
    public static final Api26Compat INSTANCE = new Api26Compat();

    private Api26Compat() {
    }

    public static final void finalizeOutputConfigurations(CameraCaptureSession cameraCaptureSession, List outputConfiguration) throws CameraAccessException {
        Intrinsics.checkNotNullParameter(cameraCaptureSession, "cameraCaptureSession");
        Intrinsics.checkNotNullParameter(outputConfiguration, "outputConfiguration");
        cameraCaptureSession.finalizeOutputConfigurations(outputConfiguration);
    }

    public static final OutputConfiguration newOutputConfiguration(Size size, Class klass) {
        Intrinsics.checkNotNullParameter(size, "size");
        Intrinsics.checkNotNullParameter(klass, "klass");
        return Api26Compat$$ExternalSyntheticApiModelOutline0.m53m(size, klass);
    }

    public static final void enableSurfaceSharing(OutputConfiguration outputConfig) {
        Intrinsics.checkNotNullParameter(outputConfig, "outputConfig");
        outputConfig.enableSurfaceSharing();
    }

    public static final void addSurfaces(OutputConfiguration outputConfig, Surface surface) {
        Intrinsics.checkNotNullParameter(outputConfig, "outputConfig");
        Intrinsics.checkNotNullParameter(surface, "surface");
        outputConfig.addSurface(surface);
    }
}
