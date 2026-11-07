package androidx.camera.camera2.adapter;

import android.hardware.camera2.CaptureResult;
import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureMetaData$AeMode;
import androidx.camera.core.impl.CameraCaptureMetaData$AeState;
import androidx.camera.core.impl.CameraCaptureMetaData$AfMode;
import androidx.camera.core.impl.CameraCaptureMetaData$AfState;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbMode;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbState;
import androidx.camera.core.impl.CameraCaptureMetaData$FlashState;
import androidx.camera.core.impl.utils.ExifData;
import java.nio.BufferUnderflowException;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0002\u001a\f\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0002\u001a\f\u0010\u0007\u001a\u00020\b*\u00020\u0002H\u0002\u001a\f\u0010\t\u001a\u00020\n*\u00020\u0002H\u0002\u001a\f\u0010\u000b\u001a\u00020\f*\u00020\u0002H\u0002\u001a\f\u0010\r\u001a\u00020\u000e*\u00020\u0002H\u0002\u001a\f\u0010\u000f\u001a\u00020\u0010*\u00020\u0002H\u0002\u001a\u0014\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0002¨\u0006\u0015"}, d2 = {"getAfMode", "Landroidx/camera/core/impl/CameraCaptureMetaData$AfMode;", "Landroidx/camera/camera2/pipe/FrameMetadata;", "getAfState", "Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;", "getAeMode", "Landroidx/camera/core/impl/CameraCaptureMetaData$AeMode;", "getAeState", "Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;", "getAwbMode", "Landroidx/camera/core/impl/CameraCaptureMetaData$AwbMode;", "getAwbState", "Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;", "getFlashState", "Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;", "getTimestamp", _UrlKt.FRAGMENT_ENCODE_SET, "populateExifData", _UrlKt.FRAGMENT_ENCODE_SET, "exifData", "Landroidx/camera/core/impl/utils/ExifData$Builder;", "camera-camera2"}, m862k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCaptureResultAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureResultAdapter.kt\nandroidx/camera/camera2/adapter/CaptureResultAdapterKt\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,278:1\n85#2,4:279\n85#2,4:283\n85#2,4:287\n85#2,4:291\n85#2,4:295\n85#2,4:299\n85#2,4:303\n119#2,4:307\n1#3:311\n*S KotlinDebug\n*F\n+ 1 CaptureResultAdapter.kt\nandroidx/camera/camera2/adapter/CaptureResultAdapterKt\n*L\n135#1:279,4\n151#1:283,4\n165#1:287,4\n180#1:291,4\n198#1:295,4\n211#1:299,4\n225#1:303,4\n243#1:307,4\n*E\n"})
public abstract class CaptureResultAdapterKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AfMode getAfMode(FrameMetadata frameMetadata) {
        Integer num = (Integer) frameMetadata.get(CaptureResult.CONTROL_AF_MODE);
        if ((num != null && num.intValue() == 0) || (num != null && num.intValue() == 5)) {
            return CameraCaptureMetaData$AfMode.OFF;
        }
        if ((num != null && num.intValue() == 1) || (num != null && num.intValue() == 2)) {
            return CameraCaptureMetaData$AfMode.ON_MANUAL_AUTO;
        }
        if ((num != null && num.intValue() == 4) || (num != null && num.intValue() == 3)) {
            return CameraCaptureMetaData$AfMode.ON_CONTINUOUS_AUTO;
        }
        if (num == null) {
            return CameraCaptureMetaData$AfMode.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AF mode (" + num.intValue() + ") for " + ((Object) FrameNumber.m1343toStringimpl(frameMetadata.mo1337getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AfMode.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AfState getAfState(FrameMetadata frameMetadata) {
        Integer num = (Integer) frameMetadata.get(CaptureResult.CONTROL_AF_STATE);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData$AfState.INACTIVE;
        }
        if ((num != null && num.intValue() == 3) || (num != null && num.intValue() == 1)) {
            return CameraCaptureMetaData$AfState.SCANNING;
        }
        if (num != null && num.intValue() == 4) {
            return CameraCaptureMetaData$AfState.LOCKED_FOCUSED;
        }
        if (num != null && num.intValue() == 5) {
            return CameraCaptureMetaData$AfState.LOCKED_NOT_FOCUSED;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData$AfState.PASSIVE_FOCUSED;
        }
        if (num != null && num.intValue() == 6) {
            return CameraCaptureMetaData$AfState.PASSIVE_NOT_FOCUSED;
        }
        if (num == null) {
            return CameraCaptureMetaData$AfState.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AF state (" + num.intValue() + ") for " + ((Object) FrameNumber.m1343toStringimpl(frameMetadata.mo1337getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AfState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AeMode getAeMode(FrameMetadata frameMetadata) {
        Integer num = (Integer) frameMetadata.get(CaptureResult.CONTROL_AE_MODE);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData$AeMode.OFF;
        }
        if (num != null && num.intValue() == 1) {
            return CameraCaptureMetaData$AeMode.ON;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData$AeMode.ON_AUTO_FLASH;
        }
        if (num != null && num.intValue() == 3) {
            return CameraCaptureMetaData$AeMode.ON_ALWAYS_FLASH;
        }
        if (num != null && num.intValue() == 4) {
            return CameraCaptureMetaData$AeMode.ON_AUTO_FLASH_REDEYE;
        }
        if (num == null) {
            return CameraCaptureMetaData$AeMode.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AE mode (" + num.intValue() + ") for " + ((Object) FrameNumber.m1343toStringimpl(frameMetadata.mo1337getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AeMode.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AeState getAeState(FrameMetadata frameMetadata) {
        Integer num = (Integer) frameMetadata.get(CaptureResult.CONTROL_AE_STATE);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData$AeState.INACTIVE;
        }
        if ((num != null && num.intValue() == 1) || (num != null && num.intValue() == 5)) {
            return CameraCaptureMetaData$AeState.SEARCHING;
        }
        if (num != null && num.intValue() == 4) {
            return CameraCaptureMetaData$AeState.FLASH_REQUIRED;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData$AeState.CONVERGED;
        }
        if (num != null && num.intValue() == 3) {
            return CameraCaptureMetaData$AeState.LOCKED;
        }
        if (num == null) {
            return CameraCaptureMetaData$AeState.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AE state (" + num.intValue() + ") for " + ((Object) FrameNumber.m1343toStringimpl(frameMetadata.mo1337getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AeState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AwbMode getAwbMode(FrameMetadata frameMetadata) {
        Integer num = (Integer) frameMetadata.get(CaptureResult.CONTROL_AWB_MODE);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData$AwbMode.OFF;
        }
        if (num != null && num.intValue() == 1) {
            return CameraCaptureMetaData$AwbMode.AUTO;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData$AwbMode.INCANDESCENT;
        }
        if (num != null && num.intValue() == 3) {
            return CameraCaptureMetaData$AwbMode.FLUORESCENT;
        }
        if (num != null && num.intValue() == 4) {
            return CameraCaptureMetaData$AwbMode.WARM_FLUORESCENT;
        }
        if (num != null && num.intValue() == 5) {
            return CameraCaptureMetaData$AwbMode.DAYLIGHT;
        }
        if (num != null && num.intValue() == 6) {
            return CameraCaptureMetaData$AwbMode.CLOUDY_DAYLIGHT;
        }
        if (num != null && num.intValue() == 7) {
            return CameraCaptureMetaData$AwbMode.TWILIGHT;
        }
        if (num != null && num.intValue() == 8) {
            return CameraCaptureMetaData$AwbMode.SHADE;
        }
        if (num == null) {
            return CameraCaptureMetaData$AwbMode.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AWB mode (" + num.intValue() + ") for " + ((Object) FrameNumber.m1343toStringimpl(frameMetadata.mo1337getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AwbMode.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AwbState getAwbState(FrameMetadata frameMetadata) {
        Integer num = (Integer) frameMetadata.get(CaptureResult.CONTROL_AWB_STATE);
        if (num != null && num.intValue() == 0) {
            return CameraCaptureMetaData$AwbState.INACTIVE;
        }
        if (num != null && num.intValue() == 1) {
            return CameraCaptureMetaData$AwbState.METERING;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData$AwbState.CONVERGED;
        }
        if (num != null && num.intValue() == 3) {
            return CameraCaptureMetaData$AwbState.LOCKED;
        }
        if (num == null) {
            return CameraCaptureMetaData$AwbState.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AWB state (" + num.intValue() + ") for " + ((Object) FrameNumber.m1343toStringimpl(frameMetadata.mo1337getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AwbState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$FlashState getFlashState(FrameMetadata frameMetadata) {
        Integer num = (Integer) frameMetadata.get(CaptureResult.FLASH_STATE);
        if ((num != null && num.intValue() == 0) || (num != null && num.intValue() == 1)) {
            return CameraCaptureMetaData$FlashState.NONE;
        }
        if (num != null && num.intValue() == 2) {
            return CameraCaptureMetaData$FlashState.READY;
        }
        if ((num != null && num.intValue() == 3) || (num != null && num.intValue() == 4)) {
            return CameraCaptureMetaData$FlashState.FIRED;
        }
        if (num == null) {
            return CameraCaptureMetaData$FlashState.UNKNOWN;
        }
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown flash state (" + num.intValue() + ") for " + ((Object) FrameNumber.m1343toStringimpl(frameMetadata.mo1337getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$FlashState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long getTimestamp(FrameMetadata frameMetadata) {
        return ((Number) frameMetadata.getOrDefault((CaptureResult.Key<long>) CaptureResult.SENSOR_TIMESTAMP, -1L)).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void populateExifData(FrameMetadata frameMetadata, ExifData.Builder builder) {
        try {
            Integer num = (Integer) frameMetadata.get(CaptureResult.JPEG_ORIENTATION);
            if (num != null) {
                builder.setOrientationDegrees(num.intValue());
            }
        } catch (BufferUnderflowException unused) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to get JPEG orientation.");
            }
        }
        Long l = (Long) frameMetadata.get(CaptureResult.SENSOR_EXPOSURE_TIME);
        if (l != null) {
            builder.setExposureTimeNanos(l.longValue());
        }
        Float f = (Float) frameMetadata.get(CaptureResult.LENS_APERTURE);
        if (f != null) {
            builder.setLensFNumber(f.floatValue());
        }
        Integer num2 = (Integer) frameMetadata.get(CaptureResult.SENSOR_SENSITIVITY);
        if (num2 != null) {
            int iIntValue = num2.intValue();
            builder.setIso(iIntValue);
            if (((Integer) frameMetadata.get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST)) != null) {
                builder.setIso(iIntValue * ((int) (r1.intValue() / 100.0f)));
            }
        }
        Float f2 = (Float) frameMetadata.get(CaptureResult.LENS_FOCAL_LENGTH);
        if (f2 != null) {
            builder.setFocalLength(f2.floatValue());
        }
        Integer num3 = (Integer) frameMetadata.get(CaptureResult.CONTROL_AWB_MODE);
        if (num3 != null) {
            int iIntValue2 = num3.intValue();
            ExifData.WhiteBalanceMode whiteBalanceMode = ExifData.WhiteBalanceMode.AUTO;
            if (iIntValue2 == 0) {
                whiteBalanceMode = ExifData.WhiteBalanceMode.MANUAL;
            }
            builder.setWhiteBalanceMode(whiteBalanceMode);
        }
    }
}
