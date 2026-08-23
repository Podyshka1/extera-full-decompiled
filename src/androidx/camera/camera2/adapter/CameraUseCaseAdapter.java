package androidx.camera.camera2.adapter;

import android.app.Application;
import android.content.Context;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.util.Log;
import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.PreviewUnderExposureQuirk;
import androidx.camera.camera2.compat.workaround.ImageCapturePixelHDRPlusKt;
import androidx.camera.camera2.compat.workaround.PreviewPixelHDRnetKt;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import java.util.Iterator;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0004\u000e\u000f\u0010\u0011B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0017R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/camera/camera2/adapter/CameraUseCaseAdapter;", "Landroidx/camera/core/impl/UseCaseConfigFactory;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "displayInfoManager", "Landroidx/camera/camera2/impl/DisplayInfoManager;", "getConfig", "Landroidx/camera/core/impl/Config;", "captureType", "Landroidx/camera/core/impl/UseCaseConfigFactory$CaptureType;", "captureMode", _UrlKt.FRAGMENT_ENCODE_SET, "DefaultCaptureOptionsUnpacker", "ImageCaptureOptionUnpacker", "DefaultSessionOptionsUnpacker", "CaptureCallbackContainer", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraUseCaseAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraUseCaseAdapter.kt\nandroidx/camera/camera2/adapter/CameraUseCaseAdapter\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,289:1\n102#2,4:290\n85#2,4:294\n85#2,4:298\n*S KotlinDebug\n*F\n+ 1 CameraUseCaseAdapter.kt\nandroidx/camera/camera2/adapter/CameraUseCaseAdapter\n*L\n60#1:290,4\n66#1:294,4\n76#1:298,4\n*E\n"})
public final class CameraUseCaseAdapter implements UseCaseConfigFactory {
    private final DisplayInfoManager displayInfoManager;

