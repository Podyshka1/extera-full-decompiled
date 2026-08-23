package androidx.camera.core.imagecapture;

import android.graphics.Rect;
import android.util.Size;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.internal.compat.workaround.JpegMetadataCorrector;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
final class Image2JpegBytes implements Operation {
    private final JpegMetadataCorrector mJpegMetadataCorrector;

    Image2JpegBytes(Quirks quirks) {
        this.mJpegMetadataCorrector = new JpegMetadataCorrector(quirks);
    }

    @Override // androidx.camera.core.processing.Operation
    public Packet apply(AbstractC0263In abstractC0263In) {
        Packet packetProcessYuvImage;
        try {
            int format = abstractC0263In.getPacket().getFormat();
            if (format != 35) {
                if (format != 256 && format != 4101) {
                    throw new IllegalArgumentException("Unexpected format: " + format);
                }
                packetProcessYuvImage = processJpegImage(abstractC0263In, format);
            } else {
                packetProcessYuvImage = processYuvImage(abstractC0263In);
            }
            ((ImageProxy) abstractC0263In.getPacket().getData()).close();
            return packetProcessYuvImage;
        } catch (Throwable th) {
            ((ImageProxy) abstractC0263In.getPacket().getData()).close();
            throw th;
        }
    }

    private Packet processJpegImage(AbstractC0263In abstractC0263In, int i) {
        Packet packet = abstractC0263In.getPacket();
        byte[] bArrJpegImageToJpegByteArray = this.mJpegMetadataCorrector.jpegImageToJpegByteArray((ImageProxy) packet.getData());
        Exif exif = packet.getExif();
        Objects.requireNonNull(exif);
        return Packet.m97of(bArrJpegImageToJpegByteArray, exif, i, packet.getSize(), packet.getCropRect(), packet.getRotationDegrees(), packet.getSensorToBufferTransform(), packet.getCameraCaptureResult());
    }

    private Packet processYuvImage(AbstractC0263In abstractC0263In) throws ImageCaptureException {
        Packet packet = abstractC0263In.getPacket();
        ImageProxy imageProxy = (ImageProxy) packet.getData();
        Rect cropRect = packet.getCropRect();
        try {
            byte[] bArrYuvImageToJpegByteArray = ImageUtil.yuvImageToJpegByteArray(imageProxy, cropRect, abstractC0263In.getJpegQuality(), packet.getRotationDegrees());
            return Packet.m97of(bArrYuvImageToJpegByteArray, extractExif(bArrYuvImageToJpegByteArray), 256, new Size(cropRect.width(), cropRect.height()), new Rect(0, 0, cropRect.width(), cropRect.height()), packet.getRotationDegrees(), TransformUtils.updateSensorToBufferTransform(packet.getSensorToBufferTransform(), cropRect), packet.getCameraCaptureResult());
        } catch (ImageUtil.CodecFailedException e) {
            throw new ImageCaptureException(1, "Failed to encode the image to JPEG.", e);
        }
    }

    private static Exif extractExif(byte[] bArr) throws ImageCaptureException {
        try {
            return Exif.createFromInputStream(new ByteArrayInputStream(bArr));
        } catch (IOException e) {
            throw new ImageCaptureException(0, "Failed to extract Exif from YUV-generated JPEG", e);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.core.imagecapture.Image2JpegBytes$In */
    static abstract class AbstractC0263In {
        abstract int getJpegQuality();

        abstract Packet getPacket();

        AbstractC0263In() {
        }

        /* JADX INFO: renamed from: of */
        static AbstractC0263In m89of(Packet packet, int i) {
            return new AutoValue_Image2JpegBytes_In(packet, i);
        }
    }
}
