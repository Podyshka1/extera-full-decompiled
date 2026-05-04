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
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicRef;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraInteropStateCallbackRepository {
    private final CameraDeviceStateCallbacks _deviceStateCallback = new CameraDeviceStateCallbacks();
    private final CaptureSessionStateCallbacks _sessionStateCallback = new CaptureSessionStateCallbacks();

    public final void updateCallbacks(SessionConfig sessionConfig) {
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        this._deviceStateCallback.updateCallbacks$camera_camera2(sessionConfig);
        this._sessionStateCallback.updateCallbacks$camera_camera2(sessionConfig);
    }

    public final CameraDeviceStateCallbacks getDeviceStateCallback() {
        return this._deviceStateCallback;
    }

    public final CameraInterop.CaptureSessionListener getSessionStateCallback() {
        return this._sessionStateCallback;
    }

    public static final class CameraDeviceStateCallbacks extends CameraDevice.StateCallback {
        private AtomicRef callbacks = AtomicFU.atomic(CollectionsKt.emptyList());

        public final void updateCallbacks$camera_camera2(SessionConfig sessionConfig) {
            Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
            AtomicRef atomicRef = this.callbacks;
            List deviceStateCallbacks = sessionConfig.getDeviceStateCallbacks();
            Intrinsics.checkNotNullExpressionValue(deviceStateCallbacks, "getDeviceStateCallbacks(...)");
            atomicRef.setValue(CollectionsKt.toList(deviceStateCallbacks));
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) {
            Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
            Iterator it = ((List) this.callbacks.getValue()).iterator();
            while (it.hasNext()) {
                ((CameraDevice.StateCallback) it.next()).onOpened(cameraDevice);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(CameraDevice cameraDevice) {
            Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
            Iterator it = ((List) this.callbacks.getValue()).iterator();
            while (it.hasNext()) {
                ((CameraDevice.StateCallback) it.next()).onClosed(cameraDevice);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
            Iterator it = ((List) this.callbacks.getValue()).iterator();
            while (it.hasNext()) {
                ((CameraDevice.StateCallback) it.next()).onDisconnected(cameraDevice);
            }
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i) {
            Intrinsics.checkNotNullParameter(cameraDevice, "cameraDevice");
            Iterator it = ((List) this.callbacks.getValue()).iterator();
            while (it.hasNext()) {
                ((CameraDevice.StateCallback) it.next()).onError(cameraDevice, i);
            }
        }
    }

    public static final class CaptureSessionStateCallbacks implements CameraInterop.CaptureSessionListener {
        private final RejectOperationCameraCaptureSession placeholderSession = new RejectOperationCameraCaptureSession();
        private AtomicRef callbacks = AtomicFU.atomic(CollectionsKt.emptyList());

        public final void updateCallbacks$camera_camera2(SessionConfig sessionConfig) {
            Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
            AtomicRef atomicRef = this.callbacks;
            List sessionStateCallbacks = sessionConfig.getSessionStateCallbacks();
            Intrinsics.checkNotNullExpressionValue(sessionStateCallbacks, "getSessionStateCallbacks(...)");
            atomicRef.setValue(CollectionsKt.toList(sessionStateCallbacks));
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onConfigured-rphkYDA, reason: not valid java name */
        public void mo1437onConfiguredrphkYDA(String cameraId, int i) {
            Intrinsics.checkNotNullParameter(cameraId, "cameraId");
            Iterator it = ((List) this.callbacks.getValue()).iterator();
            while (it.hasNext()) {
                ((CameraCaptureSession.StateCallback) it.next()).onConfigured(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onConfigureFailed-rphkYDA, reason: not valid java name */
        public void mo1436onConfigureFailedrphkYDA(String cameraId, int i) {
            Intrinsics.checkNotNullParameter(cameraId, "cameraId");
            Iterator it = ((List) this.callbacks.getValue()).iterator();
            while (it.hasNext()) {
                ((CameraCaptureSession.StateCallback) it.next()).onConfigureFailed(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onReady-rphkYDA, reason: not valid java name */
        public void mo1438onReadyrphkYDA(String cameraId, int i) {
            Intrinsics.checkNotNullParameter(cameraId, "cameraId");
            Iterator it = ((List) this.callbacks.getValue()).iterator();
            while (it.hasNext()) {
                ((CameraCaptureSession.StateCallback) it.next()).onReady(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onActive-rphkYDA, reason: not valid java name */
        public void mo1433onActiverphkYDA(String cameraId, int i) {
            Intrinsics.checkNotNullParameter(cameraId, "cameraId");
            Iterator it = ((List) this.callbacks.getValue()).iterator();
            while (it.hasNext()) {
                ((CameraCaptureSession.StateCallback) it.next()).onActive(this.placeholderSession);
            }
        }

        @Override // androidx.camera.camera2.pipe.CameraInterop.CaptureSessionListener
        /* JADX INFO: renamed from: onCaptureQueueEmpty-rphkYDA, reason: not valid java name */
        public void mo1434onCaptureQueueEmptyrphkYDA(String cameraId, int i) {
            Intrinsics.checkNotNullParameter(cameraId, "cameraId");
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
        public void mo1435onClosedrphkYDA(String cameraId, int i) {
            Intrinsics.checkNotNullParameter(cameraId, "cameraId");
            Iterator it = ((List) this.callbacks.getValue()).iterator();
            while (it.hasNext()) {
                ((CameraCaptureSession.StateCallback) it.next()).onClosed(this.placeholderSession);
            }
        }

        private static final class Api26CompatImpl {
            public static final Api26CompatImpl INSTANCE = new Api26CompatImpl();

            private Api26CompatImpl() {
            }

            public static final void onCaptureQueueEmpty(CameraCaptureSession session, AtomicRef callbacks) {
                Intrinsics.checkNotNullParameter(session, "session");
                Intrinsics.checkNotNullParameter(callbacks, "callbacks");
                Iterator it = ((List) callbacks.getValue()).iterator();
                while (it.hasNext()) {
                    ((CameraCaptureSession.StateCallback) it.next()).onCaptureQueueEmpty(session);
                }
            }
        }
    }
}
