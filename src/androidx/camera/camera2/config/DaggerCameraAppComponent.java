package androidx.camera.camera2.config;

import android.hardware.camera2.params.StreamConfigurationMap;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.camera.camera2.adapter.CameraControlAdapter;
import androidx.camera.camera2.adapter.CameraControlStateAdapter;
import androidx.camera.camera2.adapter.CameraInfoAdapter;
import androidx.camera.camera2.adapter.CameraInternalAdapter;
import androidx.camera.camera2.adapter.CameraStateAdapter;
import androidx.camera.camera2.adapter.CaptureConfigAdapter;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.compat.Camera2CameraControlCompat;
import androidx.camera.camera2.compat.Camera2CameraControlCompatImpl;
import androidx.camera.camera2.compat.EvCompCompat;
import androidx.camera.camera2.compat.EvCompImpl;
import androidx.camera.camera2.compat.StreamConfigurationMapCompat;
import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.compat.ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory;
import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.AbstractC0118x44b94a6f;
import androidx.camera.camera2.compat.workaround.AbstractC0119xd68a8ee;
import androidx.camera.camera2.compat.workaround.AbstractC0120x7de872ce;
import androidx.camera.camera2.compat.workaround.AbstractC0121x6722606e;
import androidx.camera.camera2.compat.workaround.AbstractC0122xe22154ee;
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
import androidx.camera.camera2.impl.CameraProperties;
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
import androidx.camera.camera2.impl.UseCaseCameraImpl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl;
import androidx.camera.camera2.impl.UseCaseCameraState;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.camera2.impl.UseCaseSurfaceManager;
import androidx.camera.camera2.impl.UseCaseThreads;
import androidx.camera.camera2.impl.VideoUsageControl;
import androidx.camera.camera2.impl.ZoomControl;
import androidx.camera.camera2.internal.IntrinsicZoomCalculator;
import androidx.camera.camera2.internal.IntrinsicZoomCalculatorImpl;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
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

    private static final class Builder implements CameraAppComponent.Builder {
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

    private static final class CameraComponentBuilder implements CameraComponent.Builder {
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

    private static final class UseCaseCameraComponentBuilder implements UseCaseCameraComponent.Builder {
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

    private static final class UseCaseCameraComponentImpl implements UseCaseCameraComponent {
        private final CameraAppComponentImpl cameraAppComponentImpl;
        private final CameraComponentImpl cameraComponentImpl;
        Provider captureConfigAdapterProvider;
        Provider capturePipelineImplProvider;
        Provider capturePipelineTorchCorrectionProvider;
        Provider deferredUseCaseCameraRequestControlProvider;
        Provider provideCapturePipelineProvider;
        Provider provideSessionConfigAdapterProvider;
        Provider provideSessionProcessorProvider;
        Provider provideUseCaseGraphContextProvider;
        private final UseCaseCameraComponentImpl useCaseCameraComponentImpl = this;
        private final UseCaseCameraConfig useCaseCameraConfig;
        Provider useCaseCameraImplProvider;
        Provider useCaseCameraRequestControlImplProvider;
        Provider useCaseCameraStateProvider;
        Provider useCaseSurfaceManagerProvider;

        UseCaseCameraComponentImpl(CameraAppComponentImpl cameraAppComponentImpl, CameraComponentImpl cameraComponentImpl, UseCaseCameraConfig useCaseCameraConfig) {
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
            return (UseCaseCamera) this.useCaseCameraImplProvider.get();
        }

        private static final class SwitchingProvider implements Provider {
            private final CameraAppComponentImpl cameraAppComponentImpl;
            private final CameraComponentImpl cameraComponentImpl;

            /* JADX INFO: renamed from: id */
            private final int f5id;
            private final UseCaseCameraComponentImpl useCaseCameraComponentImpl;

            SwitchingProvider(CameraAppComponentImpl cameraAppComponentImpl, CameraComponentImpl cameraComponentImpl, UseCaseCameraComponentImpl useCaseCameraComponentImpl, int i) {
                this.cameraAppComponentImpl = cameraAppComponentImpl;
                this.cameraComponentImpl = cameraComponentImpl;
                this.useCaseCameraComponentImpl = useCaseCameraComponentImpl;
                this.f5id = i;
            }

            @Override // javax.inject.Provider
            public Object get() {
                switch (this.f5id) {
                    case 0:
                        UseCaseGraphContext useCaseGraphContext = (UseCaseGraphContext) this.useCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get();
                        UseCaseThreads useCaseThreads = (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get();
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(this.useCaseCameraComponentImpl.provideSessionProcessorProvider.get());
                        UseCaseCameraRequestControl useCaseCameraRequestControl = (UseCaseCameraRequestControl) this.useCaseCameraComponentImpl.deferredUseCaseCameraRequestControlProvider.get();
                        UseCaseCameraComponentImpl useCaseCameraComponentImpl = this.useCaseCameraComponentImpl;
                        return new UseCaseCameraImpl(useCaseGraphContext, useCaseThreads, null, useCaseCameraRequestControl, useCaseCameraComponentImpl.useCaseSurfaceManagerProvider, useCaseCameraComponentImpl.provideSessionConfigAdapterProvider, useCaseCameraComponentImpl.provideCapturePipelineProvider);
                    case 1:
                        return UseCaseCameraConfig_ProvideUseCaseGraphContextFactory.provideUseCaseGraphContext(this.useCaseCameraComponentImpl.useCaseCameraConfig, (CameraStateAdapter) this.cameraComponentImpl.cameraStateAdapterProvider.get());
                    case 2:
                        this.useCaseCameraComponentImpl.useCaseCameraConfig.provideSessionProcessor();
                        return null;
                    case 3:
                        return new DeferredUseCaseCameraRequestControl(this.useCaseCameraComponentImpl.useCaseCameraRequestControlImplProvider, (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case 4:
                        UseCaseCameraComponentImpl useCaseCameraComponentImpl2 = this.useCaseCameraComponentImpl;
                        return new UseCaseCameraRequestControlImpl(useCaseCameraComponentImpl2.provideCapturePipelineProvider, useCaseCameraComponentImpl2.useCaseCameraStateProvider, (UseCaseGraphContext) useCaseCameraComponentImpl2.provideUseCaseGraphContextProvider.get(), this.useCaseCameraComponentImpl.useCaseSurfaceManagerProvider, (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), CameraAppConfig_ProvideCameraXConfigFactory.provideCameraXConfig(this.cameraAppComponentImpl.cameraAppConfig));
                    case 5:
                        UseCaseCameraComponentImpl useCaseCameraComponentImpl3 = this.useCaseCameraComponentImpl;
                        return UseCaseCameraModule_Companion_ProvideCapturePipelineFactory.provideCapturePipeline(useCaseCameraComponentImpl3.capturePipelineImplProvider, useCaseCameraComponentImpl3.capturePipelineTorchCorrectionProvider);
                    case 6:
                        CaptureConfigAdapter captureConfigAdapter = (CaptureConfigAdapter) this.useCaseCameraComponentImpl.captureConfigAdapterProvider.get();
                        FlashControl flashControl = (FlashControl) this.cameraComponentImpl.flashControlProvider.get();
                        TorchControl torchControl = (TorchControl) this.cameraComponentImpl.torchControlProvider.get();
                        VideoUsageControl videoUsageControl = (VideoUsageControl) this.cameraComponentImpl.videoUsageControlProvider.get();
                        UseCaseThreads useCaseThreads2 = (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get();
                        ComboRequestListener comboRequestListener = (ComboRequestListener) this.cameraComponentImpl.comboRequestListenerProvider.get();
                        UseTorchAsFlash useTorchAsFlash = this.cameraComponentImpl.useTorchAsFlash();
                        CameraProperties cameraProperties = (CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get();
                        UseCaseCameraComponentImpl useCaseCameraComponentImpl4 = this.useCaseCameraComponentImpl;
                        return new CapturePipelineImpl(captureConfigAdapter, flashControl, torchControl, videoUsageControl, useCaseThreads2, comboRequestListener, useTorchAsFlash, cameraProperties, useCaseCameraComponentImpl4.useCaseCameraStateProvider, (UseCaseGraphContext) useCaseCameraComponentImpl4.provideUseCaseGraphContextProvider.get());
                    case 7:
                        return new CaptureConfigAdapter((CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), (UseCaseGraphContext) this.useCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get(), (ZslControl) this.cameraComponentImpl.provideZslControlProvider.get(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.templateParamsOverride());
                    case 8:
                        return new UseCaseCameraState((UseCaseGraphContext) this.useCaseCameraComponentImpl.provideUseCaseGraphContextProvider.get(), this.cameraComponentImpl.templateParamsOverride());
                    case 9:
                        return new CapturePipelineTorchCorrection((CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.useCaseCameraComponentImpl.capturePipelineImplProvider, (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), (TorchControl) this.cameraComponentImpl.torchControlProvider.get());
                    case 10:
                        return new UseCaseSurfaceManager((UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), CameraAppConfig_ProvideCameraPipeFactory.provideCameraPipe(this.cameraAppComponentImpl.cameraAppConfig), this.cameraComponentImpl.inactiveSurfaceCloser(), (SessionConfigAdapter) this.useCaseCameraComponentImpl.provideSessionConfigAdapterProvider.get());
                    case 11:
                        return UseCaseCameraConfig_ProvideSessionConfigAdapterFactory.provideSessionConfigAdapter(this.useCaseCameraComponentImpl.useCaseCameraConfig);
                    default:
                        throw new AssertionError(this.f5id);
                }
            }
        }
    }

    private static final class CameraComponentImpl implements CameraComponent {
        Provider camera2CameraControlCompatImplProvider;
        private final CameraAppComponentImpl cameraAppComponentImpl;
        Provider cameraCallbackMapProvider;
        private final CameraComponentImpl cameraComponentImpl = this;
        private final CameraConfig cameraConfig;
        Provider cameraControlAdapterProvider;
        Provider cameraControlStateAdapterProvider;
        Provider cameraGraphConfigProvider;
        Provider cameraInfoAdapterProvider;
        Provider cameraInternalAdapterProvider;
        Provider cameraPipeCameraPropertiesProvider;
        Provider cameraQuirksProvider;
        Provider cameraStateAdapterProvider;
        Provider comboRequestListenerProvider;
        Provider evCompControlProvider;
        Provider evCompImplProvider;
        Provider flashControlProvider;
        Provider focusMeteringControlProvider;
        Provider intrinsicZoomCalculatorImplProvider;
        Provider lowLightBoostControlProvider;
        Provider outputSizesCorrectorProvider;
        Provider provideCamera2CameraControlProvider;
        Provider provideCameraIdStringProvider;
        Provider provideCameraMetadataProvider;
        Provider provideEncoderProfilesProvider;
        Provider provideStreamConfigurationMapProvider;
        Provider provideUseCaseThreadsProvider;
        Provider provideZslControlProvider;
        Provider state3AControlProvider;
        Provider stillCaptureRequestControlProvider;
        Provider streamConfigurationMapCompatProvider;
        private final StreamSpecsCalculator streamSpecsCalculator;
        Provider torchControlProvider;
        Provider useCaseManagerProvider;
        Provider videoUsageControlProvider;
        Provider zoomControlProvider;

        CameraComponentImpl(CameraAppComponentImpl cameraAppComponentImpl, CameraConfig cameraConfig, StreamSpecsCalculator streamSpecsCalculator) {
            this.cameraAppComponentImpl = cameraAppComponentImpl;
            this.cameraConfig = cameraConfig;
            this.streamSpecsCalculator = streamSpecsCalculator;
            initialize(cameraConfig, streamSpecsCalculator);
            initialize2(cameraConfig, streamSpecsCalculator);
        }

        AutoFlashAEModeDisabler autoFlashAEModeDisabler() {
            return AbstractC0118x44b94a6f.provideAEModeDisabler((CameraQuirks) this.cameraQuirksProvider.get());
        }

        UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate() {
            return AbstractC0122xe22154ee.provideUseFlashModeTorchFor3aUpdate((CameraQuirks) this.cameraQuirksProvider.get());
        }

        MeteringRegionCorrection meteringRegionCorrection() {
            return AbstractC0120x7de872ce.provideMeteringRegionCorrection((CameraQuirks) this.cameraQuirksProvider.get());
        }

        ZoomCompat zoomCompat() {
            return ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory.provideZoomCompat((CameraProperties) this.cameraPipeCameraPropertiesProvider.get());
        }

        Set setOfUseCaseCameraControlBuilder() {
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

        Set setOfUseCaseCameraControl() {
            return setOfUseCaseCameraControlBuilder();
        }

        TemplateParamsOverride templateParamsOverride() {
            return AbstractC0121x6722606e.provideTemplateParamsOverride((CameraQuirks) this.cameraQuirksProvider.get());
        }

        UseTorchAsFlash useTorchAsFlash() {
            return UseTorchAsFlash_Bindings_Companion_ProvideUseTorchAsFlashFactory.provideUseTorchAsFlash((CameraQuirks) this.cameraQuirksProvider.get(), this.cameraAppComponentImpl.getCameraDevices(), (IntrinsicZoomCalculator) this.intrinsicZoomCalculatorImplProvider.get());
        }

        InactiveSurfaceCloser inactiveSurfaceCloser() {
            return AbstractC0119xd68a8ee.provideInactiveSurfaceCloser((CameraQuirks) this.cameraQuirksProvider.get());
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
            return (CameraInternal) this.cameraInternalAdapterProvider.get();
        }

        private static final class SwitchingProvider implements Provider {
            private final CameraAppComponentImpl cameraAppComponentImpl;
            private final CameraComponentImpl cameraComponentImpl;

            /* JADX INFO: renamed from: id */
            private final int f4id;

            SwitchingProvider(CameraAppComponentImpl cameraAppComponentImpl, CameraComponentImpl cameraComponentImpl, int i) {
                this.cameraAppComponentImpl = cameraAppComponentImpl;
                this.cameraComponentImpl = cameraComponentImpl;
                this.f4id = i;
            }

            @Override // javax.inject.Provider
            public Object get() {
                switch (this.f4id) {
                    case 0:
                        return new CameraInternalAdapter(CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig), (UseCaseManager) this.cameraComponentImpl.useCaseManagerProvider.get(), (CameraInfoInternal) this.cameraComponentImpl.cameraInfoAdapterProvider.get(), (CameraControlInternal) this.cameraComponentImpl.cameraControlAdapterProvider.get(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), (CameraStateAdapter) this.cameraComponentImpl.cameraStateAdapterProvider.get());
                    case 1:
                        CameraPipe cameraPipeProvideCameraPipe = CameraAppConfig_ProvideCameraPipeFactory.provideCameraPipe(this.cameraAppComponentImpl.cameraAppConfig);
                        CameraCoordinator cameraCoordinatorProvideCameraCoordinator = CameraAppConfig_ProvideCameraCoordinatorFactory.provideCameraCoordinator(this.cameraAppComponentImpl.cameraAppConfig);
                        UseCaseCameraComponentBuilder useCaseCameraComponentBuilder = new UseCaseCameraComponentBuilder(this.cameraAppComponentImpl, this.cameraComponentImpl);
                        ZslControl zslControl = (ZslControl) this.cameraComponentImpl.provideZslControlProvider.get();
                        LowLightBoostControl lowLightBoostControl = (LowLightBoostControl) this.cameraComponentImpl.lowLightBoostControlProvider.get();
                        Set ofUseCaseCameraControl = this.cameraComponentImpl.setOfUseCaseCameraControl();
                        Camera2CameraControl camera2CameraControl = (Camera2CameraControl) this.cameraComponentImpl.provideCamera2CameraControlProvider.get();
                        CameraStateAdapter cameraStateAdapter = (CameraStateAdapter) this.cameraComponentImpl.cameraStateAdapterProvider.get();
                        CameraComponentImpl cameraComponentImpl = this.cameraComponentImpl;
                        return new UseCaseManager(cameraPipeProvideCameraPipe, cameraCoordinatorProvideCameraCoordinator, useCaseCameraComponentBuilder, zslControl, lowLightBoostControl, ofUseCaseCameraControl, camera2CameraControl, cameraStateAdapter, cameraComponentImpl.cameraInternalAdapterProvider, cameraComponentImpl.provideUseCaseThreadsProvider, cameraComponentImpl.cameraInfoAdapterProvider, (EncoderProfilesProvider) cameraComponentImpl.provideEncoderProfilesProvider.get(), (CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), CameraAppConfig_ProvideCameraXConfigFactory.provideCameraXConfig(this.cameraAppComponentImpl.cameraAppConfig), (CameraGraphConfigProvider) this.cameraComponentImpl.cameraGraphConfigProvider.get(), CameraAppConfig_ProvideContextFactory.provideContext(this.cameraAppComponentImpl.cameraAppConfig), this.cameraAppComponentImpl.displayInfoManager());
                    case 2:
                        return CameraModule_Companion_ProvideZslControlFactory.provideZslControl((CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get());
                    case 3:
                        return new CameraPipeCameraProperties(CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig), (CameraMetadata) this.cameraComponentImpl.provideCameraMetadataProvider.get());
                    case 4:
                        return CameraModule.Companion.provideCameraMetadata(CameraAppConfig_ProvideCameraPipeFactory.provideCameraPipe(this.cameraAppComponentImpl.cameraAppConfig), CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig));
                    case 5:
                        return new LowLightBoostControl((CameraMetadata) this.cameraComponentImpl.provideCameraMetadataProvider.get(), (State3AControl) this.cameraComponentImpl.state3AControlProvider.get(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), (ComboRequestListener) this.cameraComponentImpl.comboRequestListenerProvider.get());
                    case 6:
                        return new State3AControl((CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.cameraComponentImpl.autoFlashAEModeDisabler(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case 7:
                        return new CameraQuirks((CameraMetadata) this.cameraComponentImpl.provideCameraMetadataProvider.get(), (StreamConfigurationMapCompat) this.cameraComponentImpl.streamConfigurationMapCompatProvider.get());
                    case 8:
                        return new StreamConfigurationMapCompat((StreamConfigurationMap) this.cameraComponentImpl.provideStreamConfigurationMapProvider.get(), (OutputSizesCorrector) this.cameraComponentImpl.outputSizesCorrectorProvider.get());
                    case 9:
                        return CameraModule.Companion.provideStreamConfigurationMap((CameraMetadata) this.cameraComponentImpl.provideCameraMetadataProvider.get());
                    case 10:
                        return new OutputSizesCorrector((CameraMetadata) this.cameraComponentImpl.provideCameraMetadataProvider.get(), (StreamConfigurationMap) this.cameraComponentImpl.provideStreamConfigurationMapProvider.get());
                    case 11:
                        return CameraModule_Companion_ProvideUseCaseThreadsFactory.provideUseCaseThreads(CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig), CameraAppConfig_ProvideCameraThreadConfigFactory.provideCameraThreadConfig(this.cameraAppComponentImpl.cameraAppConfig));
                    case 12:
                        return new ComboRequestListener();
                    case 13:
                        return new EvCompControl((EvCompCompat) this.cameraComponentImpl.evCompImplProvider.get());
                    case 14:
                        return new EvCompImpl((CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), (ComboRequestListener) this.cameraComponentImpl.comboRequestListenerProvider.get());
                    case 15:
                        return new FlashControl((CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), (State3AControl) this.cameraComponentImpl.state3AControlProvider.get(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), (TorchControl) this.cameraComponentImpl.torchControlProvider.get(), this.cameraComponentImpl.useFlashModeTorchFor3aUpdate());
                    case 16:
                        return new TorchControl((CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), (State3AControl) this.cameraComponentImpl.state3AControlProvider.get(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case 17:
                        return new FocusMeteringControl((CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), this.cameraComponentImpl.meteringRegionCorrection(), (State3AControl) this.cameraComponentImpl.state3AControlProvider.get(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), this.cameraComponentImpl.zoomCompat());
                    case 18:
                        return new StillCaptureRequestControl((FlashControl) this.cameraComponentImpl.flashControlProvider.get(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get());
                    case 19:
                        return new VideoUsageControl();
                    case 20:
                        return new ZoomControl(this.cameraComponentImpl.zoomCompat());
                    case 21:
                        return CameraModule_Companion_ProvideCamera2CameraControlFactory.provideCamera2CameraControl((Camera2CameraControlCompat) this.cameraComponentImpl.camera2CameraControlCompatImplProvider.get(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), (ComboRequestListener) this.cameraComponentImpl.comboRequestListenerProvider.get());
                    case 22:
                        return new Camera2CameraControlCompatImpl();
                    case 23:
                        return new CameraStateAdapter();
                    case 24:
                        return new CameraInfoAdapter((CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig), (CameraStateAdapter) this.cameraComponentImpl.cameraStateAdapterProvider.get(), (CameraControlStateAdapter) this.cameraComponentImpl.cameraControlStateAdapterProvider.get(), (CameraCallbackMap) this.cameraComponentImpl.cameraCallbackMapProvider.get(), (FocusMeteringControl) this.cameraComponentImpl.focusMeteringControlProvider.get(), (CameraQuirks) this.cameraComponentImpl.cameraQuirksProvider.get(), (EncoderProfilesProvider) this.cameraComponentImpl.provideEncoderProfilesProvider.get(), (StreamConfigurationMapCompat) this.cameraComponentImpl.streamConfigurationMapCompatProvider.get(), (IntrinsicZoomCalculator) this.cameraComponentImpl.intrinsicZoomCalculatorImplProvider.get(), this.cameraComponentImpl.streamSpecsCalculator);
                    case 25:
                        return new CameraControlStateAdapter((ZoomControl) this.cameraComponentImpl.zoomControlProvider.get(), (EvCompControl) this.cameraComponentImpl.evCompControlProvider.get(), (TorchControl) this.cameraComponentImpl.torchControlProvider.get(), (LowLightBoostControl) this.cameraComponentImpl.lowLightBoostControlProvider.get());
                    case 26:
                        return new CameraCallbackMap();
                    case 27:
                        return CameraModule_Companion_ProvideEncoderProfilesProviderFactory.provideEncoderProfilesProvider((String) this.cameraComponentImpl.provideCameraIdStringProvider.get(), (CameraQuirks) this.cameraComponentImpl.cameraQuirksProvider.get());
                    case 28:
                        return CameraModule_Companion_ProvideCameraIdStringFactory.provideCameraIdString(CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig));
                    case 29:
                        return new IntrinsicZoomCalculatorImpl(this.cameraAppComponentImpl.getCameraDevices());
                    case 30:
                        return new CameraGraphConfigProvider((CameraCallbackMap) this.cameraComponentImpl.cameraCallbackMapProvider.get(), (ComboRequestListener) this.cameraComponentImpl.comboRequestListenerProvider.get(), CameraConfig_ProvideCameraConfigFactory.provideCameraConfig(this.cameraComponentImpl.cameraConfig), (CameraQuirks) this.cameraComponentImpl.cameraQuirksProvider.get(), (ZslControl) this.cameraComponentImpl.provideZslControlProvider.get(), this.cameraComponentImpl.templateParamsOverride(), (CameraMetadata) this.cameraComponentImpl.provideCameraMetadataProvider.get(), CameraAppConfig_ProvideCameraXConfigFactory.provideCameraXConfig(this.cameraAppComponentImpl.cameraAppConfig), CameraAppConfig_ProvideCamera2InteropCallbacksFactory.provideCamera2InteropCallbacks(this.cameraAppComponentImpl.cameraAppConfig));
                    case 31:
                        return new CameraControlAdapter((CameraProperties) this.cameraComponentImpl.cameraPipeCameraPropertiesProvider.get(), (EvCompControl) this.cameraComponentImpl.evCompControlProvider.get(), (FlashControl) this.cameraComponentImpl.flashControlProvider.get(), (FocusMeteringControl) this.cameraComponentImpl.focusMeteringControlProvider.get(), (StillCaptureRequestControl) this.cameraComponentImpl.stillCaptureRequestControlProvider.get(), (TorchControl) this.cameraComponentImpl.torchControlProvider.get(), (LowLightBoostControl) this.cameraComponentImpl.lowLightBoostControlProvider.get(), (ZoomControl) this.cameraComponentImpl.zoomControlProvider.get(), (ZslControl) this.cameraComponentImpl.provideZslControlProvider.get(), (Camera2CameraControl) this.cameraComponentImpl.provideCamera2CameraControlProvider.get(), (UseCaseManager) this.cameraComponentImpl.useCaseManagerProvider.get(), (UseCaseThreads) this.cameraComponentImpl.provideUseCaseThreadsProvider.get(), (VideoUsageControl) this.cameraComponentImpl.videoUsageControlProvider.get());
                    default:
                        throw new AssertionError(this.f4id);
                }
            }
        }
    }

    private static final class CameraAppComponentImpl implements CameraAppComponent {
        private final CameraAppComponentImpl cameraAppComponentImpl = this;
        private final CameraAppConfig cameraAppConfig;

        CameraAppComponentImpl(CameraAppConfig cameraAppConfig) {
            this.cameraAppConfig = cameraAppConfig;
        }

        DisplayInfoManager displayInfoManager() {
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
