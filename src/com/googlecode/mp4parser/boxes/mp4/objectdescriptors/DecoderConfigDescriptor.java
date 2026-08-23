package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.Hex;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class DecoderConfigDescriptor extends BaseDescriptor {
    private static Logger log = Logger.getLogger(DecoderConfigDescriptor.class.getName());
    AudioSpecificConfig audioSpecificInfo;
    long avgBitRate;
    int bufferSizeDB;
    byte[] configDescriptorDeadBytes;
    long maxBitRate;
    int objectTypeIndication;
    List profileLevelIndicationDescriptors = new ArrayList();
    int streamType;
    int upStream;

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public void parseDetail(ByteBuffer byteBuffer) {
        int size;
        this.objectTypeIndication = IsoTypeReader.readUInt8(byteBuffer);
        int uInt8 = IsoTypeReader.readUInt8(byteBuffer);
        this.streamType = uInt8 >>> 2;
        this.upStream = (uInt8 >> 1) & 1;
        this.bufferSizeDB = IsoTypeReader.readUInt24(byteBuffer);
        this.maxBitRate = IsoTypeReader.readUInt32(byteBuffer);
        this.avgBitRate = IsoTypeReader.readUInt32(byteBuffer);
        if (byteBuffer.remaining() > 2) {
            int iPosition = byteBuffer.position();
            BaseDescriptor baseDescriptorCreateFrom = ObjectDescriptorFactory.createFrom(this.objectTypeIndication, byteBuffer);
            int iPosition2 = byteBuffer.position() - iPosition;
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append(baseDescriptorCreateFrom);
            sb.append(" - DecoderConfigDescr1 read: ");
            sb.append(iPosition2);
            sb.append(", size: ");
            sb.append(baseDescriptorCreateFrom != null ? Integer.valueOf(baseDescriptorCreateFrom.getSize()) : null);
            logger.finer(sb.toString());
            if (baseDescriptorCreateFrom != null && iPosition2 < (size = baseDescriptorCreateFrom.getSize())) {
                byte[] bArr = new byte[size - iPosition2];
                this.configDescriptorDeadBytes = bArr;
                byteBuffer.get(bArr);
            }
            if (baseDescriptorCreateFrom instanceof AudioSpecificConfig) {
                this.audioSpecificInfo = (AudioSpecificConfig) baseDescriptorCreateFrom;
            }
        }
        while (byteBuffer.remaining() > 2) {
            long jPosition = byteBuffer.position();
            BaseDescriptor baseDescriptorCreateFrom2 = ObjectDescriptorFactory.createFrom(this.objectTypeIndication, byteBuffer);
            long jPosition2 = ((long) byteBuffer.position()) - jPosition;
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(baseDescriptorCreateFrom2);
            sb2.append(" - DecoderConfigDescr2 read: ");
            sb2.append(jPosition2);
            sb2.append(", size: ");
            sb2.append(baseDescriptorCreateFrom2 != null ? Integer.valueOf(baseDescriptorCreateFrom2.getSize()) : null);
            logger2.finer(sb2.toString());
        }
    }

    public int serializedSize() {
        AudioSpecificConfig audioSpecificConfig = this.audioSpecificInfo;
        return (audioSpecificConfig == null ? 0 : audioSpecificConfig.serializedSize()) + 15;
    }

    public ByteBuffer serialize() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(serializedSize());
        IsoTypeWriter.writeUInt8(byteBufferAllocate, 4);
        IsoTypeWriter.writeUInt8(byteBufferAllocate, serializedSize() - 2);
        IsoTypeWriter.writeUInt8(byteBufferAllocate, this.objectTypeIndication);
        IsoTypeWriter.writeUInt8(byteBufferAllocate, (this.streamType << 2) | (this.upStream << 1) | 1);
        IsoTypeWriter.writeUInt24(byteBufferAllocate, this.bufferSizeDB);
        IsoTypeWriter.writeUInt32(byteBufferAllocate, this.maxBitRate);
        IsoTypeWriter.writeUInt32(byteBufferAllocate, this.avgBitRate);
        AudioSpecificConfig audioSpecificConfig = this.audioSpecificInfo;
        if (audioSpecificConfig != null) {
            byteBufferAllocate.put(audioSpecificConfig.serialize().array());
        }
        return byteBufferAllocate;
    }

    public void setAudioSpecificInfo(AudioSpecificConfig audioSpecificConfig) {
        this.audioSpecificInfo = audioSpecificConfig;
    }

    public void setObjectTypeIndication(int i) {
        this.objectTypeIndication = i;
    }

    public void setStreamType(int i) {
        this.streamType = i;
    }

    public void setBufferSizeDB(int i) {
        this.bufferSizeDB = i;
    }

    public void setMaxBitRate(long j) {
        this.maxBitRate = j;
    }

    public void setAvgBitRate(long j) {
        this.avgBitRate = j;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DecoderConfigDescriptor");
        sb.append("{objectTypeIndication=");
        sb.append(this.objectTypeIndication);
        sb.append(", streamType=");
        sb.append(this.streamType);
        sb.append(", upStream=");
        sb.append(this.upStream);
        sb.append(", bufferSizeDB=");
        sb.append(this.bufferSizeDB);
        sb.append(", maxBitRate=");
        sb.append(this.maxBitRate);
        sb.append(", avgBitRate=");
        sb.append(this.avgBitRate);
        sb.append(", decoderSpecificInfo=");
        sb.append((Object) null);
        sb.append(", audioSpecificInfo=");
        sb.append(this.audioSpecificInfo);
        sb.append(", configDescriptorDeadBytes=");
        byte[] bArr = this.configDescriptorDeadBytes;
        if (bArr == null) {
            bArr = new byte[0];
        }
        sb.append(Hex.encodeHex(bArr));
        sb.append(", profileLevelIndicationDescriptors=");
        List list = this.profileLevelIndicationDescriptors;
        sb.append(list == null ? "null" : Arrays.asList(list).toString());
        sb.append('}');
        return sb.toString();
    }
}
