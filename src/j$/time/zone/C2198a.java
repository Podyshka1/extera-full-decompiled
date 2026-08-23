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
import kotlin.UByte;

/* JADX INFO: renamed from: j$.time.zone.a */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2198a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;

    /* JADX INFO: renamed from: a */
    public byte f728a;

    /* JADX INFO: renamed from: b */
    public Object f729b;

    public C2198a(byte b2, Object obj) {
        this.f728a = b2;
        this.f729b = obj;
    }

    /* JADX INFO: renamed from: a */
    public static long m743a(DataInput dataInput) {
        int i = dataInput.readByte() & UByte.MAX_VALUE;
        if (i == 255) {
            return dataInput.readLong();
        }
        return (((long) (((i << 16) + ((dataInput.readByte() & UByte.MAX_VALUE) << 8)) + (dataInput.readByte() & UByte.MAX_VALUE))) * 900) - 4575744000L;
    }

    /* JADX INFO: renamed from: b */
    public static ZoneOffset m744b(DataInput dataInput) throws IOException {
        byte b2 = dataInput.readByte();
        return b2 == 127 ? ZoneOffset.m549Z(dataInput.readInt()) : ZoneOffset.m549Z(b2 * 900);
    }

    /* JADX INFO: renamed from: c */
    public static void m745c(long j, DataOutput dataOutput) throws IOException {
        if (j < -4575744000L || j >= 10413792000L || j % 900 != 0) {
            dataOutput.writeByte(255);
            dataOutput.writeLong(j);
        } else {
            int i = (int) ((j + 4575744000L) / 900);
            dataOutput.writeByte((i >>> 16) & 255);
            dataOutput.writeByte((i >>> 8) & 255);
            dataOutput.writeByte(i & 255);
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m746d(ZoneOffset zoneOffset, DataOutput dataOutput) throws IOException {
        int totalSeconds = zoneOffset.getTotalSeconds();
        int i = totalSeconds % 900 == 0 ? totalSeconds / 900 : 127;
        dataOutput.writeByte(i);
        if (i == 127) {
            dataOutput.writeInt(totalSeconds);
        }
    }

    private Object readResolve() {
        return this.f729b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object zoneRules;
        byte b2 = objectInput.readByte();
        this.f728a = b2;
        if (b2 == 1) {
            long[] jArr = ZoneRules.f716i;
            int i = objectInput.readInt();
            long[] jArr2 = i == 0 ? jArr : new long[i];
            for (int i2 = 0; i2 < i; i2++) {
                jArr2[i2] = m743a(objectInput);
            }
            int i3 = i + 1;
            ZoneOffset[] zoneOffsetArr = new ZoneOffset[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                zoneOffsetArr[i4] = m744b(objectInput);
            }
            int i5 = objectInput.readInt();
            if (i5 != 0) {
                jArr = new long[i5];
            }
            long[] jArr3 = jArr;
            for (int i6 = 0; i6 < i5; i6++) {
                jArr3[i6] = m743a(objectInput);
            }
            int i7 = i5 + 1;
            ZoneOffset[] zoneOffsetArr2 = new ZoneOffset[i7];
            for (int i8 = 0; i8 < i7; i8++) {
                zoneOffsetArr2[i8] = m744b(objectInput);
            }
            int i9 = objectInput.readByte();
            C2202e[] c2202eArr = i9 == 0 ? ZoneRules.f717j : new C2202e[i9];
            for (int i10 = 0; i10 < i9; i10++) {
                c2202eArr[i10] = C2202e.m748a(objectInput);
            }
            zoneRules = new ZoneRules(jArr2, zoneOffsetArr, jArr3, zoneOffsetArr2, c2202eArr);
        } else if (b2 == 2) {
            int i11 = C2199b.f730e;
            long jM743a = m743a(objectInput);
            ZoneOffset zoneOffsetM744b = m744b(objectInput);
            ZoneOffset zoneOffsetM744b2 = m744b(objectInput);
            if (zoneOffsetM744b.equals(zoneOffsetM744b2)) {
                throw new IllegalArgumentException("Offsets must not be equal");
            }
            zoneRules = new C2199b(jM743a, zoneOffsetM744b, zoneOffsetM744b2);
        } else if (b2 == 3) {
            zoneRules = C2202e.m748a(objectInput);
        } else {
            if (b2 != 100) {
                throw new StreamCorruptedException("Unknown serialized type");
            }
            zoneRules = new ZoneRules(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.f729b = zoneRules;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b2 = this.f728a;
        Object obj = this.f729b;
        objectOutput.writeByte(b2);
        if (b2 != 1) {
            if (b2 == 2) {
                C2199b c2199b = (C2199b) obj;
                m745c(c2199b.f731a, objectOutput);
                m746d(c2199b.f733c, objectOutput);
                m746d(c2199b.f734d, objectOutput);
                return;
            }
            if (b2 == 3) {
                ((C2202e) obj).m749b(objectOutput);
                return;
            } else {
                if (b2 != 100) {
                    throw new InvalidClassException("Unknown serialized type");
                }
                objectOutput.writeUTF(((ZoneRules) obj).f726g.getID());
                return;
            }
        }
        ZoneRules zoneRules = (ZoneRules) obj;
        objectOutput.writeInt(zoneRules.f720a.length);
        for (long j : zoneRules.f720a) {
            m745c(j, objectOutput);
        }
        for (ZoneOffset zoneOffset : zoneRules.f721b) {
            m746d(zoneOffset, objectOutput);
        }
        objectOutput.writeInt(zoneRules.f722c.length);
        for (long j2 : zoneRules.f722c) {
            m745c(j2, objectOutput);
        }
        for (ZoneOffset zoneOffset2 : zoneRules.f724e) {
            m746d(zoneOffset2, objectOutput);
        }
        objectOutput.writeByte(zoneRules.f725f.length);
        for (C2202e c2202e : zoneRules.f725f) {
            c2202e.m749b(objectOutput);
        }
    }

    public C2198a() {
    }
}
