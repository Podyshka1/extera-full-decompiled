package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.internal.compat.workaround.InvalidJpegDataParser;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class JpegBytes2Disk implements Operation {

    /* JADX INFO: renamed from: androidx.camera.core.imagecapture.JpegBytes2Disk$In */
    public static abstract class AbstractC0264In {
        abstract ImageCapture.OutputFileOptions getOutputFileOptions();

        abstract Packet getPacket();
    }

    @Override // androidx.camera.core.processing.Operation
    public ImageCapture.OutputFileResults apply(AbstractC0264In abstractC0264In) throws ImageCaptureException {
        Packet packet = abstractC0264In.getPacket();
        abstractC0264In.getOutputFileOptions();
        File fileCreateTempFile = FileUtil.createTempFile(null);
        writeBytesToFile(fileCreateTempFile, (byte[]) packet.getData());
        Exif exif = packet.getExif();
        Objects.requireNonNull(exif);
        FileUtil.updateFileExif(fileCreateTempFile, exif, null, packet.getRotationDegrees());
        return new ImageCapture.OutputFileResults(FileUtil.moveFileToTarget(fileCreateTempFile, null), 256);
    }

    static void writeBytesToFile(File file, byte[] bArr) throws ImageCaptureException {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bArr, 0, new InvalidJpegDataParser().getValidDataLength(bArr));
                fileOutputStream.close();
            } finally {
            }
        } catch (IOException e) {
            throw new ImageCaptureException(1, "Failed to write to temp file", e);
        }
    }
}
