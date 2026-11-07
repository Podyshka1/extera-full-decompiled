package androidx.camera.core.impl;

import androidx.camera.core.CameraUseCaseAdapterProvider;
import androidx.camera.core.UseCase;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.internal.CalculatedUseCaseInfo;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J5\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0007¢\u0006\u0004\b\r\u0010\u000eR(\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0016\u0010\u0003\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Landroidx/camera/core/impl/UseCaseAdditionSimulator;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/core/impl/CameraInfoInternal;", "cameraInfoInternal", "Landroidx/camera/core/SessionConfig;", "sessionConfig", _UrlKt.FRAGMENT_ENCODE_SET, "findMaxSupportedFrameRate", "Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;", "resolvedFeatureGroup", "Landroidx/camera/core/internal/CalculatedUseCaseInfo;", "simulateAddUseCases", "(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/SessionConfig;ZLandroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)Landroidx/camera/core/internal/CalculatedUseCaseInfo;", "Landroidx/camera/core/CameraUseCaseAdapterProvider;", "cameraUseCaseAdapterProvider", "Landroidx/camera/core/CameraUseCaseAdapterProvider;", "getCameraUseCaseAdapterProvider", "()Landroidx/camera/core/CameraUseCaseAdapterProvider;", "setCameraUseCaseAdapterProvider", "(Landroidx/camera/core/CameraUseCaseAdapterProvider;)V", "getCameraUseCaseAdapterProvider$annotations", "camera-core"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public final class UseCaseAdditionSimulator {
    public static final UseCaseAdditionSimulator INSTANCE = new UseCaseAdditionSimulator();
    public static CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider;

    @JvmStatic
    @JvmOverloads
    public static final CalculatedUseCaseInfo simulateAddUseCases(CameraInfoInternal cameraInfoInternal, androidx.camera.core.SessionConfig sessionConfig, boolean z) {
        return simulateAddUseCases$default(cameraInfoInternal, sessionConfig, z, null, 8, null);
    }

    private UseCaseAdditionSimulator() {
    }

    public static final CameraUseCaseAdapterProvider getCameraUseCaseAdapterProvider() {
        CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider2 = cameraUseCaseAdapterProvider;
        if (cameraUseCaseAdapterProvider2 != null) {
            return cameraUseCaseAdapterProvider2;
        }
        return null;
    }

    public static final void setCameraUseCaseAdapterProvider(CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider2) {
        cameraUseCaseAdapterProvider = cameraUseCaseAdapterProvider2;
    }

    public static /* synthetic */ CalculatedUseCaseInfo simulateAddUseCases$default(CameraInfoInternal cameraInfoInternal, androidx.camera.core.SessionConfig sessionConfig, boolean z, ResolvedFeatureGroup resolvedFeatureGroup, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        if ((i & 8) != 0) {
            resolvedFeatureGroup = null;
        }
        return simulateAddUseCases(cameraInfoInternal, sessionConfig, z, resolvedFeatureGroup);
    }

    @JvmStatic
    @JvmOverloads
    public static final CalculatedUseCaseInfo simulateAddUseCases(CameraInfoInternal cameraInfoInternal, androidx.camera.core.SessionConfig sessionConfig, boolean findMaxSupportedFrameRate, ResolvedFeatureGroup resolvedFeatureGroup) {
        if (cameraUseCaseAdapterProvider == null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("mCameraUseCaseAdapterProvider must be initialized first!");
            return null;
        }
        CameraUseCaseAdapter cameraUseCaseAdapterProvide = getCameraUseCaseAdapterProvider().provide(cameraInfoInternal.getCameraId());
        sessionConfig.getViewPort();
        cameraUseCaseAdapterProvide.setViewPort(null);
        cameraUseCaseAdapterProvide.setEffects(sessionConfig.getEffects());
        cameraUseCaseAdapterProvide.setSessionType(sessionConfig.getSessionType());
        cameraUseCaseAdapterProvide.setFrameRate(sessionConfig.getFrameRateRange());
        List<UseCase> useCases = sessionConfig.getUseCases();
        if (resolvedFeatureGroup == null) {
            resolvedFeatureGroup = ResolvedFeatureGroup.Companion.resolveFeatureGroup$default(ResolvedFeatureGroup.INSTANCE, sessionConfig, cameraInfoInternal, null, 2, null);
        }
        return cameraUseCaseAdapterProvide.simulateAddUseCases(useCases, resolvedFeatureGroup, findMaxSupportedFrameRate);
    }
}
