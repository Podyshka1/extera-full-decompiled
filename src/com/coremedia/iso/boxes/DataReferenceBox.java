package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractContainerBox;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes4.dex */
public class DataReferenceBox extends AbstractContainerBox implements Box {
    private int flags;
    private int version;

    public DataReferenceBox() {
        super("dref");
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public void getBox(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(getHeader());
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        IsoTypeWriter.writeUInt8(byteBufferAllocate, this.version);
        IsoTypeWriter.writeUInt24(byteBufferAllocate, this.flags);
        IsoTypeWriter.writeUInt32(byteBufferAllocate, getBoxes().size());
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        writeContainer(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public long getSize() {
        long containerSize = getContainerSize();
        return 8 + containerSize + ((long) ((this.largeBox || containerSize + 16 >= 4294967296L) ? 16 : 8));
    }
}
