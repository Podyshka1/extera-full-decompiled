package androidx.camera.core.streamsharing;

import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.streamsharing.StreamSharing;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
class VirtualCamera implements CameraInternal {
    private final CameraInternal mParentCamera;
    private final UseCase.StateChangeCallback mStateChangeCallback;
    private final VirtualCameraControl mVirtualCameraControl;
    private final VirtualCameraInfo mVirtualCameraInfo;

    @Override // androidx.camera.core.Camera
    public /* synthetic */ CameraControl getCameraControl() {
        return getCameraControlInternal();
    }

    @Override // androidx.camera.core.impl.CameraInternal, androidx.camera.core.Camera
    public /* synthetic */ CameraInfo getCameraInfo() {
        return getCameraInfoInternal();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public /* synthetic */ CameraConfig getExtendedConfig() {
        return CameraConfigs.defaultConfig();
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public boolean getHasTransform() {
        return false;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public /* synthetic */ boolean isFrontFacing() {
        return CameraInternal.CC.$default$isFrontFacing(this);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public /* synthetic */ boolean isRemoved() {
        return CameraInternal.CC.$default$isRemoved(this);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public /* synthetic */ void onRemoved() {
        CameraInternal.CC.$default$onRemoved(this);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public /* synthetic */ void setActiveResumingMode(boolean z) {
        CameraInternal.CC.$default$setActiveResumingMode(this, z);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public /* synthetic */ void setExtendedConfig(CameraConfig cameraConfig) {
        CameraInternal.CC.$default$setExtendedConfig(this, cameraConfig);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public /* synthetic */ void setPrimary(boolean z) {
        CameraInternal.CC.$default$setPrimary(this, z);
    }

    VirtualCamera(CameraInternal cameraInternal, UseCase.StateChangeCallback stateChangeCallback, StreamSharing.Control control) {
        this.mParentCamera = cameraInternal;
        this.mStateChangeCallback = stateChangeCallback;
        this.mVirtualCameraControl = new VirtualCameraControl(cameraInternal.getCameraControlInternal(), control);
        this.mVirtualCameraInfo = new VirtualCameraInfo(cameraInternal.getCameraInfoInternal());
    }

    void setRotationDegrees(int i) {
        this.mVirtualCameraInfo.setVirtualCameraRotationDegrees(i);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseActive(UseCase useCase) {
        Threads.checkMainThread();
        this.mStateChangeCallback.onUseCaseActive(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseInactive(UseCase useCase) {
        Threads.checkMainThread();
        this.mStateChangeCallback.onUseCaseInactive(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseUpdated(UseCase useCase) {
        Threads.checkMainThread();
        this.mStateChangeCallback.onUseCaseUpdated(useCase);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseReset(UseCase useCase) {
        Threads.checkMainThread();
        this.mStateChangeCallback.onUseCaseReset(useCase);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public CameraControlInternal getCameraControlInternal() {
        return this.mVirtualCameraControl;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public CameraInfoInternal getCameraInfoInternal() {
        return this.mVirtualCameraInfo;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public ListenableFuture release() {
        throw new UnsupportedOperationException("Operation not supported by VirtualCamera.");
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void attachUseCases(Collection collection) {
        throw new UnsupportedOperationException("Operation not supported by VirtualCamera.");
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void detachUseCases(Collection collection) {
        throw new UnsupportedOperationException("Operation not supported by VirtualCamera.");
    }
}
