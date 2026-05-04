package androidx.camera.core.impl;

import android.graphics.Rect;
import android.util.Range;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraUseCaseAdapterProvider;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public interface CameraInfoInternal extends CameraInfo {
    Set getAvailableCapabilities();

    Object getCameraCharacteristics();

    String getCameraId();

    Quirks getCameraQuirks();

    EncoderProfilesProvider getEncoderProfilesProvider();

    CameraInfoInternal getImplementation();

    Rect getSensorRect();

    Set getSupportedDynamicRanges();

    List getSupportedHighResolutions(int i);

    List getSupportedHighSpeedResolutions();

    List getSupportedHighSpeedResolutionsFor(Range range);

    Set getSupportedOutputFormats();

    List getSupportedResolutions(int i);

    Timebase getTimebase();

    boolean isExternalCamera();

    boolean isHighSpeedSupported();

    boolean isPreviewStabilizationSupported();

    boolean isResolvedFeatureGroupSupported(ResolvedFeatureGroup resolvedFeatureGroup, androidx.camera.core.SessionConfig sessionConfig);

    boolean isVideoStabilizationSupported();

    void setCameraUseCaseAdapterProvider(CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider);

    /* JADX INFO: renamed from: androidx.camera.core.impl.CameraInfoInternal$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static CameraInfoInternal $default$getImplementation(CameraInfoInternal cameraInfoInternal) {
            return cameraInfoInternal;
        }

        public static boolean $default$isResolvedFeatureGroupSupported(CameraInfoInternal cameraInfoInternal, ResolvedFeatureGroup resolvedFeatureGroup, androidx.camera.core.SessionConfig sessionConfig) {
            for (GroupableFeature groupableFeature : resolvedFeatureGroup.getFeatures()) {
                if (!groupableFeature.isSupportedIndividually(cameraInfoInternal, sessionConfig)) {
                    Logger.m76d("CameraInfoInternal", groupableFeature + " is not supported.");
                    return false;
                }
            }
            try {
                UseCaseAdditionSimulator.simulateAddUseCases(cameraInfoInternal, sessionConfig, false, resolvedFeatureGroup);
                return true;
            } catch (CameraUseCaseAdapter.CameraException | IllegalArgumentException e) {
                Logger.m77d("CameraInfoInternal", "CameraInfoInternal.isResolvedFeatureGroupSupported failed", e);
                return false;
            }
        }
    }
}
