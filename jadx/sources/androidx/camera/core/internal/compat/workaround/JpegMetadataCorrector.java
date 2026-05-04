package androidx.camera.core.internal.compat.workaround;

import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.internal.compat.quirk.IncorrectJpegMetadataQuirk;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
public class JpegMetadataCorrector {
    private final IncorrectJpegMetadataQuirk mQuirk;

    public JpegMetadataCorrector(Quirks quirks) {
        this.mQuirk = (IncorrectJpegMetadataQuirk) quirks.get(IncorrectJpegMetadataQuirk.class);
    }

    public byte[] jpegImageToJpegByteArray(ImageProxy imageProxy) {
        IncorrectJpegMetadataQuirk incorrectJpegMetadataQuirk = this.mQuirk;
        if (incorrectJpegMetadataQuirk == null) {
            ByteBuffer buffer = imageProxy.getPlanes()[0].getBuffer();
            byte[] bArr = new byte[buffer.capacity()];
            buffer.rewind();
            buffer.get(bArr);
            return bArr;
        }
        return incorrectJpegMetadataQuirk.jpegImageToJpegByteArray(imageProxy);
    }
}
