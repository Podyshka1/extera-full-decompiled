package androidx.camera.core.imagecapture;

import androidx.camera.core.processing.ImageProcessorRequest;
import androidx.camera.core.processing.InternalImageProcessor;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;

/* JADX INFO: loaded from: classes3.dex */
public class BitmapEffect implements Operation {
    private final InternalImageProcessor mProcessor;

    BitmapEffect(InternalImageProcessor internalImageProcessor) {
        this.mProcessor = internalImageProcessor;
    }

    @Override // androidx.camera.core.processing.Operation
    public Packet apply(Packet packet) {
        this.mProcessor.safeProcess(new ImageProcessorRequest(new RgbaImageProxy(packet), 1));
        throw null;
    }
}
