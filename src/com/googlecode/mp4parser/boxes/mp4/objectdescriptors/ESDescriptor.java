package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(tags = {3})
public class ESDescriptor extends BaseDescriptor {
    private static Logger log = Logger.getLogger(ESDescriptor.class.getName());
    int URLFlag;
    String URLString;
    DecoderConfigDescriptor decoderConfigDescriptor;
    int dependsOnEsId;
    int esId;
    int oCREsId;
    int oCRstreamFlag;
    int remoteODFlag;
    SLConfigDescriptor slConfigDescriptor;
    int streamDependenceFlag;
    int streamPriority;
    int URLLength = 0;
    List<BaseDescriptor> otherDescriptors = new ArrayList();

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor
    public void parseDetail(ByteBuffer byteBuffer) {
        this.esId = IsoTypeReader.readUInt16(byteBuffer);
        int uInt8 = IsoTypeReader.readUInt8(byteBuffer);
        int i = uInt8 >>> 7;
        this.streamDependenceFlag = i;
        this.URLFlag = (uInt8 >>> 6) & 1;
        this.oCRstreamFlag = (uInt8 >>> 5) & 1;
        this.streamPriority = uInt8 & 31;
        if (i == 1) {
            this.dependsOnEsId = IsoTypeReader.readUInt16(byteBuffer);
        }
        if (this.URLFlag == 1) {
            int uInt82 = IsoTypeReader.readUInt8(byteBuffer);
            this.URLLength = uInt82;
            this.URLString = IsoTypeReader.readString(byteBuffer, uInt82);
        }
        if (this.oCRstreamFlag == 1) {
            this.oCREsId = IsoTypeReader.readUInt16(byteBuffer);
        }
        int sizeBytes = getSizeBytes() + 4 + (this.streamDependenceFlag == 1 ? 2 : 0) + (this.URLFlag == 1 ? this.URLLength + 1 : 0) + (this.oCRstreamFlag == 1 ? 2 : 0);
        int iPosition = byteBuffer.position();
        if (getSize() > sizeBytes + 2) {
            BaseDescriptor baseDescriptorCreateFrom = ObjectDescriptorFactory.createFrom(-1, byteBuffer);
            long jPosition = byteBuffer.position() - iPosition;
            Logger logger = log;
            StringBuilder sb = new StringBuilder();
            sb.append(baseDescriptorCreateFrom);
            sb.append(" - ESDescriptor1 read: ");
            sb.append(jPosition);
            sb.append(", size: ");
            sb.append(baseDescriptorCreateFrom != null ? Integer.valueOf(baseDescriptorCreateFrom.getSize()) : null);
            logger.finer(sb.toString());
            if (baseDescriptorCreateFrom != null) {
                int size = baseDescriptorCreateFrom.getSize();
                byteBuffer.position(iPosition + size);
                sizeBytes += size;
            } else {
                sizeBytes = (int) (((long) sizeBytes) + jPosition);
            }
            if (baseDescriptorCreateFrom instanceof DecoderConfigDescriptor) {
                this.decoderConfigDescriptor = (DecoderConfigDescriptor) baseDescriptorCreateFrom;
            }
        }
        int iPosition2 = byteBuffer.position();
        if (getSize() > sizeBytes + 2) {
            BaseDescriptor baseDescriptorCreateFrom2 = ObjectDescriptorFactory.createFrom(-1, byteBuffer);
            long jPosition2 = byteBuffer.position() - iPosition2;
            Logger logger2 = log;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(baseDescriptorCreateFrom2);
            sb2.append(" - ESDescriptor2 read: ");
            sb2.append(jPosition2);
            sb2.append(", size: ");
            sb2.append(baseDescriptorCreateFrom2 != null ? Integer.valueOf(baseDescriptorCreateFrom2.getSize()) : null);
            logger2.finer(sb2.toString());
            if (baseDescriptorCreateFrom2 != null) {
                int size2 = baseDescriptorCreateFrom2.getSize();
                byteBuffer.position(iPosition2 + size2);
                sizeBytes += size2;
            } else {
                sizeBytes = (int) (((long) sizeBytes) + jPosition2);
            }
            if (baseDescriptorCreateFrom2 instanceof SLConfigDescriptor) {
                this.slConfigDescriptor = (SLConfigDescriptor) baseDescriptorCreateFrom2;
            }
        } else {
            log.warning("SLConfigDescriptor is missing!");
        }
        while (getSize() - sizeBytes > 2) {
            int iPosition3 = byteBuffer.position();
            BaseDescriptor baseDescriptorCreateFrom3 = ObjectDescriptorFactory.createFrom(-1, byteBuffer);
            long jPosition3 = byteBuffer.position() - iPosition3;
            Logger logger3 = log;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(baseDescriptorCreateFrom3);
            sb3.append(" - ESDescriptor3 read: ");
            sb3.append(jPosition3);
            sb3.append(", size: ");
            sb3.append(baseDescriptorCreateFrom3 != null ? Integer.valueOf(baseDescriptorCreateFrom3.getSize()) : null);
            logger3.finer(sb3.toString());
            if (baseDescriptorCreateFrom3 != null) {
                int size3 = baseDescriptorCreateFrom3.getSize();
                byteBuffer.position(iPosition3 + size3);
                sizeBytes += size3;
            } else {
                sizeBytes = (int) (((long) sizeBytes) + jPosition3);
            }
            this.otherDescriptors.add(baseDescriptorCreateFrom3);
        }
    }

