package androidx.camera.core.impl.capability;

import androidx.camera.core.CameraInfo;
import androidx.camera.core.PreviewCapabilities;
import androidx.camera.core.impl.CameraInfoInternal;

/* JADX INFO: loaded from: classes4.dex */
public class PreviewCapabilitiesImpl implements PreviewCapabilities {
    private boolean mIsStabilizationSupported;

    PreviewCapabilitiesImpl(CameraInfoInternal cameraInfoInternal) {
        this.mIsStabilizationSupported = cameraInfoInternal.isPreviewStabilizationSupported();
    }

    public static PreviewCapabilities from(CameraInfo cameraInfo) {
        return new PreviewCapabilitiesImpl((CameraInfoInternal) cameraInfo);
    }

    @Override // androidx.camera.core.PreviewCapabilities
    public boolean isStabilizationSupported() {
        return this.mIsStabilizationSupported;
    }
}
