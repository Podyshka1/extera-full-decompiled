package androidx.camera.core.processing;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Size;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.core.util.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Packet {
    public abstract CameraCaptureResult getCameraCaptureResult();

    public abstract Rect getCropRect();

    public abstract Object getData();

    public abstract Exif getExif();

    public abstract int getFormat();

    public abstract int getRotationDegrees();

    public abstract Matrix getSensorToBufferTransform();

    public abstract Size getSize();

    /* JADX INFO: renamed from: of */
    public static Packet m94of(Bitmap bitmap, Exif exif, Rect rect, int i, Matrix matrix, CameraCaptureResult cameraCaptureResult) {
        return new AutoValue_Packet(bitmap, exif, 42, new Size(bitmap.getWidth(), bitmap.getHeight()), rect, i, matrix, cameraCaptureResult);
    }

    /* JADX INFO: renamed from: of */
    public static Packet m95of(ImageProxy imageProxy, Exif exif, Rect rect, int i, Matrix matrix, CameraCaptureResult cameraCaptureResult) {
        return m96of(imageProxy, exif, new Size(imageProxy.getWidth(), imageProxy.getHeight()), rect, i, matrix, cameraCaptureResult);
    }

    /* JADX INFO: renamed from: of */
    public static Packet m96of(ImageProxy imageProxy, Exif exif, Size size, Rect rect, int i, Matrix matrix, CameraCaptureResult cameraCaptureResult) {
        if (ImageUtil.isJpegFormats(imageProxy.getFormat())) {
            Preconditions.checkNotNull(exif, "JPEG image must have Exif.");
        }
        return new AutoValue_Packet(imageProxy, exif, imageProxy.getFormat(), size, rect, i, matrix, cameraCaptureResult);
    }

    /* JADX INFO: renamed from: of */
    public static Packet m97of(byte[] bArr, Exif exif, int i, Size size, Rect rect, int i2, Matrix matrix, CameraCaptureResult cameraCaptureResult) {
        return new AutoValue_Packet(bArr, exif, i, size, rect, i2, matrix, cameraCaptureResult);
    }
}
