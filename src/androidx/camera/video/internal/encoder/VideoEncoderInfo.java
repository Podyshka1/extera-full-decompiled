package androidx.camera.video.internal.encoder;

import android.util.Range;

/* JADX INFO: loaded from: classes4.dex */
public interface VideoEncoderInfo extends EncoderInfo {

    public interface Finder {
        VideoEncoderInfo find(String str);
    }

    boolean canSwapWidthHeight();

    int getHeightAlignment();

    Range getSupportedBitrateRange();

    Range getSupportedHeights();

    Range getSupportedHeightsFor(int i);

    Range getSupportedWidths();

    Range getSupportedWidthsFor(int i);

    int getWidthAlignment();

    boolean isSizeSupported(int i, int i2);

    boolean isSizeSupportedAllowSwapping(int i, int i2);

    /* JADX INFO: renamed from: androidx.camera.video.internal.encoder.VideoEncoderInfo$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static boolean $default$isSizeSupportedAllowSwapping(VideoEncoderInfo videoEncoderInfo, int i, int i2) {
            if (videoEncoderInfo.isSizeSupported(i, i2)) {
                return true;
            }
            return videoEncoderInfo.canSwapWidthHeight() && videoEncoderInfo.isSizeSupported(i2, i);
        }
    }
}
