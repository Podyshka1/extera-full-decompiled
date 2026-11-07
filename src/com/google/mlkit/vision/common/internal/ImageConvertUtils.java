package com.google.mlkit.vision.common.internal;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import android.media.Image;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.vision.common.InputImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class ImageConvertUtils {
    private static final ImageConvertUtils zza = new ImageConvertUtils();

    private ImageConvertUtils() {
    }

    public static ImageConvertUtils getInstance() {
        return zza;
    }

    public static Bitmap yv12ToBitmap(ByteBuffer byteBuffer, int i, int i2, int i3) throws MlKitException {
        byte[] bArrZzb = zzb(yv12ToNv21Buffer(byteBuffer, true).array(), i, i2);
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrZzb, 0, bArrZzb.length);
        return zza(bitmapDecodeByteArray, i3, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight());
    }

    public static ByteBuffer yv12ToNv21Buffer(ByteBuffer byteBuffer, boolean z) {
        int i;
        byteBuffer.rewind();
        int iLimit = byteBuffer.limit();
        int i2 = iLimit / 6;
        ByteBuffer byteBufferAllocate = z ? ByteBuffer.allocate(iLimit) : ByteBuffer.allocateDirect(iLimit);
        int i3 = 0;
        while (true) {
            i = i2 * 4;
            if (i3 >= i) {
                break;
            }
            byteBufferAllocate.put(i3, byteBuffer.get(i3));
            i3++;
        }
        for (int i4 = 0; i4 < i2 + i2; i4++) {
            byteBufferAllocate.put(i + i4, byteBuffer.get(((i4 % 2) * i2) + i + (i4 / 2)));
        }
        return byteBufferAllocate;
    }

    public static Bitmap zza(Bitmap bitmap, int i, int i2, int i3) {
        if (i == 0) {
            return Bitmap.createBitmap(bitmap, 0, 0, i2, i3);
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        return Bitmap.createBitmap(bitmap, 0, 0, i2, i3, matrix, true);
    }

    private static byte[] zzb(byte[] bArr, int i, int i2) throws MlKitException {
        YuvImage yuvImage = new YuvImage(bArr, 17, i, i2, null);
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                yuvImage.compressToJpeg(new Rect(0, 0, i, i2), 100, byteArrayOutputStream);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            } finally {
            }
        } catch (IOException e) {
            Log.w("ImageConvertUtils", "Error closing ByteArrayOutputStream");
            throw new MlKitException("Image conversion error from NV21 format", 13, e);
        }
    }

    private static final void zzc(Image.Plane plane, int i, int i2, byte[] bArr, int i3, int i4) {
        ByteBuffer buffer = plane.getBuffer();
        buffer.rewind();
        int iLimit = ((buffer.limit() + plane.getRowStride()) - 1) / plane.getRowStride();
        if (iLimit == 0) {
            return;
        }
        int i5 = i / (i2 / iLimit);
        int rowStride = 0;
        for (int i6 = 0; i6 < iLimit; i6++) {
            int pixelStride = rowStride;
            for (int i7 = 0; i7 < i5; i7++) {
                bArr[i3] = buffer.get(pixelStride);
                i3 += i4;
                pixelStride += plane.getPixelStride();
            }
            rowStride += plane.getRowStride();
        }
    }

    public byte[] byteBufferToByteArray(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0) {
            return byteBuffer.array();
        }
        byteBuffer.rewind();
        int iLimit = byteBuffer.limit();
        byte[] bArr = new byte[iLimit];
        byteBuffer.get(bArr, 0, iLimit);
        return bArr;
    }

    public Bitmap convertToUpRightBitmap(InputImage inputImage) throws MlKitException {
        int format = inputImage.getFormat();
        if (format == -1) {
            return zza((Bitmap) Preconditions.checkNotNull(inputImage.getBitmapInternal()), inputImage.getRotationDegrees(), inputImage.getWidth(), inputImage.getHeight());
        }
        if (format == 17) {
            return nv21ToBitmap((ByteBuffer) Preconditions.checkNotNull(inputImage.getByteBuffer()), inputImage.getWidth(), inputImage.getHeight(), inputImage.getRotationDegrees());
        }
        if (format == 35) {
            return nv21ToBitmap(yuv420ThreePlanesToNV21((Image.Plane[]) Preconditions.checkNotNull(inputImage.getPlanes()), inputImage.getWidth(), inputImage.getHeight()), inputImage.getWidth(), inputImage.getHeight(), inputImage.getRotationDegrees());
        }
        if (format == 842094169) {
            return yv12ToBitmap((ByteBuffer) Preconditions.checkNotNull(inputImage.getByteBuffer()), inputImage.getWidth(), inputImage.getHeight(), inputImage.getRotationDegrees());
        }
        throw new MlKitException("Unsupported image format", 13);
    }

    public Bitmap nv21ToBitmap(ByteBuffer byteBuffer, int i, int i2, int i3) throws MlKitException {
        byte[] bArrZzb = zzb(byteBufferToByteArray(byteBuffer), i, i2);
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrZzb, 0, bArrZzb.length);
        return zza(bitmapDecodeByteArray, i3, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight());
    }

    public ByteBuffer yuv420ThreePlanesToNV21(Image.Plane[] planeArr, int i, int i2) {
        int i3 = i * i2;
        int i4 = i3 / 4;
        byte[] bArr = new byte[i4 + i4 + i3];
        ByteBuffer buffer = planeArr[1].getBuffer();
        ByteBuffer buffer2 = planeArr[2].getBuffer();
        int iPosition = buffer2.position();
        int iLimit = buffer.limit();
        buffer2.position(iPosition + 1);
        buffer.limit(iLimit - 1);
        int i5 = (i3 + i3) / 4;
        boolean z = buffer2.remaining() == i5 + (-2) && buffer2.compareTo(buffer) == 0;
        buffer2.position(iPosition);
        buffer.limit(iLimit);
        if (z) {
            planeArr[0].getBuffer().get(bArr, 0, i3);
            ByteBuffer buffer3 = planeArr[1].getBuffer();
            planeArr[2].getBuffer().get(bArr, i3, 1);
            buffer3.get(bArr, i3 + 1, i5 - 1);
        } else {
            zzc(planeArr[0], i, i2, bArr, 0, 1);
            zzc(planeArr[1], i, i2, bArr, i3 + 1, 2);
            zzc(planeArr[2], i, i2, bArr, i3, 2);
        }
        return ByteBuffer.wrap(bArr);
    }
}
