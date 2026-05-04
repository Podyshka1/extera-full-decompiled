package androidx.camera.core;

import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.core.internal.StreamSpecsCalculator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraUseCaseAdapterProviderImpl implements CameraUseCaseAdapterProvider {
    private final CameraCoordinator cameraCoordinator;
    private final CameraRepository cameraRepository;
    private final StreamSpecsCalculator streamSpecsCalculator;
    private final UseCaseConfigFactory useCaseConfigFactory;

    public CameraUseCaseAdapterProviderImpl(CameraRepository cameraRepository, CameraCoordinator cameraCoordinator, UseCaseConfigFactory useCaseConfigFactory, StreamSpecsCalculator streamSpecsCalculator) {
        Intrinsics.checkNotNullParameter(cameraRepository, "cameraRepository");
        Intrinsics.checkNotNullParameter(cameraCoordinator, "cameraCoordinator");
        Intrinsics.checkNotNullParameter(useCaseConfigFactory, "useCaseConfigFactory");
        Intrinsics.checkNotNullParameter(streamSpecsCalculator, "streamSpecsCalculator");
        this.cameraRepository = cameraRepository;
        this.cameraCoordinator = cameraCoordinator;
        this.useCaseConfigFactory = useCaseConfigFactory;
        this.streamSpecsCalculator = streamSpecsCalculator;
    }

    @Override // androidx.camera.core.CameraUseCaseAdapterProvider
    public CameraUseCaseAdapter provide(String cameraId) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        CameraInternal camera = this.cameraRepository.getCamera(cameraId);
        Intrinsics.checkNotNullExpressionValue(camera, "getCamera(...)");
        return provideInternal$default(this, camera, null, new AdapterCameraInfo(camera.getCameraInfoInternal(), CameraConfigs.defaultConfig()), null, null, null, 58, null);
    }

    @Override // androidx.camera.core.CameraUseCaseAdapterProvider
    public CameraUseCaseAdapter provide(CameraInternal camera, CameraInternal cameraInternal, AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2, CompositionSettings compositionSettings, CompositionSettings secondaryCompositionSettings) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        Intrinsics.checkNotNullParameter(adapterCameraInfo, "adapterCameraInfo");
        Intrinsics.checkNotNullParameter(compositionSettings, "compositionSettings");
        Intrinsics.checkNotNullParameter(secondaryCompositionSettings, "secondaryCompositionSettings");
        return provideInternal(camera, cameraInternal, adapterCameraInfo, adapterCameraInfo2, compositionSettings, secondaryCompositionSettings);
    }

    static /* synthetic */ CameraUseCaseAdapter provideInternal$default(CameraUseCaseAdapterProviderImpl cameraUseCaseAdapterProviderImpl, CameraInternal cameraInternal, CameraInternal cameraInternal2, AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2, CompositionSettings DEFAULT, CompositionSettings DEFAULT2, int i, Object obj) {
        if ((i & 2) != 0) {
            cameraInternal2 = null;
        }
        if ((i & 8) != 0) {
            adapterCameraInfo2 = null;
        }
        if ((i & 16) != 0) {
            DEFAULT = CompositionSettings.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
        }
        if ((i & 32) != 0) {
            DEFAULT2 = CompositionSettings.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT2, "DEFAULT");
        }
        return cameraUseCaseAdapterProviderImpl.provideInternal(cameraInternal, cameraInternal2, adapterCameraInfo, adapterCameraInfo2, DEFAULT, DEFAULT2);
    }

    private final CameraUseCaseAdapter provideInternal(CameraInternal cameraInternal, CameraInternal cameraInternal2, AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2) {
        return new CameraUseCaseAdapter(cameraInternal, cameraInternal2, adapterCameraInfo, adapterCameraInfo2, compositionSettings, compositionSettings2, this.cameraCoordinator, this.streamSpecsCalculator, this.useCaseConfigFactory);
    }
}
