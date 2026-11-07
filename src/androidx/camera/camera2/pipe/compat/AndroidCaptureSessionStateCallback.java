package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.os.Handler;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\b\u001a\u00020\tH\u0002J\u0018\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\b\u001a\u00020\tH\u0002J\b\u0010\u001f\u001a\u00020\u0015H\u0002J\b\u0010 \u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback;", "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;", "device", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "stateCallback", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;", "lastStateCallback", "Landroidx/camera/camera2/pipe/compat/SessionStateCallback;", "cameraErrorListener", "Landroidx/camera/camera2/pipe/internal/CameraErrorListener;", "interopCaptureSessionListener", "Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;", "callbackHandler", "Landroid/os/Handler;", "<init>", "(Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;Landroidx/camera/camera2/pipe/compat/SessionStateCallback;Landroidx/camera/camera2/pipe/internal/CameraErrorListener;Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;Landroid/os/Handler;)V", "_lastStateCallback", "Lkotlinx/atomicfu/AtomicRef;", "captureSession", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;", "onConfigured", _UrlKt.FRAGMENT_ENCODE_SET, "session", "Landroid/hardware/camera2/CameraCaptureSession;", "onConfigureFailed", "onReady", "onActive", "onClosed", "onCaptureQueueEmpty", "getWrapped", "wrapSession", "finalizeSession", "finalizeLastSession", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCaptureSessionWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionWrapper.kt\nandroidx/camera/camera2/pipe/compat/AndroidCaptureSessionStateCallback\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,401:1\n1#2:402\n*E\n"})
public final class AndroidCaptureSessionStateCallback extends CameraCaptureSession.StateCallback {
    private final AtomicRef<SessionStateCallback> _lastStateCallback;
    private final Handler callbackHandler;
    private final CameraErrorListener cameraErrorListener;
    private final AtomicRef<CameraCaptureSessionWrapper> captureSession = AtomicFU.atomic((Object) null);
    private final CameraDeviceWrapper device;
    private final CameraInterop.CaptureSessionListener interopCaptureSessionListener;
    private final CameraCaptureSessionWrapper.StateCallback stateCallback;

    public AndroidCaptureSessionStateCallback(CameraDeviceWrapper cameraDeviceWrapper, CameraCaptureSessionWrapper.StateCallback stateCallback, SessionStateCallback sessionStateCallback, CameraErrorListener cameraErrorListener, CameraInterop.CaptureSessionListener captureSessionListener, Handler handler) {
        this.device = cameraDeviceWrapper;
        this.stateCallback = stateCallback;
        this.cameraErrorListener = cameraErrorListener;
        this.interopCaptureSessionListener = captureSessionListener;
        this.callbackHandler = handler;
        this._lastStateCallback = AtomicFU.atomic(sessionStateCallback);
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigured(CameraCaptureSession session) {
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onConfigured(wrapped);
        finalizeLastSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1186onConfiguredrphkYDA(this.device.mo1536getCameraIdDz_R5H8(), wrapped.getId());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onConfigureFailed(CameraCaptureSession session) {
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onConfigureFailed(wrapped);
        finalizeSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1185onConfigureFailedrphkYDA(this.device.mo1536getCameraIdDz_R5H8(), wrapped.getId());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onReady(CameraCaptureSession session) {
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onReady(getWrapped(session, this.cameraErrorListener));
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1187onReadyrphkYDA(this.device.mo1536getCameraIdDz_R5H8(), wrapped.getId());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onActive(CameraCaptureSession session) {
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onActive(getWrapped(session, this.cameraErrorListener));
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1182onActiverphkYDA(this.device.mo1536getCameraIdDz_R5H8(), wrapped.getId());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onClosed(CameraCaptureSession session) {
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onClosed(getWrapped(session, this.cameraErrorListener));
        finalizeSession();
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1184onClosedrphkYDA(this.device.mo1536getCameraIdDz_R5H8(), wrapped.getId());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
    public void onCaptureQueueEmpty(CameraCaptureSession session) {
        CameraCaptureSessionWrapper wrapped = getWrapped(session, this.cameraErrorListener);
        this.stateCallback.onCaptureQueueEmpty(getWrapped(session, this.cameraErrorListener));
        CameraInterop.CaptureSessionListener captureSessionListener = this.interopCaptureSessionListener;
        if (captureSessionListener != null) {
            captureSessionListener.mo1183onCaptureQueueEmptyrphkYDA(this.device.mo1536getCameraIdDz_R5H8(), wrapped.getId());
        }
    }

    private final CameraCaptureSessionWrapper getWrapped(CameraCaptureSession session, CameraErrorListener cameraErrorListener) {
        CameraCaptureSessionWrapper value = this.captureSession.getValue();
        if (value != null) {
            return value;
        }
        CameraCaptureSessionWrapper cameraCaptureSessionWrapperWrapSession = wrapSession(session, cameraErrorListener);
        return this.captureSession.compareAndSet(null, cameraCaptureSessionWrapperWrapSession) ? cameraCaptureSessionWrapperWrapSession : this.captureSession.getValue();
    }

    private final CameraCaptureSessionWrapper wrapSession(CameraCaptureSession session, CameraErrorListener cameraErrorListener) {
        boolean z = session instanceof CameraConstrainedHighSpeedCaptureSession;
        CameraDeviceWrapper cameraDeviceWrapper = this.device;
        if (z) {
            return new AndroidCameraConstrainedHighSpeedCaptureSession(cameraDeviceWrapper, (CameraConstrainedHighSpeedCaptureSession) session, cameraErrorListener, this.callbackHandler);
        }
        return new AndroidCameraCaptureSession(cameraDeviceWrapper, session, cameraErrorListener, this.callbackHandler);
    }

    private final void finalizeSession() {
        finalizeLastSession();
        this.stateCallback.onSessionFinalized();
    }

    private final void finalizeLastSession() {
        SessionStateCallback andSet = this._lastStateCallback.getAndSet(null);
        if (andSet != null) {
            andSet.onSessionFinalized();
        }
    }
}
