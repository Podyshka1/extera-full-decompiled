package j$.time.zone;

import j$.time.ZoneOffset;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.Externalizable;
import java.io.IOException;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import java.util.TimeZone;

/* JADX INFO: renamed from: j$.time.zone.a */
/* JADX INFO: loaded from: classes2.dex */
public final class C2069a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;

    /* JADX INFO: renamed from: a */
    public byte f634a;

    /* JADX INFO: renamed from: b */
    public Object f635b;

    public C2069a() {
    }

    public C2069a(byte b, Object obj) {
        this.f634a = b;
        this.f635b = obj;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b = this.f634a;
        Object obj = this.f635b;
        objectOutput.writeByte(b);
        if (b != 1) {
            if (b == 2) {
                C2070b c2070b = (C2070b) obj;
                m675c(c2070b.f637a, objectOutput);
                m676d(c2070b.f639c, objectOutput);
                m676d(c2070b.f640d, objectOutput);
                return;
            }
            if (b == 3) {
                ((C2073e) obj).m679b(objectOutput);
                return;
            } else {
                if (b != 100) {
                    throw new InvalidClassException("Unknown serialized type");
                }
                objectOutput.writeUTF(((ZoneRules) obj).f632g.getID());
                return;
            }
        }
        ZoneRules zoneRules = (ZoneRules) obj;
        objectOutput.writeInt(zoneRules.f626a.length);
        for (long j : zoneRules.f626a) {
            m675c(j, objectOutput);
        }
        for (ZoneOffset zoneOffset : zoneRules.f627b) {
            m676d(zoneOffset, objectOutput);
        }
        objectOutput.writeInt(zoneRules.f628c.length);
        for (long j2 : zoneRules.f628c) {
            m675c(j2, objectOutput);
        }
        for (ZoneOffset zoneOffset2 : zoneRules.f630e) {
            m676d(zoneOffset2, objectOutput);
        }
        objectOutput.writeByte(zoneRules.f631f.length);
        for (C2073e c2073e : zoneRules.f631f) {
            c2073e.m679b(objectOutput);
        }
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object zoneRules;
        byte b = objectInput.readByte();
        this.f634a = b;
        if (b == 1) {
            long[] jArr = ZoneRules.f622i;
            int i = objectInput.readInt();
            long[] jArr2 = i == 0 ? jArr : new long[i];
            for (int i2 = 0; i2 < i; i2++) {
                jArr2[i2] = m673a(objectInput);
            }
            int i3 = i + 1;
            ZoneOffset[] zoneOffsetArr = new ZoneOffset[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                zoneOffsetArr[i4] = m674b(objectInput);
            }
            int i5 = objectInput.readInt();
            if (i5 != 0) {
                jArr = new long[i5];
            }
            long[] jArr3 = jArr;
            for (int i6 = 0; i6 < i5; i6++) {
                jArr3[i6] = m673a(objectInput);
            }
            int i7 = i5 + 1;
            ZoneOffset[] zoneOffsetArr2 = new ZoneOffset[i7];
            for (int i8 = 0; i8 < i7; i8++) {
                zoneOffsetArr2[i8] = m674b(objectInput);
            }
            int i9 = objectInput.readByte();
            C2073e[] c2073eArr = i9 == 0 ? ZoneRules.f623j : new C2073e[i9];
            for (int i10 = 0; i10 < i9; i10++) {
                c2073eArr[i10] = C2073e.m678a(objectInput);
            }
            zoneRules = new ZoneRules(jArr2, zoneOffsetArr, jArr3, zoneOffsetArr2, c2073eArr);
        } else if (b == 2) {
            int i11 = C2070b.f636e;
            long jM673a = m673a(objectInput);
            ZoneOffset zoneOffsetM674b = m674b(objectInput);
            ZoneOffset zoneOffsetM674b2 = m674b(objectInput);
            if (zoneOffsetM674b.equals(zoneOffsetM674b2)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            zoneRules = new C2070b(jM673a, zoneOffsetM674b, zoneOffsetM674b2);
        } else if (b == 3) {
            zoneRules = C2073e.m678a(objectInput);
        } else {
            if (b != 100) {
                throw new StreamCorruptedException("Unknown serialized type");
            }
            zoneRules = new ZoneRules(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.f635b = zoneRules;
    }

    private Object readResolve() {
        return this.f635b;
    }

    /* JADX INFO: renamed from: d */
    public static void m676d(ZoneOffset zoneOffset, DataOutput dataOutput) throws IOException {
        int totalSeconds = zoneOffset.getTotalSeconds();
        int i = totalSeconds % 900 == 0 ? totalSeconds / 900 : 127;
        dataOutput.writeByte(i);
        if (i == 127) {
            dataOutput.writeInt(totalSeconds);
        }
    }

    /* JADX INFO: renamed from: b */
    public static ZoneOffset m674b(DataInput dataInput) throws IOException {
        byte b = dataInput.readByte();
        return b == 127 ? ZoneOffset.m524H(dataInput.readInt()) : ZoneOffset.m524H(b * 900);
    }

    /* JADX INFO: renamed from: c */
    public static void m675c(long j, DataOutput dataOutput) throws IOException {
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
    public static long m673a(DataInput dataInput) {
        int i = dataInput.readByte() & 255;
        if (i == 255) {
            return dataInput.readLong();
        }
        return (((long) (((i << 16) + ((dataInput.readByte() & 255) << 8)) + (dataInput.readByte() & 255))) * 900) - 4575744000L;
    }
}
