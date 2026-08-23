package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.ImageReaderProxys;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class JpegBytes2Image implements Operation {
    @Override // androidx.camera.core.processing.Operation
    public Packet apply(Packet packet) {
        SafeCloseImageReaderProxy safeCloseImageReaderProxy = new SafeCloseImageReaderProxy(ImageReaderProxys.createIsolatedReader(packet.getSize().getWidth(), packet.getSize().getHeight(), 256, 2));
        ImageProxy imageProxyConvertJpegBytesToImage = ImageProcessingUtil.convertJpegBytesToImage(safeCloseImageReaderProxy, (byte[]) packet.getData());
        safeCloseImageReaderProxy.safeClose();
        Objects.requireNonNull(imageProxyConvertJpegBytesToImage);
        Exif exif = packet.getExif();
        Objects.requireNonNull(exif);
        return Packet.m95of(imageProxyConvertJpegBytesToImage, exif, packet.getCropRect(), packet.getRotationDegrees(), packet.getSensorToBufferTransform(), packet.getCameraCaptureResult());
    }
}
