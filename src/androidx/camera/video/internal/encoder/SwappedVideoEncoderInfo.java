package androidx.camera.video.internal.encoder;

import android.util.Range;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SwappedVideoEncoderInfo implements VideoEncoderInfo {
    private final VideoEncoderInfo videoEncoderInfo;

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean canSwapWidthHeight() {
        return this.videoEncoderInfo.canSwapWidthHeight();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedBitrateRange() {
        return this.videoEncoderInfo.getSupportedBitrateRange();
    }

    public SwappedVideoEncoderInfo(VideoEncoderInfo videoEncoderInfo) {
        Intrinsics.checkNotNullParameter(videoEncoderInfo, "videoEncoderInfo");
        this.videoEncoderInfo = videoEncoderInfo;
        if (!videoEncoderInfo.canSwapWidthHeight()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean isSizeSupported(int i, int i2) {
        return this.videoEncoderInfo.isSizeSupported(i2, i);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean isSizeSupportedAllowSwapping(int i, int i2) {
        return this.videoEncoderInfo.isSizeSupportedAllowSwapping(i2, i);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedWidths() {
        return this.videoEncoderInfo.getSupportedHeights();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedHeights() {
        return this.videoEncoderInfo.getSupportedWidths();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedWidthsFor(int i) {
        return this.videoEncoderInfo.getSupportedHeightsFor(i);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedHeightsFor(int i) {
        return this.videoEncoderInfo.getSupportedWidthsFor(i);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getWidthAlignment() {
        return this.videoEncoderInfo.getHeightAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getHeightAlignment() {
        return this.videoEncoderInfo.getWidthAlignment();
    }
}
