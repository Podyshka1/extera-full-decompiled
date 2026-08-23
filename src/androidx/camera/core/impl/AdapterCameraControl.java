package androidx.camera.core.impl;

import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.FocusMeteringResult;
import androidx.camera.core.impl.utils.SessionProcessorUtil;
import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes3.dex */
public class AdapterCameraControl extends ForwardingCameraControl {
    private final CameraControlInternal mCameraControl;

    public AdapterCameraControl(CameraControlInternal cameraControlInternal, SessionProcessor sessionProcessor) {
        super(cameraControlInternal);
        this.mCameraControl = cameraControlInternal;
    }

    @Override // androidx.camera.core.impl.ForwardingCameraControl, androidx.camera.core.CameraControl
    public ListenableFuture<Void> enableTorch(boolean z) {
        if (!SessionProcessorUtil.isOperationSupported(null, 6)) {
            return Futures.immediateFailedFuture(new IllegalStateException("Torch is not supported"));
        }
        return this.mCameraControl.enableTorch(z);
    }

    @Override // androidx.camera.core.impl.ForwardingCameraControl, androidx.camera.core.CameraControl
    public ListenableFuture<FocusMeteringResult> startFocusAndMetering(FocusMeteringAction focusMeteringAction) {
        FocusMeteringAction modifiedFocusMeteringAction = SessionProcessorUtil.getModifiedFocusMeteringAction(null, focusMeteringAction);
        if (modifiedFocusMeteringAction == null) {
            return Futures.immediateFailedFuture(new IllegalStateException("FocusMetering is not supported"));
        }
        return this.mCameraControl.startFocusAndMetering(modifiedFocusMeteringAction);
    }

    @Override // androidx.camera.core.impl.ForwardingCameraControl, androidx.camera.core.CameraControl
    public ListenableFuture<Void> setZoomRatio(float f) {
        if (!SessionProcessorUtil.isOperationSupported(null, 0)) {
            return Futures.immediateFailedFuture(new IllegalStateException("Zoom is not supported"));
        }
        return this.mCameraControl.setZoomRatio(f);
    }
}
