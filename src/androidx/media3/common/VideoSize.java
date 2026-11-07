package androidx.media3.common;

import android.os.Bundle;
import androidx.media3.common.util.Util;
import com.android.dx.io.Opcodes;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoSize {
    public final int height;
    public final float pixelWidthHeightRatio;

    @Deprecated
    public final int unappliedRotationDegrees;
    public final int width;
    public static final VideoSize UNKNOWN = new VideoSize(0, 0);
    private static final String FIELD_WIDTH = Util.intToStringMaxRadix(0);
    private static final String FIELD_HEIGHT = Util.intToStringMaxRadix(1);
    private static final String FIELD_PIXEL_WIDTH_HEIGHT_RATIO = Util.intToStringMaxRadix(3);

    public VideoSize(int i, int i2) {
        this(i, i2, 1.0f);
    }

    public VideoSize(int i, int i2, float f) {
        this.width = i;
        this.height = i2;
        this.unappliedRotationDegrees = 0;
        this.pixelWidthHeightRatio = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoSize) {
            VideoSize videoSize = (VideoSize) obj;
            if (this.width == videoSize.width && this.height == videoSize.height && this.pixelWidthHeightRatio == videoSize.pixelWidthHeightRatio) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((Opcodes.RSUB_INT_LIT8 + this.width) * 31) + this.height) * 31) + Float.floatToRawIntBits(this.pixelWidthHeightRatio);
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        int i = this.width;
        if (i != 0) {
            bundle.putInt(FIELD_WIDTH, i);
        }
        int i2 = this.height;
        if (i2 != 0) {
            bundle.putInt(FIELD_HEIGHT, i2);
        }
        float f = this.pixelWidthHeightRatio;
        if (f != 1.0f) {
            bundle.putFloat(FIELD_PIXEL_WIDTH_HEIGHT_RATIO, f);
        }
        return bundle;
    }
}
