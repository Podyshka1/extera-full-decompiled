package com.exteragram.messenger.camera;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.MeteringRectangle;
import android.os.Build;
import android.util.Range;
import android.util.Size;
import com.exteragram.messenger.ExteraConfig;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes4.dex */
public abstract class RoundVideoCamera2Helper {
    public static MeteringRectangle createFocusRegion(CameraCharacteristics cameraCharacteristics, Size size, int i, int i2, float f, float f2, float f3) {
        float fHeight;
        float f4;
        float f5;
        Rect rect = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if (rect == null || i <= 0 || size.getWidth() <= 0 || size.getHeight() <= 0) {
            return null;
        }
        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
        Integer num2 = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
        boolean z = num != null && num.intValue() == 0;
        int iIntValue = num2 == null ? 0 : num2.intValue();
        int i3 = (z ? iIntValue + i2 : (iIntValue - i2) + 360) % 360;
        boolean z2 = i3 == 90 || i3 == 270;
        float height = z2 ? size.getHeight() : size.getWidth();
        float width = z2 ? size.getWidth() : size.getHeight();
        float fMin = Math.min(i, Math.min(height, width));
        float fWidth = 0.0f;
        float fClamp = (((clamp(f2, 0.0f, 1.0f) - 0.5f) * fMin) / height) + 0.5f;
        float fClamp2 = (((clamp(f3, 0.0f, 1.0f) - 0.5f) * fMin) / width) + 0.5f;
        if (z) {
            fClamp = 1.0f - fClamp;
        }
        if (i3 == 90) {
            fClamp = 1.0f - fClamp;
        } else if (i3 == 180) {
            float f6 = 1.0f - fClamp;
            fClamp = 1.0f - fClamp2;
            fClamp2 = f6;
        } else if (i3 != 270) {
            float f7 = fClamp;
            fClamp = fClamp2;
            fClamp2 = f7;
        } else {
            fClamp2 = 1.0f - fClamp2;
        }
        float fWidth2 = rect.width();
        float fHeight2 = rect.height();
        if (usesZoomRatio(cameraCharacteristics) || f <= 1.0f) {
            fHeight = 0.0f;
        } else {
            fWidth2 /= f;
            fHeight2 /= f;
            fWidth = (rect.width() - fWidth2) / 2.0f;
            fHeight = (rect.height() - fHeight2) / 2.0f;
        }
        float width2 = size.getWidth() / size.getHeight();
        if (fWidth2 / fHeight2 > width2) {
            f5 = width2 * fHeight2;
            f4 = fHeight2;
        } else {
            f4 = fWidth2 / width2;
            f5 = fWidth2;
        }
        int iRound = Math.round(fWidth + ((fWidth2 - f5) / 2.0f) + (fClamp2 * f5));
        int iRound2 = Math.round(fHeight + ((fHeight2 - f4) / 2.0f) + (fClamp * f4));
        int iMax = Math.max(1, Math.round((Math.min(f5, f4) * 0.16666667f) / 2.0f));
        int iWidth = rect.width() - 1;
        int iHeight = rect.height() - 1;
        Rect rect2 = new Rect(clamp(iRound - iMax, 0, iWidth), clamp(iRound2 - iMax, 0, iHeight), clamp(iRound + iMax, 0, iWidth), clamp(iRound2 + iMax, 0, iHeight));
        if (rect2.isEmpty()) {
            return null;
        }
        return new MeteringRectangle(rect2, 999);
    }

    public static boolean applyFocusRegion(CaptureRequest.Builder builder, CameraCharacteristics cameraCharacteristics, MeteringRectangle meteringRectangle) {
        MeteringRectangle[] meteringRectangleArr = {meteringRectangle};
        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AE);
        if (num != null && num.intValue() > 0) {
            builder.set(CaptureRequest.CONTROL_AE_REGIONS, meteringRectangleArr);
        }
        Integer num2 = (Integer) cameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
        int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
        if (num2 == null || num2.intValue() <= 0 || !contains(iArr, 1)) {
            return false;
        }
        builder.set(CaptureRequest.CONTROL_AF_MODE, 1);
        builder.set(CaptureRequest.CONTROL_AF_REGIONS, meteringRectangleArr);
        return true;
    }

    public static void applyStabilization(CaptureRequest.Builder builder, CameraCharacteristics cameraCharacteristics) {
        if (ExteraConfig.getCameraStabilization()) {
            int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES);
            if (Build.VERSION.SDK_INT >= 33 && contains(iArr, 2)) {
                builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 2);
            } else if (contains(iArr, 1)) {
                builder.set(CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE, 1);
            }
        }
    }

    public static float[] readZoomRange(Context context, String str) {
        if (str == null) {
            return null;
        }
        try {
            CameraManager cameraManager = (CameraManager) context.getSystemService("camera");
            if (cameraManager == null) {
                return null;
            }
            CameraCharacteristics cameraCharacteristics = cameraManager.getCameraCharacteristics(str);
            if (usesZoomRatio(cameraCharacteristics)) {
                Range range = (Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE);
                return new float[]{((Float) range.getLower()).floatValue(), ((Float) range.getUpper()).floatValue()};
            }
            Float f = (Float) cameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
            return new float[]{1.0f, f == null ? 1.0f : f.floatValue()};
        } catch (Exception e) {
            FileLog.m1040e(e);
            return null;
        }
    }

    public static float getInitialZoomRatio(CameraCharacteristics cameraCharacteristics) {
        Integer num;
        if (cameraCharacteristics != null && ExteraConfig.getStartWithWideAngleCamera() && usesZoomRatio(cameraCharacteristics) && (num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)) != null && num.intValue() == 1) {
            return Math.min(1.0f, ((Float) ((Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE)).getLower()).floatValue());
        }
        return 1.0f;
    }

    public static void applyInitialZoom(CaptureRequest.Builder builder, CameraCharacteristics cameraCharacteristics) {
        if (Build.VERSION.SDK_INT < 30 || !usesZoomRatio(cameraCharacteristics)) {
            return;
        }
        builder.set(CaptureRequest.CONTROL_ZOOM_RATIO, Float.valueOf(getInitialZoomRatio(cameraCharacteristics)));
    }

    private static boolean usesZoomRatio(CameraCharacteristics cameraCharacteristics) {
        return Build.VERSION.SDK_INT >= 30 && ((Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE)) != null;
    }

    private static boolean contains(int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private static float clamp(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    private static int clamp(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }
}
