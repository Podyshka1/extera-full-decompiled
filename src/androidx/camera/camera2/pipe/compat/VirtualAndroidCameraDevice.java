package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.view.Surface;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.core.Log;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\f\u001a\u00020\u000b2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ-\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0012\u001a\u00020\u000b2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0012\u0010\rJ%\u0010\u0015\u001a\u00020\u000b2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00062\u0006\u0010\n\u001a\u00020\tH\u0017¢\u0006\u0004\b\u0015\u0010\rJ-\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00162\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00130\u00062\u0006\u0010\n\u001a\u00020\tH\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0017¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001eH\u0017¢\u0006\u0004\b\f\u0010\u001fJ\u0019\u0010%\u001a\u0004\u0018\u00010\"2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b#\u0010$J\u0019\u0010(\u001a\u0004\u0018\u00010\"2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020*H\u0016¢\u0006\u0004\b-\u0010,J)\u00102\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010/*\u00020.2\f\u00101\u001a\b\u0012\u0004\u0012\u00028\u000000H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00105\u001a\u00020*H\u0000¢\u0006\u0004\b4\u0010,J\u0017\u0010:\u001a\u00020*2\u0006\u00107\u001a\u000206H\u0017¢\u0006\u0004\b8\u00109R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010;\u001a\u0004\b<\u0010=R\u0014\u0010>\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010@\u001a\u00020\u000b8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0014\u0010E\u001a\u00020B8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bC\u0010D¨\u0006F"}, d2 = {"Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;", "Landroidx/camera/camera2/pipe/compat/CameraDeviceWrapper;", "Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;", "androidCameraDevice", "<init>", "(Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/view/Surface;", "outputs", "Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;", "stateCallback", _UrlKt.FRAGMENT_ENCODE_SET, "createCaptureSession", "(Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z", "Landroid/hardware/camera2/params/InputConfiguration;", PluginsConstants.Settings.TYPE_INPUT, "createReprocessableCaptureSession", "(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z", "createConstrainedHighSpeedCaptureSession", "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;", "outputConfigurations", "createCaptureSessionByOutputConfigurations", "Landroidx/camera/camera2/pipe/compat/InputConfigData;", "inputConfig", "createReprocessableCaptureSessionByConfigurations", "(Landroidx/camera/camera2/pipe/compat/InputConfigData;Ljava/util/List;Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper$StateCallback;)Z", "Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;", "config", "createExtensionSession", "(Landroidx/camera/camera2/pipe/compat/ExtensionSessionConfigData;)Z", "Landroidx/camera/camera2/pipe/compat/SessionConfigData;", "(Landroidx/camera/camera2/pipe/compat/SessionConfigData;)Z", "Landroidx/camera/camera2/pipe/RequestTemplate;", "template", "Landroid/hardware/camera2/CaptureRequest$Builder;", "createCaptureRequest-2PPcXtw", "(I)Landroid/hardware/camera2/CaptureRequest$Builder;", "createCaptureRequest", "Landroid/hardware/camera2/TotalCaptureResult;", "inputResult", "createReprocessCaptureRequest", "(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "onDeviceClosing", "()V", "onDeviceClosed", _UrlKt.FRAGMENT_ENCODE_SET, "T", "Lkotlin/reflect/KClass;", "type", "unwrapAs", "(Lkotlin/reflect/KClass;)Ljava/lang/Object;", "disconnect$camera_camera2_pipe", "disconnect", "Landroidx/camera/camera2/pipe/AudioRestrictionMode;", "mode", "onCameraAudioRestrictionUpdated-LwUUkyU", "(I)V", "onCameraAudioRestrictionUpdated", "Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;", "getAndroidCameraDevice$camera_camera2_pipe", "()Landroidx/camera/camera2/pipe/compat/AndroidCameraDevice;", "lock", "Ljava/lang/Object;", "disconnected", "Z", "Landroidx/camera/camera2/pipe/CameraId;", "getCameraId-Dz_R5H8", "()Ljava/lang/String;", "cameraId", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraDeviceWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraDeviceWrapper.kt\nandroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,714:1\n71#2,2:715\n71#2,2:717\n71#2,2:719\n71#2,2:721\n71#2,2:723\n71#2,2:725\n71#2,2:727\n71#2,2:729\n71#2,2:731\n1#3:733\n*S KotlinDebug\n*F\n+ 1 CameraDeviceWrapper.kt\nandroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice\n*L\n570#1:715,2\n585#1:717,2\n599#1:719,2\n616#1:721,2\n637#1:723,2\n656#1:725,2\n668#1:727,2\n679#1:729,2\n689#1:731,2\n*E\n"})
public final class VirtualAndroidCameraDevice implements CameraDeviceWrapper {
    private final AndroidCameraDevice androidCameraDevice;
    private boolean disconnected;
    private final Object lock = new Object();

    public VirtualAndroidCameraDevice(AndroidCameraDevice androidCameraDevice) {
        this.androidCameraDevice = androidCameraDevice;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    /* JADX INFO: renamed from: getCameraId-Dz_R5H8 */
    public String getCameraId() {
        return this.androidCameraDevice.getCameraId();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public boolean createCaptureSession(List<? extends Surface> outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateCaptureSession;
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
    public boolean createReprocessableCaptureSession(InputConfiguration input, List<? extends Surface> outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateReprocessableCaptureSession;
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
    public boolean createConstrainedHighSpeedCaptureSession(List<? extends Surface> outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateConstrainedHighSpeedCaptureSession;
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
    public boolean createCaptureSessionByOutputConfigurations(List<? extends OutputConfigurationWrapper> outputConfigurations, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateCaptureSessionByOutputConfigurations;
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
    public boolean createReprocessableCaptureSessionByConfigurations(InputConfigData inputConfig, List<? extends OutputConfigurationWrapper> outputs, CameraCaptureSessionWrapper.StateCallback stateCallback) {
        boolean zCreateReprocessableCaptureSessionByConfigurations;
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
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createExtensionSession failed: Virtual device disconnected");
                    }
                    config.getExtensionStateCallback().onSessionFinalized();
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
    public CaptureRequest.Builder mo1482createCaptureRequest2PPcXtw(int template) {
        CaptureRequest.Builder builderMo1482createCaptureRequest2PPcXtw;
        synchronized (this.lock) {
            try {
                if (this.disconnected) {
                    if (Log.INSTANCE.getWARN_LOGGABLE()) {
                        android.util.Log.w("CXCP", "createCaptureRequest failed: Virtual device disconnected");
                    }
                    builderMo1482createCaptureRequest2PPcXtw = null;
                } else {
                    builderMo1482createCaptureRequest2PPcXtw = this.androidCameraDevice.mo1482createCaptureRequest2PPcXtw(template);
                }
            } finally {
            }
        }
        return builderMo1482createCaptureRequest2PPcXtw;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraDeviceWrapper
    public CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult inputResult) {
        CaptureRequest.Builder builderCreateReprocessCaptureRequest;
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
    public <T> T unwrapAs(KClass<T> type) {
        return (T) this.androidCameraDevice.unwrapAs(type);
    }

    public final void disconnect$camera_camera2_pipe() {
        synchronized (this.lock) {
            this.disconnected = true;
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController.Listener
    /* JADX INFO: renamed from: onCameraAudioRestrictionUpdated-LwUUkyU */
    public void mo1484onCameraAudioRestrictionUpdatedLwUUkyU(int mode) {
        this.androidCameraDevice.mo1484onCameraAudioRestrictionUpdatedLwUUkyU(mode);
    }
}
