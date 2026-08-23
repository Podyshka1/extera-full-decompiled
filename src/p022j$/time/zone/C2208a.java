package p022j$.time.zone;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.TimeZone;
import p022j$.time.ZoneOffset;

/* JADX INFO: renamed from: j$.time.zone.a */
/* JADX INFO: loaded from: classes2.dex */
public final class C2208a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;

    /* JADX INFO: renamed from: a */
    public byte f869a;

    /* JADX INFO: renamed from: b */
    public Object f870b;

    public C2208a() {
    }

    public C2208a(byte b, Object obj) {
        this.f869a = b;
        this.f870b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b = this.f869a;
        Object obj = this.f870b;
        objectOutput.writeByte(b);
        if (b != 1) {
            if (b == 2) {
                C2209b c2209b = (C2209b) obj;
                m800c(c2209b.f872a, objectOutput);
                m801d(c2209b.f874c, objectOutput);
                m801d(c2209b.f875d, objectOutput);
                return;
            }
            if (b == 3) {
                ((C2212e) obj).m804b(objectOutput);
                return;
            } else {
                if (b != 100) {
                    throw new InvalidClassException("Unknown serialized type");
                }
                objectOutput.writeUTF(((ZoneRules) obj).f867g.getID());
                return;
            }
        }
        ZoneRules zoneRules = (ZoneRules) obj;
        objectOutput.writeInt(zoneRules.f861a.length);
        for (long j : zoneRules.f861a) {
            m800c(j, objectOutput);
        }
        for (ZoneOffset zoneOffset : zoneRules.f862b) {
            m801d(zoneOffset, objectOutput);
        }
        objectOutput.writeInt(zoneRules.f863c.length);
        for (long j2 : zoneRules.f863c) {
            m800c(j2, objectOutput);
        }
        for (ZoneOffset zoneOffset2 : zoneRules.f865e) {
            m801d(zoneOffset2, objectOutput);
        }
        objectOutput.writeByte(zoneRules.f866f.length);
        for (C2212e c2212e : zoneRules.f866f) {
            c2212e.m804b(objectOutput);
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object zoneRules;
        byte b = objectInput.readByte();
        this.f869a = b;
        if (b == 1) {
            long[] jArr = ZoneRules.f857i;
            int i = objectInput.readInt();
            long[] jArr2 = i == 0 ? jArr : new long[i];
            for (int i2 = 0; i2 < i; i2++) {
                jArr2[i2] = m798a(objectInput);
            }
            int i3 = i + 1;
            ZoneOffset[] zoneOffsetArr = new ZoneOffset[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                zoneOffsetArr[i4] = m799b(objectInput);
            }
            int i5 = objectInput.readInt();
            if (i5 != 0) {
                jArr = new long[i5];
            }
            long[] jArr3 = jArr;
            for (int i6 = 0; i6 < i5; i6++) {
                jArr3[i6] = m798a(objectInput);
            }
            int i7 = i5 + 1;
            ZoneOffset[] zoneOffsetArr2 = new ZoneOffset[i7];
            for (int i8 = 0; i8 < i7; i8++) {
                zoneOffsetArr2[i8] = m799b(objectInput);
            }
            int i9 = objectInput.readByte();
            C2212e[] c2212eArr = i9 == 0 ? ZoneRules.f858j : new C2212e[i9];
            for (int i10 = 0; i10 < i9; i10++) {
                c2212eArr[i10] = C2212e.m803a(objectInput);
            }
            zoneRules = new ZoneRules(jArr2, zoneOffsetArr, jArr3, zoneOffsetArr2, c2212eArr);
        } else if (b == 2) {
            int i11 = C2209b.f871e;
            long jM798a = m798a(objectInput);
            ZoneOffset zoneOffsetM799b = m799b(objectInput);
            ZoneOffset zoneOffsetM799b2 = m799b(objectInput);
            if (zoneOffsetM799b.equals(zoneOffsetM799b2)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            zoneRules = new C2209b(jM798a, zoneOffsetM799b, zoneOffsetM799b2);
        } else if (b == 3) {
            zoneRules = C2212e.m803a(objectInput);
        } else {
            if (b != 100) {
                throw new StreamCorruptedException("Unknown serialized type");
            }
            zoneRules = new ZoneRules(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.f870b = zoneRules;
    }

    private Object readResolve() {
        return this.f870b;
    }

    /* JADX INFO: renamed from: d */
    public static void m801d(ZoneOffset zoneOffset, DataOutput dataOutput) throws IOException {
        int totalSeconds = zoneOffset.getTotalSeconds();
        int i = totalSeconds % 900 == 0 ? totalSeconds / 900 : 127;
        dataOutput.writeByte(i);
        if (i == 127) {
            dataOutput.writeInt(totalSeconds);
        }
    }

    /* JADX INFO: renamed from: b */
    public static ZoneOffset m799b(DataInput dataInput) throws IOException {
        byte b = dataInput.readByte();
        return b == 127 ? ZoneOffset.m647H(dataInput.readInt()) : ZoneOffset.m647H(b * 900);
    }

    /* JADX INFO: renamed from: c */
    public static void m800c(long j, DataOutput dataOutput) throws IOException {
        if (j >= -4575744000L && j < 10413792000L && j % 900 == 0) {
            int i = (int) ((j + 4575744000L) / 900);
            dataOutput.writeByte((i >>> 16) & 255);
            dataOutput.writeByte((i >>> 8) & 255);
            dataOutput.writeByte(i & 255);
            return;
        }
        dataOutput.writeByte(255);
        dataOutput.writeLong(j);
    }

    /* JADX INFO: renamed from: a */
    public static long m798a(DataInput dataInput) {
        int i = dataInput.readByte() & 255;
        if (i == 255) {
            return dataInput.readLong();
        }
        return (((long) (((i << 16) + ((dataInput.readByte() & 255) << 8)) + (dataInput.readByte() & 255))) * 900) - 4575744000L;
    }
}
