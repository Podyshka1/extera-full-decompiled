package androidx.camera.camera2.internal;

import androidx.core.math.MathUtils;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ%\u0010\r\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Landroidx/camera/camera2/internal/ZoomMath;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "num1", "num2", _UrlKt.FRAGMENT_ENCODE_SET, "areFloatsEqual", "(FF)Z", "zoomRatio", "minZoomRatio", "maxZoomRatio", "getLinearZoomFromZoomRatio", "(FFF)F", "num", "nearZero$camera_camera2", "(F)Z", "nearZero", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class ZoomMath {
    public static final ZoomMath INSTANCE = new ZoomMath();

    private ZoomMath() {
    }

    public final float getLinearZoomFromZoomRatio(float zoomRatio, float minZoomRatio, float maxZoomRatio) {
        if (areFloatsEqual(minZoomRatio, maxZoomRatio) || nearZero$camera_camera2(zoomRatio)) {
            return 0.0f;
        }
        if (areFloatsEqual(zoomRatio, maxZoomRatio)) {
            return 1.0f;
        }
        if (areFloatsEqual(zoomRatio, minZoomRatio)) {
            return 0.0f;
        }
        float f = 1.0f / minZoomRatio;
        return MathUtils.clamp((f - (1.0f / zoomRatio)) / (f - (1.0f / maxZoomRatio)), 0.0f, 1.0f);
    }

    private final boolean areFloatsEqual(float num1, float num2) {
        return nearZero$camera_camera2(num1 - num2);
    }

    public final boolean nearZero$camera_camera2(float num) {
        return ((double) Math.abs(num)) < ((double) Math.ulp(Math.abs(num))) * 2.0d;
    }
}
