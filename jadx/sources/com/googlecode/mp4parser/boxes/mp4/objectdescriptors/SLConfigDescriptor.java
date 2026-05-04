package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class SLConfigDescriptor extends BaseDescriptor {
    int predefined;

    public int serializedSize() {
        return 3;
    }

    public void setPredefined(int i) {
        this.predefined = i;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public void parseDetail(ByteBuffer byteBuffer) {
        this.predefined = IsoTypeReader.readUInt8(byteBuffer);
    }

    public ByteBuffer serialize() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(3);
        IsoTypeWriter.writeUInt8(byteBufferAllocate, 6);
        IsoTypeWriter.writeUInt8(byteBufferAllocate, 1);
        IsoTypeWriter.writeUInt8(byteBufferAllocate, this.predefined);
        return byteBufferAllocate;
    }

    public String toString() {
        return "SLConfigDescriptor{predefined=" + this.predefined + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.predefined == ((SLConfigDescriptor) obj).predefined;
    }

    public int hashCode() {
        return this.predefined;
    }
}
