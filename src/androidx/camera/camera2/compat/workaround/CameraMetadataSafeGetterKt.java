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
import com.exteragram.messenger.plugins.PluginsConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0004¢\u0006\u0002\u0010\u0005\u001a\u0014\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007*\u00020\u0002H\u0007\u001a\n\u0010\t\u001a\u00020\n*\u00020\u0002¨\u0006\u000b"}, d2 = {"getSafely", "T", "Landroidx/camera/camera2/pipe/CameraMetadata;", PluginsConstants.Settings.KEY, "Landroid/hardware/camera2/CameraCharacteristics$Key;", "(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;", "getControlZoomRatioRangeSafely", "Landroid/util/Range;", _UrlKt.FRAGMENT_ENCODE_SET, "getActiveArraySizeSafely", "Landroid/graphics/Rect;", "camera-camera2"}, m910k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraMetadataSafeGetter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraMetadataSafeGetter.kt\nandroidx/camera/camera2/compat/workaround/CameraMetadataSafeGetterKt\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,132:1\n119#2,4:133\n119#2,4:137\n119#2,4:141\n85#2,4:145\n146#2,4:149\n129#2,4:153\n119#2,4:157\n*S KotlinDebug\n*F\n+ 1 CameraMetadataSafeGetter.kt\nandroidx/camera/camera2/compat/workaround/CameraMetadataSafeGetterKt\n*L\n71#1:133,4\n76#1:137,4\n83#1:141,4\n92#1:145,4\n100#1:149,4\n111#1:153,4\n126#1:157,4\n*E\n"})
public abstract class CameraMetadataSafeGetterKt {
    public static final <T> T getSafely(CameraMetadata cameraMetadata, CameraCharacteristics.Key<T> key) {
        if (Build.VERSION.SDK_INT >= 30 && Intrinsics.areEqual(key, CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE)) {
            return (T) getControlZoomRatioRangeSafely(cameraMetadata);
        }
        if (Intrinsics.areEqual(key, CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)) {
            return (T) getActiveArraySizeSafely(cameraMetadata);
        }
        return (T) cameraMetadata.get(key);
    }

    public static final Range<Float> getControlZoomRatioRangeSafely(CameraMetadata cameraMetadata) {
        Float f;
        Float fValueOf = Float.valueOf(1.0f);
        try {
            Range range = (Range) cameraMetadata.get(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE);
            if (range == null) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to read CONTROL_ZOOM_RATIO_RANGE for " + ((Object) CameraId.m1356toStringimpl(cameraMetadata.mo1361getCameraDz_R5H8())) + '!');
                }
                return new Range<>(fValueOf, fValueOf);
            }
            ZoomMath zoomMath = ZoomMath.INSTANCE;
            if (zoomMath.nearZero$camera_camera2(((Number) range.getLower()).floatValue()) || ((Number) range.getLower()).floatValue() < 0.0f) {
                Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid lower zoom range detected: " + range.getLower());
                }
                f = fValueOf;
            } else {
                f = (Float) range.getLower();
            }
            if (zoomMath.nearZero$camera_camera2(((Number) range.getUpper()).floatValue()) || ((Number) range.getUpper()).floatValue() < 0.0f) {
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Invalid upper zoom range detected: " + range.getUpper());
                }
            } else {
                fValueOf = (Float) range.getUpper();
            }
            return new Range<>(f, fValueOf);
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
        Rect rect = (Rect) cameraMetadata.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (rect != null) {
            return rect;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isWarnEnabled("CXCP")) {
            Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to read SENSOR_INFO_ACTIVE_ARRAY_SIZE for " + ((Object) CameraId.m1356toStringimpl(cameraMetadata.mo1361getCameraDz_R5H8())) + '!');
        }
        return new Rect(0, 0, 4000, 3000);
    }
}
