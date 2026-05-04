package androidx.camera.core.impl.utils;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import android.util.SizeF;
import androidx.core.util.Preconditions;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TransformUtils {
    public static final RectF NORMALIZED_RECT = new RectF(-1.0f, -1.0f, 1.0f, 1.0f);

    public static Size rectToSize(Rect rect) {
        return new Size(rect.width(), rect.height());
    }

    public static String rectToString(Rect rect) {
        return String.format(Locale.US, "%s(%dx%d)", rect, Integer.valueOf(rect.width()), Integer.valueOf(rect.height()));
    }

    public static Rect sizeToRect(Size size) {
        return sizeToRect(size, 0, 0);
    }

    public static Rect sizeToRect(Size size, int i, int i2) {
        return new Rect(i, i2, size.getWidth() + i, size.getHeight() + i2);
    }

    public static RectF sizeToRectF(Size size) {
        return sizeToRectF(size, 0, 0);
    }

    public static RectF sizeToRectF(Size size, int i, int i2) {
        return new RectF(i, i2, i + size.getWidth(), i2 + size.getHeight());
    }

    public static Size reverseSize(Size size) {
        return new Size(size.getHeight(), size.getWidth());
    }

    public static SizeF reverseSizeF(SizeF sizeF) {
        return new SizeF(sizeF.getHeight(), sizeF.getWidth());
    }

    public static Size rotateSize(Size size, int i) {
        Preconditions.checkArgument(i % 90 == 0, "Invalid rotation degrees: " + i);
        return is90or270(within360(i)) ? reverseSize(size) : size;
    }

    public static boolean isMirrored(Matrix matrix) {
        float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
        matrix.mapVectors(fArr);
        return calculateSignedAngle(fArr[0], fArr[1], fArr[2], fArr[3]) > 0.0f;
    }

    public static float calculateSignedAngle(float f, float f2, float f3, float f4) {
        float f5 = (f * f3) + (f2 * f4);
        float f6 = (f * f4) - (f2 * f3);
        double dSqrt = Math.sqrt((f * f) + (f2 * f2)) * Math.sqrt((f3 * f3) + (f4 * f4));
        return (float) Math.toDegrees(Math.atan2(((double) f6) / dSqrt, ((double) f5) / dSqrt));
    }

    public static Size getRotatedSize(Rect rect, int i) {
        return rotateSize(rectToSize(rect), i);
    }

    public static int within360(int i) {
        return ((i % 360) + 360) % 360;
    }

    public static boolean is90or270(int i) {
        if (i == 90 || i == 270) {
            return true;
        }
        if (i == 0 || i == 180) {
            return false;
        }
        throw new IllegalArgumentException("Invalid rotation degrees: " + i);
    }

    public static boolean isAspectRatioMatchingWithRoundingError(Size size, Size size2) {
        return isAspectRatioMatchingWithRoundingError(size, false, size2, false);
    }

    public static boolean isAspectRatioMatchingWithRoundingError(Size size, boolean z, Size size2, boolean z2) {
        float width;
        float width2;
        float width3;
        float width4;
        if (z) {
            width = size.getWidth() / size.getHeight();
            width2 = width;
        } else {
            width = (size.getWidth() + 1.0f) / (size.getHeight() - 1.0f);
            width2 = (size.getWidth() - 1.0f) / (size.getHeight() + 1.0f);
        }
        if (z2) {
            width3 = size2.getWidth() / size2.getHeight();
            width4 = width3;
        } else {
            width3 = (size2.getWidth() - 1.0f) / (size2.getHeight() + 1.0f);
            width4 = (size2.getWidth() + 1.0f) / (size2.getHeight() - 1.0f);
        }
        return width >= width3 && width4 >= width2;
    }

    public static Matrix getRectToRect(RectF rectF, RectF rectF2, int i) {
        return getRectToRect(rectF, rectF2, i, false);
    }

    public static Matrix getRectToRect(RectF rectF, RectF rectF2, int i, boolean z) {
        Matrix matrix = new Matrix();
        matrix.setRectToRect(rectF, NORMALIZED_RECT, Matrix.ScaleToFit.FILL);
        matrix.postRotate(i);
        if (z) {
            matrix.postScale(-1.0f, 1.0f);
        }
        matrix.postConcat(getNormalizedToBuffer(rectF2));
        return matrix;
    }

    public static Matrix updateSensorToBufferTransform(Matrix matrix, Rect rect) {
        Matrix matrix2 = new Matrix(matrix);
        matrix2.postTranslate(-rect.left, -rect.top);
        return matrix2;
    }

    public static Matrix getNormalizedToBuffer(RectF rectF) {
        Matrix matrix = new Matrix();
        matrix.setRectToRect(NORMALIZED_RECT, rectF, Matrix.ScaleToFit.FILL);
        return matrix;
    }

    public static int getRotationDegrees(Matrix matrix) {
        matrix.getValues(new float[9]);
        return within360((int) Math.round(Math.atan2(r0[3], r0[0]) * 57.29577951308232d));
    }
}
