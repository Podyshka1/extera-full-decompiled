package androidx.media3.decoder.ffmpeg;

import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.Log;
import com.google.android.gms.cast.HlsSegmentFormat;

/* JADX INFO: loaded from: classes3.dex */
public final class FfmpegLibrary {
    private static String av1DecoderName;
    private static int inputBufferPaddingSize;
    private static String version;

    private static native String ffmpegGetAv1DecoderName();

    private static native int ffmpegGetInputBufferPaddingSize();

    private static native String ffmpegGetVersion();

    private static native boolean ffmpegHasDecoder(String str);

    public static boolean isAvailable() {
        return true;
    }

    static {
        MediaLibraryInfo.registerModule("media3.decoder.ffmpeg");
        inputBufferPaddingSize = -1;
    }

    public static String getVersion() {
        if (!isAvailable()) {
            return null;
        }
        if (version == null) {
            version = ffmpegGetVersion();
        }
        return version;
    }

    public static int getInputBufferPaddingSize() {
        if (!isAvailable()) {
            return -1;
        }
        if (inputBufferPaddingSize == -1) {
            inputBufferPaddingSize = ffmpegGetInputBufferPaddingSize();
        }
        return inputBufferPaddingSize;
    }

    public static boolean supportsFormat(String str) {
        String codecName;
        if (!isAvailable() || str == null || (codecName = getCodecName(str)) == null) {
            return false;
        }
        if (ffmpegHasDecoder(codecName)) {
            return true;
        }
        Log.m164w("FfmpegLibrary", "No " + codecName + " decoder available. Check the FFmpeg build configuration.");
        return false;
    }

    public static String getCodecName(String str) {
        str.getClass();
        switch (str) {
            case "audio/eac3-joc":
            case "audio/eac3":
                return "eac3";
            case "video/dolby-vision":
            case "video/hevc":
                return "hevc";
            case "video/3gpp":
                return "h263";
            case "video/av01":
                if (av1DecoderName == null) {
                    av1DecoderName = ffmpegGetAv1DecoderName();
                }
                return av1DecoderName;
            case "video/divx":
            case "video/mp4v-es":
                return "mpeg4";
            case "video/mp42":
                return "msmpeg4v2";
            case "video/mp43":
                return "msmpeg4";
            case "video/mpeg":
                return "mpeg2video";
            case "video/wvc1":
                return "vc1";
            case "audio/amr-wb":
                return "amrwb";
            case "audio/vnd.dts.hd;profile=lbr":
            case "audio/vnd.dts":
            case "audio/vnd.dts.hd":
                return "dca";
            case "video/x-msvideo":
                return "mpeg4";
            case "audio/vorbis":
                return "vorbis";
            case "audio/mpeg-L1":
            case "audio/mpeg-L2":
            case "audio/mpeg":
                return HlsSegmentFormat.MP3;
            case "audio/mp4a-latm":
                return HlsSegmentFormat.AAC;
            case "video/mjpeg":
                return "mjpeg";
            case "video/mpeg2":
                return "mpeg2video";
            case "video/x-flv":
                return "flv1";
            case "audio/ac3":
                return HlsSegmentFormat.AC3;
            case "video/prores":
                return "prores";
            case "video/avc":
                return "h264";
            case "video/ogg":
                return "theora";
            case "audio/3gpp":
                return "amrnb";
            case "audio/alac":
                return "alac";
            case "audio/flac":
                return "flac";
            case "audio/opus":
                return "opus";
            case "audio/true-hd":
                return "truehd";
            case "video/x-vnd.on2.vp8":
                return "vp8";
            case "video/x-vnd.on2.vp9":
                return "vp9";
            case "audio/g711-alaw":
                return "pcm_alaw";
            case "audio/g711-mlaw":
                return "pcm_mulaw";
            default:
                return null;
        }
    }
}
