package androidx.camera.core.impl;

import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraInternal;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
public class AdapterCameraInternal implements CameraInternal {
    private final AdapterCameraControl mAdapterCameraControl;
    private final AdapterCameraInfo mAdapterCameraInfo;
    private final CameraInternal mCameraInternal;

    @Override // androidx.camera.core.impl.CameraInternal
    public /* synthetic */ void onRemoved() {
        CameraInternal.CC.$default$onRemoved(this);
    }

    public AdapterCameraInternal(CameraInternal cameraInternal, AdapterCameraInfo adapterCameraInfo) {
        this.mCameraInternal = cameraInternal;
        this.mAdapterCameraInfo = adapterCameraInfo;
        CameraConfig cameraConfig = adapterCameraInfo.getCameraConfig();
        CameraControlInternal cameraControlInternal = cameraInternal.getCameraControlInternal();
        cameraConfig.getSessionProcessor(null);
        this.mAdapterCameraControl = new AdapterCameraControl(cameraControlInternal, null);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setActiveResumingMode(boolean z) {
        this.mCameraInternal.setActiveResumingMode(z);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public boolean isFrontFacing() {
        return this.mCameraInternal.isFrontFacing();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public ListenableFuture release() {
        return this.mCameraInternal.release();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void attachUseCases(Collection collection) {
        this.mCameraInternal.attachUseCases(collection);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void detachUseCases(Collection collection) {
        this.mCameraInternal.detachUseCases(collection);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public CameraControlInternal getCameraControlInternal() {
        return this.mAdapterCameraControl;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public CameraInfoInternal getCameraInfoInternal() {
        return this.mAdapterCameraInfo;
    }

    @Override // androidx.camera.core.Camera
    public CameraControl getCameraControl() {
        return this.mAdapterCameraControl;
    }

    @Override // androidx.camera.core.impl.CameraInternal, androidx.camera.core.Camera
    public CameraInfo getCameraInfo() {
        return this.mAdapterCameraInfo;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public boolean getHasTransform() {
        return this.mCameraInternal.getHasTransform();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setPrimary(boolean z) {
        this.mCameraInternal.setPrimary(z);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public CameraConfig getExtendedConfig() {
        return this.mCameraInternal.getExtendedConfig();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setExtendedConfig(CameraConfig cameraConfig) {
        this.mCameraInternal.setExtendedConfig(cameraConfig);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseActive(UseCase useCase) {
        this.mCameraInternal.onUseCaseActive(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseInactive(UseCase useCase) {
        this.mCameraInternal.onUseCaseInactive(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseUpdated(UseCase useCase) {
        this.mCameraInternal.onUseCaseUpdated(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseReset(UseCase useCase) {
        this.mCameraInternal.onUseCaseReset(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public boolean isRemoved() {
        return this.mCameraInternal.isRemoved();
    }
}
