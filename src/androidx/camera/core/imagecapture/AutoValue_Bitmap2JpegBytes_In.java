package androidx.camera.core.imagecapture;

import androidx.camera.core.imagecapture.Bitmap2JpegBytes;
import androidx.camera.core.processing.Packet;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_Bitmap2JpegBytes_In extends Bitmap2JpegBytes.AbstractC0259In {
    private final int jpegQuality;
    private final Packet packet;

    AutoValue_Bitmap2JpegBytes_In(Packet packet, int i) {
        if (packet == null) {
            throw new NullPointerException("Null packet");
        }
        this.packet = packet;
        this.jpegQuality = i;
    }

    @Override // androidx.camera.core.imagecapture.Bitmap2JpegBytes.AbstractC0259In
    Packet getPacket() {
        return this.packet;
    }

    @Override // androidx.camera.core.imagecapture.Bitmap2JpegBytes.AbstractC0259In
    int getJpegQuality() {
        return this.jpegQuality;
    }

    public String toString() {
        return "In{packet=" + this.packet + ", jpegQuality=" + this.jpegQuality + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Bitmap2JpegBytes.AbstractC0259In) {
            Bitmap2JpegBytes.AbstractC0259In abstractC0259In = (Bitmap2JpegBytes.AbstractC0259In) obj;
            if (this.packet.equals(abstractC0259In.getPacket()) && this.jpegQuality == abstractC0259In.getJpegQuality()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.packet.hashCode() ^ 1000003) * 1000003) ^ this.jpegQuality;
    }
}
