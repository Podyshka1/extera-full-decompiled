package androidx.camera.camera2.impl;

import android.graphics.SurfaceTexture;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.UseCase;
import androidx.camera.core.imagecapture.TakePictureManager;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.StreamUseCase;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.TargetConfig;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class MeteringRepeating extends UseCase {
    private final CameraProperties cameraProperties;
    private SessionConfig.CloseableErrorListener closeableErrorListener;
    private DeferrableSurface deferrableSurface;
    private final Object deferrableSurfaceLock;
    private final DisplayInfoManager displayInfoManager;
    private final Size meteringSurfaceSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeteringRepeating(CameraProperties cameraProperties, MeteringRepeatingConfig config, DisplayInfoManager displayInfoManager) {
        super(config);
        Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(displayInfoManager, "displayInfoManager");
        this.cameraProperties = cameraProperties;
        this.displayInfoManager = displayInfoManager;
        this.meteringSurfaceSize = MeteringRepeatingKt.getProperPreviewSize(cameraProperties, displayInfoManager);
        this.deferrableSurfaceLock = new Object();
    }

    @Override // androidx.camera.core.UseCase
    public MeteringRepeatingConfig getDefaultConfig(boolean z, UseCaseConfigFactory factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        return new Builder(this.cameraProperties, this.displayInfoManager).getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    public Builder getUseCaseConfigBuilder(Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return new Builder(this.cameraProperties, this.displayInfoManager);
    }

    @Override // androidx.camera.core.UseCase
    protected StreamSpec onSuggestedStreamSpecUpdated(StreamSpec primaryStreamSpec, StreamSpec streamSpec) {
        Intrinsics.checkNotNullParameter(primaryStreamSpec, "primaryStreamSpec");
        updateSessionConfig(CollectionsKt.listOf(createPipeline(this.meteringSurfaceSize).build()));
        StreamSpec streamSpecBuild = primaryStreamSpec.toBuilder().setResolution(this.meteringSurfaceSize).build();
        Intrinsics.checkNotNullExpressionValue(streamSpecBuild, "build(...)");
        return streamSpecBuild;
    }

    @Override // androidx.camera.core.UseCase
    public void onUnbind() {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.closeableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        this.closeableErrorListener = null;
        synchronized (this.deferrableSurfaceLock) {
            try {
                DeferrableSurface deferrableSurface = this.deferrableSurface;
                if (deferrableSurface != null) {
                    deferrableSurface.close();
                }
                this.deferrableSurface = null;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setupSession() {
        updateSuggestedStreamSpec(StreamSpec.builder(MeteringRepeatingKt.DEFAULT_PREVIEW_SIZE).build(), null);
    }

    private final SessionConfig.Builder createPipeline(final Size size) {
        DeferrableSurface deferrableSurfaceCreateAndManageDeferrableSurface;
        synchronized (this.deferrableSurfaceLock) {
            deferrableSurfaceCreateAndManageDeferrableSurface = createAndManageDeferrableSurface(size);
        }
        SessionConfig.CloseableErrorListener closeableErrorListener = this.closeableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new SessionConfig.ErrorListener() { // from class: androidx.camera.camera2.impl.MeteringRepeating$$ExternalSyntheticLambda0
            @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
            public final void onError(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
                MeteringRepeating.createPipeline$lambda$1(this.f$0, size, sessionConfig, sessionError);
            }
        });
        this.closeableErrorListener = closeableErrorListener2;
        SessionConfig.Builder builderCreateFrom = SessionConfig.Builder.createFrom(new MeteringRepeatingConfig(), size);
        Intrinsics.checkNotNullExpressionValue(builderCreateFrom, "createFrom(...)");
        builderCreateFrom.setTemplateType(1);
        builderCreateFrom.addSurface(deferrableSurfaceCreateAndManageDeferrableSurface);
        builderCreateFrom.setErrorListener(closeableErrorListener2);
        return builderCreateFrom;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createPipeline$lambda$1(MeteringRepeating meteringRepeating, Size size, SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        Intrinsics.checkNotNullParameter(sessionConfig, "<unused var>");
        Intrinsics.checkNotNullParameter(sessionError, "<unused var>");
        meteringRepeating.updateSessionConfig(CollectionsKt.listOf(meteringRepeating.createPipeline(size).build()));
        meteringRepeating.notifyReset();
    }

    private final DeferrableSurface createAndManageDeferrableSurface(Size size) {
        final SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(size.getWidth(), size.getHeight());
        final Surface surface = new Surface(surfaceTexture);
        DeferrableSurface deferrableSurface = this.deferrableSurface;
        if (deferrableSurface != null) {
            deferrableSurface.close();
        }
        ImmediateSurface immediateSurface = new ImmediateSurface(surface, size, getImageFormat());
        this.deferrableSurface = immediateSurface;
        immediateSurface.getTerminationFuture().addListener(new Runnable() { // from class: androidx.camera.camera2.impl.MeteringRepeating$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MeteringRepeating.createAndManageDeferrableSurface$lambda$1(surface, surfaceTexture);
            }
        }, CameraXExecutors.directExecutor());
        return immediateSurface;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createAndManageDeferrableSurface$lambda$1(Surface surface, SurfaceTexture surfaceTexture) {
        surface.release();
        surfaceTexture.release();
    }

    public static final class MeteringRepeatingConfig implements UseCaseConfig, ImageInputConfig {
        private final MutableOptionsBundle config;

        @Override // androidx.camera.core.impl.ReadableConfig, androidx.camera.core.impl.Config
        public /* synthetic */ boolean containsOption(Config.Option option) {
            return getConfig().containsOption(option);
        }

        @Override // androidx.camera.core.impl.Config
        public /* synthetic */ void findOptions(String str, Config.OptionMatcher optionMatcher) {
            getConfig().findOptions(str, optionMatcher);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public /* synthetic */ CaptureConfig.OptionUnpacker getCaptureOptionUnpacker(CaptureConfig.OptionUnpacker optionUnpacker) {
            return UseCaseConfig.CC.$default$getCaptureOptionUnpacker(this, optionUnpacker);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public /* synthetic */ int getCustomMaxFrameRate(Size size) {
            return UseCaseConfig.CC.$default$getCustomMaxFrameRate(this, size);
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public /* synthetic */ CaptureConfig getDefaultCaptureConfig(CaptureConfig captureConfig) {
            return UseCaseConfig.CC.$default$getDefaultCaptureConfig(this, captureConfig);
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

        @Override // androidx.camera.core.impl.ImageInputConfig
        public int getInputFormat() {
            return 34;
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

        @Override // androidx.camera.core.impl.UseCaseConfig
        public /* synthetic */ int getSurfaceOccupancyPriority(int i) {
            return ((Integer) retrieveOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, Integer.valueOf(i))).intValue();
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public /* synthetic */ TakePictureManager.Provider getTakePictureManagerProvider() {
            return UseCaseConfig.CC.$default$getTakePictureManagerProvider(this);
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

        @Override // androidx.camera.core.impl.UseCaseConfig
        public /* synthetic */ int getVideoStabilizationMode() {
            return ((Integer) retrieveOption(UseCaseConfig.OPTION_VIDEO_STABILIZATION_MODE, 0)).intValue();
        }

        @Override // androidx.camera.core.impl.ImageInputConfig
        public /* synthetic */ boolean hasDynamicRange() {
            return containsOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE);
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

        public MeteringRepeatingConfig() {
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_SESSION_CONFIG_UNPACKER, CameraUseCaseAdapter.DefaultSessionOptionsUnpacker.INSTANCE);
            mutableOptionsBundleCreate.insertOption(TargetConfig.OPTION_TARGET_NAME, "MeteringRepeating");
            mutableOptionsBundleCreate.insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, UseCaseConfigFactory.CaptureType.METERING_REPEATING);
            Intrinsics.checkNotNullExpressionValue(mutableOptionsBundleCreate, "apply(...)");
            this.config = mutableOptionsBundleCreate;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig
        public UseCaseConfigFactory.CaptureType getCaptureType() {
            return UseCaseConfigFactory.CaptureType.METERING_REPEATING;
        }

        @Override // androidx.camera.core.impl.ReadableConfig
        public MutableOptionsBundle getConfig() {
            return this.config;
        }
    }

    public static final class Builder implements UseCaseConfig.Builder {
        private final CameraProperties cameraProperties;
        private final DisplayInfoManager displayInfoManager;

        public Builder(CameraProperties cameraProperties, DisplayInfoManager displayInfoManager) {
            Intrinsics.checkNotNullParameter(cameraProperties, "cameraProperties");
            Intrinsics.checkNotNullParameter(displayInfoManager, "displayInfoManager");
            this.cameraProperties = cameraProperties;
            this.displayInfoManager = displayInfoManager;
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableOptionsBundle getMutableConfig() {
            MutableOptionsBundle mutableOptionsBundleCreate = MutableOptionsBundle.create();
            Intrinsics.checkNotNullExpressionValue(mutableOptionsBundleCreate, "create(...)");
            return mutableOptionsBundleCreate;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public MeteringRepeatingConfig getUseCaseConfig() {
            return new MeteringRepeatingConfig();
        }

        public MeteringRepeating build() {
            return new MeteringRepeating(this.cameraProperties, getUseCaseConfig(), this.displayInfoManager);
        }
    }
}
