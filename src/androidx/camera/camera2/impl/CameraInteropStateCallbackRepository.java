package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraInterop;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.SessionConfig;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0002\u0013\u0014B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\f\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "_deviceStateCallback", "Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;", "_sessionStateCallback", "Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;", "updateCallbacks", _UrlKt.FRAGMENT_ENCODE_SET, "sessionConfig", "Landroidx/camera/core/impl/SessionConfig;", "deviceStateCallback", "getDeviceStateCallback", "()Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;", "sessionStateCallback", "Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;", "getSessionStateCallback", "()Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;", "CameraDeviceStateCallbacks", "CaptureSessionStateCallbacks", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class CameraInteropStateCallbackRepository {
    private final CameraDeviceStateCallbacks _deviceStateCallback = new CameraDeviceStateCallbacks();
    private final CaptureSessionStateCallbacks _sessionStateCallback = new CaptureSessionStateCallbacks();

    public final void updateCallbacks(SessionConfig sessionConfig) {
        this._deviceStateCallback.updateCallbacks$camera_camera2(sessionConfig);
        this._sessionStateCallback.updateCallbacks$camera_camera2(sessionConfig);
    }

    /* JADX INFO: renamed from: getDeviceStateCallback, reason: from getter */
    public final CameraDeviceStateCallbacks get_deviceStateCallback() {
        return this._deviceStateCallback;
    }

    public final CameraInterop.CaptureSessionListener getSessionStateCallback() {
        return this._sessionStateCallback;
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0000¢\u0006\u0002\b\u000bJ\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u0011\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u00060\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CameraDeviceStateCallbacks;", "Landroid/hardware/camera2/CameraDevice$StateCallback;", "<init>", "()V", "callbacks", "Lkotlinx/atomicfu/AtomicRef;", _UrlKt.FRAGMENT_ENCODE_SET, "updateCallbacks", _UrlKt.FRAGMENT_ENCODE_SET, "sessionConfig", "Landroidx/camera/core/impl/SessionConfig;", "updateCallbacks$camera_camera2", "onOpened", "cameraDevice", "Landroid/hardware/camera2/CameraDevice;", "onClosed", "onDisconnected", "onError", "errorCode", _UrlKt.FRAGMENT_ENCODE_SET, "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CameraDeviceStateCallbacks extends CameraDevice.StateCallback {
        private AtomicRef<List<CameraDevice.StateCallback>> callbacks = AtomicFU.atomic(CollectionsKt.emptyList());

        public final void updateCallbacks$camera_camera2(SessionConfig sessionConfig) {
            this.callbacks.setValue(CollectionsKt.toList(sessionConfig.getDeviceStateCallbacks()));
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            Iterator<CameraDevice.StateCallback> it = this.callbacks.getValue().iterator();
            while (it.hasNext()) {
                it.next().onOpened(cameraDevice);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(CameraDevice cameraDevice) {
            Iterator<CameraDevice.StateCallback> it = this.callbacks.getValue().iterator();
            while (it.hasNext()) {
                it.next().onClosed(cameraDevice);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            Iterator<CameraDevice.StateCallback> it = this.callbacks.getValue().iterator();
            while (it.hasNext()) {
                it.next().onDisconnected(cameraDevice);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int errorCode) {
            Iterator<CameraDevice.StateCallback> it = this.callbacks.getValue().iterator();
            while (it.hasNext()) {
                it.next().onError(cameraDevice, errorCode);
            }
        }
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001#B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u000fJ\u001f\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u000fJ\u001f\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0015\u0010\u000fJ\u001f\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0017\u0010\u000fJ\u001f\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0019\u0010\u000fR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020 0\u001f0\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks;", "Landroidx/camera/camera2/pipe/CameraInterop$CaptureSessionListener;", "<init>", "()V", "Landroidx/camera/core/impl/SessionConfig;", "sessionConfig", _UrlKt.FRAGMENT_ENCODE_SET, "updateCallbacks$camera_camera2", "(Landroidx/camera/core/impl/SessionConfig;)V", "updateCallbacks", "Landroidx/camera/camera2/pipe/CameraId;", "cameraId", "Landroidx/camera/camera2/pipe/CameraInterop$CameraCaptureSessionId;", "captureSessionId", "onConfigured-rphkYDA", "(Ljava/lang/String;I)V", "onConfigured", "onConfigureFailed-rphkYDA", "onConfigureFailed", "onReady-rphkYDA", "onReady", "onActive-rphkYDA", "onActive", "onCaptureQueueEmpty-rphkYDA", "onCaptureQueueEmpty", "onClosed-rphkYDA", "onClosed", "Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;", "placeholderSession", "Landroidx/camera/camera2/impl/RejectOperationCameraCaptureSession;", "Lkotlinx/atomicfu/AtomicRef;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;", "callbacks", "Lkotlinx/atomicfu/AtomicRef;", "Api26CompatImpl", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraInteropStateCallbackRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraInteropStateCallbackRepository.kt\nandroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,183:1\n136#2,4:184\n*S KotlinDebug\n*F\n+ 1 CameraInteropStateCallbackRepository.kt\nandroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks\n*L\n146#1:184,4\n*E\n"})
    public static final class CaptureSessionStateCallbacks implements CameraInterop.CaptureSessionListener {
        private final RejectOperationCameraCaptureSession placeholderSession = new RejectOperationCameraCaptureSession();
        private AtomicRef<List<CameraCaptureSession.StateCallback>> callbacks = AtomicFU.atomic(CollectionsKt.emptyList());

        public final void updateCallbacks$camera_camera2(SessionConfig sessionConfig) {
            this.callbacks.setValue(CollectionsKt.toList(sessionConfig.getSessionStateCallbacks()));
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onConfigured-rphkYDA, reason: not valid java name */
        public void mo1186onConfiguredrphkYDA(String cameraId, int captureSessionId) {
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.getValue().iterator();
            while (it.hasNext()) {
                it.next().onConfigured(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onConfigureFailed-rphkYDA, reason: not valid java name */
        public void mo1185onConfigureFailedrphkYDA(String cameraId, int captureSessionId) {
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.getValue().iterator();
            while (it.hasNext()) {
                it.next().onConfigureFailed(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onReady-rphkYDA, reason: not valid java name */
        public void mo1187onReadyrphkYDA(String cameraId, int captureSessionId) {
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.getValue().iterator();
            while (it.hasNext()) {
                it.next().onReady(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onActive-rphkYDA, reason: not valid java name */
        public void mo1182onActiverphkYDA(String cameraId, int captureSessionId) {
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.getValue().iterator();
            while (it.hasNext()) {
                it.next().onActive(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onCaptureQueueEmpty-rphkYDA, reason: not valid java name */
        public void mo1183onCaptureQueueEmptyrphkYDA(String cameraId, int captureSessionId) {
            if (Build.VERSION.SDK_INT >= 26) {
                Api26CompatImpl.onCaptureQueueEmpty(this.placeholderSession, this.callbacks);
                return;
            }
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isErrorEnabled("CXCP")) {
                Log.e(Camera2Logger.TRUNCATED_TAG, "onCaptureQueueEmpty called for unsupported OS version.");
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onClosed-rphkYDA, reason: not valid java name */
        public void mo1184onClosedrphkYDA(String cameraId, int captureSessionId) {
            Iterator<CameraCaptureSession.StateCallback> it = this.callbacks.getValue().iterator();
            while (it.hasNext()) {
                it.next().onClosed(this.placeholderSession);
            }
        }

        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0012\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\tH\u0007¨\u0006\f"}, d2 = {"Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository$CaptureSessionStateCallbacks$Api26CompatImpl;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "onCaptureQueueEmpty", _UrlKt.FRAGMENT_ENCODE_SET, "session", "Landroid/hardware/camera2/CameraCaptureSession;", "callbacks", "Lkotlinx/atomicfu/AtomicRef;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Api26CompatImpl {
            public static final Api26CompatImpl INSTANCE = new Api26CompatImpl();

            private Api26CompatImpl() {
            }

            @JvmStatic
            public static final void onCaptureQueueEmpty(CameraCaptureSession session, AtomicRef<List<CameraCaptureSession.StateCallback>> callbacks) {
                Iterator<CameraCaptureSession.StateCallback> it = callbacks.getValue().iterator();
                while (it.hasNext()) {
                    it.next().onCaptureQueueEmpty(session);
                }
            }
        }
    }
}
