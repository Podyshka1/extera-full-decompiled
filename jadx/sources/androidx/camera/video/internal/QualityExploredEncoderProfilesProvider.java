package androidx.camera.video.internal;

import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.video.CapabilitiesByQuality;
import androidx.camera.video.Quality;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.camera.video.internal.utils.EncoderProfilesUtil;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class QualityExploredEncoderProfilesProvider implements EncoderProfilesProvider {
    private final EncoderProfilesProvider mBaseEncoderProfilesProvider;
    private final Set mCameraSupportedResolutions;
    private final Set mTargetDynamicRanges;
    private final Set mTargetQualities;
    private final VideoEncoderInfo.Finder mVideoEncoderInfoFinder;
    private final Map mEncoderProfilesCache = new HashMap();
    private final Map mDynamicRangeToCapabilitiesMap = new HashMap();

    public QualityExploredEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, Collection collection, Collection collection2, Collection collection3, VideoEncoderInfo.Finder finder) {
        checkFullySpecifiedOrThrow(collection2);
        this.mBaseEncoderProfilesProvider = encoderProfilesProvider;
        this.mTargetQualities = new HashSet(collection);
        this.mTargetDynamicRanges = new HashSet(collection2);
        this.mCameraSupportedResolutions = new HashSet(collection3);
        this.mVideoEncoderInfoFinder = finder;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        return getProfilesInternal(i) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public EncoderProfilesProxy getAll(int i) {
        return getProfilesInternal(i);
    }

    private EncoderProfilesProxy getProfilesInternal(int i) {
        if (this.mEncoderProfilesCache.containsKey(Integer.valueOf(i))) {
            return (EncoderProfilesProxy) this.mEncoderProfilesCache.get(Integer.valueOf(i));
        }
        EncoderProfilesProxy all = this.mBaseEncoderProfilesProvider.getAll(i);
        Quality.ConstantQuality constantQualityFindQualityInTargetQualities = findQualityInTargetQualities(i);
        if (constantQualityFindQualityInTargetQualities != null && !hasMatchedVideoProfileForAllTargetDynamicRanges(all)) {
            all = mergeEncoderProfiles(all, exploreProfiles(constantQualityFindQualityInTargetQualities));
        }
        this.mEncoderProfilesCache.put(Integer.valueOf(i), all);
        return all;
    }

    private boolean hasMatchedVideoProfileForAllTargetDynamicRanges(EncoderProfilesProxy encoderProfilesProxy) {
        if (encoderProfilesProxy == null) {
            return false;
        }
        Iterator it = this.mTargetDynamicRanges.iterator();
        while (it.hasNext()) {
            if (!hasMatchedVideoProfileForDynamicRange(encoderProfilesProxy, (DynamicRange) it.next())) {
                return false;
            }
        }
        return true;
    }

    private EncoderProfilesProxy exploreProfiles(Quality.ConstantQuality constantQuality) {
        VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxyFindNearestHigherSupportedEncoderProfilesFor;
        Preconditions.checkArgument(this.mTargetQualities.contains(constantQuality));
        EncoderProfilesProxy all = this.mBaseEncoderProfilesProvider.getAll(constantQuality.getQualityValue(1));
        for (Size size : constantQuality.getTypicalSizes()) {
            if (this.mCameraSupportedResolutions.contains(size)) {
                TreeMap treeMap = new TreeMap(new CompareSizesByArea());
                ArrayList arrayList = new ArrayList();
                for (DynamicRange dynamicRange : this.mTargetDynamicRanges) {
                    if (!hasMatchedVideoProfileForDynamicRange(all, dynamicRange) && (videoValidatedEncoderProfilesProxyFindNearestHigherSupportedEncoderProfilesFor = getCapabilitiesByQualityFor(dynamicRange).findNearestHigherSupportedEncoderProfilesFor(size)) != null) {
                        EncoderProfilesProxy.VideoProfileProxy defaultVideoProfile = videoValidatedEncoderProfilesProxyFindNearestHigherSupportedEncoderProfilesFor.getDefaultVideoProfile();
                        VideoEncoderInfo videoEncoderInfoFind = this.mVideoEncoderInfoFinder.find(defaultVideoProfile.getMediaType());
                        if (videoEncoderInfoFind != null && videoEncoderInfoFind.isSizeSupportedAllowSwapping(size.getWidth(), size.getHeight())) {
                            treeMap.put(defaultVideoProfile.getResolution(), videoValidatedEncoderProfilesProxyFindNearestHigherSupportedEncoderProfilesFor);
                            arrayList.add(EncoderProfilesUtil.deriveVideoProfile(defaultVideoProfile, size, videoEncoderInfoFind.getSupportedBitrateRange()));
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    EncoderProfilesProxy encoderProfilesProxy = (EncoderProfilesProxy) SizeUtil.findNearestHigherFor(size, treeMap);
                    Objects.requireNonNull(encoderProfilesProxy);
                    EncoderProfilesProxy encoderProfilesProxy2 = encoderProfilesProxy;
                    return EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(encoderProfilesProxy2.getDefaultDurationSeconds(), encoderProfilesProxy2.getRecommendedFileFormat(), encoderProfilesProxy2.getAudioProfiles(), arrayList);
                }
            }
        }
        return null;
    }

    private Quality.ConstantQuality findQualityInTargetQualities(int i) {
        Iterator it = this.mTargetQualities.iterator();
        while (it.hasNext()) {
            Quality.ConstantQuality constantQuality = (Quality.ConstantQuality) ((Quality) it.next());
            if (constantQuality.getQualityValue(1) == i) {
                return constantQuality;
            }
        }
        return null;
    }

    private CapabilitiesByQuality getCapabilitiesByQualityFor(DynamicRange dynamicRange) {
        if (this.mDynamicRangeToCapabilitiesMap.containsKey(dynamicRange)) {
            CapabilitiesByQuality capabilitiesByQuality = (CapabilitiesByQuality) this.mDynamicRangeToCapabilitiesMap.get(dynamicRange);
            Objects.requireNonNull(capabilitiesByQuality);
            return capabilitiesByQuality;
        }
        CapabilitiesByQuality capabilitiesByQuality2 = new CapabilitiesByQuality(new DynamicRangeMatchedEncoderProfilesProvider(this.mBaseEncoderProfilesProvider, dynamicRange), 1);
        this.mDynamicRangeToCapabilitiesMap.put(dynamicRange, capabilitiesByQuality2);
        return capabilitiesByQuality2;
    }

    private static EncoderProfilesProxy mergeEncoderProfiles(EncoderProfilesProxy encoderProfilesProxy, EncoderProfilesProxy encoderProfilesProxy2) {
        int defaultDurationSeconds;
        int recommendedFileFormat;
        if (encoderProfilesProxy == null && encoderProfilesProxy2 == null) {
            return null;
        }
        if (encoderProfilesProxy != null) {
            defaultDurationSeconds = encoderProfilesProxy.getDefaultDurationSeconds();
        } else {
            defaultDurationSeconds = encoderProfilesProxy2.getDefaultDurationSeconds();
        }
        if (encoderProfilesProxy != null) {
            recommendedFileFormat = encoderProfilesProxy.getRecommendedFileFormat();
        } else {
            recommendedFileFormat = encoderProfilesProxy2.getRecommendedFileFormat();
        }
        List audioProfiles = encoderProfilesProxy != null ? encoderProfilesProxy.getAudioProfiles() : encoderProfilesProxy2.getAudioProfiles();
        ArrayList arrayList = new ArrayList();
        if (encoderProfilesProxy != null) {
            arrayList.addAll(encoderProfilesProxy.getVideoProfiles());
        }
        if (encoderProfilesProxy2 != null) {
            arrayList.addAll(encoderProfilesProxy2.getVideoProfiles());
        }
        return EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(defaultDurationSeconds, recommendedFileFormat, audioProfiles, arrayList);
    }

    private static boolean hasMatchedVideoProfileForDynamicRange(EncoderProfilesProxy encoderProfilesProxy, DynamicRange dynamicRange) {
        if (encoderProfilesProxy == null) {
            return false;
        }
        Iterator it = encoderProfilesProxy.getVideoProfiles().iterator();
        while (it.hasNext()) {
            if (DynamicRangeUtil.isHdrSettingsMatched((EncoderProfilesProxy.VideoProfileProxy) it.next(), dynamicRange)) {
                return true;
            }
        }
        return false;
    }

    private static void checkFullySpecifiedOrThrow(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            DynamicRange dynamicRange = (DynamicRange) it.next();
            if (!dynamicRange.isFullySpecified()) {
                throw new IllegalArgumentException("Contains non-fully specified DynamicRange: " + dynamicRange);
            }
        }
    }
}
