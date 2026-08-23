package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.IsoTypeReader;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(tags = {0})
public abstract class BaseDescriptor {
    int sizeBytes;
    int sizeOfInstance;
    int tag;

    public abstract void parseDetail(ByteBuffer byteBuffer);

    public int getSize() {
        return this.sizeOfInstance + 1 + this.sizeBytes;
    }

    public int getSizeOfInstance() {
        return this.sizeOfInstance;
    }

    public int getSizeBytes() {
        return this.sizeBytes;
    }

    public final void parse(int i, ByteBuffer byteBuffer) {
        this.tag = i;
        int uInt8 = IsoTypeReader.readUInt8(byteBuffer);
        this.sizeOfInstance = uInt8 & 127;
        int i2 = 1;
        while ((uInt8 >>> 7) == 1) {
            uInt8 = IsoTypeReader.readUInt8(byteBuffer);
            i2++;
            this.sizeOfInstance = (this.sizeOfInstance << 7) | (uInt8 & 127);
        }
        this.sizeBytes = i2;
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        byteBufferSlice.limit(this.sizeOfInstance);
        parseDetail(byteBufferSlice);
        byteBuffer.position(byteBuffer.position() + this.sizeOfInstance);
    }
}
