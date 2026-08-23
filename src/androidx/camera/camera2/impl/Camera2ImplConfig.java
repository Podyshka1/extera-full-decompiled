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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Camera2ImplConfig extends CaptureRequestOptions {
    public static final Config.Option CAPTURE_REQUEST_TAG_OPTION;
    public static final Companion Companion = new Companion(null);
    public static final Config.Option DEVICE_STATE_CALLBACK_OPTION;
    public static final Config.Option SESSION_CAPTURE_CALLBACK_OPTION;
    public static final Config.Option SESSION_PHYSICAL_CAMERA_ID_OPTION;
    public static final Config.Option SESSION_STATE_CALLBACK_OPTION;
    public static final Config.Option STREAM_USE_CASE_OPTION;
    public static final Config.Option STREAM_USE_HINT_OPTION;
    public static final Config.Option TEMPLATE_TYPE_OPTION;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Camera2ImplConfig(Config config) {
        super(config);
        Intrinsics.checkNotNullParameter(config, "config");
    }

    public final CaptureRequestOptions getCaptureRequestOptions() {
        return CaptureRequestOptions.Builder.Companion.from(getConfig()).build();
    }

    public final int getCaptureRequestTemplate(int i) {
        Object objRetrieveOption = getConfig().retrieveOption(TEMPLATE_TYPE_OPTION, Integer.valueOf(i));
        Intrinsics.checkNotNull(objRetrieveOption);
        return ((Number) objRetrieveOption).intValue();
    }

    public static /* synthetic */ Long getStreamUseCase$default(Camera2ImplConfig camera2ImplConfig, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            l = null;
        }
        return camera2ImplConfig.getStreamUseCase(l);
    }

    public final Long getStreamUseCase(Long l) {
        return (Long) getConfig().retrieveOption(STREAM_USE_CASE_OPTION, l);
    }

    public static /* synthetic */ CameraDevice.StateCallback getDeviceStateCallback$default(Camera2ImplConfig camera2ImplConfig, CameraDevice.StateCallback stateCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            stateCallback = null;
        }
        return camera2ImplConfig.getDeviceStateCallback(stateCallback);
    }

    public final CameraDevice.StateCallback getDeviceStateCallback(CameraDevice.StateCallback stateCallback) {
        return (CameraDevice.StateCallback) getConfig().retrieveOption(DEVICE_STATE_CALLBACK_OPTION, stateCallback);
    }

    public static /* synthetic */ CameraCaptureSession.StateCallback getSessionStateCallback$default(Camera2ImplConfig camera2ImplConfig, CameraCaptureSession.StateCallback stateCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            stateCallback = null;
        }
        return camera2ImplConfig.getSessionStateCallback(stateCallback);
    }

    public final CameraCaptureSession.StateCallback getSessionStateCallback(CameraCaptureSession.StateCallback stateCallback) {
        return (CameraCaptureSession.StateCallback) getConfig().retrieveOption(SESSION_STATE_CALLBACK_OPTION, stateCallback);
    }

    public static /* synthetic */ CameraCaptureSession.CaptureCallback getSessionCaptureCallback$default(Camera2ImplConfig camera2ImplConfig, CameraCaptureSession.CaptureCallback captureCallback, int i, Object obj) {
        if ((i & 1) != 0) {
            captureCallback = null;
        }
        return camera2ImplConfig.getSessionCaptureCallback(captureCallback);
    }

    public final CameraCaptureSession.CaptureCallback getSessionCaptureCallback(CameraCaptureSession.CaptureCallback captureCallback) {
        return (CameraCaptureSession.CaptureCallback) getConfig().retrieveOption(SESSION_CAPTURE_CALLBACK_OPTION, captureCallback);
    }

    public static /* synthetic */ String getPhysicalCameraId$default(Camera2ImplConfig camera2ImplConfig, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        return camera2ImplConfig.getPhysicalCameraId(str);
    }

    public final String getPhysicalCameraId(String str) {
        return (String) getConfig().retrieveOption(SESSION_PHYSICAL_CAMERA_ID_OPTION, str);
    }

    public static final class Builder implements ExtendableBuilder {
        private final MutableOptionsBundle mutableOptionsBundle;

        public Builder() {
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            Intrinsics.checkNotNullExpressionValue(mutableOptionsBundleCreate, "create(...)");
            this.mutableOptionsBundle = mutableOptionsBundleCreate;
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableConfig getMutableConfig() {
            return this.mutableOptionsBundle;
        }

        public final Builder setCaptureRequestOption(CaptureRequest.Key key, Object obj) {
            Intrinsics.checkNotNullParameter(key, "key");
            this.mutableOptionsBundle.insertOption(Camera2ImplConfigKt.createCaptureRequestOption(key), obj);
            return this;
        }

        public final Builder removeCaptureRequestOptions(List keys) {
            Intrinsics.checkNotNullParameter(keys, "keys");
            Iterator it = keys.iterator();
            while (it.hasNext()) {
                this.mutableOptionsBundle.removeOption(Camera2ImplConfigKt.createCaptureRequestOption((CaptureRequest.Key) it.next()));
            }
            return this;
        }

        public final Builder addAllCaptureRequestOptionsWithPriority(Map values, Config.OptionPriority priority) {
            Intrinsics.checkNotNullParameter(values, "values");
            Intrinsics.checkNotNullParameter(priority, "priority");
            for (Map.Entry entry : values.entrySet()) {
                CaptureRequest.Key key = (CaptureRequest.Key) entry.getKey();
                Object value = entry.getValue();
                this.mutableOptionsBundle.insertOption(Camera2ImplConfigKt.createCaptureRequestOption(key), priority, value);
            }
            return this;
        }

        public final Builder insertAllOptions(Config config) {
            Intrinsics.checkNotNullParameter(config, "config");
            for (Config.Option option : config.listOptions()) {
                Intrinsics.checkNotNull(option, "null cannot be cast to non-null type androidx.camera.core.impl.Config.Option<kotlin.Any>");
                this.mutableOptionsBundle.insertOption(option, config.getOptionPriority(option), config.retrieveOption(option));
            }
            return this;
        }

        public Camera2ImplConfig build() {
            OptionsBundle optionsBundleFrom = OptionsBundle.from(this.mutableOptionsBundle);
            Intrinsics.checkNotNullExpressionValue(optionsBundleFrom, "from(...)");
            return new Camera2ImplConfig(optionsBundleFrom);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        Class cls = Integer.TYPE;
        Intrinsics.checkNotNull(cls);
        Config.Option optionCreate = Config.Option.create("camera2.captureRequest.templateType", cls);
        Intrinsics.checkNotNullExpressionValue(optionCreate, "create(...)");
        TEMPLATE_TYPE_OPTION = optionCreate;
        Config.Option optionCreate2 = Config.Option.create("camera2.cameraDevice.stateCallback", CameraDevice.StateCallback.class);
        Intrinsics.checkNotNullExpressionValue(optionCreate2, "create(...)");
        DEVICE_STATE_CALLBACK_OPTION = optionCreate2;
        Config.Option optionCreate3 = Config.Option.create("camera2.cameraCaptureSession.stateCallback", CameraCaptureSession.StateCallback.class);
        Intrinsics.checkNotNullExpressionValue(optionCreate3, "create(...)");
        SESSION_STATE_CALLBACK_OPTION = optionCreate3;
        Config.Option optionCreate4 = Config.Option.create("camera2.cameraCaptureSession.captureCallback", CameraCaptureSession.CaptureCallback.class);
        Intrinsics.checkNotNullExpressionValue(optionCreate4, "create(...)");
        SESSION_CAPTURE_CALLBACK_OPTION = optionCreate4;
        Class cls2 = Long.TYPE;
        Intrinsics.checkNotNull(cls2);
        Config.Option optionCreate5 = Config.Option.create("camera2.cameraCaptureSession.streamUseCase", cls2);
        Intrinsics.checkNotNullExpressionValue(optionCreate5, "create(...)");
        STREAM_USE_CASE_OPTION = optionCreate5;
        Intrinsics.checkNotNull(cls2);
        Config.Option optionCreate6 = Config.Option.create("camera2.cameraCaptureSession.streamUseHint", cls2);
        Intrinsics.checkNotNullExpressionValue(optionCreate6, "create(...)");
        STREAM_USE_HINT_OPTION = optionCreate6;
        Config.Option optionCreate7 = Config.Option.create("camera2.captureRequest.tag", Object.class);
        Intrinsics.checkNotNullExpressionValue(optionCreate7, "create(...)");
        CAPTURE_REQUEST_TAG_OPTION = optionCreate7;
        Config.Option optionCreate8 = Config.Option.create("camera2.cameraCaptureSession.physicalCameraId", String.class);
        Intrinsics.checkNotNullExpressionValue(optionCreate8, "create(...)");
        SESSION_PHYSICAL_CAMERA_ID_OPTION = optionCreate8;
    }
}
