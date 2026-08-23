package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper;
import androidx.camera.camera2.pipe.core.Log;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes3.dex */
public final class VirtualAndroidCameraDevice implements CameraDeviceWrapper {
    private final AndroidCameraDevice androidCameraDevice;
    private boolean disconnected;
    private final Object lock;

    public VirtualAndroidCameraDevice(AndroidCameraDevice androidCameraDevice) {
        Intrinsics.checkNotNullParameter(androidCameraDevice, "androidCameraDevice");
        this.androidCameraDevice = androidCameraDevice;
        this.lock = new Object();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: getCameraId-Dz_R5H8 */
    public String mo1797getCameraIdDz_R5H8() {
        return this.androidCameraDevice.mo1797getCameraIdDz_R5H8();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSession(List outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateCaptureSession;
        Intrinsics.checkNotNullParameter(outputs, "outputs");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createCaptureSession failed: Virtual device disconnected");
                    }
                    stateCallback.onSessionFinalized();
                    zCreateCaptureSession = false;
                } else {
                    zCreateCaptureSession = this.androidCameraDevice.createCaptureSession(outputs, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createReprocessableCaptureSession(InputConfiguration input, List outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateReprocessableCaptureSession;
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(outputs, "outputs");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createReprocessableCaptureSession failed: Virtual device disconnected");
                    }
                    stateCallback.onSessionFinalized();
                    zCreateReprocessableCaptureSession = false;
                } else {
                    zCreateReprocessableCaptureSession = this.androidCameraDevice.createReprocessableCaptureSession(input, outputs, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateReprocessableCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createConstrainedHighSpeedCaptureSession(List outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateConstrainedHighSpeedCaptureSession;
        Intrinsics.checkNotNullParameter(outputs, "outputs");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createConstrainedHighSpeedCaptureSession failed: Virtual device disconnected");
                    }
                    stateCallback.onSessionFinalized();
                    zCreateConstrainedHighSpeedCaptureSession = false;
                } else {
                    zCreateConstrainedHighSpeedCaptureSession = this.androidCameraDevice.createConstrainedHighSpeedCaptureSession(outputs, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateConstrainedHighSpeedCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSessionByOutputConfigurations(List outputConfigurations, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateCaptureSessionByOutputConfigurations;
        Intrinsics.checkNotNullParameter(outputConfigurations, "outputConfigurations");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createCaptureSessionByOutputConfigurations failed: Virtual device disconnected");
                    }
                    stateCallback.onSessionFinalized();
                    zCreateCaptureSessionByOutputConfigurations = false;
                } else {
                    zCreateCaptureSessionByOutputConfigurations = this.androidCameraDevice.createCaptureSessionByOutputConfigurations(outputConfigurations, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateCaptureSessionByOutputConfigurations;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createReprocessableCaptureSessionByConfigurations(InputConfigData inputConfig, List outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateReprocessableCaptureSessionByConfigurations;
        Intrinsics.checkNotNullParameter(inputConfig, "inputConfig");
        Intrinsics.checkNotNullParameter(outputs, "outputs");
        Intrinsics.checkNotNullParameter(stateCallback, "stateCallback");
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createReprocessableCaptureSessionByConfigurations failed: Virtual device disconnected");
                    }
                    stateCallback.onSessionFinalized();
                    zCreateReprocessableCaptureSessionByConfigurations = false;
                } else {
                    zCreateReprocessableCaptureSessionByConfigurations = this.androidCameraDevice.createReprocessableCaptureSessionByConfigurations(inputConfig, outputs, stateCallback);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateReprocessableCaptureSessionByConfigurations;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createExtensionSession(ExtensionSessionConfigData config) {
        boolean zCreateExtensionSession;
        Intrinsics.checkNotNullParameter(config, "config");
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createExtensionSession failed: Virtual device disconnected");
                    }
                    CameraExtensionSessionWrapper.StateCallback extensionStateCallback = config.getExtensionStateCallback();
                    Intrinsics.checkNotNull(extensionStateCallback);
                    extensionStateCallback.onSessionFinalized();
                    zCreateExtensionSession = false;
                } else {
                    zCreateExtensionSession = this.androidCameraDevice.createExtensionSession(config);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateExtensionSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSession(SessionConfigData config) {
        boolean zCreateCaptureSession;
        Intrinsics.checkNotNullParameter(config, "config");
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createCaptureSession failed: Virtual device disconnected");
                    }
                    config.getStateCallback().onSessionFinalized();
                    zCreateCaptureSession = false;
                } else {
                    zCreateCaptureSession = this.androidCameraDevice.createCaptureSession(config);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zCreateCaptureSession;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: createCaptureRequest-2PPcXtw */
    public CaptureRequest.Builder mo1796createCaptureRequest2PPcXtw(int i) {
        CaptureRequest.Builder builderMo1796createCaptureRequest2PPcXtw;
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createCaptureRequest failed: Virtual device disconnected");
                    }
                    builderMo1796createCaptureRequest2PPcXtw = null;
                } else {
                    builderMo1796createCaptureRequest2PPcXtw = this.androidCameraDevice.mo1796createCaptureRequest2PPcXtw(i);
                }
            } finally {
            }
        }
        return builderMo1796createCaptureRequest2PPcXtw;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult inputResult) {
        CaptureRequest.Builder builderCreateReprocessCaptureRequest;
        Intrinsics.checkNotNullParameter(inputResult, "inputResult");
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createReprocessCaptureRequest failed: Virtual device disconnected");
                    }
                    builderCreateReprocessCaptureRequest = null;
                } else {
                    builderCreateReprocessCaptureRequest = this.androidCameraDevice.createReprocessCaptureRequest(inputResult);
                }
            } finally {
            }
        }
        return builderCreateReprocessCaptureRequest;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public void onDeviceClosing() {
        this.androidCameraDevice.onDeviceClosing();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public void onDeviceClosed() {
        this.androidCameraDevice.onDeviceClosed();
    }

    @Override // androidx.camera.camera2.pipe.UnsafeWrapper
    public Object unwrapAs(KClass type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return this.androidCameraDevice.unwrapAs(type);
    }

    public final void disconnect$camera_camera2_pipe() {
        synchronized (this.lock) {
            this.disconnected = true;
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController.Listener
    /* JADX INFO: renamed from: onCameraAudioRestrictionUpdated-LwUUkyU */
    public void mo1798onCameraAudioRestrictionUpdatedLwUUkyU(int i) {
        this.androidCameraDevice.mo1798onCameraAudioRestrictionUpdatedLwUUkyU(i);
    }
}
