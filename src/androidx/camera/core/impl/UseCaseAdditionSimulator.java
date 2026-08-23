package androidx.camera.core.impl;

import androidx.camera.core.CameraUseCaseAdapterProvider;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.internal.CalculatedUseCaseInfo;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class UseCaseAdditionSimulator {
    public static final UseCaseAdditionSimulator INSTANCE = new UseCaseAdditionSimulator();
    public static CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider;

    private UseCaseAdditionSimulator() {
    }

    public static final CameraUseCaseAdapterProvider getCameraUseCaseAdapterProvider() {
        CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider2 = cameraUseCaseAdapterProvider;
        if (cameraUseCaseAdapterProvider2 != null) {
            return cameraUseCaseAdapterProvider2;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cameraUseCaseAdapterProvider");
        return null;
    }

    public static final void setCameraUseCaseAdapterProvider(CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider2) {
        Intrinsics.checkNotNullParameter(cameraUseCaseAdapterProvider2, "<set-?>");
        cameraUseCaseAdapterProvider = cameraUseCaseAdapterProvider2;
    }

    public static final CalculatedUseCaseInfo simulateAddUseCases(CameraInfoInternal cameraInfoInternal, androidx.camera.core.SessionConfig sessionConfig, boolean z, ResolvedFeatureGroup resolvedFeatureGroup) {
        Intrinsics.checkNotNullParameter(cameraInfoInternal, "cameraInfoInternal");
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        if (cameraUseCaseAdapterProvider == null) {
            throw new IllegalStateException("mCameraUseCaseAdapterProvider must be initialized first!");
        }
        CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider2 = getCameraUseCaseAdapterProvider();
        String cameraId = cameraInfoInternal.getCameraId();
        Intrinsics.checkNotNullExpressionValue(cameraId, "getCameraId(...)");
        CameraUseCaseAdapter cameraUseCaseAdapterProvide = cameraUseCaseAdapterProvider2.provide(cameraId);
        sessionConfig.getViewPort();
        cameraUseCaseAdapterProvide.setViewPort(null);
        cameraUseCaseAdapterProvide.setEffects(sessionConfig.getEffects());
        cameraUseCaseAdapterProvide.setSessionType(sessionConfig.getSessionType());
        cameraUseCaseAdapterProvide.setFrameRate(sessionConfig.getFrameRateRange());
        List useCases = sessionConfig.getUseCases();
        if (resolvedFeatureGroup == null) {
            resolvedFeatureGroup = ResolvedFeatureGroup.Companion.resolveFeatureGroup$default(ResolvedFeatureGroup.Companion, sessionConfig, cameraInfoInternal, null, 2, null);
        }
        CalculatedUseCaseInfo calculatedUseCaseInfoSimulateAddUseCases = cameraUseCaseAdapterProvide.simulateAddUseCases(useCases, resolvedFeatureGroup, z);
        Intrinsics.checkNotNullExpressionValue(calculatedUseCaseInfoSimulateAddUseCases, "simulateAddUseCases(...)");
        return calculatedUseCaseInfoSimulateAddUseCases;
    }
}
