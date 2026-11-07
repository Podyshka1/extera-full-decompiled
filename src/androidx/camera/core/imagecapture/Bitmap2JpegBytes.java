package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import java.io.ByteArrayOutputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class Bitmap2JpegBytes implements Operation<In, Packet<byte[]>> {
    @Override // androidx.camera.core.processing.Operation
    public Packet<byte[]> apply(In in) {
        Packet<Bitmap> packet = in.getPacket();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        packet.getData().compress(Bitmap.CompressFormat.JPEG, in.getJpegQuality(), byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Exif exif = packet.getExif();
        Objects.requireNonNull(exif);
        return Packet.of(byteArray, exif, getOutputFormat(packet.getData()), packet.getSize(), packet.getCropRect(), packet.getRotationDegrees(), packet.getSensorToBufferTransform(), packet.getCameraCaptureResult());
    }

    private static int getOutputFormat(Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 34 || !Api34Impl.hasGainmap(bitmap)) ? 256 : 4101;
    }

    public static class Api34Impl {
        public static boolean hasGainmap(Bitmap bitmap) {
            return bitmap.hasGainmap();
        }
    }

    public static abstract class In {
        public abstract int getJpegQuality();

        public abstract Packet<Bitmap> getPacket();

        public static In of(Packet<Bitmap> packet, int i) {
            return new AutoValue_Bitmap2JpegBytes_In(packet, i);
        }
    }
}
