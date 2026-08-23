package androidx.camera.video.internal.compat.quirk;

import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.utils.EncoderProfilesUtil;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class ExtraSupportedQualityQuirk implements Quirk {
    static boolean load() {
        return isMotoC();
    }

    private static boolean isMotoC() {
        return "motorola".equalsIgnoreCase(Build.BRAND) && "moto c".equalsIgnoreCase(Build.MODEL);
    }

    public Map getExtraEncoderProfiles(CameraInfoInternal cameraInfoInternal, EncoderProfilesProvider encoderProfilesProvider, VideoEncoderInfo.Finder finder) {
        if (isMotoC()) {
            return getExtraEncoderProfilesForMotoC(cameraInfoInternal, encoderProfilesProvider, finder);
        }
        return Collections.EMPTY_MAP;
    }

    private Map getExtraEncoderProfilesForMotoC(CameraInfoInternal cameraInfoInternal, EncoderProfilesProvider encoderProfilesProvider, VideoEncoderInfo.Finder finder) {
        EncoderProfilesProxy all;
        EncoderProfilesProxy.VideoProfileProxy firstVideoProfile;
        if (!"1".equals(cameraInfoInternal.getCameraId()) || encoderProfilesProvider.hasProfile(4) || (firstVideoProfile = EncoderProfilesUtil.getFirstVideoProfile((all = encoderProfilesProvider.getAll(1)))) == null) {
            return null;
        }
        Range supportedBitrateRange = getSupportedBitrateRange(firstVideoProfile, finder);
        Size size = SizeUtil.RESOLUTION_480P;
        EncoderProfilesProxy.ImmutableEncoderProfilesProxy immutableEncoderProfilesProxyCreate = EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(all.getDefaultDurationSeconds(), all.getRecommendedFileFormat(), all.getAudioProfiles(), Collections.singletonList(EncoderProfilesUtil.deriveVideoProfile(firstVideoProfile, size, supportedBitrateRange)));
        HashMap map = new HashMap();
        map.put(4, immutableEncoderProfilesProxyCreate);
        if (SizeUtil.getArea(size) > SizeUtil.getArea(firstVideoProfile.getResolution())) {
            map.put(1, immutableEncoderProfilesProxyCreate);
        }
        return map;
    }

    private static Range getSupportedBitrateRange(EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, VideoEncoderInfo.Finder finder) {
        VideoEncoderInfo videoEncoderInfoFind = finder.find(videoProfileProxy.getMediaType());
        if (videoEncoderInfoFind != null) {
            return videoEncoderInfoFind.getSupportedBitrateRange();
        }
        return Range.create(0, Integer.MAX_VALUE);
    }
}
