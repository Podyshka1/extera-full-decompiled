package androidx.camera.video.internal.utils;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.internal.config.VideoConfigUtil;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class EncoderProfilesUtil {
    public static final EncoderProfilesUtil INSTANCE = new EncoderProfilesUtil();

    private EncoderProfilesUtil() {
    }

    public static final EncoderProfilesProxy.VideoProfileProxy deriveVideoProfile(EncoderProfilesProxy.VideoProfileProxy baseVideoProfile, Size newResolution, Range bitrateRangeToClamp) {
        Intrinsics.checkNotNullParameter(baseVideoProfile, "baseVideoProfile");
        Intrinsics.checkNotNullParameter(newResolution, "newResolution");
        Intrinsics.checkNotNullParameter(bitrateRangeToClamp, "bitrateRangeToClamp");
        Object objClamp = bitrateRangeToClamp.clamp(Integer.valueOf(VideoConfigUtil.scaleBitrate(baseVideoProfile.getBitrate(), baseVideoProfile.getBitDepth(), baseVideoProfile.getBitDepth(), baseVideoProfile.getFrameRate(), baseVideoProfile.getFrameRate(), newResolution.getWidth(), baseVideoProfile.getWidth(), newResolution.getHeight(), baseVideoProfile.getHeight())));
        Intrinsics.checkNotNullExpressionValue(objClamp, "clamp(...)");
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyCreate = EncoderProfilesProxy.VideoProfileProxy.create(baseVideoProfile.getCodec(), baseVideoProfile.getMediaType(), ((Number) objClamp).intValue(), baseVideoProfile.getFrameRate(), newResolution.getWidth(), newResolution.getHeight(), baseVideoProfile.getProfile(), baseVideoProfile.getBitDepth(), baseVideoProfile.getChromaSubsampling(), baseVideoProfile.getHdrFormat());
        Intrinsics.checkNotNullExpressionValue(videoProfileProxyCreate, "create(...)");
        return videoProfileProxyCreate;
    }

    public static final EncoderProfilesProxy.VideoProfileProxy getFirstVideoProfile(EncoderProfilesProxy encoderProfilesProxy) {
        List videoProfiles;
        if (encoderProfilesProxy == null || (videoProfiles = encoderProfilesProxy.getVideoProfiles()) == null) {
            return null;
        }
        return (EncoderProfilesProxy.VideoProfileProxy) CollectionsKt.firstOrNull(videoProfiles);
    }
}
