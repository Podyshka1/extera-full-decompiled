package androidx.camera.video.internal;

import android.util.Rational;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class BackupHdrProfileEncoderProfilesProvider implements EncoderProfilesProvider {
    private final Map mEncoderProfilesCache = new HashMap();
    private final EncoderProfilesProvider mEncoderProfilesProvider;
    private final VideoEncoderInfo.Finder mVideoEncoderInfoFinder;

    public BackupHdrProfileEncoderProfilesProvider(EncoderProfilesProvider encoderProfilesProvider, VideoEncoderInfo.Finder finder) {
        this.mEncoderProfilesProvider = encoderProfilesProvider;
        this.mVideoEncoderInfoFinder = finder;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public boolean hasProfile(int i) {
        return this.mEncoderProfilesProvider.hasProfile(i) && getProfilesInternal(i) != null;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public EncoderProfilesProxy getAll(int i) {
        return getProfilesInternal(i);
    }

    private EncoderProfilesProxy getProfilesInternal(int i) {
        if (this.mEncoderProfilesCache.containsKey(Integer.valueOf(i))) {
            return (EncoderProfilesProxy) this.mEncoderProfilesCache.get(Integer.valueOf(i));
        }
        if (!this.mEncoderProfilesProvider.hasProfile(i)) {
            return null;
        }
        EncoderProfilesProxy encoderProfilesProxyAppendBackupVideoProfile = appendBackupVideoProfile(this.mEncoderProfilesProvider.getAll(i), 1, 10);
        this.mEncoderProfilesCache.put(Integer.valueOf(i), encoderProfilesProxyAppendBackupVideoProfile);
        return encoderProfilesProxyAppendBackupVideoProfile;
    }

    private EncoderProfilesProxy appendBackupVideoProfile(EncoderProfilesProxy encoderProfilesProxy, int i, int i2) {
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxy;
        if (encoderProfilesProxy == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(encoderProfilesProxy.getVideoProfiles());
        Iterator it = encoderProfilesProxy.getVideoProfiles().iterator();
        while (true) {
            if (!it.hasNext()) {
                videoProfileProxy = null;
                break;
            }
            videoProfileProxy = (EncoderProfilesProxy.VideoProfileProxy) it.next();
            if (videoProfileProxy.getHdrFormat() == 0) {
                break;
            }
        }
        EncoderProfilesProxy.VideoProfileProxy videoProfileProxyValidateOrAdapt = validateOrAdapt(generateBackupProfile(videoProfileProxy, i, i2), this.mVideoEncoderInfoFinder);
        if (videoProfileProxyValidateOrAdapt != null) {
            arrayList.add(videoProfileProxyValidateOrAdapt);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return EncoderProfilesProxy.ImmutableEncoderProfilesProxy.create(encoderProfilesProxy.getDefaultDurationSeconds(), encoderProfilesProxy.getRecommendedFileFormat(), encoderProfilesProxy.getAudioProfiles(), arrayList);
    }

    private static EncoderProfilesProxy.VideoProfileProxy generateBackupProfile(EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, int i, int i2) {
        if (videoProfileProxy == null) {
            return null;
        }
        int codec = videoProfileProxy.getCodec();
        String mediaType = videoProfileProxy.getMediaType();
        int profile = videoProfileProxy.getProfile();
        if (i != videoProfileProxy.getHdrFormat()) {
            codec = deriveCodec(i);
            mediaType = deriveMediaType(codec);
            profile = deriveProfile(i);
        }
        return EncoderProfilesProxy.VideoProfileProxy.create(codec, mediaType, scaleBitrate(videoProfileProxy.getBitrate(), i2, videoProfileProxy.getBitDepth()), videoProfileProxy.getFrameRate(), videoProfileProxy.getWidth(), videoProfileProxy.getHeight(), profile, i2, videoProfileProxy.getChromaSubsampling(), i);
    }

    private static int deriveCodec(int i) {
        if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4) {
            return 5;
        }
        throw new IllegalArgumentException("Unexpected HDR format: " + i);
    }

    private static int deriveProfile(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        if (i == 2) {
            return 4096;
        }
        if (i == 3) {
            return 8192;
        }
        if (i == 4) {
            return -1;
        }
        throw new IllegalArgumentException("Unexpected HDR format: " + i);
    }

    private static String deriveMediaType(int i) {
        return EncoderProfilesProxy.CC.getVideoCodecMimeType(i);
    }

    private static int scaleBitrate(int i, int i2, int i3) {
        if (i2 == i3) {
            return i;
        }
        int iDoubleValue = (int) (((double) i) * new Rational(i2, i3).doubleValue());
        if (Logger.isDebugEnabled("BackupHdrProfileEncoderProfilesProvider")) {
            Logger.m76d("BackupHdrProfileEncoderProfilesProvider", String.format("Base Bitrate(%dbps) * Bit Depth Ratio (%d / %d) = %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(iDoubleValue)));
        }
        return iDoubleValue;
    }

    static EncoderProfilesProxy.VideoProfileProxy validateOrAdapt(EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, VideoEncoderInfo.Finder finder) {
        VideoEncoderInfo videoEncoderInfoFind;
        if (videoProfileProxy == null || (videoEncoderInfoFind = finder.find(videoProfileProxy.getMediaType())) == null || !videoEncoderInfoFind.isSizeSupportedAllowSwapping(videoProfileProxy.getWidth(), videoProfileProxy.getHeight())) {
            return null;
        }
        int bitrate = videoProfileProxy.getBitrate();
        int iIntValue = ((Integer) videoEncoderInfoFind.getSupportedBitrateRange().clamp(Integer.valueOf(bitrate))).intValue();
        return iIntValue == bitrate ? videoProfileProxy : modifyBitrate(videoProfileProxy, iIntValue);
    }

    private static EncoderProfilesProxy.VideoProfileProxy modifyBitrate(EncoderProfilesProxy.VideoProfileProxy videoProfileProxy, int i) {
        return EncoderProfilesProxy.VideoProfileProxy.create(videoProfileProxy.getCodec(), videoProfileProxy.getMediaType(), i, videoProfileProxy.getFrameRate(), videoProfileProxy.getWidth(), videoProfileProxy.getHeight(), videoProfileProxy.getProfile(), videoProfileProxy.getBitDepth(), videoProfileProxy.getChromaSubsampling(), videoProfileProxy.getHdrFormat());
    }
}
