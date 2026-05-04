package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.utils.DynamicRangeUtil;
import androidx.core.util.Supplier;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoEncoderConfigDefaultResolver implements Supplier {
    public static final Companion Companion = new Companion(null);
    private static final Size VIDEO_SIZE_BASE = new Size(1280, 720);
    private final DynamicRange dynamicRange;
    private final Range expectedFrameRateRange;
    private final Timebase inputTimebase;
    private final String mimeType;
    private final Size surfaceSize;
    private final VideoSpec videoSpec;

    public VideoEncoderConfigDefaultResolver(String mimeType, Timebase inputTimebase, VideoSpec videoSpec, Size surfaceSize, DynamicRange dynamicRange, Range expectedFrameRateRange) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Intrinsics.checkNotNullParameter(inputTimebase, "inputTimebase");
        Intrinsics.checkNotNullParameter(videoSpec, "videoSpec");
        Intrinsics.checkNotNullParameter(surfaceSize, "surfaceSize");
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        Intrinsics.checkNotNullParameter(expectedFrameRateRange, "expectedFrameRateRange");
        this.mimeType = mimeType;
        this.inputTimebase = inputTimebase;
        this.videoSpec = videoSpec;
        this.surfaceSize = surfaceSize;
        this.dynamicRange = dynamicRange;
        this.expectedFrameRateRange = expectedFrameRateRange;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.core.util.Supplier
    public VideoEncoderConfig get() {
        VideoConfigUtil videoConfigUtil = VideoConfigUtil.INSTANCE;
        CaptureEncodeRates captureEncodeRatesResolveFrameRates$camera_video = videoConfigUtil.resolveFrameRates$camera_video(this.videoSpec, this.expectedFrameRateRange);
        Logger.m76d("VidEncCfgDefaultRslvr", "Resolved VIDEO frame rates: Capture frame rate = " + captureEncodeRatesResolveFrameRates$camera_video.getCaptureRate() + "fps. Encode frame rate = " + captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate() + "fps.");
        int bitrate = this.videoSpec.getBitrate();
        if (bitrate == 0) {
            Logger.m76d("VidEncCfgDefaultRslvr", "Using fallback VIDEO bitrate");
            int bitDepth = this.dynamicRange.getBitDepth();
            int encodeRate = captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate();
            int width = this.surfaceSize.getWidth();
            Size size = VIDEO_SIZE_BASE;
            bitrate = VideoConfigUtil.scaleBitrate(14000000, bitDepth, 8, encodeRate, 30, width, size.getWidth(), this.surfaceSize.getHeight(), size.getHeight());
        }
        int iDynamicRangeToCodecProfileLevelForMime = DynamicRangeUtil.dynamicRangeToCodecProfileLevelForMime(this.mimeType, this.dynamicRange);
        VideoEncoderConfig videoEncoderConfigBuild = VideoEncoderConfig.builder().setMimeType(this.mimeType).setInputTimebase(this.inputTimebase).setResolution(this.surfaceSize).setBitrate(bitrate).setCaptureFrameRate(captureEncodeRatesResolveFrameRates$camera_video.getCaptureRate()).setEncodeFrameRate(captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate()).setProfile(iDynamicRangeToCodecProfileLevelForMime).setDataSpace(videoConfigUtil.mimeAndProfileToEncoderDataSpace(this.mimeType, iDynamicRangeToCodecProfileLevelForMime)).build();
        Intrinsics.checkNotNullExpressionValue(videoEncoderConfigBuild, "build(...)");
        return videoEncoderConfigBuild;
    }
}
