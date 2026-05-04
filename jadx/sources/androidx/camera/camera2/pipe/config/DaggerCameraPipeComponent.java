package androidx.camera.camera2.pipe.config;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.camera.camera2.pipe.CameraBackend;
import androidx.camera.camera2.pipe.CameraBackends;
import androidx.camera.camera2.pipe.CameraContext;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraDevices;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.CameraSurfaceManager;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.SurfaceTracker;
import androidx.camera.camera2.pipe.compat.AndroidExtensionSessionFactory;
import androidx.camera.camera2.pipe.compat.AndroidMHighSpeedSessionFactory;
import androidx.camera.camera2.pipe.compat.AndroidMSessionFactory;
import androidx.camera.camera2.pipe.compat.AndroidNSessionFactory;
import androidx.camera.camera2.pipe.compat.AndroidPSessionFactory;
import androidx.camera.camera2.pipe.compat.AudioRestrictionController;
import androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl;
import androidx.camera.camera2.pipe.compat.Camera2Backend;
import androidx.camera.camera2.pipe.compat.Camera2CameraAvailabilityMonitor;
import androidx.camera.camera2.pipe.compat.Camera2CameraController;
import androidx.camera.camera2.pipe.compat.Camera2CameraOpener;
import androidx.camera.camera2.pipe.compat.Camera2CaptureSessionsModule_ProvideSessionFactoryFactory;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCache;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCloser;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl;
import androidx.camera.camera2.pipe.compat.Camera2DeviceManager;
import androidx.camera.camera2.pipe.compat.Camera2ErrorProcessor;
import androidx.camera.camera2.pipe.compat.Camera2MetadataCache;
import androidx.camera.camera2.pipe.compat.Camera2MetadataProvider;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.compat.CameraStateOpener;
import androidx.camera.camera2.pipe.compat.CaptureSessionFactory;
import androidx.camera.camera2.pipe.compat.ConcurrentSessionSequencers;
import androidx.camera.camera2.pipe.compat.DevicePolicyManagerWrapper;
import androidx.camera.camera2.pipe.compat.PruningCamera2DeviceManager;
import androidx.camera.camera2.pipe.compat.RetryingCameraStateOpener;
import androidx.camera.camera2.pipe.compat.RetryingCameraStateOpenerImpl;
import androidx.camera.camera2.pipe.compat.StandardCamera2CaptureSequenceProcessorFactory;
import androidx.camera.camera2.pipe.config.Camera2ControllerComponent;
import androidx.camera.camera2.pipe.config.CameraGraphComponent;
import androidx.camera.camera2.pipe.core.Permissions;
import androidx.camera.camera2.pipe.core.SystemClockOffsets;
import androidx.camera.camera2.pipe.core.SystemTimeSource;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.core.TimeSource;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.camera2.pipe.graph.Controller3A;
import androidx.camera.camera2.pipe.graph.GraphListener;
import androidx.camera.camera2.pipe.graph.GraphProcessor;
import androidx.camera.camera2.pipe.graph.GraphProcessorImpl;
import androidx.camera.camera2.pipe.graph.GraphState3A;
import androidx.camera.camera2.pipe.graph.Listener3A;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.graph.SurfaceGraph;
import androidx.camera.camera2.pipe.internal.CameraDevicesImpl;
import androidx.camera.camera2.pipe.internal.CameraErrorListener;
import androidx.camera.camera2.pipe.internal.CameraGraphParametersImpl;
import androidx.camera.camera2.pipe.internal.CameraGraphRequestListenersImpl;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import androidx.camera.camera2.pipe.internal.CameraStatusMonitor;
import androidx.camera.camera2.pipe.internal.FrameCaptureQueue;
import androidx.camera.camera2.pipe.internal.FrameDistributor;
import androidx.camera.camera2.pipe.internal.GraphSessionLock;
import androidx.camera.camera2.pipe.media.ImageReaderImageSources;
import androidx.camera.camera2.pipe.media.ImageSources;
import dagger.internal.DelegateFactory;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import dagger.internal.SingleCheck;
import java.util.List;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DaggerCameraPipeComponent {
    public static Builder builder() {
        return new Builder();
    }

    public static final class Builder {
        private CameraPipeConfigModule cameraPipeConfigModule;
        private ThreadConfigModule threadConfigModule;

        private Builder() {
        }

        public Builder cameraPipeConfigModule(CameraPipeConfigModule cameraPipeConfigModule) {
            this.cameraPipeConfigModule = (CameraPipeConfigModule) Preconditions.checkNotNull(cameraPipeConfigModule);
            return this;
        }

        public Builder threadConfigModule(ThreadConfigModule threadConfigModule) {
            this.threadConfigModule = (ThreadConfigModule) Preconditions.checkNotNull(threadConfigModule);
            return this;
        }

        public CameraPipeComponent build() {
            Preconditions.checkBuilderRequirement(this.cameraPipeConfigModule, CameraPipeConfigModule.class);
            Preconditions.checkBuilderRequirement(this.threadConfigModule, ThreadConfigModule.class);
            return new CameraPipeComponentImpl(this.cameraPipeConfigModule, this.threadConfigModule);
        }
    }

    private static final class CameraGraphComponentBuilder implements CameraGraphComponent.Builder {
        private CameraGraphConfigModule cameraGraphConfigModule;
        private final CameraPipeComponentImpl cameraPipeComponentImpl;

        private CameraGraphComponentBuilder(CameraPipeComponentImpl cameraPipeComponentImpl) {
            this.cameraPipeComponentImpl = cameraPipeComponentImpl;
        }

        @Override // androidx.camera.camera2.pipe.config.CameraGraphComponent.Builder
        public CameraGraphComponentBuilder cameraGraphConfigModule(CameraGraphConfigModule cameraGraphConfigModule) {
            this.cameraGraphConfigModule = (CameraGraphConfigModule) Preconditions.checkNotNull(cameraGraphConfigModule);
            return this;
        }

        @Override // androidx.camera.camera2.pipe.config.CameraGraphComponent.Builder
        public CameraGraphComponent build() {
            Preconditions.checkBuilderRequirement(this.cameraGraphConfigModule, CameraGraphConfigModule.class);
            return new CameraGraphComponentImpl(this.cameraPipeComponentImpl, this.cameraGraphConfigModule);
        }
    }

    private static final class Camera2ControllerComponentBuilder implements Camera2ControllerComponent.Builder {
        private Camera2ControllerConfig camera2ControllerConfig;
        private final CameraPipeComponentImpl cameraPipeComponentImpl;

        private Camera2ControllerComponentBuilder(CameraPipeComponentImpl cameraPipeComponentImpl) {
            this.cameraPipeComponentImpl = cameraPipeComponentImpl;
        }

        @Override // androidx.camera.camera2.pipe.config.Camera2ControllerComponent.Builder
        public Camera2ControllerComponentBuilder camera2ControllerConfig(Camera2ControllerConfig camera2ControllerConfig) {
            this.camera2ControllerConfig = (Camera2ControllerConfig) Preconditions.checkNotNull(camera2ControllerConfig);
            return this;
        }

        @Override // androidx.camera.camera2.pipe.config.Camera2ControllerComponent.Builder
        public Camera2ControllerComponent build() {
            Preconditions.checkBuilderRequirement(this.camera2ControllerConfig, Camera2ControllerConfig.class);
            return new Camera2ControllerComponentImpl(this.cameraPipeComponentImpl, this.camera2ControllerConfig);
        }
    }

    private static final class CameraGraphComponentImpl implements CameraGraphComponent {
        private final CameraGraphComponentImpl cameraGraphComponentImpl = this;
        private final CameraGraphConfigModule cameraGraphConfigModule;
        Provider cameraGraphImplProvider;
        Provider cameraGraphParametersImplProvider;
        Provider cameraGraphRequestListenersImplProvider;
        private final CameraPipeComponentImpl cameraPipeComponentImpl;
        Provider controller3AProvider;
        Provider frameCaptureQueueProvider;
        Provider graphProcessorImplProvider;
        Provider graphSessionLockProvider;
        Provider graphState3AProvider;
        Provider listener3AProvider;
        Provider provideCameraBackendProvider;
        Provider provideCameraControllerProvider;
        Provider provideCameraGraphCoroutineScopeProvider;
        Provider provideCameraMetadataProvider;
        Provider provideFrameDistributorProvider;
        Provider provideRequestListenersProvider;
        Provider provideSurfaceGraphProvider;
        Provider provideSystemClockOffsetsProvider;
        Provider streamGraphImplProvider;

        CameraGraphComponentImpl(CameraPipeComponentImpl cameraPipeComponentImpl, CameraGraphConfigModule cameraGraphConfigModule) {
            this.cameraPipeComponentImpl = cameraPipeComponentImpl;
            this.cameraGraphConfigModule = cameraGraphConfigModule;
            initialize(cameraGraphConfigModule);
        }

        private void initialize(CameraGraphConfigModule cameraGraphConfigModule) {
            this.provideCameraBackendProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 2));
            this.provideCameraMetadataProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 1));
            this.listener3AProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 4));
            this.graphProcessorImplProvider = new DelegateFactory();
            this.streamGraphImplProvider = new DelegateFactory();
            this.provideCameraControllerProvider = new DelegateFactory();
            this.provideSurfaceGraphProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 9));
            DelegateFactory.setDelegate(this.provideCameraControllerProvider, DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 8)));
            DelegateFactory.setDelegate(this.streamGraphImplProvider, DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 7)));
            this.frameCaptureQueueProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 10));
            this.provideSystemClockOffsetsProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 11));
            this.provideFrameDistributorProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 6));
            this.provideRequestListenersProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 5));
            DelegateFactory.setDelegate(this.graphProcessorImplProvider, DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 3)));
            this.graphSessionLockProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 13));
            this.provideCameraGraphCoroutineScopeProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 14));
            this.cameraGraphParametersImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 12));
            this.cameraGraphRequestListenersImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 15));
            this.graphState3AProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 17));
            this.controller3AProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 16));
            this.cameraGraphImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.cameraGraphComponentImpl, 0));
        }

        @Override // androidx.camera.camera2.pipe.config.CameraGraphComponent
        public CameraGraph cameraGraph() {
            return (CameraGraph) this.cameraGraphImplProvider.get();
        }

        private static final class SwitchingProvider implements Provider {
            private final CameraGraphComponentImpl cameraGraphComponentImpl;
            private final CameraPipeComponentImpl cameraPipeComponentImpl;

            /* JADX INFO: renamed from: id */
            private final int f15id;

            SwitchingProvider(CameraPipeComponentImpl cameraPipeComponentImpl, CameraGraphComponentImpl cameraGraphComponentImpl, int i) {
                this.cameraPipeComponentImpl = cameraPipeComponentImpl;
                this.cameraGraphComponentImpl = cameraGraphComponentImpl;
                this.f15id = i;
            }

            @Override // javax.inject.Provider
            public Object get() {
                switch (this.f15id) {
                    case 0:
                        return new CameraGraphImpl(CameraGraphConfigModule_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.cameraGraphComponentImpl.cameraGraphConfigModule), (CameraMetadata) this.cameraGraphComponentImpl.provideCameraMetadataProvider.get(), (GraphProcessor) this.cameraGraphComponentImpl.graphProcessorImplProvider.get(), (GraphListener) this.cameraGraphComponentImpl.graphProcessorImplProvider.get(), (StreamGraphImpl) this.cameraGraphComponentImpl.streamGraphImplProvider.get(), (SurfaceGraph) this.cameraGraphComponentImpl.provideSurfaceGraphProvider.get(), (CameraController) this.cameraGraphComponentImpl.provideCameraControllerProvider.get(), (FrameDistributor) this.cameraGraphComponentImpl.provideFrameDistributorProvider.get(), (FrameCaptureQueue) this.cameraGraphComponentImpl.frameCaptureQueueProvider.get(), (AudioRestrictionController) this.cameraPipeComponentImpl.audioRestrictionControllerImplProvider.get(), CameraGraphConfigModule_ProvideCameraGraphIdFactory.provideCameraGraphId(this.cameraGraphComponentImpl.cameraGraphConfigModule), (CameraGraphParametersImpl) this.cameraGraphComponentImpl.cameraGraphParametersImplProvider.get(), (CameraGraphRequestListenersImpl) this.cameraGraphComponentImpl.cameraGraphRequestListenersImplProvider.get(), (GraphSessionLock) this.cameraGraphComponentImpl.graphSessionLockProvider.get(), (CoroutineScope) this.cameraGraphComponentImpl.provideCameraGraphCoroutineScopeProvider.get(), (Controller3A) this.cameraGraphComponentImpl.controller3AProvider.get());
                    case 1:
                        return AbstractC0227xbc9e5a4c.provideCameraMetadata(CameraGraphConfigModule_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.cameraGraphComponentImpl.cameraGraphConfigModule), (CameraBackend) this.cameraGraphComponentImpl.provideCameraBackendProvider.get());
                    case 2:
                        return InternalCameraGraphModules_Companion_ProvideCameraBackendFactory.provideCameraBackend((CameraBackends) this.cameraPipeComponentImpl.provideCameraBackendsProvider.get(), CameraGraphConfigModule_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.cameraGraphComponentImpl.cameraGraphConfigModule), (CameraContext) this.cameraPipeComponentImpl.provideCameraContextProvider.get());
                    case 3:
                        return new GraphProcessorImpl((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), CameraGraphConfigModule_ProvideCameraGraphIdFactory.provideCameraGraphId(this.cameraGraphComponentImpl.cameraGraphConfigModule), CameraGraphConfigModule_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.cameraGraphComponentImpl.cameraGraphConfigModule), (Listener3A) this.cameraGraphComponentImpl.listener3AProvider.get(), (List) this.cameraGraphComponentImpl.provideRequestListenersProvider.get(), (Camera2Quirks) this.cameraPipeComponentImpl.camera2QuirksProvider.get());
                    case 4:
                        return new Listener3A();
                    case 5:
                        return AbstractC0230xe48e6fa8.provideRequestListeners(CameraGraphConfigModule_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.cameraGraphComponentImpl.cameraGraphConfigModule), (Listener3A) this.cameraGraphComponentImpl.listener3AProvider.get(), (FrameDistributor) this.cameraGraphComponentImpl.provideFrameDistributorProvider.get());
                    case 6:
                        return AbstractC0229xe945089e.provideFrameDistributor((StreamGraphImpl) this.cameraGraphComponentImpl.streamGraphImplProvider.get(), (FrameCaptureQueue) this.cameraGraphComponentImpl.frameCaptureQueueProvider.get(), (CameraMetadata) this.cameraGraphComponentImpl.provideCameraMetadataProvider.get(), (SystemClockOffsets) this.cameraGraphComponentImpl.provideSystemClockOffsetsProvider.get());
                    case 7:
                        return new StreamGraphImpl((CameraMetadata) this.cameraGraphComponentImpl.provideCameraMetadataProvider.get(), CameraGraphConfigModule_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.cameraGraphComponentImpl.cameraGraphConfigModule), this.cameraPipeComponentImpl.imageSources(), this.cameraGraphComponentImpl.provideCameraControllerProvider);
                    case 8:
                        return AbstractC0226x69ca74ff.provideCameraController(CameraGraphConfigModule_ProvideCameraGraphIdFactory.provideCameraGraphId(this.cameraGraphComponentImpl.cameraGraphConfigModule), CameraGraphConfigModule_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.cameraGraphComponentImpl.cameraGraphConfigModule), (CameraBackend) this.cameraGraphComponentImpl.provideCameraBackendProvider.get(), (CameraContext) this.cameraPipeComponentImpl.provideCameraContextProvider.get(), (GraphProcessorImpl) this.cameraGraphComponentImpl.graphProcessorImplProvider.get(), (StreamGraph) this.cameraGraphComponentImpl.streamGraphImplProvider.get(), (SurfaceTracker) this.cameraGraphComponentImpl.provideSurfaceGraphProvider.get());
                    case 9:
                        return SharedCameraGraphModules_Companion_ProvideSurfaceGraphFactory.provideSurfaceGraph((StreamGraphImpl) this.cameraGraphComponentImpl.streamGraphImplProvider.get(), this.cameraGraphComponentImpl.provideCameraControllerProvider, (CameraSurfaceManager) this.cameraPipeComponentImpl.provideCameraSurfaceManagerProvider.get());
                    case 10:
                        return new FrameCaptureQueue();
                    case 11:
                        return AbstractC0231xdc3bdd57.provideSystemClockOffsets();
                    case 12:
                        return new CameraGraphParametersImpl((GraphSessionLock) this.cameraGraphComponentImpl.graphSessionLockProvider.get(), (GraphProcessor) this.cameraGraphComponentImpl.graphProcessorImplProvider.get(), (CoroutineScope) this.cameraGraphComponentImpl.provideCameraGraphCoroutineScopeProvider.get());
                    case 13:
                        return new GraphSessionLock();
                    case 14:
                        return AbstractC0228x1feabf7.provideCameraGraphCoroutineScope((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), (Job) this.cameraPipeComponentImpl.provideCameraPipeJobProvider.get());
                    case 15:
                        return new CameraGraphRequestListenersImpl((GraphSessionLock) this.cameraGraphComponentImpl.graphSessionLockProvider.get(), (GraphProcessor) this.cameraGraphComponentImpl.graphProcessorImplProvider.get(), (CoroutineScope) this.cameraGraphComponentImpl.provideCameraGraphCoroutineScopeProvider.get());
                    case 16:
                        return new Controller3A((GraphProcessor) this.cameraGraphComponentImpl.graphProcessorImplProvider.get(), (CameraMetadata) this.cameraGraphComponentImpl.provideCameraMetadataProvider.get(), (GraphState3A) this.cameraGraphComponentImpl.graphState3AProvider.get(), (Listener3A) this.cameraGraphComponentImpl.listener3AProvider.get());
                    case 17:
                        return new GraphState3A();
                    default:
                        throw new AssertionError(this.f15id);
                }
            }
        }
    }

    private static final class Camera2ControllerComponentImpl implements Camera2ControllerComponent {
        Provider androidExtensionSessionFactoryProvider;
        Provider androidMHighSpeedSessionFactoryProvider;
        Provider androidMSessionFactoryProvider;
        Provider androidNSessionFactoryProvider;
        Provider androidPSessionFactoryProvider;
        Provider camera2CameraControllerProvider;
        private final Camera2ControllerComponentImpl camera2ControllerComponentImpl = this;
        private final Camera2ControllerConfig camera2ControllerConfig;
        private final CameraPipeComponentImpl cameraPipeComponentImpl;
        Provider provideCameraStatusMonitorProvider;
        Provider provideCoroutineScopeProvider;
        Provider provideSessionFactoryProvider;

        Camera2ControllerComponentImpl(CameraPipeComponentImpl cameraPipeComponentImpl, Camera2ControllerConfig camera2ControllerConfig) {
            this.cameraPipeComponentImpl = cameraPipeComponentImpl;
            this.camera2ControllerConfig = camera2ControllerConfig;
            initialize(camera2ControllerConfig);
        }

        StandardCamera2CaptureSequenceProcessorFactory standardCamera2CaptureSequenceProcessorFactory() {
            return new StandardCamera2CaptureSequenceProcessorFactory((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), Camera2ControllerConfig_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.camera2ControllerConfig), Camera2ControllerConfig_ProvideStreamGraphFactory.provideStreamGraph(this.camera2ControllerConfig), (Camera2Quirks) this.cameraPipeComponentImpl.camera2QuirksProvider.get(), (StrictMode) this.cameraPipeComponentImpl.provideStrictModeProvider.get());
        }

        private void initialize(Camera2ControllerConfig camera2ControllerConfig) {
            this.provideCoroutineScopeProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.camera2ControllerComponentImpl, 1));
            this.provideCameraStatusMonitorProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.camera2ControllerComponentImpl, 2));
            this.androidMSessionFactoryProvider = new SwitchingProvider(this.cameraPipeComponentImpl, this.camera2ControllerComponentImpl, 4);
            this.androidMHighSpeedSessionFactoryProvider = new SwitchingProvider(this.cameraPipeComponentImpl, this.camera2ControllerComponentImpl, 5);
            this.androidNSessionFactoryProvider = new SwitchingProvider(this.cameraPipeComponentImpl, this.camera2ControllerComponentImpl, 6);
            this.androidPSessionFactoryProvider = new SwitchingProvider(this.cameraPipeComponentImpl, this.camera2ControllerComponentImpl, 7);
            this.androidExtensionSessionFactoryProvider = new SwitchingProvider(this.cameraPipeComponentImpl, this.camera2ControllerComponentImpl, 8);
            this.provideSessionFactoryProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.camera2ControllerComponentImpl, 3));
            this.camera2CameraControllerProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, this.camera2ControllerComponentImpl, 0));
        }

        @Override // androidx.camera.camera2.pipe.config.Camera2ControllerComponent
        public CameraController cameraController() {
            return (CameraController) this.camera2CameraControllerProvider.get();
        }

        private static final class SwitchingProvider implements Provider {
            private final Camera2ControllerComponentImpl camera2ControllerComponentImpl;
            private final CameraPipeComponentImpl cameraPipeComponentImpl;

            /* JADX INFO: renamed from: id */
            private final int f14id;

            SwitchingProvider(CameraPipeComponentImpl cameraPipeComponentImpl, Camera2ControllerComponentImpl camera2ControllerComponentImpl, int i) {
                this.cameraPipeComponentImpl = cameraPipeComponentImpl;
                this.camera2ControllerComponentImpl = camera2ControllerComponentImpl;
                this.f14id = i;
            }

            @Override // javax.inject.Provider
            public Object get() {
                switch (this.f14id) {
                    case 0:
                        return new Camera2CameraController((CoroutineScope) this.camera2ControllerComponentImpl.provideCoroutineScopeProvider.get(), (Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), (StrictMode) this.cameraPipeComponentImpl.provideStrictModeProvider.get(), Camera2ControllerConfig_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.camera2ControllerComponentImpl.camera2ControllerConfig), Camera2ControllerConfig_ProvideGraphListenerFactory.provideGraphListener(this.camera2ControllerComponentImpl.camera2ControllerConfig), Camera2ControllerConfig_ProvideSurfaceGraphFactory.provideSurfaceGraph(this.camera2ControllerComponentImpl.camera2ControllerConfig), (CameraStatusMonitor) this.camera2ControllerComponentImpl.provideCameraStatusMonitorProvider.get(), (CaptureSessionFactory) this.camera2ControllerComponentImpl.provideSessionFactoryProvider.get(), this.camera2ControllerComponentImpl.standardCamera2CaptureSequenceProcessorFactory(), (Camera2DeviceManager) this.cameraPipeComponentImpl.pruningCamera2DeviceManagerProvider.get(), (CameraSurfaceManager) this.cameraPipeComponentImpl.provideCameraSurfaceManagerProvider.get(), (Camera2Quirks) this.cameraPipeComponentImpl.camera2QuirksProvider.get(), (TimeSource) this.cameraPipeComponentImpl.systemTimeSourceProvider.get(), Camera2ControllerConfig_ProvideCameraGraphIdFactory.provideCameraGraphId(this.camera2ControllerComponentImpl.camera2ControllerConfig), Camera2ControllerConfig_ProvideShutdownListenerFactory.provideShutdownListener(this.camera2ControllerComponentImpl.camera2ControllerConfig), Camera2ControllerConfig_ProvideStreamGraphFactory.provideStreamGraph(this.camera2ControllerComponentImpl.camera2ControllerConfig), (ConcurrentSessionSequencers) this.cameraPipeComponentImpl.concurrentSessionSequencersProvider.get());
                    case 1:
                        return Camera2ControllerModule_Companion_ProvideCoroutineScopeFactory.provideCoroutineScope((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), (Job) this.cameraPipeComponentImpl.provideCameraPipeJobProvider.get());
                    case 2:
                        CameraPipeComponentImpl cameraPipeComponentImpl = this.cameraPipeComponentImpl;
                        return AbstractC0222xeace780b.provideCameraStatusMonitor(cameraPipeComponentImpl.provideCameraManagerProvider, (Threads) cameraPipeComponentImpl.provideThreadsProvider.get(), Camera2ControllerConfig_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.camera2ControllerComponentImpl.camera2ControllerConfig), (Job) this.cameraPipeComponentImpl.provideCameraPipeJobProvider.get());
                    case 3:
                        Camera2ControllerComponentImpl camera2ControllerComponentImpl = this.camera2ControllerComponentImpl;
                        return Camera2CaptureSessionsModule_ProvideSessionFactoryFactory.provideSessionFactory(camera2ControllerComponentImpl.androidMSessionFactoryProvider, camera2ControllerComponentImpl.androidMHighSpeedSessionFactoryProvider, camera2ControllerComponentImpl.androidNSessionFactoryProvider, camera2ControllerComponentImpl.androidPSessionFactoryProvider, camera2ControllerComponentImpl.androidExtensionSessionFactoryProvider, Camera2ControllerConfig_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(camera2ControllerComponentImpl.camera2ControllerConfig));
                    case 4:
                        return new AndroidMSessionFactory((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), Camera2ControllerConfig_ProvideStreamGraphFactory.provideStreamGraph(this.camera2ControllerComponentImpl.camera2ControllerConfig), Camera2ControllerConfig_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.camera2ControllerComponentImpl.camera2ControllerConfig));
                    case 5:
                        return new AndroidMHighSpeedSessionFactory(Camera2ControllerConfig_ProvideStreamGraphFactory.provideStreamGraph(this.camera2ControllerComponentImpl.camera2ControllerConfig), (Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get());
                    case 6:
                        return new AndroidNSessionFactory((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), Camera2ControllerConfig_ProvideStreamGraphFactory.provideStreamGraph(this.camera2ControllerComponentImpl.camera2ControllerConfig), Camera2ControllerConfig_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.camera2ControllerComponentImpl.camera2ControllerConfig));
                    case 7:
                        return new AndroidPSessionFactory((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), Camera2ControllerConfig_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.camera2ControllerComponentImpl.camera2ControllerConfig), Camera2ControllerConfig_ProvideStreamGraphFactory.provideStreamGraph(this.camera2ControllerComponentImpl.camera2ControllerConfig));
                    case 8:
                        return new AndroidExtensionSessionFactory((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), Camera2ControllerConfig_ProvideCameraGraphConfigFactory.provideCameraGraphConfig(this.camera2ControllerComponentImpl.camera2ControllerConfig), Camera2ControllerConfig_ProvideStreamGraphFactory.provideStreamGraph(this.camera2ControllerComponentImpl.camera2ControllerConfig), (Camera2MetadataProvider) this.cameraPipeComponentImpl.camera2MetadataCacheProvider.get(), (StrictMode) this.cameraPipeComponentImpl.provideStrictModeProvider.get());
                    default:
                        throw new AssertionError(this.f14id);
                }
            }
        }
    }

    private static final class CameraPipeComponentImpl implements CameraPipeComponent {
        Provider audioRestrictionControllerImplProvider;
        Provider camera2BackendProvider;
        Provider camera2DeviceCacheProvider;
        Provider camera2DeviceCloserImplProvider;
        Provider camera2ErrorProcessorProvider;
        Provider camera2MetadataCacheProvider;
        Provider camera2QuirksProvider;
        Provider cameraDevicesImplProvider;
        private final CameraPipeComponentImpl cameraPipeComponentImpl = this;
        private final CameraPipeConfigModule cameraPipeConfigModule;
        Provider cameraPipeLifetimeProvider;
        Provider concurrentSessionSequencersProvider;
        Provider permissionsProvider;
        Provider provideCameraBackendsProvider;
        Provider provideCameraContextProvider;
        Provider provideCameraDeviceSetupCompatFactoryProvider;
        Provider provideCameraManagerProvider;
        Provider provideCameraPipeJobProvider;
        Provider provideCameraSurfaceManagerProvider;
        Provider provideDevicePolicyManagerWrapperProvider;
        Provider providePackageManagerProvider;
        Provider provideStrictModeProvider;
        Provider provideThreadsProvider;
        Provider pruningCamera2DeviceManagerProvider;
        Provider retryingCameraStateOpenerImplProvider;
        Provider systemTimeSourceProvider;
        private final ThreadConfigModule threadConfigModule;

        CameraPipeComponentImpl(CameraPipeConfigModule cameraPipeConfigModule, ThreadConfigModule threadConfigModule) {
            this.cameraPipeConfigModule = cameraPipeConfigModule;
            this.threadConfigModule = threadConfigModule;
            initialize(cameraPipeConfigModule, threadConfigModule);
        }

        Context cameraPipeContextContext() {
            return CameraPipeModule_Companion_ProvideContextFactory.provideContext(CameraPipeConfigModule_ProvideCameraPipeConfigFactory.provideCameraPipeConfig(this.cameraPipeConfigModule));
        }

        CameraPipe.CameraMetadataConfig cameraMetadataConfig() {
            return CameraPipeModule_Companion_ProvideCameraMetadataConfigFactory.provideCameraMetadataConfig(CameraPipeConfigModule_ProvideCameraPipeConfigFactory.provideCameraPipeConfig(this.cameraPipeConfigModule));
        }

        Camera2CameraOpener camera2CameraOpener() {
            return new Camera2CameraOpener(this.provideCameraManagerProvider, (Threads) this.provideThreadsProvider.get());
        }

        CameraPipe.CameraInteropConfig cameraInteropConfig() {
            CameraPipeConfigModule cameraPipeConfigModule = this.cameraPipeConfigModule;
            return CameraPipeConfigModule_ProvideCameraInteropConfigFactory.provideCameraInteropConfig(cameraPipeConfigModule, CameraPipeConfigModule_ProvideCameraPipeConfigFactory.provideCameraPipeConfig(cameraPipeConfigModule));
        }

        CameraStateOpener cameraStateOpener() {
            return new CameraStateOpener(camera2CameraOpener(), (Camera2MetadataProvider) this.camera2MetadataCacheProvider.get(), (CameraErrorListener) this.camera2ErrorProcessorProvider.get(), (Camera2Quirks) this.camera2QuirksProvider.get(), (TimeSource) this.systemTimeSourceProvider.get(), cameraInteropConfig(), (Threads) this.provideThreadsProvider.get());
        }

        Camera2CameraAvailabilityMonitor camera2CameraAvailabilityMonitor() {
            return new Camera2CameraAvailabilityMonitor(this.provideCameraManagerProvider, (Threads) this.provideThreadsProvider.get(), (Job) this.provideCameraPipeJobProvider.get());
        }

        ImageReaderImageSources imageReaderImageSources() {
            return new ImageReaderImageSources((Threads) this.provideThreadsProvider.get(), CameraPipeConfigModule_ProvideCameraPipeConfigFactory.provideCameraPipeConfig(this.cameraPipeConfigModule));
        }

        ImageSources imageSources() {
            return CameraPipeModule_Companion_ConfigureImageSourcesFactory.configureImageSources(imageReaderImageSources(), CameraPipeConfigModule_ProvideCameraPipeConfigFactory.provideCameraPipeConfig(this.cameraPipeConfigModule));
        }

        private void initialize(CameraPipeConfigModule cameraPipeConfigModule, ThreadConfigModule threadConfigModule) {
            this.provideCameraPipeJobProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 1));
            this.cameraPipeLifetimeProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 0));
            this.provideThreadsProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 5));
            this.provideCameraManagerProvider = SingleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 7));
            this.providePackageManagerProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 8));
            this.camera2ErrorProcessorProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 9));
            this.provideCameraDeviceSetupCompatFactoryProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 10));
            this.camera2DeviceCacheProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 6));
            this.permissionsProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 12));
            this.systemTimeSourceProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 13));
            this.camera2MetadataCacheProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 11));
            this.provideStrictModeProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 17));
            this.camera2QuirksProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 16));
            this.provideDevicePolicyManagerWrapperProvider = SingleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 18));
            this.audioRestrictionControllerImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 19));
            this.retryingCameraStateOpenerImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 15));
            this.camera2DeviceCloserImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 20));
            this.pruningCamera2DeviceManagerProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 14));
            this.camera2BackendProvider = new SwitchingProvider(this.cameraPipeComponentImpl, 4);
            this.provideCameraBackendsProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 3));
            this.cameraDevicesImplProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 2));
            this.provideCameraContextProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 21));
            this.provideCameraSurfaceManagerProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 22));
            this.concurrentSessionSequencersProvider = DoubleCheck.provider(new SwitchingProvider(this.cameraPipeComponentImpl, 23));
        }

        @Override // androidx.camera.camera2.pipe.config.CameraPipeComponent
        public CameraPipeLifetime cameraPipeLifetime() {
            return (CameraPipeLifetime) this.cameraPipeLifetimeProvider.get();
        }

        @Override // androidx.camera.camera2.pipe.config.CameraPipeComponent
        public CameraGraphComponent.Builder cameraGraphComponentBuilder() {
            return new CameraGraphComponentBuilder(this.cameraPipeComponentImpl);
        }

        @Override // androidx.camera.camera2.pipe.config.CameraPipeComponent
        public CameraDevices cameras() {
            return (CameraDevices) this.cameraDevicesImplProvider.get();
        }

        @Override // androidx.camera.camera2.pipe.config.CameraPipeComponent
        public CameraBackends cameraBackends() {
            return (CameraBackends) this.provideCameraBackendsProvider.get();
        }

        @Override // androidx.camera.camera2.pipe.config.CameraPipeComponent
        public CameraContext cameraContext() {
            return (CameraContext) this.provideCameraContextProvider.get();
        }

        @Override // androidx.camera.camera2.pipe.config.CameraPipeComponent
        public CameraSurfaceManager cameraSurfaceManager() {
            return (CameraSurfaceManager) this.provideCameraSurfaceManagerProvider.get();
        }

        private static final class SwitchingProvider implements Provider {
            private final CameraPipeComponentImpl cameraPipeComponentImpl;

            /* JADX INFO: renamed from: id */
            private final int f16id;

            SwitchingProvider(CameraPipeComponentImpl cameraPipeComponentImpl, int i) {
                this.cameraPipeComponentImpl = cameraPipeComponentImpl;
                this.f16id = i;
            }

            @Override // javax.inject.Provider
            public Object get() {
                switch (this.f16id) {
                    case 0:
                        return new CameraPipeLifetime((Job) this.cameraPipeComponentImpl.provideCameraPipeJobProvider.get());
                    case 1:
                        return CameraPipeModule_Companion_ProvideCameraPipeJobFactory.provideCameraPipeJob();
                    case 2:
                        return new CameraDevicesImpl((CameraBackends) this.cameraPipeComponentImpl.provideCameraBackendsProvider.get());
                    case 3:
                        CameraPipe.Config configProvideCameraPipeConfig = CameraPipeConfigModule_ProvideCameraPipeConfigFactory.provideCameraPipeConfig(this.cameraPipeComponentImpl.cameraPipeConfigModule);
                        CameraPipeComponentImpl cameraPipeComponentImpl = this.cameraPipeComponentImpl;
                        return CameraPipeModule_Companion_ProvideCameraBackendsFactory.provideCameraBackends(configProvideCameraPipeConfig, cameraPipeComponentImpl.camera2BackendProvider, cameraPipeComponentImpl.cameraPipeContextContext(), (Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), (CameraPipeLifetime) this.cameraPipeComponentImpl.cameraPipeLifetimeProvider.get());
                    case 4:
                        return new Camera2Backend((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), (Camera2DeviceCache) this.cameraPipeComponentImpl.camera2DeviceCacheProvider.get(), (Camera2MetadataCache) this.cameraPipeComponentImpl.camera2MetadataCacheProvider.get(), (Camera2DeviceManager) this.cameraPipeComponentImpl.pruningCamera2DeviceManagerProvider.get(), new Camera2ControllerComponentBuilder(this.cameraPipeComponentImpl), this.cameraPipeComponentImpl.cameraPipeContextContext());
                    case 5:
                        return ThreadConfigModule_ProvideThreadsFactory.provideThreads(this.cameraPipeComponentImpl.threadConfigModule, (CameraPipeLifetime) this.cameraPipeComponentImpl.cameraPipeLifetimeProvider.get(), (Job) this.cameraPipeComponentImpl.provideCameraPipeJobProvider.get());
                    case 6:
                        CameraPipeComponentImpl cameraPipeComponentImpl2 = this.cameraPipeComponentImpl;
                        Provider provider = cameraPipeComponentImpl2.provideCameraManagerProvider;
                        Threads threads = (Threads) cameraPipeComponentImpl2.provideThreadsProvider.get();
                        Context contextCameraPipeContextContext = this.cameraPipeComponentImpl.cameraPipeContextContext();
                        PackageManager packageManager = (PackageManager) this.cameraPipeComponentImpl.providePackageManagerProvider.get();
                        CameraErrorListener cameraErrorListener = (CameraErrorListener) this.cameraPipeComponentImpl.camera2ErrorProcessorProvider.get();
                        CameraPipeComponentImpl cameraPipeComponentImpl3 = this.cameraPipeComponentImpl;
                        return new Camera2DeviceCache(provider, threads, contextCameraPipeContextContext, packageManager, cameraErrorListener, cameraPipeComponentImpl3.provideCameraDeviceSetupCompatFactoryProvider, (CameraPipeLifetime) cameraPipeComponentImpl3.cameraPipeLifetimeProvider.get(), (Job) this.cameraPipeComponentImpl.provideCameraPipeJobProvider.get());
                    case 7:
                        return CameraPipeModule_Companion_ProvideCameraManagerFactory.provideCameraManager(this.cameraPipeComponentImpl.cameraPipeContextContext());
                    case 8:
                        return CameraPipeModule_Companion_ProvidePackageManagerFactory.providePackageManager(this.cameraPipeComponentImpl.cameraPipeContextContext());
                    case 9:
                        return new Camera2ErrorProcessor();
                    case 10:
                        return AbstractC0223xd2e60b16.provideCameraDeviceSetupCompatFactory(this.cameraPipeComponentImpl.cameraPipeContextContext());
                    case 11:
                        return new Camera2MetadataCache(this.cameraPipeComponentImpl.cameraPipeContextContext(), (Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), (Permissions) this.cameraPipeComponentImpl.permissionsProvider.get(), this.cameraPipeComponentImpl.cameraMetadataConfig(), (TimeSource) this.cameraPipeComponentImpl.systemTimeSourceProvider.get());
                    case 12:
                        return new Permissions(this.cameraPipeComponentImpl.cameraPipeContextContext());
                    case 13:
                        return new SystemTimeSource();
                    case 14:
                        return new PruningCamera2DeviceManager((Permissions) this.cameraPipeComponentImpl.permissionsProvider.get(), (RetryingCameraStateOpener) this.cameraPipeComponentImpl.retryingCameraStateOpenerImplProvider.get(), (Camera2DeviceCloser) this.cameraPipeComponentImpl.camera2DeviceCloserImplProvider.get(), (Camera2ErrorProcessor) this.cameraPipeComponentImpl.camera2ErrorProcessorProvider.get(), (Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get());
                    case 15:
                        return new RetryingCameraStateOpenerImpl(this.cameraPipeComponentImpl.cameraStateOpener(), (CameraErrorListener) this.cameraPipeComponentImpl.camera2ErrorProcessorProvider.get(), this.cameraPipeComponentImpl.camera2CameraAvailabilityMonitor(), (TimeSource) this.cameraPipeComponentImpl.systemTimeSourceProvider.get(), (DevicePolicyManagerWrapper) this.cameraPipeComponentImpl.provideDevicePolicyManagerWrapperProvider.get(), (AudioRestrictionController) this.cameraPipeComponentImpl.audioRestrictionControllerImplProvider.get(), this.cameraPipeComponentImpl.cameraInteropConfig(), (Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get());
                    case 16:
                        return new Camera2Quirks((Camera2MetadataProvider) this.cameraPipeComponentImpl.camera2MetadataCacheProvider.get(), (StrictMode) this.cameraPipeComponentImpl.provideStrictModeProvider.get());
                    case 17:
                        return CameraPipeModule_Companion_ProvideStrictModeFactory.provideStrictMode(CameraPipeConfigModule_ProvideCameraPipeFlagsFactory.provideCameraPipeFlags(this.cameraPipeComponentImpl.cameraPipeConfigModule));
                    case 18:
                        return AbstractC0224xe9313e8e.provideDevicePolicyManagerWrapper(this.cameraPipeComponentImpl.cameraPipeContextContext());
                    case 19:
                        return new AudioRestrictionControllerImpl((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), (CameraPipeLifetime) this.cameraPipeComponentImpl.cameraPipeLifetimeProvider.get(), (Job) this.cameraPipeComponentImpl.provideCameraPipeJobProvider.get());
                    case 20:
                        return new Camera2DeviceCloserImpl((Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), (Camera2Quirks) this.cameraPipeComponentImpl.camera2QuirksProvider.get(), (RetryingCameraStateOpener) this.cameraPipeComponentImpl.retryingCameraStateOpenerImplProvider.get());
                    case 21:
                        return CameraPipeModule_Companion_ProvideCameraContextFactory.provideCameraContext(this.cameraPipeComponentImpl.cameraPipeContextContext(), (Threads) this.cameraPipeComponentImpl.provideThreadsProvider.get(), (CameraBackends) this.cameraPipeComponentImpl.provideCameraBackendsProvider.get());
                    case 22:
                        return CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory.provideCameraSurfaceManager();
                    case 23:
                        return new ConcurrentSessionSequencers();
                    default:
                        throw new AssertionError(this.f16id);
                }
            }
        }
    }
}
