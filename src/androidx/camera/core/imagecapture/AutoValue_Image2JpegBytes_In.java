package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageProxy;
import androidx.camera.core.imagecapture.Image2JpegBytes;
import androidx.camera.core.processing.Packet;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_Image2JpegBytes_In extends Image2JpegBytes.In {
    private final int jpegQuality;
    private final Packet<ImageProxy> packet;

    public AutoValue_Image2JpegBytes_In(Packet<ImageProxy> packet, int i) {
        if (packet == null) {
            f$$ExternalSyntheticBUOutline2.m179m("Null packet");
            throw null;
        }
        this.packet = packet;
        this.jpegQuality = i;
    }

    @Override // androidx.camera.core.imagecapture.Image2JpegBytes.In
    public Packet<ImageProxy> getPacket() {
        return this.packet;
    }

    @Override // androidx.camera.core.imagecapture.Image2JpegBytes.In
    public int getJpegQuality() {
        return this.jpegQuality;
    }

    public String toString() {
        return "In{packet=" + this.packet + ", jpegQuality=" + this.jpegQuality + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Image2JpegBytes.In) {
            Image2JpegBytes.In in = (Image2JpegBytes.In) obj;
            if (this.packet.equals(in.getPacket()) && this.jpegQuality == in.getJpegQuality()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.jpegQuality ^ ((this.packet.hashCode() ^ 1000003) * 1000003);
    }
}
