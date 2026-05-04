package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.os.Handler;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidCaptureSessionStateCallback extends CameraCaptureSession.StateCallback {
    private final AtomicRef _lastStateCallback;
    private final Handler callbackHandler;
    private final CameraErrorListener cameraErrorListener;
    private final AtomicRef captureSession;
    private final CameraDeviceWrapper device;
    private final CameraInterop.CaptureSessionListener interopCaptureSessionListener;
    private final CameraCaptureSessionWrapper.StateCallback stateCallback;

    public AndroidCaptureSessionStateCallback(CameraDeviceWrapper device, CameraCaptureSessionWrapper.StateCallback stateCallback, SessionStateCallback sessionStateCallback, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Handler callbackHandler) {
        Intrinsics.checkNotNullParameter(device, "device");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        Intrinsics.checkNotNullParameter(callbackHandler, "callbackHandler");
        this.device = device;
        this.stateCallback = stateCallback;
        this.cameraErrorListener = cameraErrorListener;
        this.interopCaptureSessionListener = captureSessionListener;
        this.callbackHandler = callbackHandler;
        this._lastStateCallback = AtomicFU.atomic(sessionStateCallback);
        this.captureSession = AtomicFU.atomic((Object) null);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigured(CameraCaptureSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onConfigured(wrapped);
        finalizeLastSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1437onConfiguredrphkYDA(this.device.mo1797getCameraIdDz_R5H8(), wrapped.mo1795getId159jkk4());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigureFailed(CameraCaptureSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onConfigureFailed(wrapped);
        finalizeSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1436onConfigureFailedrphkYDA(this.device.mo1797getCameraIdDz_R5H8(), wrapped.mo1795getId159jkk4());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onReady(CameraCaptureSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onReady(getWrapped(session, this.cameraErrorListener));
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1438onReadyrphkYDA(this.device.mo1797getCameraIdDz_R5H8(), wrapped.mo1795getId159jkk4());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onActive(CameraCaptureSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onActive(getWrapped(session, this.cameraErrorListener));
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1433onActiverphkYDA(this.device.mo1797getCameraIdDz_R5H8(), wrapped.mo1795getId159jkk4());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onClosed(CameraCaptureSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onClosed(getWrapped(session, this.cameraErrorListener));
        finalizeSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1435onClosedrphkYDA(this.device.mo1797getCameraIdDz_R5H8(), wrapped.mo1795getId159jkk4());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onCaptureQueueEmpty(CameraCaptureSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onCaptureQueueEmpty(getWrapped(session, this.cameraErrorListener));
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1434onCaptureQueueEmptyrphkYDA(this.device.mo1797getCameraIdDz_R5H8(), wrapped.mo1795getId159jkk4());
        }
    }

    private final CameraCaptureSessionWrapper getWrapped(CameraCaptureSession cameraCaptureSession, CameraErrorListener cameraErrorListener) {
        CameraCaptureSessionWrapper cameraCaptureSessionWrapper = (CameraCaptureSessionWrapper) this.captureSession.getValue();
        if (cameraCaptureSessionWrapper != null) {
            return cameraCaptureSessionWrapper;
        }
        CameraCaptureSessionWrapper cameraCaptureSessionWrapperWrapSession = wrapSession(cameraCaptureSession, cameraErrorListener);
        if (this.captureSession.compareAndSet(null, cameraCaptureSessionWrapperWrapSession)) {
            return cameraCaptureSessionWrapperWrapSession;
        }
        Object value = this.captureSession.getValue();
        Intrinsics.checkNotNull(value);
        return (CameraCaptureSessionWrapper) value;
    }

    private final CameraCaptureSessionWrapper wrapSession(CameraCaptureSession cameraCaptureSession, CameraErrorListener cameraErrorListener) {
        if (cameraCaptureSession instanceof CameraConstrainedHighSpeedCaptureSession) {
            return new AndroidCameraConstrainedHighSpeedCaptureSession(this.device, (CameraConstrainedHighSpeedCaptureSession) cameraCaptureSession, cameraErrorListener, this.callbackHandler);
        }
        return new AndroidCameraCaptureSession(this.device, cameraCaptureSession, cameraErrorListener, this.callbackHandler);
    }

    private final void finalizeSession() {
        finalizeLastSession();
        this.stateCallback.onSessionFinalized();
    }

    private final void finalizeLastSession() {
        SessionStateCallback sessionStateCallback = (SessionStateCallback) this._lastStateCallback.getAndSet(null);
        if (sessionStateCallback != null) {
            sessionStateCallback.onSessionFinalized();
        }
    }
}
