package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageProxy;
import androidx.camera.core.ImmutableImageInfo;
import androidx.camera.core.SettableImageProxy;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;

/* JADX INFO: loaded from: classes3.dex */
public class JpegImage2Result implements Operation {
    @Override // androidx.camera.core.processing.Operation
    public ImageProxy apply(Packet packet) {
        ImageProxy imageProxy = (ImageProxy) packet.getData();
        SettableImageProxy settableImageProxy = new SettableImageProxy(imageProxy, packet.getSize(), ImmutableImageInfo.create(imageProxy.getImageInfo().getTagBundle(), imageProxy.getImageInfo().getTimestamp(), packet.getRotationDegrees(), packet.getSensorToBufferTransform(), imageProxy.getImageInfo().getFlashState()));
        settableImageProxy.setCropRect(packet.getCropRect());
        return settableImageProxy;
    }
}
