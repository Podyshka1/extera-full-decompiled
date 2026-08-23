package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Rational;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.MediaSpec;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.MediaCodecDefaultDataSpaceQuirk;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderDataSpace;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.core.util.Supplier;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.MediaController;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoConfigUtil {
    public static final VideoConfigUtil INSTANCE = new VideoConfigUtil();
    private static final Map MIME_TO_DATA_SPACE_MAP;

    private VideoConfigUtil() {
    }

    static {
        VideoEncoderDataSpace videoEncoderDataSpace = VideoEncoderDataSpace.ENCODER_DATA_SPACE_UNSPECIFIED;
        Pair pairM1081to = TuplesKt.m1081to(1, videoEncoderDataSpace);
        VideoEncoderDataSpace videoEncoderDataSpace2 = VideoEncoderDataSpace.ENCODER_DATA_SPACE_BT2020_HLG;
        Pair pairM1081to2 = TuplesKt.m1081to(2, videoEncoderDataSpace2);
        VideoEncoderDataSpace videoEncoderDataSpace3 = VideoEncoderDataSpace.ENCODER_DATA_SPACE_BT2020_PQ;
        MIME_TO_DATA_SPACE_MAP = MapsKt.mutableMapOf(TuplesKt.m1081to("video/hevc", MapsKt.mapOf(pairM1081to, pairM1081to2, TuplesKt.m1081to(4096, videoEncoderDataSpace3), TuplesKt.m1081to(8192, videoEncoderDataSpace3))), TuplesKt.m1081to("video/av01", MapsKt.mapOf(TuplesKt.m1081to(1, videoEncoderDataSpace), TuplesKt.m1081to(2, videoEncoderDataSpace2), TuplesKt.m1081to(4096, videoEncoderDataSpace3), TuplesKt.m1081to(8192, videoEncoderDataSpace3))), TuplesKt.m1081to("video/x-vnd.on2.vp9", MapsKt.mapOf(TuplesKt.m1081to(1, videoEncoderDataSpace), TuplesKt.m1081to(4, videoEncoderDataSpace2), TuplesKt.m1081to(4096, videoEncoderDataSpace3), TuplesKt.m1081to(16384, videoEncoderDataSpace3), TuplesKt.m1081to(2, videoEncoderDataSpace), TuplesKt.m1081to(8, videoEncoderDataSpace2), TuplesKt.m1081to(8192, videoEncoderDataSpace3), TuplesKt.m1081to(32768, videoEncoderDataSpace3))), TuplesKt.m1081to("video/dolby-vision", MapsKt.mapOf(TuplesKt.m1081to(256, videoEncoderDataSpace2), TuplesKt.m1081to(512, VideoEncoderDataSpace.ENCODER_DATA_SPACE_BT709))));
    }

    public static final VideoMimeInfo resolveVideoMimeInfo(MediaSpec mediaSpec, DynamicRange dynamicRange, VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy) {
        Intrinsics.checkNotNullParameter(mediaSpec, "mediaSpec");
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        if (!dynamicRange.isFullySpecified()) {
            throw new IllegalStateException(("Dynamic range must be a fully specified dynamic range [provided dynamic range: " + dynamicRange + ']').toString());
        }
        String strOutputFormatToVideoMime = MediaSpec.Companion.outputFormatToVideoMime(mediaSpec.getOutputFormat());
        if (videoValidatedEncoderProfilesProxy != null) {
            Set setDynamicRangeToVideoProfileHdrFormats = DynamicRangeUtil.dynamicRangeToVideoProfileHdrFormats(dynamicRange);
            Intrinsics.checkNotNullExpressionValue(setDynamicRangeToVideoProfileHdrFormats, "dynamicRangeToVideoProfileHdrFormats(...)");
            Set setDynamicRangeToVideoProfileBitDepth = DynamicRangeUtil.dynamicRangeToVideoProfileBitDepth(dynamicRange);
            Intrinsics.checkNotNullExpressionValue(setDynamicRangeToVideoProfileBitDepth, "dynamicRangeToVideoProfileBitDepth(...)");
            for (EncoderProfilesProxy.VideoProfileProxy videoProfileProxy : videoValidatedEncoderProfilesProxy.getVideoProfiles()) {
                if (setDynamicRangeToVideoProfileHdrFormats.contains(Integer.valueOf(videoProfileProxy.getHdrFormat())) && setDynamicRangeToVideoProfileBitDepth.contains(Integer.valueOf(videoProfileProxy.getBitDepth()))) {
                    String mediaType = videoProfileProxy.getMediaType();
                    Intrinsics.checkNotNullExpressionValue(mediaType, "getMediaType(...)");
                    if (Intrinsics.areEqual(strOutputFormatToVideoMime, mediaType)) {
                        Logger.m76d("VideoConfigUtil", "MediaSpec video mime matches EncoderProfiles. Using EncoderProfiles to derive VIDEO settings [mime type: " + strOutputFormatToVideoMime + ']');
                    } else if (mediaSpec.getOutputFormat() == -1) {
                        Logger.m76d("VideoConfigUtil", "MediaSpec contains OUTPUT_FORMAT_UNSPECIFIED. Using CamcorderProfile to derive VIDEO settings [mime type: " + strOutputFormatToVideoMime + ", dynamic range: " + dynamicRange + ']');
                    }
                    strOutputFormatToVideoMime = mediaType;
                    break;
                }
            }
            videoProfileProxy = null;
        } else {
            videoProfileProxy = null;
        }
        if (videoProfileProxy == null) {
            if (mediaSpec.getOutputFormat() == -1) {
                strOutputFormatToVideoMime = INSTANCE.getDynamicRangeDefaultMimeOrThrow(dynamicRange);
            }
            if (videoValidatedEncoderProfilesProxy == null) {
                Logger.m76d("VideoConfigUtil", "No EncoderProfiles present. May rely on fallback defaults to derive VIDEO settings [chosen mime type: " + strOutputFormatToVideoMime + ", dynamic range: " + dynamicRange + ']');
            } else {
                Logger.m76d("VideoConfigUtil", "No video EncoderProfile is compatible with requested output format and dynamic range. May rely on fallback defaults to derive VIDEO settings [chosen mime type: " + strOutputFormatToVideoMime + ", dynamic range: " + dynamicRange + ']');
            }
        }
        return new VideoMimeInfo(strOutputFormatToVideoMime, 0, videoProfileProxy, 2, null);
    }

    private final String getDynamicRangeDefaultMimeOrThrow(DynamicRange dynamicRange) {
        String dynamicRangeDefaultMime = getDynamicRangeDefaultMime(dynamicRange);
        if (dynamicRangeDefaultMime != null) {
            return dynamicRangeDefaultMime;
        }
        throw new UnsupportedOperationException("Unsupported dynamic range: " + dynamicRange + "\nNo supported default mime type available.");
    }

    public final String getDynamicRangeDefaultMime(DynamicRange dynamicRange) {
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        int encoding = dynamicRange.getEncoding();
        if (encoding == 1) {
            return MediaController.VIDEO_MIME_TYPE;
        }
        if (encoding == 3 || encoding == 4 || encoding == 5) {
            return "video/hevc";
        }
        if (encoding != 6) {
            return null;
        }
        return "video/dolby-vision";
    }

    public final Set getDynamicRangesForMime(String mime) {
        Intrinsics.checkNotNullParameter(mime, "mime");
        return DynamicRangeFormatComboRegistry.INSTANCE.getDynamicRangesForVideoMime(mime);
    }

    public static final VideoEncoderConfig resolveVideoEncoderConfig(VideoMimeInfo videoMimeInfo, Timebase inputTimebase, VideoSpec videoSpec, Size surfaceSize, DynamicRange dynamicRange, Range expectedFrameRateRange) {
        Supplier videoEncoderConfigDefaultResolver;
        Intrinsics.checkNotNullParameter(videoMimeInfo, "videoMimeInfo");
        Intrinsics.checkNotNullParameter(inputTimebase, "inputTimebase");
        Intrinsics.checkNotNullParameter(videoSpec, "videoSpec");
        Intrinsics.checkNotNullParameter(surfaceSize, "surfaceSize");
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        Intrinsics.checkNotNullParameter(expectedFrameRateRange, "expectedFrameRateRange");
        if (videoMimeInfo.getCompatibleVideoProfile() != null) {
            videoEncoderConfigDefaultResolver = new VideoEncoderConfigVideoProfileResolver(videoMimeInfo.getMimeType(), inputTimebase, videoSpec, surfaceSize, videoMimeInfo.getCompatibleVideoProfile(), dynamicRange, expectedFrameRateRange);
        } else {
            videoEncoderConfigDefaultResolver = new VideoEncoderConfigDefaultResolver(videoMimeInfo.getMimeType(), inputTimebase, videoSpec, surfaceSize, dynamicRange, expectedFrameRateRange);
        }
        Object obj = videoEncoderConfigDefaultResolver.get();
        Intrinsics.checkNotNullExpressionValue(obj, "get(...)");
        return (VideoEncoderConfig) obj;
    }

    public static final VideoEncoderConfig workaroundDataSpaceIfRequired(VideoEncoderConfig config, boolean z) {
        Intrinsics.checkNotNullParameter(config, "config");
        if (!Intrinsics.areEqual(config.getDataSpace(), VideoEncoderDataSpace.ENCODER_DATA_SPACE_UNSPECIFIED)) {
            return config;
        }
        MediaCodecDefaultDataSpaceQuirk mediaCodecDefaultDataSpaceQuirk = (MediaCodecDefaultDataSpaceQuirk) DeviceQuirks.get(MediaCodecDefaultDataSpaceQuirk.class);
        if (!z || mediaCodecDefaultDataSpaceQuirk == null) {
            return config;
        }
        VideoEncoderDataSpace suggestedDataSpace = mediaCodecDefaultDataSpaceQuirk.getSuggestedDataSpace();
        Intrinsics.checkNotNullExpressionValue(suggestedDataSpace, "getSuggestedDataSpace(...)");
        VideoEncoderConfig videoEncoderConfigBuild = config.toBuilder().setDataSpace(suggestedDataSpace).build();
        Intrinsics.checkNotNullExpressionValue(videoEncoderConfigBuild, "build(...)");
        return videoEncoderConfigBuild;
    }

    public static final int scaleBitrate(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        String str;
        int iDoubleValue = (int) (((double) i) * new Rational(i2, i3).doubleValue() * new Rational(i4, i5).doubleValue() * new Rational(i6, i7).doubleValue() * new Rational(i8, i9).doubleValue());
        if (Logger.isDebugEnabled("VideoConfigUtil")) {
            str = "Base Bitrate(" + i + "bps) * Bit Depth Ratio (" + i2 + " / " + i3 + ") * Frame Rate Ratio(" + i4 + " / " + i5 + ") * Width Ratio(" + i6 + " / " + i7 + ") * Height Ratio(" + i8 + " / " + i9 + ") = " + iDoubleValue;
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        Logger.m76d("VideoConfigUtil", str);
        return iDoubleValue;
    }

    public final VideoEncoderDataSpace mimeAndProfileToEncoderDataSpace(String mimeType, int i) {
        VideoEncoderDataSpace videoEncoderDataSpace;
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Map map = (Map) MIME_TO_DATA_SPACE_MAP.get(mimeType);
        if (map != null && (videoEncoderDataSpace = (VideoEncoderDataSpace) map.get(Integer.valueOf(i))) != null) {
            return videoEncoderDataSpace;
        }
        Logger.m81w("VideoConfigUtil", "Unsupported mime type " + mimeType + " or profile level " + i + ". Data space is unspecified.");
        VideoEncoderDataSpace ENCODER_DATA_SPACE_UNSPECIFIED = VideoEncoderDataSpace.ENCODER_DATA_SPACE_UNSPECIFIED;
        Intrinsics.checkNotNullExpressionValue(ENCODER_DATA_SPACE_UNSPECIFIED, "ENCODER_DATA_SPACE_UNSPECIFIED");
        return ENCODER_DATA_SPACE_UNSPECIFIED;
    }

    public final CaptureEncodeRates resolveFrameRates$camera_video(VideoSpec videoSpec, Range expectedCaptureFrameRateRange) {
        int iIntValue;
        String strValueOf;
        Intrinsics.checkNotNullParameter(videoSpec, "videoSpec");
        Intrinsics.checkNotNullParameter(expectedCaptureFrameRateRange, "expectedCaptureFrameRateRange");
        Range range = SurfaceRequest.FRAME_RATE_RANGE_UNSPECIFIED;
        if (Intrinsics.areEqual(expectedCaptureFrameRateRange, range)) {
            iIntValue = 30;
        } else {
            Object upper = expectedCaptureFrameRateRange.getUpper();
            Intrinsics.checkNotNull(upper);
            iIntValue = ((Number) upper).intValue();
        }
        int encodeFrameRate = videoSpec.getEncodeFrameRate() != 0 ? videoSpec.getEncodeFrameRate() : iIntValue;
        StringBuilder sb = new StringBuilder();
        sb.append("Resolved capture/encode frame rate ");
        sb.append(iIntValue);
        sb.append("fps/");
        sb.append(encodeFrameRate);
        sb.append("fps, [Expected operating range: ");
        if (Intrinsics.areEqual(expectedCaptureFrameRateRange, range)) {
            strValueOf = "<UNSPECIFIED>";
        } else {
            strValueOf = String.valueOf(expectedCaptureFrameRateRange);
        }
        sb.append(strValueOf);
        sb.append(']');
        Logger.m76d("VideoConfigUtil", sb.toString());
        return new CaptureEncodeRates(iIntValue, encodeFrameRate);
    }
}
