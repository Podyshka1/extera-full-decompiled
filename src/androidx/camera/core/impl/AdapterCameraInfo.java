package androidx.camera.core.impl;

import androidx.camera.core.impl.utils.SessionProcessorUtil;
import androidx.camera.core.internal.ImmutableZoomState;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;

/* JADX INFO: loaded from: classes4.dex */
public class AdapterCameraInfo extends ForwardingCameraInfo {
    private final CameraConfig mCameraConfig;
    private final CameraInfoInternal mCameraInfo;
    private LiveData mExtensionZoomStateLiveData;
    private boolean mIsCaptureProcessProgressSupported;
    private boolean mIsPostviewSupported;

    public SessionProcessor getSessionProcessor() {
        return null;
    }

    public AdapterCameraInfo(CameraInfoInternal cameraInfoInternal, CameraConfig cameraConfig) {
        super(cameraInfoInternal);
        this.mIsPostviewSupported = false;
        this.mIsCaptureProcessProgressSupported = false;
        this.mExtensionZoomStateLiveData = null;
        this.mCameraInfo = cameraInfoInternal;
        this.mCameraConfig = cameraConfig;
        cameraConfig.getSessionProcessor(null);
        setPostviewSupported(cameraConfig.isPostviewSupported());
        setCaptureProcessProgressSupported(cameraConfig.isCaptureProcessProgressSupported());
    }

    public CameraConfig getCameraConfig() {
        return this.mCameraConfig;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.impl.CameraInfoInternal
    public CameraInfoInternal getImplementation() {
        return this.mCameraInfo;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.CameraInfo
    public boolean hasFlashUnit() {
        if (SessionProcessorUtil.isOperationSupported(null, 5)) {
            return this.mCameraInfo.hasFlashUnit();
        }
        return false;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.CameraInfo
    public LiveData getZoomState() {
        if (!SessionProcessorUtil.isOperationSupported(null, 0)) {
            return new MutableLiveData(ImmutableZoomState.create(1.0f, 1.0f, 1.0f, 0.0f));
        }
        return this.mCameraInfo.getZoomState();
    }

    public void setPostviewSupported(boolean z) {
        this.mIsPostviewSupported = z;
    }

    public void setCaptureProcessProgressSupported(boolean z) {
        this.mIsCaptureProcessProgressSupported = z;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.impl.CameraInfoInternal
    public boolean isVideoStabilizationSupported() {
        return super.isVideoStabilizationSupported();
    }

    @Override // androidx.camera.core.impl.ForwardingCameraInfo, androidx.camera.core.impl.CameraInfoInternal
    public boolean isPreviewStabilizationSupported() {
        return super.isPreviewStabilizationSupported();
    }
}
