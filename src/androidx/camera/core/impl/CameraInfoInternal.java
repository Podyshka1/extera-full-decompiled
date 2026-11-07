package androidx.camera.core.impl;

import android.graphics.Rect;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraUseCaseAdapterProvider;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.core.featuregroup.impl.ResolvedFeatureGroup;
import androidx.camera.core.impl.utils.RangeUtil;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraInfoInternal extends CameraInfo {
    Set<Integer> getAvailableCapabilities();

    Object getCameraCharacteristics();

    String getCameraId();

    Quirks getCameraQuirks();

    default CameraInfoInternal getImplementation() {
        return this;
    }

    Rect getSensorRect();

    Set<DynamicRange> getSupportedDynamicRanges();

    List<Size> getSupportedHighResolutions(int i);

    Set<Range<Integer>> getSupportedHighSpeedFrameRateRanges();

    Set<Integer> getSupportedOutputFormats();

    List<Size> getSupportedResolutions(int i);

    boolean isPreviewStabilizationSupported();

    boolean isVideoStabilizationSupported();

    @Override // androidx.camera.core.CameraInfo
    default Set<Range<Integer>> getSupportedFrameRateRanges(androidx.camera.core.SessionConfig sessionConfig) {
        Set<Range<Integer>> supportedFrameRateRanges;
        try {
            int maxSupportedFrameRate = UseCaseAdditionSimulator.simulateAddUseCases(this, sessionConfig, true).getPrimaryStreamSpecResult().getMaxSupportedFrameRate();
            if (sessionConfig.getSessionType() == 1) {
                supportedFrameRateRanges = RangeUtil.filterFixedRanges(getSupportedHighSpeedFrameRateRanges());
            } else {
                supportedFrameRateRanges = getSupportedFrameRateRanges();
            }
            if (supportedFrameRateRanges.isEmpty()) {
                return Collections.EMPTY_SET;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Range<Integer> range : supportedFrameRateRanges) {
                if (((Integer) range.getUpper()).intValue() <= maxSupportedFrameRate) {
                    linkedHashSet.add(range);
                }
            }
            return linkedHashSet;
        } catch (Throwable th) {
            Logger.m80w("CameraInfoInternal", "Failed to get max supported frameRate by SessionConfig: " + sessionConfig, th);
            return Collections.EMPTY_SET;
        }
    }

    @Override // androidx.camera.core.CameraInfo
    default boolean isSessionConfigSupported(androidx.camera.core.SessionConfig sessionConfig) {
        try {
            CameraFilter cameraFilter = sessionConfig.getCameraFilter();
            if (cameraFilter != null && cameraFilter.filter(Collections.singletonList(this)).isEmpty()) {
                return false;
            }
            UseCaseAdditionSimulator.simulateAddUseCases(this, sessionConfig, false);
            return true;
        } catch (CameraUseCaseAdapter.CameraException e) {
            e = e;
            Logger.m75d("CameraInfoInternal", "CameraInfoInternal.isSessionConfigSupported failed", e);
            return false;
        } catch (IllegalArgumentException e2) {
            e = e2;
            Logger.m75d("CameraInfoInternal", "CameraInfoInternal.isSessionConfigSupported failed", e);
            return false;
        }
    }

    default boolean isResolvedFeatureGroupSupported(ResolvedFeatureGroup resolvedFeatureGroup, androidx.camera.core.SessionConfig sessionConfig) {
        for (GroupableFeature groupableFeature : resolvedFeatureGroup.getFeatures()) {
            if (!groupableFeature.isSupportedIndividually(this, sessionConfig)) {
                Logger.m74d("CameraInfoInternal", groupableFeature + " is not supported.");
                return false;
            }
        }
        try {
            UseCaseAdditionSimulator.simulateAddUseCases(this, sessionConfig, false, resolvedFeatureGroup);
            return true;
        } catch (CameraUseCaseAdapter.CameraException | IllegalArgumentException e) {
            Logger.m75d("CameraInfoInternal", "CameraInfoInternal.isResolvedFeatureGroupSupported failed", e);
            return false;
        }
    }

    default void setCameraUseCaseAdapterProvider(CameraUseCaseAdapterProvider cameraUseCaseAdapterProvider) {
        UseCaseAdditionSimulator.setCameraUseCaseAdapterProvider(cameraUseCaseAdapterProvider);
    }

    @Override // androidx.camera.core.CameraInfo
    default CameraIdentifier getCameraIdentifier() {
        return CameraIdentifier.Factory.create(getCameraId());
    }
}
