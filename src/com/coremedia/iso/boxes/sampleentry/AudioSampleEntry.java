package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.IsoTypeWriter;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes4.dex */
public final class AudioSampleEntry extends AbstractSampleEntry {
    private long bytesPerFrame;
    private long bytesPerPacket;
    private long bytesPerSample;
    private int channelCount;
    private int compressionId;
    private int packetSize;
    private int reserved1;
    private long reserved2;
    private long sampleRate;
    private int sampleSize;
    private long samplesPerPacket;
    private int soundVersion;
    private byte[] soundVersion2Data;

    public AudioSampleEntry(String str) {
        super(str);
    }

    public int getChannelCount() {
        return this.channelCount;
    }

    public long getSampleRate() {
        return this.sampleRate;
    }

    public void setChannelCount(int i) {
        this.channelCount = i;
    }

    public void setSampleSize(int i) {
        this.sampleSize = i;
    }

    public void setSampleRate(long j) {
        this.sampleRate = j;
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public void getBox(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(getHeader());
        int i = this.soundVersion;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((i == 1 ? 16 : 0) + 28 + (i == 2 ? 36 : 0));
        byteBufferAllocate.position(6);
        IsoTypeWriter.writeUInt16(byteBufferAllocate, this.dataReferenceIndex);
        IsoTypeWriter.writeUInt16(byteBufferAllocate, this.soundVersion);
        IsoTypeWriter.writeUInt16(byteBufferAllocate, this.reserved1);
        IsoTypeWriter.writeUInt32(byteBufferAllocate, this.reserved2);
        IsoTypeWriter.writeUInt16(byteBufferAllocate, this.channelCount);
        IsoTypeWriter.writeUInt16(byteBufferAllocate, this.sampleSize);
        IsoTypeWriter.writeUInt16(byteBufferAllocate, this.compressionId);
        IsoTypeWriter.writeUInt16(byteBufferAllocate, this.packetSize);
        if (this.type.equals("mlpa")) {
            IsoTypeWriter.writeUInt32(byteBufferAllocate, getSampleRate());
        } else {
            IsoTypeWriter.writeUInt32(byteBufferAllocate, getSampleRate() << 16);
        }
        if (this.soundVersion == 1) {
            IsoTypeWriter.writeUInt32(byteBufferAllocate, this.samplesPerPacket);
            IsoTypeWriter.writeUInt32(byteBufferAllocate, this.bytesPerPacket);
            IsoTypeWriter.writeUInt32(byteBufferAllocate, this.bytesPerFrame);
            IsoTypeWriter.writeUInt32(byteBufferAllocate, this.bytesPerSample);
        }
        if (this.soundVersion == 2) {
            IsoTypeWriter.writeUInt32(byteBufferAllocate, this.samplesPerPacket);
            IsoTypeWriter.writeUInt32(byteBufferAllocate, this.bytesPerPacket);
            IsoTypeWriter.writeUInt32(byteBufferAllocate, this.bytesPerFrame);
            IsoTypeWriter.writeUInt32(byteBufferAllocate, this.bytesPerSample);
            byteBufferAllocate.put(this.soundVersion2Data);
        }
        writableByteChannel.write((ByteBuffer) byteBufferAllocate.rewind());
        writeContainer(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.AbstractContainerBox, com.coremedia.iso.boxes.Box
    public long getSize() {
        int i = this.soundVersion;
        int i2 = 16;
        long containerSize = ((long) ((i == 1 ? 16 : 0) + 28 + (i == 2 ? 36 : 0))) + getContainerSize();
        if (!this.largeBox && 8 + containerSize < 4294967296L) {
            i2 = 8;
        }
        return containerSize + ((long) i2);
    }

    @Override // com.googlecode.mp4parser.BasicContainer
    public String toString() {
        return "AudioSampleEntry{bytesPerSample=" + this.bytesPerSample + ", bytesPerFrame=" + this.bytesPerFrame + ", bytesPerPacket=" + this.bytesPerPacket + ", samplesPerPacket=" + this.samplesPerPacket + ", packetSize=" + this.packetSize + ", compressionId=" + this.compressionId + ", soundVersion=" + this.soundVersion + ", sampleRate=" + this.sampleRate + ", sampleSize=" + this.sampleSize + ", channelCount=" + this.channelCount + ", boxes=" + getBoxes() + '}';
    }
}
