package androidx.camera.video.internal.encoder;

import android.media.MediaCodecInfo;
import android.util.Range;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.utils.CodecUtil;
import androidx.camera.video.internal.workaround.VideoEncoderInfoWrapper;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoEncoderInfoImpl extends EncoderInfoImpl implements VideoEncoderInfo {
    public static final Companion Companion = new Companion(null);
    public static final VideoEncoderInfo.Finder FINDER = new VideoEncoderInfo.Finder() { // from class: androidx.camera.video.internal.encoder.VideoEncoderInfoImpl$$ExternalSyntheticLambda0
        @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo.Finder
        public final VideoEncoderInfo find(String str) {
            return VideoEncoderInfoImpl.FINDER$lambda$0(str);
        }
    };
    private final MediaCodecInfo.VideoCapabilities videoCapabilities;

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean canSwapWidthHeight() {
        return true;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public /* synthetic */ boolean isSizeSupportedAllowSwapping(int i, int i2) {
        return VideoEncoderInfo.CC.$default$isSizeSupportedAllowSwapping(this, i, i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoEncoderInfoImpl(MediaCodecInfo codecInfo, String mime) {
        super(codecInfo, mime);
        Intrinsics.checkNotNullParameter(codecInfo, "codecInfo");
        Intrinsics.checkNotNullParameter(mime, "mime");
        MediaCodecInfo.VideoCapabilities videoCapabilities = getCodecCapabilities().getVideoCapabilities();
        Intrinsics.checkNotNull(videoCapabilities);
        this.videoCapabilities = videoCapabilities;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean isSizeSupported(int i, int i2) {
        return this.videoCapabilities.isSizeSupported(i, i2);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedWidths() {
        Range<Integer> supportedWidths = this.videoCapabilities.getSupportedWidths();
        Intrinsics.checkNotNullExpressionValue(supportedWidths, "getSupportedWidths(...)");
        return supportedWidths;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedHeights() {
        Range<Integer> supportedHeights = this.videoCapabilities.getSupportedHeights();
        Intrinsics.checkNotNullExpressionValue(supportedHeights, "getSupportedHeights(...)");
        return supportedHeights;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedWidthsFor(int i) {
        try {
            Range<Integer> supportedWidthsFor = this.videoCapabilities.getSupportedWidthsFor(i);
            Intrinsics.checkNotNull(supportedWidthsFor);
            return supportedWidthsFor;
        } catch (Throwable th) {
            throw Companion.toIllegalArgumentException(th);
        }
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedHeightsFor(int i) {
        try {
            Range<Integer> supportedHeightsFor = this.videoCapabilities.getSupportedHeightsFor(i);
            Intrinsics.checkNotNull(supportedHeightsFor);
            return supportedHeightsFor;
        } catch (Throwable th) {
            throw Companion.toIllegalArgumentException(th);
        }
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getWidthAlignment() {
        return this.videoCapabilities.getWidthAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getHeightAlignment() {
        return this.videoCapabilities.getHeightAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedBitrateRange() {
        Range<Integer> bitrateRange = this.videoCapabilities.getBitrateRange();
        Intrinsics.checkNotNullExpressionValue(bitrateRange, "getBitrateRange(...)");
        return bitrateRange;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final IllegalArgumentException toIllegalArgumentException(Throwable th) {
            IllegalArgumentException illegalArgumentException = th instanceof IllegalArgumentException ? (IllegalArgumentException) th : null;
            return illegalArgumentException == null ? new IllegalArgumentException(th) : illegalArgumentException;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoEncoderInfo FINDER$lambda$0(String mimeType) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        try {
            return VideoEncoderInfoWrapper.Companion.from(new VideoEncoderInfoImpl(CodecUtil.findCodecAndGetCodecInfo(mimeType), mimeType), null);
        } catch (InvalidConfigException e) {
            Logger.m82w("VideoEncoderInfoImpl", "Unable to find a VideoEncoderInfoImpl", e);
            return null;
        }
    }
}
