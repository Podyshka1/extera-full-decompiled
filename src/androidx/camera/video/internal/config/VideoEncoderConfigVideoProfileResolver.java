package androidx.camera.video.internal.config;

import android.util.Range;
import android.util.Size;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.VideoSpec;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.core.util.Supplier;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoEncoderConfigVideoProfileResolver implements Supplier {
    public static final Companion Companion = new Companion(null);
    private final DynamicRange dynamicRange;
    private final Range expectedFrameRateRange;
    private final Timebase inputTimebase;
    private final String mimeType;
    private final Size surfaceSize;
    private final EncoderProfilesProxy.VideoProfileProxy videoProfile;
    private final VideoSpec videoSpec;

    public VideoEncoderConfigVideoProfileResolver(String mimeType, Timebase inputTimebase, VideoSpec videoSpec, Size surfaceSize, EncoderProfilesProxy.VideoProfileProxy videoProfile, DynamicRange dynamicRange, Range expectedFrameRateRange) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Intrinsics.checkNotNullParameter(inputTimebase, "inputTimebase");
        Intrinsics.checkNotNullParameter(videoSpec, "videoSpec");
        Intrinsics.checkNotNullParameter(surfaceSize, "surfaceSize");
        Intrinsics.checkNotNullParameter(videoProfile, "videoProfile");
        Intrinsics.checkNotNullParameter(dynamicRange, "dynamicRange");
        Intrinsics.checkNotNullParameter(expectedFrameRateRange, "expectedFrameRateRange");
        this.mimeType = mimeType;
        this.inputTimebase = inputTimebase;
        this.videoSpec = videoSpec;
        this.surfaceSize = surfaceSize;
        this.videoProfile = videoProfile;
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
        Logger.m76d("VidEncVdPrflRslvr", "Resolved VIDEO frame rates: Capture frame rate = " + captureEncodeRatesResolveFrameRates$camera_video.getCaptureRate() + "fps. Encode frame rate = " + captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate() + "fps.");
        int bitrate = this.videoSpec.getBitrate();
        if (bitrate == 0) {
            Logger.m76d("VidEncVdPrflRslvr", "Using resolved VIDEO bitrate from EncoderProfiles");
            bitrate = VideoConfigUtil.scaleBitrate(this.videoProfile.getBitrate(), this.dynamicRange.getBitDepth(), this.videoProfile.getBitDepth(), captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate(), this.videoProfile.getFrameRate(), this.surfaceSize.getWidth(), this.videoProfile.getWidth(), this.surfaceSize.getHeight(), this.videoProfile.getHeight());
        }
        int profile = this.videoProfile.getProfile();
        VideoEncoderConfig videoEncoderConfigBuild = VideoEncoderConfig.builder().setMimeType(this.mimeType).setInputTimebase(this.inputTimebase).setResolution(this.surfaceSize).setBitrate(bitrate).setCaptureFrameRate(captureEncodeRatesResolveFrameRates$camera_video.getCaptureRate()).setEncodeFrameRate(captureEncodeRatesResolveFrameRates$camera_video.getEncodeRate()).setProfile(profile).setDataSpace(videoConfigUtil.mimeAndProfileToEncoderDataSpace(this.mimeType, profile)).build();
        Intrinsics.checkNotNullExpressionValue(videoEncoderConfigBuild, "build(...)");
        return videoEncoderConfigBuild;
    }
}