    public int serializedSize() {
        int i = this.streamDependenceFlag > 0 ? 7 : 5;
        if (this.URLFlag > 0) {
            i += this.URLLength + 1;
        }
        if (this.oCRstreamFlag > 0) {
            i += 2;
        }
        return i + this.decoderConfigDescriptor.serializedSize() + this.slConfigDescriptor.serializedSize();
    }

    public ByteBuffer serialize() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(serializedSize());
        IsoTypeWriter.writeUInt8(byteBufferAllocate, 3);
        IsoTypeWriter.writeUInt8(byteBufferAllocate, serializedSize() - 2);
        IsoTypeWriter.writeUInt16(byteBufferAllocate, this.esId);
        IsoTypeWriter.writeUInt8(byteBufferAllocate, (this.streamDependenceFlag << 7) | (this.URLFlag << 6) | (this.oCRstreamFlag << 5) | (this.streamPriority & 31));
        if (this.streamDependenceFlag > 0) {
            IsoTypeWriter.writeUInt16(byteBufferAllocate, this.dependsOnEsId);
        }
        if (this.URLFlag > 0) {
            IsoTypeWriter.writeUInt8(byteBufferAllocate, this.URLLength);
            IsoTypeWriter.writeUtf8String(byteBufferAllocate, this.URLString);
        }
        if (this.oCRstreamFlag > 0) {
            IsoTypeWriter.writeUInt16(byteBufferAllocate, this.oCREsId);
        }
        ByteBuffer byteBufferSerialize = this.decoderConfigDescriptor.serialize();
        ByteBuffer byteBufferSerialize2 = this.slConfigDescriptor.serialize();
        byteBufferAllocate.put(byteBufferSerialize.array());
        byteBufferAllocate.put(byteBufferSerialize2.array());
        return byteBufferAllocate;
    }

    public void setDecoderConfigDescriptor(DecoderConfigDescriptor decoderConfigDescriptor) {
        this.decoderConfigDescriptor = decoderConfigDescriptor;
    }

    public void setSlConfigDescriptor(SLConfigDescriptor sLConfigDescriptor) {
        this.slConfigDescriptor = sLConfigDescriptor;
    }

    public void setEsId(int i) {
        this.esId = i;
    }

    public String toString() {
        return "ESDescriptor{esId=" + this.esId + ", streamDependenceFlag=" + this.streamDependenceFlag + ", URLFlag=" + this.URLFlag + ", oCRstreamFlag=" + this.oCRstreamFlag + ", streamPriority=" + this.streamPriority + ", URLLength=" + this.URLLength + ", URLString='" + this.URLString + "', remoteODFlag=" + this.remoteODFlag + ", dependsOnEsId=" + this.dependsOnEsId + ", oCREsId=" + this.oCREsId + ", decoderConfigDescriptor=" + this.decoderConfigDescriptor + ", slConfigDescriptor=" + this.slConfigDescriptor + '}';
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ESDescriptor eSDescriptor = (ESDescriptor) obj;
        if (this.URLFlag != eSDescriptor.URLFlag || this.URLLength != eSDescriptor.URLLength || this.dependsOnEsId != eSDescriptor.dependsOnEsId || this.esId != eSDescriptor.esId || this.oCREsId != eSDescriptor.oCREsId || this.oCRstreamFlag != eSDescriptor.oCRstreamFlag || this.remoteODFlag != eSDescriptor.remoteODFlag || this.streamDependenceFlag != eSDescriptor.streamDependenceFlag || this.streamPriority != eSDescriptor.streamPriority) {
            return false;
        }
        String str = this.URLString;
        String str2 = eSDescriptor.URLString;
        if (str == null ? str2 != null : !str.equals(str2)) {
            return false;
        }
        DecoderConfigDescriptor decoderConfigDescriptor = this.decoderConfigDescriptor;
        DecoderConfigDescriptor decoderConfigDescriptor2 = eSDescriptor.decoderConfigDescriptor;
        if (decoderConfigDescriptor == null ? decoderConfigDescriptor2 != null : !decoderConfigDescriptor.equals(decoderConfigDescriptor2)) {
            return false;
        }
        List<BaseDescriptor> list = this.otherDescriptors;
        List<BaseDescriptor> list2 = eSDescriptor.otherDescriptors;
        if (list == null ? list2 != null : !list.equals(list2)) {
            return false;
        }
        SLConfigDescriptor sLConfigDescriptor = this.slConfigDescriptor;
        SLConfigDescriptor sLConfigDescriptor2 = eSDescriptor.slConfigDescriptor;
        return sLConfigDescriptor == null ? sLConfigDescriptor2 == null : sLConfigDescriptor.equals(sLConfigDescriptor2);
    }

    public int hashCode() {
        int i = ((((((((((this.esId * 31) + this.streamDependenceFlag) * 31) + this.URLFlag) * 31) + this.oCRstreamFlag) * 31) + this.streamPriority) * 31) + this.URLLength) * 31;
        String str = this.URLString;
        int iHashCode = (((((((i + (str != null ? str.hashCode() : 0)) * 31) + this.remoteODFlag) * 31) + this.dependsOnEsId) * 31) + this.oCREsId) * 31;
        DecoderConfigDescriptor decoderConfigDescriptor = this.decoderConfigDescriptor;
        int iHashCode2 = (iHashCode + (decoderConfigDescriptor != null ? decoderConfigDescriptor.hashCode() : 0)) * 31;
        SLConfigDescriptor sLConfigDescriptor = this.slConfigDescriptor;
        int iHashCode3 = (iHashCode2 + (sLConfigDescriptor != null ? sLConfigDescriptor.hashCode() : 0)) * 31;
        List<BaseDescriptor> list = this.otherDescriptors;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }
}
