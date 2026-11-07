package j$.time.zone;

import j$.nio.file.C2288b;
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
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2412a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;

    /* JADX INFO: renamed from: a */
    public byte f872a;

    /* JADX INFO: renamed from: b */
    public Object f873b;

    public C2412a(byte b2, Object obj) {
        this.f872a = b2;
        this.f873b = obj;
    }

    /* JADX INFO: renamed from: a */
    public static long m898a(DataInput dataInput) {
        int i = dataInput.readByte() & UByte.MAX_VALUE;
        if (i == 255) {
            return dataInput.readLong();
        }
        return (((long) (((i << 16) + ((dataInput.readByte() & UByte.MAX_VALUE) << 8)) + (dataInput.readByte() & UByte.MAX_VALUE))) * 900) - 4575744000L;
    }

    /* JADX INFO: renamed from: b */
    public static ZoneOffset m899b(DataInput dataInput) throws IOException {
        byte b2 = dataInput.readByte();
        return b2 == 127 ? ZoneOffset.ofTotalSeconds(dataInput.readInt()) : ZoneOffset.ofTotalSeconds(b2 * 900);
    }

    /* JADX INFO: renamed from: c */
    public static void m900c(long j, DataOutput dataOutput) throws IOException {
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
    public static void m901d(ZoneOffset zoneOffset, DataOutput dataOutput) throws IOException {
        int totalSeconds = zoneOffset.getTotalSeconds();
        int i = totalSeconds % 900 == 0 ? totalSeconds / 900 : 127;
        dataOutput.writeByte(i);
        if (i == 127) {
            dataOutput.writeInt(totalSeconds);
        }
    }

    private Object readResolve() {
        return this.f873b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object zoneRules;
        byte b2 = objectInput.readByte();
        this.f872a = b2;
        if (b2 == 1) {
            long[] jArr = ZoneRules.f860i;
            int i = objectInput.readInt();
            long[] jArr2 = i == 0 ? jArr : new long[i];
            for (int i2 = 0; i2 < i; i2++) {
                jArr2[i2] = m898a(objectInput);
            }
            int i3 = i + 1;
            ZoneOffset[] zoneOffsetArr = new ZoneOffset[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                zoneOffsetArr[i4] = m899b(objectInput);
            }
            int i5 = objectInput.readInt();
            if (i5 != 0) {
                jArr = new long[i5];
            }
            long[] jArr3 = jArr;
            for (int i6 = 0; i6 < i5; i6++) {
                jArr3[i6] = m898a(objectInput);
            }
            int i7 = i5 + 1;
            ZoneOffset[] zoneOffsetArr2 = new ZoneOffset[i7];
            for (int i8 = 0; i8 < i7; i8++) {
                zoneOffsetArr2[i8] = m899b(objectInput);
            }
            int i9 = objectInput.readByte();
            C2416e[] c2416eArr = i9 == 0 ? ZoneRules.f861j : new C2416e[i9];
            for (int i10 = 0; i10 < i9; i10++) {
                c2416eArr[i10] = C2416e.m903a(objectInput);
            }
            zoneRules = new ZoneRules(jArr2, zoneOffsetArr, jArr3, zoneOffsetArr2, c2416eArr);
        } else if (b2 == 2) {
            int i11 = C2413b.f874e;
            long jM898a = m898a(objectInput);
            ZoneOffset zoneOffsetM899b = m899b(objectInput);
            ZoneOffset zoneOffsetM899b2 = m899b(objectInput);
            if (zoneOffsetM899b.equals(zoneOffsetM899b2)) {
                C2288b.m632a("Offsets must not be equal");
                return;
            }
            zoneRules = new C2413b(jM898a, zoneOffsetM899b, zoneOffsetM899b2);
        } else if (b2 == 3) {
            zoneRules = C2416e.m903a(objectInput);
        } else {
            if (b2 != 100) {
                throw new StreamCorruptedException("Unknown serialized type");
            }
            zoneRules = new ZoneRules(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.f873b = zoneRules;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b2 = this.f872a;
        Object obj = this.f873b;
        objectOutput.writeByte(b2);
        if (b2 != 1) {
            if (b2 == 2) {
                C2413b c2413b = (C2413b) obj;
                m900c(c2413b.f875a, objectOutput);
                m901d(c2413b.f877c, objectOutput);
                m901d(c2413b.f878d, objectOutput);
                return;
            }
            if (b2 == 3) {
                ((C2416e) obj).m904b(objectOutput);
                return;
            } else {
                if (b2 != 100) {
                    throw new InvalidClassException("Unknown serialized type");
                }
                objectOutput.writeUTF(((ZoneRules) obj).f870g.getID());
                return;
            }
        }
        ZoneRules zoneRules = (ZoneRules) obj;
        objectOutput.writeInt(zoneRules.f864a.length);
        for (long j : zoneRules.f864a) {
            m900c(j, objectOutput);
        }
        for (ZoneOffset zoneOffset : zoneRules.f865b) {
            m901d(zoneOffset, objectOutput);
        }
        objectOutput.writeInt(zoneRules.f866c.length);
        for (long j2 : zoneRules.f866c) {
            m900c(j2, objectOutput);
        }
        for (ZoneOffset zoneOffset2 : zoneRules.f868e) {
            m901d(zoneOffset2, objectOutput);
        }
        objectOutput.writeByte(zoneRules.f869f.length);
        for (C2416e c2416e : zoneRules.f869f) {
            c2416e.m904b(objectOutput);
        }
    }

    public C2412a() {
    }
}
