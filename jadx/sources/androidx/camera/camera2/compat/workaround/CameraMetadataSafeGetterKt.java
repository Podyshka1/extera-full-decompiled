package androidx.camera.camera2.compat.workaround;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import androidx.camera.camera2.compat.quirk.ControlZoomRatioRangeAssertionErrorQuirk;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.internal.ZoomMath;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraMetadataSafeGetterKt {
    public static final Object getSafely(CameraMetadata cameraMetadata, CameraCharacteristics.Key key) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (Build.VERSION.SDK_INT >= 30 && Intrinsics.areEqual(key, CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE)) {
            return getControlZoomRatioRangeSafely(cameraMetadata);
        }
        if (Intrinsics.areEqual(key, CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)) {
            return getActiveArraySizeSafely(cameraMetadata);
        }
        return cameraMetadata.get(key);
    }

    public static final Range getControlZoomRatioRangeSafely(CameraMetadata cameraMetadata) {
        Float f;
        Float fValueOf = Float.valueOf(1.0f);
        Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
        try {
            CameraCharacteristics.Key CONTROL_ZOOM_RATIO_RANGE = CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE;
            Intrinsics.checkNotNullExpressionValue(CONTROL_ZOOM_RATIO_RANGE, "CONTROL_ZOOM_RATIO_RANGE");
            Range range = (Range) cameraMetadata.get(CONTROL_ZOOM_RATIO_RANGE);
            if (range == null) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to read CONTROL_ZOOM_RATIO_RANGE for " + ((Object) CameraId.m1607toStringimpl(cameraMetadata.mo1612getCameraDz_R5H8())) + '!');
                }
                return new Range(fValueOf, fValueOf);
            }
            ZoomMath zoomMath = ZoomMath.INSTANCE;
            Object lower = range.getLower();
            Intrinsics.checkNotNullExpressionValue(lower, "getLower(...)");
            if (zoomMath.nearZero$camera_camera2(((Number) lower).floatValue()) || ((Number) range.getLower()).floatValue() < 0.0f) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid lower zoom range detected: " + range.getLower());
                }
                f = fValueOf;
            } else {
                f = (Float) range.getLower();
            }
            Object upper = range.getUpper();
            Intrinsics.checkNotNullExpressionValue(upper, "getUpper(...)");
            if (zoomMath.nearZero$camera_camera2(((Number) upper).floatValue()) || ((Number) range.getUpper()).floatValue() < 0.0f) {
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid upper zoom range detected: " + range.getUpper());
                }
            } else {
                fValueOf = (Float) range.getUpper();
            }
            return new Range(f, fValueOf);
        } catch (AssertionError e) {
            if (DeviceQuirks.INSTANCE.get(ControlZoomRatioRangeAssertionErrorQuirk.class) != null) {
                Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Device is known to throw an exception while retrieving the value for CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE. CONTROL_ZOOM_RATIO_RANGE is not supported. [Manufacturer: " + Build.MANUFACTURER + ", Model: " + Build.MODEL + ", API Level: " + Build.VERSION.SDK_INT + "].");
                }
            } else {
                Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
                if (Logger.isErrorEnabled("CXCP")) {
                    Log.e(Camera2Logger.TRUNCATED_TAG, "Exception thrown while retrieving the value for CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE on devices not known to throw exceptions during this operation. Please file an issue at https://issuetracker.google.com/issues/new?component=618491&template=1257717 with this error message [Manufacturer: " + Build.MANUFACTURER + ", Model: " + Build.MODEL + ", API Level: " + Build.VERSION.SDK_INT + "]. CONTROL_ZOOM_RATIO_RANGE is not available.", e);
                }
            }
            if (!Logger.isWarnEnabled("CXCP")) {
                return null;
            }
            Log.w(Camera2Logger.TRUNCATED_TAG, "AssertionError: failed to get CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE", e);
            return null;
        }
    }

    public static final Rect getActiveArraySizeSafely(CameraMetadata cameraMetadata) {
        Intrinsics.checkNotNullParameter(cameraMetadata, "<this>");
        CameraCharacteristics.Key SENSOR_INFO_ACTIVE_ARRAY_SIZE = CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE;
        Intrinsics.checkNotNullExpressionValue(SENSOR_INFO_ACTIVE_ARRAY_SIZE, "SENSOR_INFO_ACTIVE_ARRAY_SIZE");
        Rect rect = (Rect) cameraMetadata.get(SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (rect != null) {
            return rect;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isWarnEnabled("CXCP")) {
            Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to read SENSOR_INFO_ACTIVE_ARRAY_SIZE for " + ((Object) CameraId.m1607toStringimpl(cameraMetadata.mo1612getCameraDz_R5H8())) + '!');
        }
        return new Rect(0, 0, 4000, 3000);
    }
}
