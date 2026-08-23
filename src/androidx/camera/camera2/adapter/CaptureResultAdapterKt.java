package androidx.camera.camera2.adapter;

import android.hardware.camera2.CaptureResult;
import android.os.Build;
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
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CaptureResultAdapterKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AfMode getAfMode(FrameMetadata frameMetadata) {
        CaptureResult.Key CONTROL_AF_MODE = CaptureResult.CONTROL_AF_MODE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AF_MODE, "CONTROL_AF_MODE");
        Integer num = (Integer) frameMetadata.get(CONTROL_AF_MODE);
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
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AF mode (" + num.intValue() + ") for " + ((Object) FrameNumber.m1647toStringimpl(frameMetadata.mo1641getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AfMode.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AfState getAfState(FrameMetadata frameMetadata) {
        CaptureResult.Key CONTROL_AF_STATE = CaptureResult.CONTROL_AF_STATE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AF_STATE, "CONTROL_AF_STATE");
        Integer num = (Integer) frameMetadata.get(CONTROL_AF_STATE);
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
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AF state (" + num.intValue() + ") for " + ((Object) FrameNumber.m1647toStringimpl(frameMetadata.mo1641getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AfState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AeMode getAeMode(FrameMetadata frameMetadata) {
        CaptureResult.Key CONTROL_AE_MODE = CaptureResult.CONTROL_AE_MODE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AE_MODE, "CONTROL_AE_MODE");
        Integer num = (Integer) frameMetadata.get(CONTROL_AE_MODE);
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
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AE mode (" + num.intValue() + ") for " + ((Object) FrameNumber.m1647toStringimpl(frameMetadata.mo1641getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AeMode.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AeState getAeState(FrameMetadata frameMetadata) {
        CaptureResult.Key CONTROL_AE_STATE = CaptureResult.CONTROL_AE_STATE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AE_STATE, "CONTROL_AE_STATE");
        Integer num = (Integer) frameMetadata.get(CONTROL_AE_STATE);
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
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AE state (" + num.intValue() + ") for " + ((Object) FrameNumber.m1647toStringimpl(frameMetadata.mo1641getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AeState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AwbMode getAwbMode(FrameMetadata frameMetadata) {
        CaptureResult.Key CONTROL_AWB_MODE = CaptureResult.CONTROL_AWB_MODE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AWB_MODE, "CONTROL_AWB_MODE");
        Integer num = (Integer) frameMetadata.get(CONTROL_AWB_MODE);
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
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AWB mode (" + num.intValue() + ") for " + ((Object) FrameNumber.m1647toStringimpl(frameMetadata.mo1641getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AwbMode.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$AwbState getAwbState(FrameMetadata frameMetadata) {
        CaptureResult.Key CONTROL_AWB_STATE = CaptureResult.CONTROL_AWB_STATE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AWB_STATE, "CONTROL_AWB_STATE");
        Integer num = (Integer) frameMetadata.get(CONTROL_AWB_STATE);
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
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown AWB state (" + num.intValue() + ") for " + ((Object) FrameNumber.m1647toStringimpl(frameMetadata.mo1641getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$AwbState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CameraCaptureMetaData$FlashState getFlashState(FrameMetadata frameMetadata) {
        CaptureResult.Key FLASH_STATE = CaptureResult.FLASH_STATE;
        Intrinsics.checkNotNullExpressionValue(FLASH_STATE, "FLASH_STATE");
        Integer num = (Integer) frameMetadata.get(FLASH_STATE);
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
            Log.d(Camera2Logger.TRUNCATED_TAG, "Unknown flash state (" + num.intValue() + ") for " + ((Object) FrameNumber.m1647toStringimpl(frameMetadata.mo1641getFrameNumberUgla2oM())) + '!');
        }
        return CameraCaptureMetaData$FlashState.UNKNOWN;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long getTimestamp(FrameMetadata frameMetadata) {
        CaptureResult.Key SENSOR_TIMESTAMP = CaptureResult.SENSOR_TIMESTAMP;
        Intrinsics.checkNotNullExpressionValue(SENSOR_TIMESTAMP, "SENSOR_TIMESTAMP");
        Object orDefault = frameMetadata.getOrDefault(SENSOR_TIMESTAMP, (Object) (-1L));
        Intrinsics.checkNotNullExpressionValue(orDefault, "getOrDefault(...)");
        return ((Number) orDefault).longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void populateExifData(FrameMetadata frameMetadata, ExifData.Builder builder) {
        try {
            CaptureResult.Key JPEG_ORIENTATION = CaptureResult.JPEG_ORIENTATION;
            Intrinsics.checkNotNullExpressionValue(JPEG_ORIENTATION, "JPEG_ORIENTATION");
            Integer num = (Integer) frameMetadata.get(JPEG_ORIENTATION);
            if (num != null) {
                builder.setOrientationDegrees(num.intValue());
            }
        } catch (BufferUnderflowException unused) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "Failed to get JPEG orientation.");
            }
        }
        CaptureResult.Key SENSOR_EXPOSURE_TIME = CaptureResult.SENSOR_EXPOSURE_TIME;
        Intrinsics.checkNotNullExpressionValue(SENSOR_EXPOSURE_TIME, "SENSOR_EXPOSURE_TIME");
        Long l = (Long) frameMetadata.get(SENSOR_EXPOSURE_TIME);
        if (l != null) {
            builder.setExposureTimeNanos(l.longValue());
        }
        CaptureResult.Key LENS_APERTURE = CaptureResult.LENS_APERTURE;
        Intrinsics.checkNotNullExpressionValue(LENS_APERTURE, "LENS_APERTURE");
        Float f = (Float) frameMetadata.get(LENS_APERTURE);
        if (f != null) {
            builder.setLensFNumber(f.floatValue());
        }
        CaptureResult.Key SENSOR_SENSITIVITY = CaptureResult.SENSOR_SENSITIVITY;
        Intrinsics.checkNotNullExpressionValue(SENSOR_SENSITIVITY, "SENSOR_SENSITIVITY");
        Integer num2 = (Integer) frameMetadata.get(SENSOR_SENSITIVITY);
        if (num2 != null) {
            int iIntValue = num2.intValue();
            builder.setIso(iIntValue);
            if (Build.VERSION.SDK_INT >= 24) {
                CaptureResult.Key CONTROL_POST_RAW_SENSITIVITY_BOOST = CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST;
                Intrinsics.checkNotNullExpressionValue(CONTROL_POST_RAW_SENSITIVITY_BOOST, "CONTROL_POST_RAW_SENSITIVITY_BOOST");
                if (((Integer) frameMetadata.get(CONTROL_POST_RAW_SENSITIVITY_BOOST)) != null) {
                    builder.setIso(iIntValue * ((int) (r1.intValue() / 100.0f)));
                }
            }
        }
        CaptureResult.Key LENS_FOCAL_LENGTH = CaptureResult.LENS_FOCAL_LENGTH;
        Intrinsics.checkNotNullExpressionValue(LENS_FOCAL_LENGTH, "LENS_FOCAL_LENGTH");
        Float f2 = (Float) frameMetadata.get(LENS_FOCAL_LENGTH);
        if (f2 != null) {
            builder.setFocalLength(f2.floatValue());
        }
        CaptureResult.Key CONTROL_AWB_MODE = CaptureResult.CONTROL_AWB_MODE;
        Intrinsics.checkNotNullExpressionValue(CONTROL_AWB_MODE, "CONTROL_AWB_MODE");
        Integer num3 = (Integer) frameMetadata.get(CONTROL_AWB_MODE);
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
