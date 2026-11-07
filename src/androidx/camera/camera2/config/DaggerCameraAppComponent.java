package androidx.camera.camera2.config;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.camera2.adapter.CameraControlAdapter;
import androidx.camera.camera2.adapter.CameraControlStateAdapter;
import androidx.camera.camera2.adapter.CameraInfoAdapter;
import androidx.camera.camera2.adapter.CameraInternalAdapter;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.CaptureConfigAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.compat.Camera2CameraControlCompatImpl;
import androidx.camera.camera2.compat.EvCompImpl;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.compat.ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.AbstractC0123x44b94a6f;
import androidx.camera.camera2.compat.workaround.AbstractC0124xd68a8ee;
import androidx.camera.camera2.compat.workaround.AbstractC0125x7de872ce;
import androidx.camera.camera2.compat.workaround.AbstractC0126x6722606e;
import androidx.camera.camera2.compat.workaround.AbstractC0127xe22154ee;
import androidx.camera.camera2.compat.workaround.AutoFlashAEModeDisabler;
import androidx.camera.camera2.compat.workaround.CapturePipelineTorchCorrection;
import androidx.camera.camera2.compat.workaround.InactiveSurfaceCloser;
import androidx.camera.camera2.compat.workaround.MeteringRegionCorrection;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import androidx.camera.camera2.compat.workaround.UseFlashModeTorchFor3aUpdate;
import androidx.camera.camera2.compat.workaround.UseTorchAsFlash;
import androidx.camera.camera2.compat.workaround.UseTorchAsFlash_Bindings_Companion_ProvideUseTorchAsFlashFactory;
import androidx.camera.camera2.config.CameraAppComponent;
import androidx.camera.camera2.config.CameraComponent;
import androidx.camera.camera2.config.UseCaseCameraComponent;
import androidx.camera.camera2.impl.CameraCallbackMap;
import androidx.camera.camera2.impl.CameraGraphConfigProvider;
import androidx.camera.camera2.impl.CameraPipeCameraProperties;
import androidx.camera.camera2.impl.CapturePipeline;
import androidx.camera.camera2.impl.CapturePipelineImpl;
import androidx.camera.camera2.impl.ComboRequestListener;
import androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl;
import androidx.camera.camera2.impl.DisplayInfoManager;
import androidx.camera.camera2.impl.EvCompControl;
import androidx.camera.camera2.impl.FlashControl;
import androidx.camera.camera2.impl.FocusMeteringControl;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.camera.camera2.impl.State3AControl;
import androidx.camera.camera2.impl.StillCaptureRequestControl;
import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.impl.UseCaseCamera;
import androidx.camera.camera2.impl.UseCaseCameraControl;
import androidx.camera.camera2.impl.UseCaseCameraImpl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.camera2.impl.UseCaseCameraState;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseSurfaceManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.impl.VideoUsageControl;
import androidx.camera.camera2.impl.ZoomControl;
import androidx.camera.camera2.internal.IntrinsicZoomCalculatorImpl;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.internal.StreamSpecsCalculator;
import dagger.internal.DelegateFactory;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.SetBuilder;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DaggerCameraAppComponent {
    public static CameraAppComponent.Builder builder() {
        return new Builder();
    }

    public static final class Builder implements CameraAppComponent.Builder {
        private CameraAppConfig cameraAppConfig;

        private Builder() {
        }

        @Override // androidx.camera.camera2.config.CameraAppComponent.Builder
        public Builder config(CameraAppConfig cameraAppConfig) {
            this.cameraAppConfig = (CameraAppConfig) Preconditions.checkNotNull(cameraAppConfig);
            return this;
        }

        @Override // androidx.camera.camera2.config.CameraAppComponent.Builder
        public CameraAppComponent build() {
            Preconditions.checkBuilderRequirement(this.cameraAppConfig, CameraAppConfig.class);
            return new CameraAppComponentImpl(this.cameraAppConfig);
        }
    }

    public static final class CameraComponentBuilder implements CameraComponent.Builder {
        private final CameraAppComponentImpl cameraAppComponentImpl;
        private CameraConfig cameraConfig;
        private StreamSpecsCalculator streamSpecsCalculator;

        private CameraComponentBuilder(CameraAppComponentImpl cameraAppComponentImpl) {
            this.cameraAppComponentImpl = cameraAppComponentImpl;
        }

        @Override // androidx.camera.camera2.config.CameraComponent.Builder
        public CameraComponentBuilder config(CameraConfig cameraConfig) {
            this.cameraConfig = (CameraConfig) Preconditions.checkNotNull(cameraConfig);
            return this;
        }

        @Override // androidx.camera.camera2.config.CameraComponent.Builder
        public CameraComponentBuilder streamSpecsCalculator(StreamSpecsCalculator streamSpecsCalculator) {
            this.streamSpecsCalculator = (StreamSpecsCalculator) Preconditions.checkNotNull(streamSpecsCalculator);
            return this;
        }

        @Override // androidx.camera.camera2.config.CameraComponent.Builder
        public CameraComponent build() {
            Preconditions.checkBuilderRequirement(this.cameraConfig, CameraConfig.class);
            Preconditions.checkBuilderRequirement(this.streamSpecsCalculator, StreamSpecsCalculator.class);
            return new CameraComponentImpl(this.cameraAppComponentImpl, this.cameraConfig, this.streamSpecsCalculator);
        }
    }

    public static final class UseCaseCameraComponentBuilder implements UseCaseCameraComponent.Builder {
        private final CameraAppComponentImpl cameraAppComponentImpl;
        private final CameraComponentImpl cameraComponentImpl;
        private UseCaseCameraConfig useCaseCameraConfig;

        private UseCaseCameraComponentBuilder(CameraAppComponentImpl cameraAppComponentImpl, CameraComponentImpl cameraComponentImpl) {
            this.cameraAppComponentImpl = cameraAppComponentImpl;
            this.cameraComponentImpl = cameraComponentImpl;
        }

        @Override // androidx.camera.camera2.config.UseCaseCameraComponent.Builder
        public UseCaseCameraComponentBuilder config(UseCaseCameraConfig useCaseCameraConfig) {
            this.useCaseCameraConfig = (UseCaseCameraConfig) Preconditions.checkNotNull(useCaseCameraConfig);
            return this;
        }

        @Override // androidx.camera.camera2.config.UseCaseCameraComponent.Builder
        public UseCaseCameraComponent build() {
            Preconditions.checkBuilderRequirement(this.useCaseCameraConfig, UseCaseCameraConfig.class);
            return new UseCaseCameraComponentImpl(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraConfig);
        }
    }

    public static final class UseCaseCameraComponentImpl implements UseCaseCameraComponent {
        private final CameraAppComponentImpl cameraAppComponentImpl;
        private final CameraComponentImpl cameraComponentImpl;
        Provider<CaptureConfigAdapter> captureConfigAdapterProvider;
        Provider<CapturePipelineImpl> capturePipelineImplProvider;
        Provider<CapturePipelineTorchCorrection> capturePipelineTorchCorrectionProvider;
        Provider<DeferredUseCaseCameraRequestControl> deferredUseCaseCameraRequestControlProvider;
        Provider<CapturePipeline> provideCapturePipelineProvider;
        Provider<SessionConfigAdapter> provideSessionConfigAdapterProvider;
        Provider<SessionProcessor> provideSessionProcessorProvider;
        Provider<UseCaseGraphContext> provideUseCaseGraphContextProvider;
        private final UseCaseCameraComponentImpl useCaseCameraComponentImpl = this;
        private final UseCaseCameraConfig useCaseCameraConfig;
        Provider<UseCaseCameraImpl> useCaseCameraImplProvider;
        Provider<UseCaseCameraRequestControlImpl> useCaseCameraRequestControlImplProvider;
        Provider<UseCaseCameraState> useCaseCameraStateProvider;
        Provider<UseCaseSurfaceManager> useCaseSurfaceManagerProvider;

        public UseCaseCameraComponentImpl(CameraAppComponentImpl cameraAppComponentImpl, CameraComponentImpl cameraComponentImpl, UseCaseCameraConfig useCaseCameraConfig) {
            this.cameraAppComponentImpl = cameraAppComponentImpl;
            this.cameraComponentImpl = cameraComponentImpl;
            this.useCaseCameraConfig = useCaseCameraConfig;
            initialize(useCaseCameraConfig);
        }

        private void initialize(UseCaseCameraConfig useCaseCameraConfig) {
            this.provideUseCaseGraphContextProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 1));
            this.provideSessionProcessorProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 2));
            this.captureConfigAdapterProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 7));
            this.useCaseCameraStateProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 8));
            this.capturePipelineImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 6));
            this.capturePipelineTorchCorrectionProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 9));
            this.provideCapturePipelineProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 5));
            this.provideSessionConfigAdapterProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 11));
            this.useCaseSurfaceManagerProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 10));
            this.useCaseCameraRequestControlImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 4));
            this.deferredUseCaseCameraRequestControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 3));
            this.useCaseCameraImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, this.useCaseCameraComponentImpl, 0));
        }

        @Override // androidx.camera.camera2.config.UseCaseCameraComponent
        public UseCaseCamera getUseCaseCamera() {
            return this.useCaseCameraImplProvider.get();
        }

        public static final class SwitchingProvider<T> implements Provider<T> {
            private final CameraAppComponentImpl cameraAppComponentImpl;
            private final CameraComponentImpl cameraComponentImpl;
            private final int id;
            private final UseCaseCameraComponentImpl useCaseCameraComponentImpl;

            public SwitchingProvider(CameraAppComponentImpl cameraAppComponentImpl, CameraComponentImpl cameraComponentImpl, UseCaseCameraComponentImpl useCaseCameraComponentImpl, int i) {
                this.cameraAppComponentImpl = cameraAppComponentImpl;
                this.cameraComponentImpl = cameraComponentImpl;
                this.useCaseCameraComponentImpl = useCaseCameraComponentImpl;
                this.id = i;
            }

            @Override // javax.inject.Provider
            public T get() {
                int i = this.id;
                switch (i) {
                    case 0:
                        UseCaseGraphContext useCaseGraphContext = this.useCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get();
                        UseCaseThreads useCaseThreads = this.cameraComponentImpl.provideUseCaseThreadsProvider.get();
                        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(this.useCaseCameraComponentImpl.provideSessionProcessorProvider.get());
                        DeferredUseCaseCameraRequestControl deferredUseCaseCameraRequestControl = this.useCaseCameraComponentImpl.deferredUseCaseCameraRequestControlProvider.get();
                        UseCaseCameraComponentImpl useCaseCameraComponentImpl = this.useCaseCameraComponentImpl;
                        return (T) new UseCaseCameraImpl(useCaseGraphContext, useCaseThreads, null, deferredUseCaseCameraRequestControl, useCaseCameraComponentImpl.useCaseSurfaceManagerProvider, useCaseCameraComponentImpl.provideSessionConfigAdapterProvider, useCaseCameraComponentImpl.provideCapturePipelineProvider);
                    case 1:
                        return (T) UseCaseCameraConfig_ProvideUseCaseGraphContextFactory.provideUseCaseGraphContext(this.useCaseCameraComponentImpl.useCaseCameraConfig, this.cameraComponentImpl.cameraStateAdapterProvider.get());
                    case 2:
                        this.useCaseCameraComponentImpl.useCaseCameraConfig.provideSessionProcessor();
                        return null;
                    case 3:
                        return (T) new DeferredUseCaseCameraRequestControl(this.useCaseCameraComponentImpl.useCaseCameraRequestControlImplProvider, this.cameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case 4:
                        UseCaseCameraComponentImpl useCaseCameraComponentImpl2 = this.useCaseCameraComponentImpl;
                        return (T) new UseCaseCameraRequestControlImpl(useCaseCameraComponentImpl2.provideCapturePipelineProvider, useCaseCameraComponentImpl2.useCaseCameraStateProvider, useCaseCameraComponentImpl2.provideUseCaseGraphContextProvider.get(), this.useCaseCameraComponentImpl.useCaseSurfaceManagerProvider, this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), CameraAppConfig_ProvideCameraXConfigFactory.provideCameraXConfig(this.cameraAppComponentImpl.cameraAppConfig));
                    case 5:
                        UseCaseCameraComponentImpl useCaseCameraComponentImpl3 = this.useCaseCameraComponentImpl;
                        return (T) UseCaseCameraModule_Companion_ProvideCapturePipelineFactory.provideCapturePipeline(useCaseCameraComponentImpl3.capturePipelineImplProvider, useCaseCameraComponentImpl3.capturePipelineTorchCorrectionProvider);
                    case 6:
                        CaptureConfigAdapter captureConfigAdapter = this.useCaseCameraComponentImpl.captureConfigAdapterProvider.get();
                        FlashControl flashControl = this.cameraComponentImpl.flashControlProvider.get();
                        TorchControl torchControl = this.cameraComponentImpl.torchControlProvider.get();
                        VideoUsageControl videoUsageControl = this.cameraComponentImpl.videoUsageControlProvider.get();
                        UseCaseThreads useCaseThreads2 = this.cameraComponentImpl.provideUseCaseThreadsProvider.get();
                        ComboRequestListener comboRequestListener = this.cameraComponentImpl.comboRequestListenerProvider.get();
                        UseTorchAsFlash useTorchAsFlash = this.cameraComponentImpl.useTorchAsFlash();
                        CameraPipeCameraProperties cameraPipeCameraProperties = this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get();
                        UseCaseCameraComponentImpl useCaseCameraComponentImpl4 = this.useCaseCameraComponentImpl;
                        return (T) new CapturePipelineImpl(captureConfigAdapter, flashControl, torchControl, videoUsageControl, useCaseThreads2, comboRequestListener, useTorchAsFlash, cameraPipeCameraProperties, useCaseCameraComponentImpl4.useCaseCameraStateProvider, useCaseCameraComponentImpl4.provideUseCaseGraphContextProvider.get());
                    case 7:
                        return (T) new CaptureConfigAdapter(this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.useCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get(), this.cameraComponentImpl.provideZslControlProvider.get(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.templateParamsOverride());
                    case 8:
                        return (T) new UseCaseCameraState(this.useCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get(), this.cameraComponentImpl.templateParamsOverride());
                    case 9:
                        return (T) new CapturePipelineTorchCorrection(this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.useCaseCameraComponentImpl.capturePipelineImplProvider, this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.torchControlProvider.get());
                    case 10:
                        return (T) new UseCaseSurfaceManager(this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), CameraAppConfig_ProvideCameraPipeFactory.provideCameraPipe(this.cameraAppComponentImpl.cameraAppConfig), this.cameraComponentImpl.inactiveSurfaceCloser(), this.useCaseCameraComponentImpl.provideSessionConfigAdapterProvider.get());
                    case 11:
                        return (T) UseCaseCameraConfig_ProvideSessionConfigAdapterFactory.provideSessionConfigAdapter(this.useCaseCameraComponentImpl.useCaseCameraConfig);
                    default:
                        throw new AssertionError(i);
                }
            }
        }
    }

    public static final class CameraComponentImpl implements CameraComponent {
        Provider<Camera2CameraControlCompatImpl> camera2CameraControlCompatImplProvider;
        private final CameraAppComponentImpl cameraAppComponentImpl;
        Provider<CameraCallbackMap> cameraCallbackMapProvider;
        private final CameraComponentImpl cameraComponentImpl = this;
        private final CameraConfig cameraConfig;
        Provider<CameraControlAdapter> cameraControlAdapterProvider;
        Provider<CameraControlStateAdapter> cameraControlStateAdapterProvider;
        Provider<CameraGraphConfigProvider> cameraGraphConfigProvider;
        Provider<CameraInfoAdapter> cameraInfoAdapterProvider;
        Provider<CameraInternalAdapter> cameraInternalAdapterProvider;
        Provider<CameraPipeCameraProperties> cameraPipeCameraPropertiesProvider;
        Provider<CameraQuirks> cameraQuirksProvider;
        Provider<CameraStateAdapter> cameraStateAdapterProvider;
        Provider<ComboRequestListener> comboRequestListenerProvider;
        Provider<EvCompControl> evCompControlProvider;
        Provider<EvCompImpl> evCompImplProvider;
        Provider<FlashControl> flashControlProvider;
        Provider<FocusMeteringControl> focusMeteringControlProvider;
        Provider<IntrinsicZoomCalculatorImpl> intrinsicZoomCalculatorImplProvider;
        Provider<LowLightBoostControl> lowLightBoostControlProvider;
        Provider<OutputSizesCorrector> outputSizesCorrectorProvider;
        Provider<Camera2CameraControl> provideCamera2CameraControlProvider;
        Provider<String> provideCameraIdStringProvider;
        Provider<CameraMetadata> provideCameraMetadataProvider;
        Provider<EncoderProfilesProvider> provideEncoderProfilesProvider;
        Provider<StreamConfigurationMap> provideStreamConfigurationMapProvider;
        Provider<UseCaseThreads> provideUseCaseThreadsProvider;
        Provider<ZslControl> provideZslControlProvider;
        Provider<State3AControl> state3AControlProvider;
        Provider<StillCaptureRequestControl> stillCaptureRequestControlProvider;
        Provider<StreamConfigurationMapCompat> streamConfigurationMapCompatProvider;
        private final StreamSpecsCalculator streamSpecsCalculator;
        Provider<TorchControl> torchControlProvider;
        Provider<UseCaseManager> useCaseManagerProvider;
        Provider<VideoUsageControl> videoUsageControlProvider;
        Provider<ZoomControl> zoomControlProvider;

        public CameraComponentImpl(CameraAppComponentImpl cameraAppComponentImpl, CameraConfig cameraConfig, StreamSpecsCalculator streamSpecsCalculator) {
            this.cameraAppComponentImpl = cameraAppComponentImpl;
            this.cameraConfig = cameraConfig;
            this.streamSpecsCalculator = streamSpecsCalculator;
            initialize(cameraConfig, streamSpecsCalculator);
            initialize2(cameraConfig, streamSpecsCalculator);
        }

        public AutoFlashAEModeDisabler autoFlashAEModeDisabler() {
            return AbstractC0123x44b94a6f.provideAEModeDisabler(this.cameraQuirksProvider.get());
        }

        public UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate() {
            return AbstractC0127xe22154ee.provideUseFlashModeTorchFor3aUpdate(this.cameraQuirksProvider.get());
        }

        public MeteringRegionCorrection meteringRegionCorrection() {
            return AbstractC0125x7de872ce.provideMeteringRegionCorrection(this.cameraQuirksProvider.get());
        }

        public ZoomCompat zoomCompat() {
            return ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory.provideZoomCompat(this.cameraPipeCameraPropertiesProvider.get());
        }

        public Set setOfUseCaseCameraControlBuilder() {
            SetBuilder setBuilderNewSetBuilder = SetBuilder.newSetBuilder(9);
            setBuilderNewSetBuilder.add(this.evCompControlProvider.get());
            setBuilderNewSetBuilder.add(this.flashControlProvider.get());
            setBuilderNewSetBuilder.add(this.focusMeteringControlProvider.get());
            setBuilderNewSetBuilder.add(this.state3AControlProvider.get());
            setBuilderNewSetBuilder.add(this.stillCaptureRequestControlProvider.get());
            setBuilderNewSetBuilder.add(this.torchControlProvider.get());
            setBuilderNewSetBuilder.add(this.lowLightBoostControlProvider.get());
            setBuilderNewSetBuilder.add(this.videoUsageControlProvider.get());
            setBuilderNewSetBuilder.add(this.zoomControlProvider.get());
            return setBuilderNewSetBuilder.build();
        }

        public Set<UseCaseCameraControl> setOfUseCaseCameraControl() {
            return setOfUseCaseCameraControlBuilder();
        }

        public TemplateParamsOverride templateParamsOverride() {
            return AbstractC0126x6722606e.provideTemplateParamsOverride(this.cameraQuirksProvider.get());
        }

        public UseTorchAsFlash useTorchAsFlash() {
            return UseTorchAsFlash_Bindings_Companion_ProvideUseTorchAsFlashFactory.provideUseTorchAsFlash(this.cameraQuirksProvider.get(), this.cameraAppComponentImpl.getCameraDevices(), this.intrinsicZoomCalculatorImplProvider.get());
        }

        public InactiveSurfaceCloser inactiveSurfaceCloser() {
            return AbstractC0124xd68a8ee.provideInactiveSurfaceCloser(this.cameraQuirksProvider.get());
        }

        private void initialize(CameraConfig cameraConfig, StreamSpecsCalculator streamSpecsCalculator) {
            this.provideCameraMetadataProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 4));
            this.cameraPipeCameraPropertiesProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 3));
            this.provideZslControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 2));
            this.provideStreamConfigurationMapProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 9));
            this.outputSizesCorrectorProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 10));
            this.streamConfigurationMapCompatProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 8));
            this.cameraQuirksProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 7));
            this.provideUseCaseThreadsProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 11));
            this.state3AControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 6));
            this.comboRequestListenerProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 12));
            this.lowLightBoostControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 5));
            this.evCompImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 14));
            this.evCompControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 13));
            this.torchControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 16));
            this.flashControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 15));
            this.focusMeteringControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 17));
            this.stillCaptureRequestControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 18));
            this.videoUsageControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 19));
            this.zoomControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 20));
            this.camera2CameraControlCompatImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 22));
            this.provideCamera2CameraControlProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 21));
            this.cameraStateAdapterProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 23));
            this.cameraInternalAdapterProvider = new DelegateFactory();
            this.cameraControlStateAdapterProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 25));
            this.cameraCallbackMapProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 26));
        }

        private void initialize2(CameraConfig cameraConfig, StreamSpecsCalculator streamSpecsCalculator) {
            this.provideCameraIdStringProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 28));
            this.provideEncoderProfilesProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 27));
            this.intrinsicZoomCalculatorImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 29));
            this.cameraInfoAdapterProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 24));
            this.cameraGraphConfigProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 30));
            this.useCaseManagerProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 1));
            this.cameraControlAdapterProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 31));
            DelegateFactory.setDelegate(this.cameraInternalAdapterProvider, DoubleCheck.provider(new SwitchingProvider(this.cameraAppComponentImpl, this.cameraComponentImpl, 0)));
        }

        @Override // androidx.camera.camera2.config.CameraComponent
        public CameraInternal getCameraInternal() {
            return this.cameraInternalAdapterProvider.get();
        }

        public static final class SwitchingProvider<T> implements Provider<T> {
            private final CameraAppComponentImpl cameraAppComponentImpl;
            private final CameraComponentImpl cameraComponentImpl;
            private final int id;

            public SwitchingProvider(CameraAppComponentImpl cameraAppComponentImpl, CameraComponentImpl cameraComponentImpl, int i) {
                this.cameraAppComponentImpl = cameraAppComponentImpl;
                this.cameraComponentImpl = cameraComponentImpl;
                this.id = i;
            }

            @Override // javax.inject.Provider
            public T get() {
                int i = this.id;
                switch (i) {
                    case 0:
                        return (T) new CameraInternalAdapter(CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig), this.cameraComponentImpl.useCaseManagerProvider.get(), this.cameraComponentImpl.cameraInfoAdapterProvider.get(), this.cameraComponentImpl.cameraControlAdapterProvider.get(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.cameraStateAdapterProvider.get());
                    case 1:
                        CameraPipe cameraPipeProvideCameraPipe = CameraAppConfig_ProvideCameraPipeFactory.provideCameraPipe(this.cameraAppComponentImpl.cameraAppConfig);
                        CameraCoordinator cameraCoordinatorProvideCameraCoordinator = CameraAppConfig_ProvideCameraCoordinatorFactory.provideCameraCoordinator(this.cameraAppComponentImpl.cameraAppConfig);
                        UseCaseCameraComponentBuilder useCaseCameraComponentBuilder = new UseCaseCameraComponentBuilder(this.cameraAppComponentImpl, this.cameraComponentImpl);
                        ZslControl zslControl = this.cameraComponentImpl.provideZslControlProvider.get();
                        LowLightBoostControl lowLightBoostControl = this.cameraComponentImpl.lowLightBoostControlProvider.get();
                        Set<UseCaseCameraControl> ofUseCaseCameraControl = this.cameraComponentImpl.setOfUseCaseCameraControl();
                        Camera2CameraControl camera2CameraControl = this.cameraComponentImpl.provideCamera2CameraControlProvider.get();
                        CameraStateAdapter cameraStateAdapter = this.cameraComponentImpl.cameraStateAdapterProvider.get();
                        CameraComponentImpl cameraComponentImpl = this.cameraComponentImpl;
                        return (T) new UseCaseManager(cameraPipeProvideCameraPipe, cameraCoordinatorProvideCameraCoordinator, useCaseCameraComponentBuilder, zslControl, lowLightBoostControl, ofUseCaseCameraControl, camera2CameraControl, cameraStateAdapter, cameraComponentImpl.cameraInternalAdapterProvider, cameraComponentImpl.provideUseCaseThreadsProvider, cameraComponentImpl.cameraInfoAdapterProvider, cameraComponentImpl.provideEncoderProfilesProvider.get(), this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), CameraAppConfig_ProvideCameraXConfigFactory.provideCameraXConfig(this.cameraAppComponentImpl.cameraAppConfig), this.cameraComponentImpl.cameraGraphConfigProvider.get(), CameraAppConfig_ProvideContextFactory.provideContext(this.cameraAppComponentImpl.cameraAppConfig), this.cameraAppComponentImpl.displayInfoManager());
                    case 2:
                        return (T) CameraModule_Companion_ProvideZslControlFactory.provideZslControl(this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get());
                    case 3:
                        return (T) new CameraPipeCameraProperties(CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig), this.cameraComponentImpl.provideCameraMetadataProvider.get());
                    case 4:
                        return (T) CameraModule.INSTANCE.provideCameraMetadata(CameraAppConfig_ProvideCameraPipeFactory.provideCameraPipe(this.cameraAppComponentImpl.cameraAppConfig), CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig));
                    case 5:
                        return (T) new LowLightBoostControl(this.cameraComponentImpl.provideCameraMetadataProvider.get(), this.cameraComponentImpl.state3AControlProvider.get(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.comboRequestListenerProvider.get());
                    case 6:
                        return (T) new State3AControl(this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.cameraComponentImpl.autoFlashAEModeDisabler(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case 7:
                        return (T) new CameraQuirks(this.cameraComponentImpl.provideCameraMetadataProvider.get(), this.cameraComponentImpl.streamConfigurationMapCompatProvider.get());
                    case 8:
                        return (T) new StreamConfigurationMapCompat(this.cameraComponentImpl.provideStreamConfigurationMapProvider.get(), this.cameraComponentImpl.outputSizesCorrectorProvider.get());
                    case 9:
                        return (T) CameraModule.INSTANCE.provideStreamConfigurationMap(this.cameraComponentImpl.provideCameraMetadataProvider.get());
                    case 10:
                        return (T) new OutputSizesCorrector(this.cameraComponentImpl.provideCameraMetadataProvider.get(), this.cameraComponentImpl.provideStreamConfigurationMapProvider.get());
                    case 11:
                        return (T) CameraModule_Companion_ProvideUseCaseThreadsFactory.provideUseCaseThreads(CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig), CameraAppConfig_ProvideCameraThreadConfigFactory.provideCameraThreadConfig(this.cameraAppComponentImpl.cameraAppConfig));
                    case 12:
                        return (T) new ComboRequestListener();
                    case 13:
                        return (T) new EvCompControl(this.cameraComponentImpl.evCompImplProvider.get());
                    case 14:
                        return (T) new EvCompImpl(this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.comboRequestListenerProvider.get());
                    case 15:
                        return (T) new FlashControl(this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.cameraComponentImpl.state3AControlProvider.get(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.torchControlProvider.get(), this.cameraComponentImpl.useFlashModeTorchFor3aUpdate());
                    case 16:
                        return (T) new TorchControl(this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.cameraComponentImpl.state3AControlProvider.get(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case 17:
                        return (T) new FocusMeteringControl(this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.cameraComponentImpl.meteringRegionCorrection(), this.cameraComponentImpl.state3AControlProvider.get(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.zoomCompat());
                    case 18:
                        return (T) new StillCaptureRequestControl(this.cameraComponentImpl.flashControlProvider.get(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case 19:
                        return (T) new VideoUsageControl();
                    case 20:
                        return (T) new ZoomControl(this.cameraComponentImpl.zoomCompat());
                    case 21:
                        return (T) CameraModule_Companion_ProvideCamera2CameraControlFactory.provideCamera2CameraControl(this.cameraComponentImpl.camera2CameraControlCompatImplProvider.get(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.comboRequestListenerProvider.get());
                    case 22:
                        return (T) new Camera2CameraControlCompatImpl();
                    case 23:
                        return (T) new CameraStateAdapter();
                    case 24:
                        return (T) new CameraInfoAdapter(this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig), this.cameraComponentImpl.cameraStateAdapterProvider.get(), this.cameraComponentImpl.cameraControlStateAdapterProvider.get(), this.cameraComponentImpl.cameraCallbackMapProvider.get(), this.cameraComponentImpl.focusMeteringControlProvider.get(), this.cameraComponentImpl.cameraQuirksProvider.get(), this.cameraComponentImpl.provideEncoderProfilesProvider.get(), this.cameraComponentImpl.streamConfigurationMapCompatProvider.get(), this.cameraComponentImpl.intrinsicZoomCalculatorImplProvider.get(), this.cameraComponentImpl.streamSpecsCalculator);
                    case 25:
                        return (T) new CameraControlStateAdapter(this.cameraComponentImpl.zoomControlProvider.get(), this.cameraComponentImpl.evCompControlProvider.get(), this.cameraComponentImpl.torchControlProvider.get(), this.cameraComponentImpl.lowLightBoostControlProvider.get());
                    case 26:
                        return (T) new CameraCallbackMap();
                    case 27:
                        return (T) CameraModule_Companion_ProvideEncoderProfilesProviderFactory.provideEncoderProfilesProvider(this.cameraComponentImpl.provideCameraIdStringProvider.get(), this.cameraComponentImpl.cameraQuirksProvider.get());
                    case 28:
                        return (T) CameraModule_Companion_ProvideCameraIdStringFactory.provideCameraIdString(CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig));
                    case 29:
                        return (T) new IntrinsicZoomCalculatorImpl(this.cameraAppComponentImpl.getCameraDevices());
                    case 30:
                        return (T) new CameraGraphConfigProvider(this.cameraComponentImpl.cameraCallbackMapProvider.get(), this.cameraComponentImpl.comboRequestListenerProvider.get(), CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig), this.cameraComponentImpl.cameraQuirksProvider.get(), this.cameraComponentImpl.provideZslControlProvider.get(), this.cameraComponentImpl.templateParamsOverride(), this.cameraComponentImpl.provideCameraMetadataProvider.get(), CameraAppConfig_ProvideCameraXConfigFactory.provideCameraXConfig(this.cameraAppComponentImpl.cameraAppConfig), CameraAppConfig_ProvideCamera2InteropCallbacksFactory.provideCamera2InteropCallbacks(this.cameraAppComponentImpl.cameraAppConfig));
                    case 31:
                        return (T) new CameraControlAdapter(this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.cameraComponentImpl.evCompControlProvider.get(), this.cameraComponentImpl.flashControlProvider.get(), this.cameraComponentImpl.focusMeteringControlProvider.get(), this.cameraComponentImpl.stillCaptureRequestControlProvider.get(), this.cameraComponentImpl.torchControlProvider.get(), this.cameraComponentImpl.lowLightBoostControlProvider.get(), this.cameraComponentImpl.zoomControlProvider.get(), this.cameraComponentImpl.provideZslControlProvider.get(), this.cameraComponentImpl.provideCamera2CameraControlProvider.get(), this.cameraComponentImpl.useCaseManagerProvider.get(), this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.videoUsageControlProvider.get());
                    default:
                        throw new AssertionError(i);
                }
            }
        }
    }

    public static final class CameraAppComponentImpl implements CameraAppComponent {
        private final CameraAppComponentImpl cameraAppComponentImpl = this;
        private final CameraAppConfig cameraAppConfig;

        public CameraAppComponentImpl(CameraAppConfig cameraAppConfig) {
            this.cameraAppConfig = cameraAppConfig;
        }

        public DisplayInfoManager displayInfoManager() {
            CameraAppConfig cameraAppConfig = this.cameraAppConfig;
            return CameraAppConfig_ProvideDisplayInfoManagerFactory.provideDisplayInfoManager(cameraAppConfig, CameraAppConfig_ProvideContextFactory.provideContext(cameraAppConfig));
        }

        @Override // androidx.camera.camera2.config.CameraAppComponent
        public CameraComponent.Builder cameraBuilder() {
            return new CameraComponentBuilder(this.cameraAppComponentImpl);
        }

        @Override // androidx.camera.camera2.config.CameraAppComponent
        public CameraPipe getCameraPipe() {
            return CameraAppConfig_ProvideCameraPipeFactory.provideCameraPipe(this.cameraAppConfig);
        }

        @Override // androidx.camera.camera2.config.CameraAppComponent
        public CameraDevices getCameraDevices() {
            return CameraAppModule_Companion_ProvideCameraDevicesFactory.provideCameraDevices(CameraAppConfig_ProvideCameraPipeFactory.provideCameraPipe(this.cameraAppConfig));
        }
    }
}
