package androidx.camera.video;

import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.utils.CompareSizesByArea;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.video.Quality;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.core.util.Preconditions;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public class CapabilitiesByQuality {
    private final VideoValidatedEncoderProfilesProxy mHighestProfiles;
    private final VideoValidatedEncoderProfilesProxy mLowestProfiles;
    private final Map mSupportedProfilesMap = new LinkedHashMap();
    private final TreeMap mAreaSortedSizeToQualityMap = new TreeMap(new CompareSizesByArea());

    public CapabilitiesByQuality(EncoderProfilesProvider encoderProfilesProvider, int i) {
        for (Quality quality : Quality.getSortedQualities()) {
            EncoderProfilesProxy encoderProfiles = getEncoderProfiles(quality, encoderProfilesProvider, i);
            if (encoderProfiles != null) {
                Logger.m76d("CapabilitiesByQuality", "profiles = " + encoderProfiles);
                VideoValidatedEncoderProfilesProxy validatedProfiles = toValidatedProfiles(encoderProfiles);
                if (validatedProfiles == null) {
                    Logger.m81w("CapabilitiesByQuality", "EncoderProfiles of quality " + quality + " has no video validated profiles.");
                } else {
                    this.mAreaSortedSizeToQualityMap.put(validatedProfiles.getDefaultVideoProfile().getResolution(), quality);
                    this.mSupportedProfilesMap.put(quality, validatedProfiles);
                }
            }
        }
        if (this.mSupportedProfilesMap.isEmpty()) {
            Logger.m78e("CapabilitiesByQuality", "No supported EncoderProfiles");
            this.mLowestProfiles = null;
            this.mHighestProfiles = null;
        } else {
            ArrayDeque arrayDeque = new ArrayDeque(this.mSupportedProfilesMap.values());
            this.mHighestProfiles = (VideoValidatedEncoderProfilesProxy) arrayDeque.peekFirst();
            this.mLowestProfiles = (VideoValidatedEncoderProfilesProxy) arrayDeque.peekLast();
        }
    }

    public List getSupportedQualities() {
        return new ArrayList(this.mSupportedProfilesMap.keySet());
    }

    public Size getResolution(Quality quality) {
        VideoValidatedEncoderProfilesProxy profiles = getProfiles(quality);
        if (profiles != null) {
            return profiles.getDefaultVideoProfile().getResolution();
        }
        return null;
    }

    public VideoValidatedEncoderProfilesProxy getProfiles(Quality quality) {
        checkQualityConstantsOrThrow(quality);
        if (quality == Quality.HIGHEST) {
            return this.mHighestProfiles;
        }
        if (quality == Quality.LOWEST) {
            return this.mLowestProfiles;
        }
        return (VideoValidatedEncoderProfilesProxy) this.mSupportedProfilesMap.get(quality);
    }

    public VideoValidatedEncoderProfilesProxy findNearestHigherSupportedEncoderProfilesFor(Size size) {
        Quality qualityFindNearestHigherSupportedQualityFor = findNearestHigherSupportedQualityFor(size);
        Logger.m76d("CapabilitiesByQuality", "Using supported quality of " + qualityFindNearestHigherSupportedQualityFor + " for size " + size);
        if (qualityFindNearestHigherSupportedQualityFor == Quality.NONE) {
            return null;
        }
        VideoValidatedEncoderProfilesProxy profiles = getProfiles(qualityFindNearestHigherSupportedQualityFor);
        if (profiles != null) {
            return profiles;
        }
        throw new AssertionError("Camera advertised available quality but did not produce EncoderProfiles for advertised quality.");
    }

    public Quality findNearestHigherSupportedQualityFor(Size size) {
        Quality quality = (Quality) SizeUtil.findNearestHigherFor(size, this.mAreaSortedSizeToQualityMap);
        return quality != null ? quality : Quality.NONE;
    }

    private EncoderProfilesProxy getEncoderProfiles(Quality quality, EncoderProfilesProvider encoderProfilesProvider, int i) {
        Preconditions.checkState(quality instanceof Quality.ConstantQuality, "Currently only support ConstantQuality");
        return encoderProfilesProvider.getAll(((Quality.ConstantQuality) quality).getQualityValue(i));
    }

    private VideoValidatedEncoderProfilesProxy toValidatedProfiles(EncoderProfilesProxy encoderProfilesProxy) {
        if (encoderProfilesProxy.getVideoProfiles().isEmpty()) {
            return null;
        }
        return VideoValidatedEncoderProfilesProxy.from(encoderProfilesProxy);
    }

    public static boolean containsSupportedQuality(EncoderProfilesProvider encoderProfilesProvider, int i) {
        return !new CapabilitiesByQuality(encoderProfilesProvider, i).getSupportedQualities().isEmpty();
    }

    private static void checkQualityConstantsOrThrow(Quality quality) {
        Preconditions.checkArgument(Quality.containsQuality(quality), "Unknown quality: " + quality);
    }
}
