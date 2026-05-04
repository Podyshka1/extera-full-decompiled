package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.ImageReaderProxys;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class Image2Bitmap implements Operation {
    @Override // androidx.camera.core.processing.Operation
    public Bitmap apply(Packet packet) throws Throwable {
        SafeCloseImageReaderProxy safeCloseImageReaderProxy;
        Bitmap bitmapRotateBitmap;
        SafeCloseImageReaderProxy safeCloseImageReaderProxy2 = null;
        try {
            try {
                int format = packet.getFormat();
                if (format == 35) {
                    ImageProxy imageProxy = (ImageProxy) packet.getData();
                    boolean z = packet.getRotationDegrees() % 180 != 0;
                    safeCloseImageReaderProxy = new SafeCloseImageReaderProxy(ImageReaderProxys.createIsolatedReader(z ? imageProxy.getHeight() : imageProxy.getWidth(), z ? imageProxy.getWidth() : imageProxy.getHeight(), 1, 2));
                    try {
                        ImageProxy imageProxyConvertYUVToRGB = ImageProcessingUtil.convertYUVToRGB(imageProxy, safeCloseImageReaderProxy, ByteBuffer.allocateDirect(imageProxy.getWidth() * imageProxy.getHeight() * 4), packet.getRotationDegrees(), false);
                        imageProxy.close();
                        if (imageProxyConvertYUVToRGB == null) {
                            throw new ImageCaptureException(0, "Can't covert YUV to RGB", null);
                        }
                        bitmapRotateBitmap = ImageUtil.createBitmapFromImageProxy(imageProxyConvertYUVToRGB);
                        imageProxyConvertYUVToRGB.close();
                    } catch (UnsupportedOperationException e) {
                        e = e;
                        throw new ImageCaptureException(0, "Can't convert " + (packet.getFormat() == 35 ? "YUV" : "JPEG") + " to bitmap", e);
                    } catch (Throwable th) {
                        th = th;
                        safeCloseImageReaderProxy2 = safeCloseImageReaderProxy;
                        if (safeCloseImageReaderProxy2 != null) {
                            safeCloseImageReaderProxy2.close();
                        }
                        throw th;
                    }
                } else if (format == 256 || format == 4101) {
                    ImageProxy imageProxy2 = (ImageProxy) packet.getData();
                    Bitmap bitmapCreateBitmapFromImageProxy = ImageUtil.createBitmapFromImageProxy(imageProxy2);
                    imageProxy2.close();
                    safeCloseImageReaderProxy = null;
                    bitmapRotateBitmap = ImageUtil.rotateBitmap(bitmapCreateBitmapFromImageProxy, packet.getRotationDegrees());
                } else {
                    throw new IllegalArgumentException("Invalid postview image format : " + packet.getFormat());
                }
                if (safeCloseImageReaderProxy != null) {
                    safeCloseImageReaderProxy.close();
                }
                return bitmapRotateBitmap;
            } catch (UnsupportedOperationException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
