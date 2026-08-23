package androidx.camera.video;

import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.Quirks;
import androidx.camera.video.internal.BackupHdrProfileEncoderProfilesProvider;
import androidx.camera.video.internal.QualityExploredEncoderProfilesProvider;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import androidx.camera.video.internal.workaround.QualityAddedEncoderProfilesProvider;
import androidx.camera.video.internal.workaround.QualityResolutionModifiedEncoderProfilesProvider;
import androidx.camera.video.internal.workaround.QualityValidatedEncoderProfilesProvider;
import java.util.Collections;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class EncoderProfilesProviderResolver {
    public static final EncoderProfilesProviderResolver INSTANCE = new EncoderProfilesProviderResolver();

    private EncoderProfilesProviderResolver() {
    }

    public final EncoderProfilesProvider resolve(CameraInfoInternal cameraInfo, int i, int i2, VideoEncoderInfo.Finder videoEncoderInfoFinder) {
        VideoEncoderInfo.Finder finder;
        Intrinsics.checkNotNullParameter(cameraInfo, "cameraInfo");
        Intrinsics.checkNotNullParameter(videoEncoderInfoFinder, "videoEncoderInfoFinder");
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(("Not a supported video capabilities source: " + i).toString());
        }
        EncoderProfilesProvider encoderProfilesProvider = cameraInfo.getEncoderProfilesProvider();
        Intrinsics.checkNotNullExpressionValue(encoderProfilesProvider, "getEncoderProfilesProvider(...)");
        if (i2 == 2) {
            if (cameraInfo.isHighSpeedSupported()) {
                return encoderProfilesProvider;
            }
            EncoderProfilesProvider EMPTY = EncoderProfilesProvider.EMPTY;
            Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
            return EMPTY;
        }
        if (!CapabilitiesByQuality.containsSupportedQuality(encoderProfilesProvider, i2)) {
            Logger.m81w("EncoderProfilesResolver", "Camera EncoderProfilesProvider doesn't contain any supported Quality.");
            encoderProfilesProvider = new DefaultEncoderProfilesProvider(cameraInfo, CollectionsKt.listOf((Object[]) new Quality[]{Quality.FHD, Quality.f28HD, Quality.f29SD}), videoEncoderInfoFinder);
        }
        Quirks all = DeviceQuirks.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
        EncoderProfilesProvider qualityAddedEncoderProfilesProvider = new QualityAddedEncoderProfilesProvider(encoderProfilesProvider, all, cameraInfo, videoEncoderInfoFinder);
        if (i == 1) {
            finder = videoEncoderInfoFinder;
            qualityAddedEncoderProfilesProvider = new QualityExploredEncoderProfilesProvider(qualityAddedEncoderProfilesProvider, Quality.getSortedQualities(), Collections.singleton(DynamicRange.SDR), cameraInfo.getSupportedResolutions(34), finder);
        } else {
            finder = videoEncoderInfoFinder;
        }
        EncoderProfilesProvider qualityResolutionModifiedEncoderProfilesProvider = new QualityResolutionModifiedEncoderProfilesProvider(qualityAddedEncoderProfilesProvider, all);
        if (isHlg10Supported(cameraInfo)) {
            qualityResolutionModifiedEncoderProfilesProvider = new BackupHdrProfileEncoderProfilesProvider(qualityResolutionModifiedEncoderProfilesProvider, finder);
        }
        return new QualityValidatedEncoderProfilesProvider(qualityResolutionModifiedEncoderProfilesProvider, cameraInfo, all);
    }

    private final boolean isHlg10Supported(CameraInfoInternal cameraInfoInternal) {
        Set<DynamicRange> supportedDynamicRanges = cameraInfoInternal.getSupportedDynamicRanges();
        Intrinsics.checkNotNullExpressionValue(supportedDynamicRanges, "getSupportedDynamicRanges(...)");
        if (OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(supportedDynamicRanges) && supportedDynamicRanges.isEmpty()) {
            return false;
        }
        for (DynamicRange dynamicRange : supportedDynamicRanges) {
            if (dynamicRange.getEncoding() == 3 && dynamicRange.getBitDepth() == 10) {
                return true;
            }
        }
        return false;
    }
}
