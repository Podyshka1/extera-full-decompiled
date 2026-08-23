package androidx.camera.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.ExtendableBuilder;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001d\u001cB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001b\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u001b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0014\u0010\u0015J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0011\u0010\u001b\u001a\u00020\u00018G¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Landroidx/camera/camera2/impl/Camera2ImplConfig;", "Landroidx/camera/camera2/interop/CaptureRequestOptions;", "Landroidx/camera/core/impl/Config;", "config", "<init>", "(Landroidx/camera/core/impl/Config;)V", _UrlKt.FRAGMENT_ENCODE_SET, "valueIfMissing", "getCaptureRequestTemplate", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "getStreamUseCase", "(Ljava/lang/Long;)Ljava/lang/Long;", "Landroid/hardware/camera2/CameraDevice$StateCallback;", "getDeviceStateCallback", "(Landroid/hardware/camera2/CameraDevice$StateCallback;)Landroid/hardware/camera2/CameraDevice$StateCallback;", "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;", "getSessionStateCallback", "(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;", "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;", "getSessionCaptureCallback", "(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;", _UrlKt.FRAGMENT_ENCODE_SET, "getPhysicalCameraId", "(Ljava/lang/String;)Ljava/lang/String;", "getCaptureRequestOptions", "()Landroidx/camera/camera2/interop/CaptureRequestOptions;", "captureRequestOptions", "Companion", "Builder", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class Camera2ImplConfig extends CaptureRequestOptions {

    @JvmField
    public static final Config.Option<Object> CAPTURE_REQUEST_TAG_OPTION;

    @JvmField
    public static final Config.Option<String> SESSION_PHYSICAL_CAMERA_ID_OPTION;

    @JvmField
    public static final Config.Option<Long> STREAM_USE_CASE_OPTION;

    @JvmField
    public static final Config.Option<Long> STREAM_USE_HINT_OPTION;

    @JvmField
    public static final Config.Option<Integer> TEMPLATE_TYPE_OPTION = Config.Option.create("camera2.captureRequest.templateType", Integer.TYPE);

    @JvmField
    public static final Config.Option<CameraDevice.StateCallback> DEVICE_STATE_CALLBACK_OPTION = Config.Option.create("camera2.cameraDevice.stateCallback", CameraDevice.StateCallback.class);

    @JvmField
    public static final Config.Option<CameraCaptureSession.StateCallback> SESSION_STATE_CALLBACK_OPTION = Config.Option.create("camera2.cameraCaptureSession.stateCallback", CameraCaptureSession.StateCallback.class);

    @JvmField
    public static final Config.Option<CameraCaptureSession.CaptureCallback> SESSION_CAPTURE_CALLBACK_OPTION = Config.Option.create("camera2.cameraCaptureSession.captureCallback", CameraCaptureSession.CaptureCallback.class);

    public Camera2ImplConfig(Config config) {
        super(config);
    }

    public final CaptureRequestOptions getCaptureRequestOptions() {
        return CaptureRequestOptions.Builder.INSTANCE.from(getConfig()).build();
    }

    public final int getCaptureRequestTemplate(int valueIfMissing) {
        return ((Number) getConfig().retrieveOption(TEMPLATE_TYPE_OPTION, Integer.valueOf(valueIfMissing))).intValue();
    }

    public static /* synthetic */ Long getStreamUseCase$default(Camera2ImplConfig camera2ImplConfig, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        return camera2ImplConfig.getStreamUseCase(l);
    }

    public final Long getStreamUseCase(Long valueIfMissing) {
        return (Long) getConfig().retrieveOption(STREAM_USE_CASE_OPTION, valueIfMissing);
    }

    public static /* synthetic */ CameraDevice.StateCallback getDeviceStateCallback$default(Camera2ImplConfig camera2ImplConfig, CameraDevice.StateCallback stateCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            stateCallback = null;
        }
        return camera2ImplConfig.getDeviceStateCallback(stateCallback);
    }

    public final CameraDevice.StateCallback getDeviceStateCallback(CameraDevice.StateCallback valueIfMissing) {
        return (CameraDevice.StateCallback) getConfig().retrieveOption(DEVICE_STATE_CALLBACK_OPTION, valueIfMissing);
    }

    public static /* synthetic */ CameraCaptureSession.StateCallback getSessionStateCallback$default(Camera2ImplConfig camera2ImplConfig, CameraCaptureSession.StateCallback stateCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            stateCallback = null;
        }
        return camera2ImplConfig.getSessionStateCallback(stateCallback);
    }

    public final CameraCaptureSession.StateCallback getSessionStateCallback(CameraCaptureSession.StateCallback valueIfMissing) {
        return (CameraCaptureSession.StateCallback) getConfig().retrieveOption(SESSION_STATE_CALLBACK_OPTION, valueIfMissing);
    }

    public static /* synthetic */ CameraCaptureSession.CaptureCallback getSessionCaptureCallback$default(Camera2ImplConfig camera2ImplConfig, CameraCaptureSession.CaptureCallback captureCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            captureCallback = null;
        }
        return camera2ImplConfig.getSessionCaptureCallback(captureCallback);
    }

    public final CameraCaptureSession.CaptureCallback getSessionCaptureCallback(CameraCaptureSession.CaptureCallback valueIfMissing) {
        return (CameraCaptureSession.CaptureCallback) getConfig().retrieveOption(SESSION_CAPTURE_CALLBACK_OPTION, valueIfMissing);
    }

    public static /* synthetic */ String getPhysicalCameraId$default(Camera2ImplConfig camera2ImplConfig, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return camera2ImplConfig.getPhysicalCameraId(str);
    }

    public final String getPhysicalCameraId(String valueIfMissing) {
        return (String) getConfig().retrieveOption(SESSION_PHYSICAL_CAMERA_ID_OPTION, valueIfMissing);
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J)\u0010\f\u001a\u00020\u0000\"\u0004\b\u0000\u0010\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010\u000b\u001a\u00028\u0000¢\u0006\u0004\b\f\u0010\rJ-\u0010\u0013\u001a\u00020\u00002\u0016\u0010\u0010\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u00002\u0010\u0010\u0016\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t0\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!¨\u0006\""}, d2 = {"Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", "Landroidx/camera/core/ExtendableBuilder;", "Landroidx/camera/camera2/impl/Camera2ImplConfig;", "<init>", "()V", "Landroidx/camera/core/impl/MutableConfig;", "getMutableConfig", "()Landroidx/camera/core/impl/MutableConfig;", "ValueT", "Landroid/hardware/camera2/CaptureRequest$Key;", "key", "value", "setCaptureRequestOption", "(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "values", "Landroidx/camera/core/impl/Config$OptionPriority;", "priority", "addAllCaptureRequestOptionsWithPriority", "(Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", _UrlKt.FRAGMENT_ENCODE_SET, "keys", "removeCaptureRequestOptions", "(Ljava/util/List;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", "Landroidx/camera/core/impl/Config;", "config", "insertAllOptions", "(Landroidx/camera/core/impl/Config;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;", "build", "()Landroidx/camera/camera2/impl/Camera2ImplConfig;", "Landroidx/camera/core/impl/MutableOptionsBundle;", "mutableOptionsBundle", "Landroidx/camera/core/impl/MutableOptionsBundle;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCamera2ImplConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2ImplConfig.kt\nandroidx/camera/camera2/impl/Camera2ImplConfig$Builder\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,325:1\n216#2,2:326\n1869#3,2:328\n*S KotlinDebug\n*F\n+ 1 Camera2ImplConfig.kt\nandroidx/camera/camera2/impl/Camera2ImplConfig$Builder\n*L\n203#1:326,2\n214#1:328,2\n*E\n"})
    public static final class Builder implements ExtendableBuilder<Camera2ImplConfig> {
        private final MutableOptionsBundle mutableOptionsBundle = MutableOptionsBundle.create();

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableConfig getMutableConfig() {
            return this.mutableOptionsBundle;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <ValueT> Builder setCaptureRequestOption(CaptureRequest.Key<ValueT> key, ValueT value) {
            this.mutableOptionsBundle.insertOption(Camera2ImplConfigKt.createCaptureRequestOption(key), value);
            return this;
        }

        public final Builder removeCaptureRequestOptions(List<? extends CaptureRequest.Key<?>> keys) {
            Iterator<T> it = keys.iterator();
            while (it.hasNext()) {
                this.mutableOptionsBundle.removeOption(Camera2ImplConfigKt.createCaptureRequestOption((CaptureRequest.Key) it.next()));
            }
            return this;
        }

        public final Builder insertAllOptions(Config config) {
            for (Config.Option<?> option : config.listOptions()) {
                this.mutableOptionsBundle.insertOption(option, config.getOptionPriority(option), config.retrieveOption(option));
            }
            return this;
        }

        public Camera2ImplConfig build() {
            return new Camera2ImplConfig(OptionsBundle.from(this.mutableOptionsBundle));
        }

        public final Builder addAllCaptureRequestOptionsWithPriority(Map<CaptureRequest.Key<?>, ? extends Object> values, Config.OptionPriority priority) {
            for (Map.Entry<CaptureRequest.Key<?>, ? extends Object> entry : values.entrySet()) {
                CaptureRequest.Key<?> key = entry.getKey();
                Object value = entry.getValue();
                this.mutableOptionsBundle.insertOption(Camera2ImplConfigKt.createCaptureRequestOption(key), priority, value);
            }
            return this;
        }
    }

    static {
        Class cls = Long.TYPE;
        STREAM_USE_CASE_OPTION = Config.Option.create("camera2.cameraCaptureSession.streamUseCase", cls);
        STREAM_USE_HINT_OPTION = Config.Option.create("camera2.cameraCaptureSession.streamUseHint", cls);
        CAPTURE_REQUEST_TAG_OPTION = Config.Option.create("camera2.captureRequest.tag", Object.class);
        SESSION_PHYSICAL_CAMERA_ID_OPTION = Config.Option.create("camera2.cameraCaptureSession.physicalCameraId", String.class);
    }
}
