package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import java.io.ByteArrayOutputStream;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class Bitmap2JpegBytes implements Operation {
    @Override // androidx.camera.core.processing.Operation
    public Packet apply(AbstractC0259In abstractC0259In) {
        Packet packet = abstractC0259In.getPacket();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ((Bitmap) packet.getData()).compress(Bitmap.CompressFormat.JPEG, abstractC0259In.getJpegQuality(), byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Exif exif = packet.getExif();
        Objects.requireNonNull(exif);
        return Packet.m97of(byteArray, exif, getOutputFormat((Bitmap) packet.getData()), packet.getSize(), packet.getCropRect(), packet.getRotationDegrees(), packet.getSensorToBufferTransform(), packet.getCameraCaptureResult());
    }

    private static int getOutputFormat(Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 34 || !Api34Impl.hasGainmap(bitmap)) ? 256 : 4101;
    }

    private static class Api34Impl {
        static boolean hasGainmap(Bitmap bitmap) {
            return bitmap.hasGainmap();
        }
    }

    /* JADX INFO: renamed from: androidx.camera.core.imagecapture.Bitmap2JpegBytes$In */
    public static abstract class AbstractC0259In {
        abstract int getJpegQuality();

        abstract Packet getPacket();

        /* JADX INFO: renamed from: of */
        public static AbstractC0259In m87of(Packet packet, int i) {
            return new AutoValue_Bitmap2JpegBytes_In(packet, i);
        }
    }
}
