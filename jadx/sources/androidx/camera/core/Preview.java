package androidx.camera.core;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.util.Size;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.capability.PreviewCapabilitiesImpl;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.TargetConfig;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.resolutionselector.AspectRatioStrategy;
import androidx.camera.core.resolutionselector.ResolutionSelector;
import androidx.camera.core.resolutionselector.ResolutionStrategy;
import androidx.core.util.Preconditions;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class Preview extends UseCase {
    public static final Defaults DEFAULT_CONFIG = new Defaults();
    private static final Executor DEFAULT_SURFACE_PROVIDER_EXECUTOR = CameraXExecutors.mainThreadExecutor();
    private SurfaceEdge mCameraEdge;
    private SessionConfig.CloseableErrorListener mCloseableErrorListener;
    SurfaceRequest mCurrentSurfaceRequest;
    private SurfaceProcessorNode mNode;
    SessionConfig.Builder mSessionConfigBuilder;
    private DeferrableSurface mSessionDeferrableSurface;
    private SurfaceProvider mSurfaceProvider;
    private Executor mSurfaceProviderExecutor;

    public interface SurfaceProvider {
        void onSurfaceRequested(SurfaceRequest surfaceRequest);
    }

    Preview(PreviewConfig previewConfig) {
        super(previewConfig);
        this.mSurfaceProviderExecutor = DEFAULT_SURFACE_PROVIDER_EXECUTOR;
    }

    private SessionConfig.Builder createPipeline(PreviewConfig previewConfig, StreamSpec streamSpec) {
        Threads.checkMainThread();
        CameraInternal camera = getCamera();
        Objects.requireNonNull(camera);
        CameraInternal cameraInternal = camera;
        clearPipeline();
        Preconditions.checkState(this.mCameraEdge == null);
        Matrix sensorToBufferTransformMatrix = getSensorToBufferTransformMatrix();
        boolean hasTransform = cameraInternal.getHasTransform();
        Rect cropRect = getCropRect(streamSpec.getResolution());
        Objects.requireNonNull(cropRect);
        this.mCameraEdge = new SurfaceEdge(1, 34, streamSpec, sensorToBufferTransformMatrix, hasTransform, cropRect, getRelativeRotation(cameraInternal, isMirroringRequired(cameraInternal)), getAppTargetRotation(), shouldMirror(cameraInternal));
        getEffect();
        this.mCameraEdge.addOnInvalidatedListener(new Runnable() { // from class: androidx.camera.core.Preview$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.notifyReset();
            }
        });
        SurfaceRequest surfaceRequestCreateSurfaceRequest = this.mCameraEdge.createSurfaceRequest(cameraInternal);
        this.mCurrentSurfaceRequest = surfaceRequestCreateSurfaceRequest;
        this.mSessionDeferrableSurface = surfaceRequestCreateSurfaceRequest.getDeferrableSurface();
        if (this.mSurfaceProvider != null) {
            sendSurfaceRequest();
        }
        SessionConfig.Builder builderCreateFrom = SessionConfig.Builder.createFrom(previewConfig, streamSpec.getResolution());
        builderCreateFrom.setSessionType(streamSpec.getSessionType());
        applyExpectedFrameRateRange(builderCreateFrom, streamSpec);
        builderCreateFrom.setPreviewStabilization(previewConfig.getPreviewStabilizationMode());
        if (streamSpec.getImplementationOptions() != null) {
            builderCreateFrom.addImplementationOptions(streamSpec.getImplementationOptions());
        }
        addCameraSurfaceAndErrorListener(builderCreateFrom, streamSpec);
        return builderCreateFrom;
    }

    private boolean shouldMirror(CameraInternal cameraInternal) {
        return cameraInternal.getHasTransform() && isMirroringRequired(cameraInternal);
    }

    private void clearPipeline() {
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
            this.mCloseableErrorListener = null;
        }
        DeferrableSurface deferrableSurface = this.mSessionDeferrableSurface;
        if (deferrableSurface != null) {
            deferrableSurface.close();
            this.mSessionDeferrableSurface = null;
        }
        SurfaceProcessorNode surfaceProcessorNode = this.mNode;
        if (surfaceProcessorNode != null) {
            surfaceProcessorNode.release();
            this.mNode = null;
        }
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (surfaceEdge != null) {
            surfaceEdge.close();
            this.mCameraEdge = null;
        }
        SurfaceRequest surfaceRequest = this.mCurrentSurfaceRequest;
        if (surfaceRequest != null) {
            surfaceRequest.clearTransformationInfoListener();
        }
        this.mCurrentSurfaceRequest = null;
    }

    private void addCameraSurfaceAndErrorListener(SessionConfig.Builder builder, StreamSpec streamSpec) {
        if (this.mSurfaceProvider != null) {
            builder.addSurface(this.mSessionDeferrableSurface, streamSpec.getDynamicRange(), getPhysicalCameraId(), getMirrorModeInternal());
        }
        SessionConfig.CloseableErrorListener closeableErrorListener = this.mCloseableErrorListener;
        if (closeableErrorListener != null) {
            closeableErrorListener.close();
        }
        SessionConfig.CloseableErrorListener closeableErrorListener2 = new SessionConfig.CloseableErrorListener(new SessionConfig.ErrorListener() { // from class: androidx.camera.core.Preview$$ExternalSyntheticLambda1
            @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
            public final void onError(androidx.camera.core.impl.SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
                Preview.$r8$lambda$762dDs35ABxrpJOuvYTWYx6zqRc(this.f$0, sessionConfig, sessionError);
            }
        });
        this.mCloseableErrorListener = closeableErrorListener2;
        builder.setErrorListener(closeableErrorListener2);
    }

    public static /* synthetic */ void $r8$lambda$762dDs35ABxrpJOuvYTWYx6zqRc(Preview preview, androidx.camera.core.impl.SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        if (preview.getCamera() == null) {
            return;
        }
        preview.updateConfigAndOutput((PreviewConfig) preview.getCurrentConfig(), preview.getAttachedStreamSpec());
        preview.notifyReset();
    }

    private void sendTransformationInfoIfReady() {
        CameraInternal camera = getCamera();
        SurfaceEdge surfaceEdge = this.mCameraEdge;
        if (camera == null || surfaceEdge == null) {
            return;
        }
        surfaceEdge.updateTransformation(getRelativeRotation(camera, isMirroringRequired(camera)), getAppTargetRotation());
    }

    private Rect getCropRect(Size size) {
        if (getViewPortCropRect() != null) {
            return getViewPortCropRect();
        }
        if (size != null) {
            return new Rect(0, 0, size.getWidth(), size.getHeight());
        }
        return null;
    }

    public void setSurfaceProvider(Executor executor, SurfaceProvider surfaceProvider) {
        Threads.checkMainThread();
        if (surfaceProvider == null) {
            this.mSurfaceProvider = null;
            notifyInactive();
            return;
        }
        this.mSurfaceProvider = surfaceProvider;
        this.mSurfaceProviderExecutor = executor;
        if (getAttachedSurfaceResolution() != null) {
            updateConfigAndOutput((PreviewConfig) getCurrentConfig(), getAttachedStreamSpec());
            notifyReset();
        }
        notifyActive();
    }

    private void sendSurfaceRequest() {
        sendTransformationInfoIfReady();
        final SurfaceProvider surfaceProvider = (SurfaceProvider) Preconditions.checkNotNull(this.mSurfaceProvider);
        final SurfaceRequest surfaceRequest = (SurfaceRequest) Preconditions.checkNotNull(this.mCurrentSurfaceRequest);
        this.mSurfaceProviderExecutor.execute(new Runnable() { // from class: androidx.camera.core.Preview$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                surfaceProvider.onSurfaceRequested(surfaceRequest);
            }
        });
    }

    public void setSurfaceProvider(SurfaceProvider surfaceProvider) {
        setSurfaceProvider(DEFAULT_SURFACE_PROVIDER_EXECUTOR, surfaceProvider);
    }

    private void updateConfigAndOutput(PreviewConfig previewConfig, StreamSpec streamSpec) {
        SessionConfig.Builder builderCreatePipeline = createPipeline(previewConfig, streamSpec);
        this.mSessionConfigBuilder = builderCreatePipeline;
        updateSessionConfig(ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{builderCreatePipeline.build()}));
    }

    public String toString() {
        return "Preview:" + getName();
    }

    @Override // androidx.camera.core.UseCase
    public UseCaseConfig getDefaultConfig(boolean z, UseCaseConfigFactory useCaseConfigFactory) {
        Defaults defaults = DEFAULT_CONFIG;
        Config config = useCaseConfigFactory.getConfig(defaults.getConfig().getCaptureType(), 1);
        if (z) {
            config = Config.CC.mergeConfigs(config, defaults.getConfig());
        }
        if (config == null) {
            return null;
        }
        return getUseCaseConfigBuilder(config).getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    protected UseCaseConfig onMergeConfig(CameraInfoInternal cameraInfoInternal, UseCaseConfig.Builder builder) {
        builder.getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_FORMAT, 34);
        return builder.getUseCaseConfig();
    }

    @Override // androidx.camera.core.UseCase
    public UseCaseConfig.Builder getUseCaseConfigBuilder(Config config) {
        return Builder.fromConfig(config);
    }

    @Override // androidx.camera.core.UseCase
    public void onUnbind() {
        clearPipeline();
    }

    @Override // androidx.camera.core.UseCase
    protected StreamSpec onSuggestedStreamSpecUpdated(StreamSpec streamSpec, StreamSpec streamSpec2) {
        Logger.m76d("Preview", "onSuggestedStreamSpecUpdated: primaryStreamSpec = " + streamSpec + ", secondaryStreamSpec " + streamSpec2);
        updateConfigAndOutput((PreviewConfig) getCurrentConfig(), streamSpec);
        return streamSpec;
    }

    @Override // androidx.camera.core.UseCase
    protected StreamSpec onSuggestedStreamSpecImplementationOptionsUpdated(Config config) {
        this.mSessionConfigBuilder.addImplementationOptions(config);
        updateSessionConfig(ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{this.mSessionConfigBuilder.build()}));
        return getAttachedStreamSpec().toBuilder().setImplementationOptions(config).build();
    }

    @Override // androidx.camera.core.UseCase
    public void setViewPortCropRect(Rect rect) {
        super.setViewPortCropRect(rect);
        sendTransformationInfoIfReady();
    }

    @Override // androidx.camera.core.UseCase
    public Set getSupportedEffectTargets() {
        HashSet hashSet = new HashSet();
        hashSet.add(1);
        return hashSet;
    }

    public static PreviewCapabilities getPreviewCapabilities(CameraInfo cameraInfo) {
        return PreviewCapabilitiesImpl.from(cameraInfo);
    }

    public static final class Defaults {
        private static final PreviewConfig DEFAULT_CONFIG;
        private static final DynamicRange DEFAULT_DYNAMIC_RANGE;
        private static final ResolutionSelector DEFAULT_RESOLUTION_SELECTOR;

        static {
            ResolutionSelector resolutionSelectorBuild = new ResolutionSelector.Builder().setAspectRatioStrategy(AspectRatioStrategy.RATIO_4_3_FALLBACK_AUTO_STRATEGY).setResolutionStrategy(ResolutionStrategy.HIGHEST_AVAILABLE_STRATEGY).build();
            DEFAULT_RESOLUTION_SELECTOR = resolutionSelectorBuild;
            DynamicRange dynamicRange = DynamicRange.UNSPECIFIED;
            DEFAULT_DYNAMIC_RANGE = dynamicRange;
            DEFAULT_CONFIG = new Builder().setSurfaceOccupancyPriority(2).setTargetAspectRatio(0).setResolutionSelector(resolutionSelectorBuild).setHighResolutionDisabled(true).setDynamicRange(dynamicRange).getUseCaseConfig();
        }

        public PreviewConfig getConfig() {
            return DEFAULT_CONFIG;
        }
    }

    public static final class Builder implements UseCaseConfig.Builder, ImageOutputConfig.Builder {
        private final MutableOptionsBundle mMutableConfig;

        public Builder() {
            this(MutableOptionsBundle.create());
        }

        private Builder(MutableOptionsBundle mutableOptionsBundle) {
            this.mMutableConfig = mutableOptionsBundle;
            Class cls = (Class) mutableOptionsBundle.retrieveOption(TargetConfig.OPTION_TARGET_CLASS, null);
            if (cls != null && !cls.equals(Preview.class)) {
                throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
            }
            setCaptureType(UseCaseConfigFactory.CaptureType.PREVIEW);
            setTargetClass(Preview.class);
            Config.Option option = ImageOutputConfig.OPTION_MIRROR_MODE;
            if (((Integer) mutableOptionsBundle.retrieveOption(option, -1)).intValue() == -1) {
                mutableOptionsBundle.insertOption(option, 2);
            }
        }

        static Builder fromConfig(Config config) {
            return new Builder(MutableOptionsBundle.from(config));
        }

        @Override // androidx.camera.core.ExtendableBuilder
        public MutableConfig getMutableConfig() {
            return this.mMutableConfig;
        }

        @Override // androidx.camera.core.impl.UseCaseConfig.Builder
        public PreviewConfig getUseCaseConfig() {
            return new PreviewConfig(OptionsBundle.from(this.mMutableConfig));
        }

        public Preview build() {
            PreviewConfig useCaseConfig = getUseCaseConfig();
            ImageOutputConfig.CC.validateConfig(useCaseConfig);
            return new Preview(useCaseConfig);
        }

        public Builder setTargetClass(Class cls) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_CLASS, cls);
            if (getMutableConfig().retrieveOption(TargetConfig.OPTION_TARGET_NAME, null) == null) {
                setTargetName(cls.getCanonicalName() + "-" + UUID.randomUUID());
            }
            return this;
        }

        public Builder setTargetName(String str) {
            getMutableConfig().insertOption(TargetConfig.OPTION_TARGET_NAME, str);
            return this;
        }

        public Builder setTargetAspectRatio(int i) {
            if (i == -1) {
                i = 0;
            }
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_ASPECT_RATIO, Integer.valueOf(i));
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        public Builder setTargetRotation(int i) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_ROTATION, Integer.valueOf(i));
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_APP_TARGET_ROTATION, Integer.valueOf(i));
            return this;
        }

        public Builder setMirrorMode(int i) {
            if (Build.VERSION.SDK_INT >= 33) {
                getMutableConfig().insertOption(ImageOutputConfig.OPTION_MIRROR_MODE, Integer.valueOf(i));
            }
            return this;
        }

        @Override // androidx.camera.core.impl.ImageOutputConfig.Builder
        public Builder setTargetResolution(Size size) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_TARGET_RESOLUTION, size);
            return this;
        }

        public Builder setResolutionSelector(ResolutionSelector resolutionSelector) {
            getMutableConfig().insertOption(ImageOutputConfig.OPTION_RESOLUTION_SELECTOR, resolutionSelector);
            return this;
        }

        public Builder setDynamicRange(DynamicRange dynamicRange) {
            getMutableConfig().insertOption(ImageInputConfig.OPTION_INPUT_DYNAMIC_RANGE, dynamicRange);
            return this;
        }

        public Builder setPreviewStabilizationEnabled(boolean z) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_PREVIEW_STABILIZATION_MODE, Integer.valueOf(z ? 2 : 1));
            return this;
        }

        public Builder setSurfaceOccupancyPriority(int i) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_SURFACE_OCCUPANCY_PRIORITY, Integer.valueOf(i));
            return this;
        }

        public Builder setHighResolutionDisabled(boolean z) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_HIGH_RESOLUTION_DISABLED, Boolean.valueOf(z));
            return this;
        }

        public Builder setCaptureType(UseCaseConfigFactory.CaptureType captureType) {
            getMutableConfig().insertOption(UseCaseConfig.OPTION_CAPTURE_TYPE, captureType);
            return this;
        }
    }
}
