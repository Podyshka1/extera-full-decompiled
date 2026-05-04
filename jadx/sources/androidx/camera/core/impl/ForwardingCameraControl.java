package androidx.camera.core.impl;

import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.impl.SessionConfig;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ForwardingCameraControl implements CameraControlInternal {
    private final CameraControlInternal mCameraControlInternal;

    public ForwardingCameraControl(CameraControlInternal cameraControlInternal) {
        this.mCameraControlInternal = cameraControlInternal;
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture enableTorch(boolean z) {
        return this.mCameraControlInternal.enableTorch(z);
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture startFocusAndMetering(FocusMeteringAction focusMeteringAction) {
        return this.mCameraControlInternal.startFocusAndMetering(focusMeteringAction);
    }

    @Override // androidx.camera.core.CameraControl
    public ListenableFuture setZoomRatio(float f) {
        return this.mCameraControlInternal.setZoomRatio(f);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setFlashMode(int i) {
        this.mCameraControlInternal.setFlashMode(i);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setScreenFlash(ImageCapture.ScreenFlash screenFlash) {
        this.mCameraControlInternal.setScreenFlash(screenFlash);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void addZslConfig(SessionConfig.Builder builder) {
        this.mCameraControlInternal.addZslConfig(builder);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void clearZslConfig() {
        this.mCameraControlInternal.clearZslConfig();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void addInteropConfig(Config config) {
        this.mCameraControlInternal.addInteropConfig(config);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void clearInteropConfig() {
        this.mCameraControlInternal.clearInteropConfig();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public Config getInteropConfig() {
        return this.mCameraControlInternal.getInteropConfig();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void incrementVideoUsage() {
        this.mCameraControlInternal.incrementVideoUsage();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void decrementVideoUsage() {
        this.mCameraControlInternal.decrementVideoUsage();
    }
}
