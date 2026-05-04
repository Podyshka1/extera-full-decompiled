package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraExtensionSession;
import android.hardware.camera2.CameraExtensionSession$StateCallback;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidExtensionSessionStateCallback extends CameraExtensionSession$StateCallback {
    private final AtomicRef _lastStateCallback;
    private final Executor callbackExecutor;
    private final CameraErrorListener cameraErrorListener;
    private final CameraDeviceWrapper device;
    private final AtomicRef extensionSession;
    private final CameraInterop.CaptureSessionListener interopCaptureSessionListener;
    private final CameraExtensionSessionWrapper.StateCallback stateCallback;

    public AndroidExtensionSessionStateCallback(CameraDeviceWrapper device, CameraExtensionSessionWrapper.StateCallback stateCallback, SessionStateCallback sessionStateCallback, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Executor callbackExecutor) {
        Intrinsics.checkNotNullParameter(device, "device");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        Intrinsics.checkNotNullParameter(cameraErrorListener, "cameraErrorListener");
        Intrinsics.checkNotNullParameter(callbackExecutor, "callbackExecutor");
        this.device = device;
        this.stateCallback = stateCallback;
        this.cameraErrorListener = cameraErrorListener;
        this.interopCaptureSessionListener = captureSessionListener;
        this.callbackExecutor = callbackExecutor;
        this._lastStateCallback = AtomicFU.atomic(sessionStateCallback);
        this.extensionSession = AtomicFU.atomic((Object) null);
    }

    public void onConfigured(CameraExtensionSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        CameraExtensionSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onConfigured(wrapped);
        finalizeLastSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1437onConfiguredrphkYDA(this.device.mo1797getCameraIdDz_R5H8(), wrapped.mo1795getId159jkk4());
        }
    }

    public void onConfigureFailed(CameraExtensionSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        CameraExtensionSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onConfigureFailed(wrapped);
        finalizeSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1436onConfigureFailedrphkYDA(this.device.mo1797getCameraIdDz_R5H8(), wrapped.mo1795getId159jkk4());
        }
    }

    public void onClosed(CameraExtensionSession session) {
        Intrinsics.checkNotNullParameter(session, "session");
        CameraExtensionSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onClosed(getWrapped(session, this.cameraErrorListener));
        finalizeSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1435onClosedrphkYDA(this.device.mo1797getCameraIdDz_R5H8(), wrapped.mo1795getId159jkk4());
        }
    }

    private final CameraExtensionSessionWrapper getWrapped(CameraExtensionSession cameraExtensionSession, CameraErrorListener cameraErrorListener) {
        CameraExtensionSessionWrapper cameraExtensionSessionWrapper = (CameraExtensionSessionWrapper) this.extensionSession.getValue();
        if (cameraExtensionSessionWrapper != null) {
            return cameraExtensionSessionWrapper;
        }
        CameraExtensionSessionWrapper cameraExtensionSessionWrapperWrapSession = wrapSession(cameraExtensionSession, cameraErrorListener);
        if (this.extensionSession.compareAndSet(null, cameraExtensionSessionWrapperWrapSession)) {
            return cameraExtensionSessionWrapperWrapSession;
        }
        Object value = this.extensionSession.getValue();
        Intrinsics.checkNotNull(value);
        return (CameraExtensionSessionWrapper) value;
    }

    private final CameraExtensionSessionWrapper wrapSession(CameraExtensionSession cameraExtensionSession, CameraErrorListener cameraErrorListener) {
        return new AndroidCameraExtensionSession(this.device, cameraExtensionSession, cameraErrorListener, this.callbackExecutor);
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