    @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[UseCaseConfigFactory.CaptureType.values().length];
            try {
                iArr[UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.PREVIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.STREAM_SHARING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.METERING_REPEATING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.IMAGE_ANALYSIS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[UseCaseConfigFactory.CaptureType.VIDEO_CAPTURE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CameraUseCaseAdapter(Context context) {
        this.displayInfoManager = DisplayInfoManager.INSTANCE.getInstance(context);
        if (context instanceof Application) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isInfoEnabled("CXCP")) {
                Log.i(Camera2Logger.TRUNCATED_TAG, "The provided context (" + context + ") is application scoped and will be used to infer the default display for computing the default preview size, orientation, and default aspect ratio for UseCase outputs.");
            }
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Created UseCaseConfigurationMap");
        }
    }

    @Override // androidx.camera.core.impl.UseCaseConfigFactory
    public Config getConfig(UseCaseConfigFactory.CaptureType captureType, int captureMode) {
        DefaultCaptureOptionsUnpacker instance;
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Creating config for " + captureType);
        }
        MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
        SessionConfig.Builder builder = new SessionConfig.Builder();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        switch (iArr[captureType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                builder.setTemplateType(1);
                break;
            case 6:
                builder.setTemplateType(DeviceQuirks.INSTANCE.get(PreviewUnderExposureQuirk.class) != null ? 1 : 3);
                break;
            default:
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                return null;
        }
        mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_DEFAULT_SESSION_CONFIG, builder.build());
        CaptureConfig.Builder builder2 = new CaptureConfig.Builder();
        switch (iArr[captureType.ordinal()]) {
            case 1:
                builder2.setTemplateType(captureMode == 2 ? 5 : 2);
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                builder2.setTemplateType(1);
                break;
            case 6:
                builder2.setTemplateType(DeviceQuirks.INSTANCE.get(PreviewUnderExposureQuirk.class) != null ? 1 : 3);
                break;
            default:
                LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m753m();
                return null;
        }
        mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_DEFAULT_CAPTURE_CONFIG, builder2.build());
        Config.Option<CaptureConfig.OptionUnpacker> option = UseCaseConfig.OPTION_CAPTURE_CONFIG_UNPACKER;
        if (captureType == UseCaseConfigFactory.CaptureType.IMAGE_CAPTURE) {
            instance = ImageCaptureOptionUnpacker.INSTANCE.getINSTANCE();
        } else {
            instance = DefaultCaptureOptionsUnpacker.INSTANCE.getINSTANCE();
        }
        mutableOptionsBundleCreate.insertOption(option, instance);
        mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, DefaultSessionOptionsUnpacker.INSTANCE);
        if (captureType == UseCaseConfigFactory.CaptureType.PREVIEW) {
            mutableOptionsBundleCreate.insertOption(ImageOutputConfig.OPTION_MAX_RESOLUTION, this.displayInfoManager.getPreviewSize());
        }
        mutableOptionsBundleCreate.insertOption(ImageOutputConfig.OPTION_TARGET_ROTATION, Integer.valueOf(DisplayInfoManager.getMaxSizeDisplay$default(this.displayInfoManager, false, 1, null).getRotation()));
        return OptionsBundle.from(mutableOptionsBundleCreate);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\b\u001a\u00020\tH\u0017¨\u0006\u000b"}, d2 = {"Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;", "Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;", "<init>", "()V", "unpack", _UrlKt.FRAGMENT_ENCODE_SET, "config", "Landroidx/camera/core/impl/UseCaseConfig;", "builder", "Landroidx/camera/core/impl/CaptureConfig$Builder;", "Companion", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraUseCaseAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraUseCaseAdapter.kt\nandroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,289:1\n1869#2,2:290\n*S KotlinDebug\n*F\n+ 1 CameraUseCaseAdapter.kt\nandroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker\n*L\n165#1:290,2\n*E\n"})
    public static class DefaultCaptureOptionsUnpacker implements CaptureConfig.OptionUnpacker {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final DefaultCaptureOptionsUnpacker INSTANCE = new DefaultCaptureOptionsUnpacker();

        @Override // androidx.camera.core.impl.CaptureConfig.OptionUnpacker
        public void unpack(UseCaseConfig<?> config, CaptureConfig.Builder builder) {
            CaptureConfig defaultCaptureConfig = config.getDefaultCaptureConfig(null);
            Config configEmptyBundle = OptionsBundle.emptyBundle();
            int templateType = CaptureConfig.defaultEmptyCaptureConfig().getTemplateType();
            if (defaultCaptureConfig != null) {
                templateType = defaultCaptureConfig.getTemplateType();
                builder.addAllCameraCaptureCallbacks(defaultCaptureConfig.getCameraCaptureCallbacks());
                configEmptyBundle = defaultCaptureConfig.getImplementationOptions();
                builder.setUseRepeatingSurface(defaultCaptureConfig.isUseRepeatingSurface());
                builder.addAllTags(defaultCaptureConfig.getTagBundle());
                Iterator<T> it = defaultCaptureConfig.getSurfaces().iterator();
                while (it.hasNext()) {
                    builder.addSurface((DeferrableSurface) it.next());
                }
            }
            builder.setImplementationOptions(configEmptyBundle);
            Camera2ImplConfig camera2ImplConfig = new Camera2ImplConfig(config);
            builder.setTemplateType(camera2ImplConfig.getCaptureRequestTemplate(templateType));
            CameraCaptureSession.CaptureCallback sessionCaptureCallback$default = Camera2ImplConfig.getSessionCaptureCallback$default(camera2ImplConfig, null, 1, null);
            if (sessionCaptureCallback$default != null) {
                builder.addCameraCaptureCallback(CaptureCallbackContainer.INSTANCE.create(sessionCaptureCallback$default));
            }
            builder.addImplementationOptions(camera2ImplConfig.getCaptureRequestOptions());
        }

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "INSTANCE", "Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;", "getINSTANCE", "()Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final DefaultCaptureOptionsUnpacker getINSTANCE() {
                return DefaultCaptureOptionsUnpacker.INSTANCE;
            }
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\u000b"}, d2 = {"Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;", "Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultCaptureOptionsUnpacker;", "<init>", "()V", "unpack", _UrlKt.FRAGMENT_ENCODE_SET, "config", "Landroidx/camera/core/impl/UseCaseConfig;", "builder", "Landroidx/camera/core/impl/CaptureConfig$Builder;", "Companion", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraUseCaseAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraUseCaseAdapter.kt\nandroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,289:1\n1#2:290\n*E\n"})
    public static final class ImageCaptureOptionUnpacker extends DefaultCaptureOptionsUnpacker {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final ImageCaptureOptionUnpacker INSTANCE = new ImageCaptureOptionUnpacker();

        @Override // androidx.camera.camera2.adapter.CameraUseCaseAdapter.DefaultCaptureOptionsUnpacker, androidx.camera.core.impl.CaptureConfig.OptionUnpacker
        public void unpack(UseCaseConfig<?> config, CaptureConfig.Builder builder) {
            super.unpack(config, builder);
            if (!(config instanceof ImageCaptureConfig)) {
                f$$ExternalSyntheticBUOutline1.m178m("config is not ImageCaptureConfig");
                return;
            }
            Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
            ImageCapturePixelHDRPlusKt.toggleHDRPlus(builder2, (ImageCaptureConfig) config);
            builder.addImplementationOptions(builder2.build());
        }

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "INSTANCE", "Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;", "getINSTANCE", "()Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$ImageCaptureOptionUnpacker;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final ImageCaptureOptionUnpacker getINSTANCE() {
                return ImageCaptureOptionUnpacker.INSTANCE;
            }
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017¨\u0006\f"}, d2 = {"Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker;", "Landroidx/camera/core/impl/SessionConfig$OptionUnpacker;", "<init>", "()V", "unpack", _UrlKt.FRAGMENT_ENCODE_SET, "resolution", "Landroid/util/Size;", "config", "Landroidx/camera/core/impl/UseCaseConfig;", "builder", "Landroidx/camera/core/impl/SessionConfig$Builder;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraUseCaseAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraUseCaseAdapter.kt\nandroidx/camera/camera2/adapter/CameraUseCaseAdapter$DefaultSessionOptionsUnpacker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,289:1\n1#2:290\n*E\n"})
    public static final class DefaultSessionOptionsUnpacker implements SessionConfig.OptionUnpacker {
        public static final DefaultSessionOptionsUnpacker INSTANCE = new DefaultSessionOptionsUnpacker();

        private DefaultSessionOptionsUnpacker() {
        }

        @Override // androidx.camera.core.impl.SessionConfig.OptionUnpacker
        public void unpack(Size resolution, UseCaseConfig<?> config, SessionConfig.Builder builder) {
            SessionConfig defaultSessionConfig = config.getDefaultSessionConfig(null);
            Config configEmptyBundle = OptionsBundle.emptyBundle();
            int templateType = SessionConfig.defaultEmptySessionConfig().getTemplateType();
            if (defaultSessionConfig != null) {
                templateType = defaultSessionConfig.getTemplateType();
                builder.addAllDeviceStateCallbacks(defaultSessionConfig.getDeviceStateCallbacks());
                builder.addAllSessionStateCallbacks(defaultSessionConfig.getSessionStateCallbacks());
                builder.addAllRepeatingCameraCaptureCallbacks(defaultSessionConfig.getRepeatingCameraCaptureCallbacks());
                configEmptyBundle = defaultSessionConfig.getImplementationOptions();
            }
            builder.setImplementationOptions(configEmptyBundle);
            if (config instanceof PreviewConfig) {
                PreviewPixelHDRnetKt.setupHDRnet(builder, resolution);
            }
            Camera2ImplConfig camera2ImplConfig = new Camera2ImplConfig(config);
            builder.setTemplateType(camera2ImplConfig.getCaptureRequestTemplate(templateType));
            CameraDevice.StateCallback deviceStateCallback$default = Camera2ImplConfig.getDeviceStateCallback$default(camera2ImplConfig, null, 1, null);
            if (deviceStateCallback$default != null) {
                builder.addDeviceStateCallback(deviceStateCallback$default);
            }
            CameraCaptureSession.StateCallback sessionStateCallback$default = Camera2ImplConfig.getSessionStateCallback$default(camera2ImplConfig, null, 1, null);
            if (sessionStateCallback$default != null) {
                builder.addSessionStateCallback(sessionStateCallback$default);
            }
            CameraCaptureSession.CaptureCallback sessionCaptureCallback$default = Camera2ImplConfig.getSessionCaptureCallback$default(camera2ImplConfig, null, 1, null);
            if (sessionCaptureCallback$default != null) {
                builder.addCameraCaptureCallback(CaptureCallbackContainer.INSTANCE.create(sessionCaptureCallback$default));
            }
            builder.setPreviewStabilization(config.getPreviewStabilizationMode());
            builder.setVideoStabilization(config.getVideoStabilizationMode());
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            String physicalCameraId$default = Camera2ImplConfig.getPhysicalCameraId$default(camera2ImplConfig, null, 1, null);
            if (physicalCameraId$default != null) {
                mutableOptionsBundleCreate.insertOption(Camera2ImplConfig.SESSION_PHYSICAL_CAMERA_ID_OPTION, physicalCameraId$default);
            }
            Long streamUseCase$default = Camera2ImplConfig.getStreamUseCase$default(camera2ImplConfig, null, 1, null);
            if (streamUseCase$default != null) {
                mutableOptionsBundleCreate.insertOption(Camera2ImplConfig.STREAM_USE_CASE_OPTION, Long.valueOf(streamUseCase$default.longValue()));
            }
            builder.addImplementationOptions(mutableOptionsBundleCreate);
            builder.addImplementationOptions(camera2ImplConfig.getCaptureRequestOptions());
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;", "Landroidx/camera/core/impl/CameraCaptureCallback;", "captureCallback", "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;", "<init>", "(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V", "getCaptureCallback", "()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;", "Companion", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CaptureCallbackContainer extends CameraCaptureCallback {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final CameraCaptureSession.CaptureCallback captureCallback;

        public /* synthetic */ CaptureCallbackContainer(CameraCaptureSession.CaptureCallback captureCallback, DefaultConstructorMarker defaultConstructorMarker) {
            this(captureCallback);
        }

        private CaptureCallbackContainer(CameraCaptureSession.CaptureCallback captureCallback) {
            this.captureCallback = captureCallback;
        }

        public final CameraCaptureSession.CaptureCallback getCaptureCallback() {
            return this.captureCallback;
        }

        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "create", "Landroidx/camera/camera2/adapter/CameraUseCaseAdapter$CaptureCallbackContainer;", "captureCallback", "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final CaptureCallbackContainer create(CameraCaptureSession.CaptureCallback captureCallback) {
                return new CaptureCallbackContainer(captureCallback, null);
            }
        }
    }
}
