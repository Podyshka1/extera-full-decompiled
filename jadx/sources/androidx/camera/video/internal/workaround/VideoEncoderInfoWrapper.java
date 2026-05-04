package androidx.camera.video.internal.workaround;

import android.util.Range;
import android.util.Size;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.camera.core.Logger;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.MediaCodecInfoReportIncorrectInfoQuirk;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import java.util.HashSet;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoEncoderInfoWrapper implements VideoEncoderInfo {
    public static final Companion Companion = new Companion(null);
    private final Range _supportedHeights;
    private final Range _supportedWidths;
    private final Set extraSupportedSizes;
    private final VideoEncoderInfo videoEncoderInfo;

    public /* synthetic */ VideoEncoderInfoWrapper(VideoEncoderInfo videoEncoderInfo, DefaultConstructorMarker defaultConstructorMarker) {
        this(videoEncoderInfo);
    }

    public static final VideoEncoderInfo from(VideoEncoderInfo videoEncoderInfo, Size size) {
        return Companion.from(videoEncoderInfo, size);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public /* synthetic */ boolean isSizeSupportedAllowSwapping(int i, int i2) {
        return VideoEncoderInfo.CC.$default$isSizeSupportedAllowSwapping(this, i, i2);
    }

    private VideoEncoderInfoWrapper(VideoEncoderInfo videoEncoderInfo) {
        this.videoEncoderInfo = videoEncoderInfo;
        HashSet hashSet = new HashSet();
        this.extraSupportedSizes = hashSet;
        int widthAlignment = videoEncoderInfo.getWidthAlignment();
        Range rangeCreate = Range.create(Integer.valueOf(widthAlignment), Integer.valueOf(((int) Math.ceil(4096.0d / ((double) widthAlignment))) * widthAlignment));
        Intrinsics.checkNotNullExpressionValue(rangeCreate, "create(...)");
        this._supportedWidths = rangeCreate;
        int heightAlignment = videoEncoderInfo.getHeightAlignment();
        Range rangeCreate2 = Range.create(Integer.valueOf(heightAlignment), Integer.valueOf(((int) Math.ceil(2160.0d / ((double) heightAlignment))) * heightAlignment));
        Intrinsics.checkNotNullExpressionValue(rangeCreate2, "create(...)");
        this._supportedHeights = rangeCreate2;
        Set extraSupportedSizes = MediaCodecInfoReportIncorrectInfoQuirk.getExtraSupportedSizes();
        Intrinsics.checkNotNullExpressionValue(extraSupportedSizes, "getExtraSupportedSizes(...)");
        hashSet.addAll(extraSupportedSizes);
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean canSwapWidthHeight() {
        return this.videoEncoderInfo.canSwapWidthHeight();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public boolean isSizeSupported(int i, int i2) {
        if (this.videoEncoderInfo.isSizeSupported(i, i2)) {
            return true;
        }
        Set<Size> set = this.extraSupportedSizes;
        if (!OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(set) || !set.isEmpty()) {
            for (Size size : set) {
                if (size.getWidth() == i && size.getHeight() == i2) {
                    return true;
                }
            }
        }
        return this._supportedWidths.contains(Integer.valueOf(i)) && this._supportedHeights.contains(Integer.valueOf(i2)) && i % this.videoEncoderInfo.getWidthAlignment() == 0 && i2 % this.videoEncoderInfo.getHeightAlignment() == 0;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedWidths() {
        return this._supportedWidths;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedHeights() {
        return this._supportedHeights;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedWidthsFor(int i) {
        if (!this._supportedHeights.contains(Integer.valueOf(i)) || i % this.videoEncoderInfo.getHeightAlignment() != 0) {
            throw new IllegalArgumentException(("Not supported height: " + i + " which is not in " + this._supportedHeights + " or can not be divided by alignment " + this.videoEncoderInfo.getHeightAlignment()).toString());
        }
        return this._supportedWidths;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedHeightsFor(int i) {
        if (!this._supportedWidths.contains(Integer.valueOf(i)) || i % this.videoEncoderInfo.getWidthAlignment() != 0) {
            throw new IllegalArgumentException(("Not supported width: " + i + " which is not in " + this._supportedWidths + " or can not be divided by alignment " + this.videoEncoderInfo.getWidthAlignment()).toString());
        }
        return this._supportedHeights;
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getWidthAlignment() {
        return this.videoEncoderInfo.getWidthAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public int getHeightAlignment() {
        return this.videoEncoderInfo.getHeightAlignment();
    }

    @Override // androidx.camera.video.internal.encoder.VideoEncoderInfo
    public Range getSupportedBitrateRange() {
        return this.videoEncoderInfo.getSupportedBitrateRange();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void addExtraSupportedSize(Size size) {
        this.extraSupportedSizes.add(size);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final VideoEncoderInfo from(VideoEncoderInfo videoEncoderInfo, Size size) {
            Intrinsics.checkNotNullParameter(videoEncoderInfo, "videoEncoderInfo");
            if (!(videoEncoderInfo instanceof VideoEncoderInfoWrapper)) {
                if (DeviceQuirks.get(MediaCodecInfoReportIncorrectInfoQuirk.class) == null) {
                    if (size != null && !videoEncoderInfo.isSizeSupportedAllowSwapping(size.getWidth(), size.getHeight())) {
                        Logger.m81w("VideoEncoderInfoWrapper", "Detected that the device does not support a size " + size + " that should be valid in widths/heights = " + videoEncoderInfo.getSupportedWidths() + '/' + videoEncoderInfo.getSupportedHeights());
                        videoEncoderInfo = new VideoEncoderInfoWrapper(videoEncoderInfo, null);
                    }
                } else {
                    videoEncoderInfo = new VideoEncoderInfoWrapper(videoEncoderInfo, null);
                }
            }
            if (size != null && (videoEncoderInfo instanceof VideoEncoderInfoWrapper)) {
                ((VideoEncoderInfoWrapper) videoEncoderInfo).addExtraSupportedSize(size);
            }
            return videoEncoderInfo;
        }
    }
}
