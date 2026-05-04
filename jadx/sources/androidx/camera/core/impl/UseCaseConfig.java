package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.ExtendableBuilder;
import androidx.camera.core.imagecapture.ImageCaptureControl;
import androidx.camera.core.imagecapture.TakePictureManager;
import androidx.camera.core.imagecapture.TakePictureManagerImpl;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.TargetConfig;
import java.util.Map;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public interface UseCaseConfig extends TargetConfig, ImageInputConfig {
    public static final Config.Option OPTION_CAPTURE_TYPE;
    public static final Config.Option OPTION_HIGH_RESOLUTION_DISABLED;
    public static final Config.Option OPTION_IS_STRICT_FRAME_RATE_REQUIRED;
    public static final Config.Option OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT;
    public static final Config.Option OPTION_PREVIEW_STABILIZATION_MODE;
    public static final Config.Option OPTION_RESOLUTION_TO_MAX_FRAME_RATES;
    public static final Config.Option OPTION_SESSION_TYPE;
    public static final Config.Option OPTION_STREAM_USE_CASE;
    public static final Config.Option OPTION_SURFACE_OCCUPANCY_PRIORITY;
    public static final Config.Option OPTION_TAKE_PICTURE_MANAGER_PROVIDER;
    public static final Config.Option OPTION_TARGET_FRAME_RATE;
    public static final Config.Option OPTION_VIDEO_STABILIZATION_MODE;
    public static final Config.Option OPTION_ZSL_DISABLED;
    public static final Config.Option OPTION_DEFAULT_SESSION_CONFIG = Config.Option.create("camerax.core.useCase.defaultSessionConfig", SessionConfig.class);
    public static final Config.Option OPTION_DEFAULT_CAPTURE_CONFIG = Config.Option.create("camerax.core.useCase.defaultCaptureConfig", CaptureConfig.class);
    public static final Config.Option OPTION_SESSION_CONFIG_UNPACKER = Config.Option.create("camerax.core.useCase.sessionConfigUnpacker", SessionConfig.OptionUnpacker.class);
    public static final Config.Option OPTION_CAPTURE_CONFIG_UNPACKER = Config.Option.create("camerax.core.useCase.captureConfigUnpacker", CaptureConfig.OptionUnpacker.class);

    public interface Builder extends ExtendableBuilder {
        UseCaseConfig getUseCaseConfig();
    }

    CaptureConfig.OptionUnpacker getCaptureOptionUnpacker(CaptureConfig.OptionUnpacker optionUnpacker);

    UseCaseConfigFactory.CaptureType getCaptureType();

    int getCustomMaxFrameRate(Size size);

    CaptureConfig getDefaultCaptureConfig(CaptureConfig captureConfig);

    SessionConfig getDefaultSessionConfig();

    SessionConfig getDefaultSessionConfig(SessionConfig sessionConfig);

    int getPreviewStabilizationMode();

    SessionConfig.OptionUnpacker getSessionOptionUnpacker(SessionConfig.OptionUnpacker optionUnpacker);

    int getSessionType(int i);

    StreamUseCase getStreamUseCase();

    int getSurfaceOccupancyPriority(int i);

    TakePictureManager.Provider getTakePictureManagerProvider();

    Range getTargetFrameRate(Range range);

    int getVideoStabilizationMode();

    boolean hasTargetFrameRate();

    boolean isHighResolutionDisabled(boolean z);

    boolean isStrictFrameRateRequired();

    boolean isZslDisabled(boolean z);

    static {
        Class cls = Integer.TYPE;
        OPTION_SURFACE_OCCUPANCY_PRIORITY = Config.Option.create("camerax.core.useCase.surfaceOccupancyPriority", cls);
        OPTION_SESSION_TYPE = Config.Option.create("camerax.core.useCase.sessionType", cls);
        OPTION_TARGET_FRAME_RATE = Config.Option.create("camerax.core.useCase.targetFrameRate", Range.class);
        OPTION_IS_STRICT_FRAME_RATE_REQUIRED = Config.Option.create("camerax.core.useCase.isStrictFrameRateRequired", Boolean.class);
        OPTION_RESOLUTION_TO_MAX_FRAME_RATES = Config.Option.create("camerax.core.useCase.resolutionToMaxFrameRate", Map.class);
        Class cls2 = Boolean.TYPE;
        OPTION_ZSL_DISABLED = Config.Option.create("camerax.core.useCase.zslDisabled", cls2);
        OPTION_HIGH_RESOLUTION_DISABLED = Config.Option.create("camerax.core.useCase.highResolutionDisabled", cls2);
        OPTION_CAPTURE_TYPE = Config.Option.create("camerax.core.useCase.captureType", UseCaseConfigFactory.CaptureType.class);
        OPTION_PREVIEW_STABILIZATION_MODE = Config.Option.create("camerax.core.useCase.previewStabilizationMode", cls);
        OPTION_VIDEO_STABILIZATION_MODE = Config.Option.create("camerax.core.useCase.videoStabilizationMode", cls);
        OPTION_IS_VIDEO_QUALITY_SELECTOR_DEFAULT = Config.Option.create("camerax.core.useCase.isVideoQualitySelectorDefault", Boolean.class);
        OPTION_TAKE_PICTURE_MANAGER_PROVIDER = Config.Option.create("camerax.core.useCase.takePictureManagerProvider", TakePictureManager.Provider.class);
        OPTION_STREAM_USE_CASE = Config.Option.create("camerax.core.useCase.streamUseCase", StreamUseCase.class);
    }

    /* JADX INFO: renamed from: androidx.camera.core.impl.UseCaseConfig$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static SessionConfig $default$getDefaultSessionConfig(UseCaseConfig useCaseConfig, SessionConfig sessionConfig) {
            return (SessionConfig) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_DEFAULT_SESSION_CONFIG, sessionConfig);
        }

        public static SessionConfig $default$getDefaultSessionConfig(UseCaseConfig useCaseConfig) {
            return (SessionConfig) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_DEFAULT_SESSION_CONFIG);
        }

        public static CaptureConfig $default$getDefaultCaptureConfig(UseCaseConfig useCaseConfig, CaptureConfig captureConfig) {
            return (CaptureConfig) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_DEFAULT_CAPTURE_CONFIG, captureConfig);
        }

        public static SessionConfig.OptionUnpacker $default$getSessionOptionUnpacker(UseCaseConfig useCaseConfig, SessionConfig.OptionUnpacker optionUnpacker) {
            return (SessionConfig.OptionUnpacker) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, optionUnpacker);
        }

        public static CaptureConfig.OptionUnpacker $default$getCaptureOptionUnpacker(UseCaseConfig useCaseConfig, CaptureConfig.OptionUnpacker optionUnpacker) {
            return (CaptureConfig.OptionUnpacker) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_CAPTURE_CONFIG_UNPACKER, optionUnpacker);
        }

        public static Range $default$getTargetFrameRate(UseCaseConfig useCaseConfig, Range range) {
            return (Range) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_TARGET_FRAME_RATE, range);
        }

        public static boolean $default$isStrictFrameRateRequired(UseCaseConfig useCaseConfig) {
            Boolean bool = (Boolean) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_IS_STRICT_FRAME_RATE_REQUIRED, Boolean.FALSE);
            Objects.requireNonNull(bool);
            return bool.booleanValue();
        }

        public static int $default$getCustomMaxFrameRate(UseCaseConfig useCaseConfig, Size size) {
            Map map = (Map) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_RESOLUTION_TO_MAX_FRAME_RATES, null);
            if (map == null || !map.containsKey(size)) {
                return Integer.MAX_VALUE;
            }
            Integer num = (Integer) map.get(size);
            Objects.requireNonNull(num);
            return num.intValue();
        }

        public static UseCaseConfigFactory.CaptureType $default$getCaptureType(UseCaseConfig useCaseConfig) {
            return (UseCaseConfigFactory.CaptureType) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_CAPTURE_TYPE);
        }

        public static TakePictureManager.Provider $default$getTakePictureManagerProvider(final UseCaseConfig useCaseConfig) {
            TakePictureManager.Provider provider = (TakePictureManager.Provider) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_TAKE_PICTURE_MANAGER_PROVIDER, new TakePictureManager.Provider() { // from class: androidx.camera.core.impl.UseCaseConfig.1
                @Override // androidx.camera.core.imagecapture.TakePictureManager.Provider
                public TakePictureManager newInstance(ImageCaptureControl imageCaptureControl) {
                    return new TakePictureManagerImpl(imageCaptureControl);
                }
            });
            Objects.requireNonNull(provider);
            return provider;
        }

        public static StreamUseCase $default$getStreamUseCase(UseCaseConfig useCaseConfig) {
            StreamUseCase streamUseCase = (StreamUseCase) useCaseConfig.retrieveOption(UseCaseConfig.OPTION_STREAM_USE_CASE, StreamUseCase.DEFAULT);
            Objects.requireNonNull(streamUseCase);
            return streamUseCase;
        }
    }
}
