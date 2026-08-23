package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageReaderProxyProvider;
import androidx.camera.core.imagecapture.TakePictureManager;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.IoConfig;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class ImageCaptureConfig implements UseCaseConfig, ImageOutputConfig, IoConfig {
    public static final Config.Option OPTION_BUFFER_FORMAT;
    public static final Config.Option OPTION_CAPTURE_BUNDLE;
    public static final Config.Option OPTION_FLASH_MODE;
    public static final Config.Option OPTION_FLASH_TYPE;
    public static final Config.Option OPTION_IMAGE_CAPTURE_MODE;
    public static final Config.Option OPTION_IMAGE_READER_PROXY_PROVIDER;
    public static final Config.Option OPTION_JPEG_COMPRESSION_QUALITY;
    public static final Config.Option OPTION_MAX_CAPTURE_STAGES;
    public static final Config.Option OPTION_OUTPUT_FORMAT;
    public static final Config.Option OPTION_POSTVIEW_ENABLED;
    public static final Config.Option OPTION_POSTVIEW_RESOLUTION_SELECTOR;
    public static final Config.Option OPTION_SCREEN_FLASH;
    public static final Config.Option OPTION_USE_SOFTWARE_JPEG_ENCODER;
    private final OptionsBundle mConfig;

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public /* synthetic */ boolean containsOption(Config.Option option) {
        return getConfig().containsOption(option);
    }

    @Override // androidx.camera.core.impl.Config
    public /* synthetic */ void findOptions(String str, Config.OptionMatcher optionMatcher) {
        getConfig().findOptions(str, optionMatcher);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ int getAppTargetRotation(int i) {
        return ((Integer) retrieveOption(ImageOutputConfig.OPTION_APP_TARGET_ROTATION, Integer.valueOf(i))).intValue();
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ CaptureConfig.OptionUnpacker getCaptureOptionUnpacker(CaptureConfig.OptionUnpacker optionUnpacker) {
        return UseCaseConfig.CC.$default$getCaptureOptionUnpacker(this, optionUnpacker);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ UseCaseConfigFactory.CaptureType getCaptureType() {
        return UseCaseConfig.CC.$default$getCaptureType(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ int getCustomMaxFrameRate(Size size) {
        return UseCaseConfig.CC.$default$getCustomMaxFrameRate(this, size);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ List getCustomOrderedResolutions(List list) {
        return ImageOutputConfig.CC.$default$getCustomOrderedResolutions(this, list);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ CaptureConfig getDefaultCaptureConfig(CaptureConfig captureConfig) {
        return UseCaseConfig.CC.$default$getDefaultCaptureConfig(this, captureConfig);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ Size getDefaultResolution(Size size) {
        return ImageOutputConfig.CC.$default$getDefaultResolution(this, size);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ SessionConfig getDefaultSessionConfig() {
        return UseCaseConfig.CC.$default$getDefaultSessionConfig(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ SessionConfig getDefaultSessionConfig(SessionConfig sessionConfig) {
        return UseCaseConfig.CC.$default$getDefaultSessionConfig(this, sessionConfig);
    }

    @Override // androidx.camera.core.impl.ImageInputConfig
    public /* synthetic */ DynamicRange getDynamicRange() {
        return ImageInputConfig.CC.$default$getDynamicRange(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ Size getMaxResolution(Size size) {
        return ImageOutputConfig.CC.$default$getMaxResolution(this, size);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ int getMirrorMode(int i) {
        return ((Integer) retrieveOption(ImageOutputConfig.OPTION_MIRROR_MODE, Integer.valueOf(i))).intValue();
    }

    @Override // androidx.camera.core.impl.Config
    public /* synthetic */ Config.OptionPriority getOptionPriority(Config.Option option) {
        return getConfig().getOptionPriority(option);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ int getPreviewStabilizationMode() {
        return ((Integer) retrieveOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, 0)).intValue();
    }

    @Override // androidx.camera.core.impl.Config
    public /* synthetic */ Set getPriorities(Config.Option option) {
        return getConfig().getPriorities(option);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ ResolutionSelector getResolutionSelector() {
        return ImageOutputConfig.CC.$default$getResolutionSelector(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ ResolutionSelector getResolutionSelector(ResolutionSelector resolutionSelector) {
        return ImageOutputConfig.CC.$default$getResolutionSelector(this, resolutionSelector);
    }

    public /* synthetic */ int getSecondaryInputFormat() {
        return ((Integer) retrieveOption(ImageInputConfig.OPTION_SECONDARY_INPUT_FORMAT, 0)).intValue();
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ SessionConfig.OptionUnpacker getSessionOptionUnpacker(SessionConfig.OptionUnpacker optionUnpacker) {
        return UseCaseConfig.CC.$default$getSessionOptionUnpacker(this, optionUnpacker);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ int getSessionType(int i) {
        return ((Integer) retrieveOption(UseCaseConfig.OPTION_SESSION_TYPE, Integer.valueOf(i))).intValue();
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ StreamUseCase getStreamUseCase() {
        return UseCaseConfig.CC.$default$getStreamUseCase(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ List getSupportedResolutions(List list) {
        return ImageOutputConfig.CC.$default$getSupportedResolutions(this, list);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ int getSurfaceOccupancyPriority(int i) {
        return ((Integer) retrieveOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, Integer.valueOf(i))).intValue();
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ TakePictureManager.Provider getTakePictureManagerProvider() {
        return UseCaseConfig.CC.$default$getTakePictureManagerProvider(this);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ int getTargetAspectRatio() {
        return ((Integer) retrieveOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO)).intValue();
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ Range getTargetFrameRate(Range range) {
        return UseCaseConfig.CC.$default$getTargetFrameRate(this, range);
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public /* synthetic */ String getTargetName() {
        return TargetConfig.CC.$default$getTargetName(this);
    }

    @Override // androidx.camera.core.internal.TargetConfig
    public /* synthetic */ String getTargetName(String str) {
        return TargetConfig.CC.$default$getTargetName(this, str);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ Size getTargetResolution(Size size) {
        return ImageOutputConfig.CC.$default$getTargetResolution(this, size);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ int getTargetRotation(int i) {
        return ((Integer) retrieveOption(ImageOutputConfig.OPTION_TARGET_ROTATION, Integer.valueOf(i))).intValue();
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ int getVideoStabilizationMode() {
        return ((Integer) retrieveOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, 0)).intValue();
    }

    @Override // androidx.camera.core.impl.ImageInputConfig
    public /* synthetic */ boolean hasDynamicRange() {
        return containsOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE);
    }

    @Override // androidx.camera.core.impl.ImageOutputConfig
    public /* synthetic */ boolean hasTargetAspectRatio() {
        return containsOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ boolean hasTargetFrameRate() {
        return containsOption(UseCaseConfig.OPTION_TARGET_FRAME_RATE);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ boolean isHighResolutionDisabled(boolean z) {
        return ((Boolean) retrieveOption(UseCaseConfig.OPTION_HIGH_RESOLUTION_DISABLED, Boolean.valueOf(z))).booleanValue();
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ boolean isStrictFrameRateRequired() {
        return UseCaseConfig.CC.$default$isStrictFrameRateRequired(this);
    }

    @Override // androidx.camera.core.impl.UseCaseConfig
    public /* synthetic */ boolean isZslDisabled(boolean z) {
        return ((Boolean) retrieveOption(UseCaseConfig.OPTION_ZSL_DISABLED, Boolean.valueOf(z))).booleanValue();
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public /* synthetic */ Set listOptions() {
        return getConfig().listOptions();
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public /* synthetic */ Object retrieveOption(Config.Option option) {
        return getConfig().retrieveOption(option);
    }

    @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
    public /* synthetic */ Object retrieveOption(Config.Option option, Object obj) {
        return getConfig().retrieveOption(option, obj);
    }

    @Override // androidx.camera.core.impl.Config
    public /* synthetic */ Object retrieveOptionWithPriority(Config.Option option, Config.OptionPriority optionPriority) {
        return getConfig().retrieveOptionWithPriority(option, optionPriority);
    }

    static {
        Class cls = Integer.TYPE;
        OPTION_IMAGE_CAPTURE_MODE = Config.Option.create("camerax.core.imageCapture.captureMode", cls);
        OPTION_FLASH_MODE = Config.Option.create("camerax.core.imageCapture.flashMode", cls);
        OPTION_CAPTURE_BUNDLE = Config.Option.create("camerax.core.imageCapture.captureBundle", CaptureBundle.class);
        OPTION_BUFFER_FORMAT = Config.Option.create("camerax.core.imageCapture.bufferFormat", Integer.class);
        OPTION_OUTPUT_FORMAT = Config.Option.create("camerax.core.imageCapture.outputFormat", Integer.class);
        OPTION_MAX_CAPTURE_STAGES = Config.Option.create("camerax.core.imageCapture.maxCaptureStages", Integer.class);
        OPTION_IMAGE_READER_PROXY_PROVIDER = Config.Option.create("camerax.core.imageCapture.imageReaderProxyProvider", ImageReaderProxyProvider.class);
        OPTION_USE_SOFTWARE_JPEG_ENCODER = Config.Option.create("camerax.core.imageCapture.useSoftwareJpegEncoder", Boolean.TYPE);
        OPTION_FLASH_TYPE = Config.Option.create("camerax.core.imageCapture.flashType", cls);
        OPTION_JPEG_COMPRESSION_QUALITY = Config.Option.create("camerax.core.imageCapture.jpegCompressionQuality", cls);
        OPTION_SCREEN_FLASH = Config.Option.create("camerax.core.imageCapture.screenFlash", ImageCapture.ScreenFlash.class);
        OPTION_POSTVIEW_RESOLUTION_SELECTOR = Config.Option.create("camerax.core.useCase.postviewResolutionSelector", ResolutionSelector.class);
        OPTION_POSTVIEW_ENABLED = Config.Option.create("camerax.core.useCase.isPostviewEnabled", Boolean.class);
    }

    public ImageCaptureConfig(OptionsBundle optionsBundle) {
        this.mConfig = optionsBundle;
    }

    @Override // androidx.camera.core.impl.ReadableConfig
    public Config getConfig() {
        return this.mConfig;
    }

    public boolean hasCaptureMode() {
        return containsOption(OPTION_IMAGE_CAPTURE_MODE);
    }

    public int getCaptureMode() {
        return ((Integer) retrieveOption(OPTION_IMAGE_CAPTURE_MODE)).intValue();
    }

    public int getFlashMode(int i) {
        return ((Integer) retrieveOption(OPTION_FLASH_MODE, Integer.valueOf(i))).intValue();
    }

    @Override // androidx.camera.core.impl.ImageInputConfig
    public int getInputFormat() {
        return ((Integer) retrieveOption(ImageInputConfig.OPTION_INPUT_FORMAT)).intValue();
    }

    public ImageReaderProxyProvider getImageReaderProxyProvider() {
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(retrieveOption(OPTION_IMAGE_READER_PROXY_PROVIDER, null));
        return null;
    }

    public int getFlashType(int i) {
        return ((Integer) retrieveOption(OPTION_FLASH_TYPE, Integer.valueOf(i))).intValue();
    }

    public ImageCapture.ScreenFlash getScreenFlash() {
        return (ImageCapture.ScreenFlash) retrieveOption(OPTION_SCREEN_FLASH, null);
    }

    public Executor getIoExecutor(Executor executor) {
        return (Executor) retrieveOption(IoConfig.OPTION_IO_EXECUTOR, executor);
    }
}
