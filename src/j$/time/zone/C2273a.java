package j$.time.zone;

import j$.nio.file.C2148b;
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
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2273a implements Externalizable {
    private static final long serialVersionUID = -8885321777449118786L;

    /* JADX INFO: renamed from: a */
    public byte f870a;

    /* JADX INFO: renamed from: b */
    public Object f871b;

    public C2273a(byte b2, Object obj) {
        this.f870a = b2;
        this.f871b = obj;
    }

    /* JADX INFO: renamed from: a */
    public static long m850a(DataInput dataInput) {
        int i = dataInput.readByte() & UByte.MAX_VALUE;
        if (i == 255) {
            return dataInput.readLong();
        }
        return (((long) (((i << 16) + ((dataInput.readByte() & UByte.MAX_VALUE) << 8)) + (dataInput.readByte() & UByte.MAX_VALUE))) * 900) - 4575744000L;
    }

    /* JADX INFO: renamed from: b */
    public static ZoneOffset m851b(DataInput dataInput) throws IOException {
        byte b2 = dataInput.readByte();
        return b2 == 127 ? ZoneOffset.ofTotalSeconds(dataInput.readInt()) : ZoneOffset.ofTotalSeconds(b2 * 900);
    }

    /* JADX INFO: renamed from: c */
    public static void m852c(long j, DataOutput dataOutput) throws IOException {
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
    public static void m853d(ZoneOffset zoneOffset, DataOutput dataOutput) throws IOException {
        int totalSeconds = zoneOffset.getTotalSeconds();
        int i = totalSeconds % 900 == 0 ? totalSeconds / 900 : 127;
        dataOutput.writeByte(i);
        if (i == 127) {
            dataOutput.writeInt(totalSeconds);
        }
    }

    private Object readResolve() {
        return this.f871b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) throws IOException {
        Object zoneRules;
        byte b2 = objectInput.readByte();
        this.f870a = b2;
        if (b2 == 1) {
            long[] jArr = ZoneRules.f858i;
            int i = objectInput.readInt();
            long[] jArr2 = i == 0 ? jArr : new long[i];
            for (int i2 = 0; i2 < i; i2++) {
                jArr2[i2] = m850a(objectInput);
            }
            int i3 = i + 1;
            ZoneOffset[] zoneOffsetArr = new ZoneOffset[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                zoneOffsetArr[i4] = m851b(objectInput);
            }
            int i5 = objectInput.readInt();
            if (i5 != 0) {
                jArr = new long[i5];
            }
            long[] jArr3 = jArr;
            for (int i6 = 0; i6 < i5; i6++) {
                jArr3[i6] = m850a(objectInput);
            }
            int i7 = i5 + 1;
            ZoneOffset[] zoneOffsetArr2 = new ZoneOffset[i7];
            for (int i8 = 0; i8 < i7; i8++) {
                zoneOffsetArr2[i8] = m851b(objectInput);
            }
            int i9 = objectInput.readByte();
            C2277e[] c2277eArr = i9 == 0 ? ZoneRules.f859j : new C2277e[i9];
            for (int i10 = 0; i10 < i9; i10++) {
                c2277eArr[i10] = C2277e.m855a(objectInput);
            }
            zoneRules = new ZoneRules(jArr2, zoneOffsetArr, jArr3, zoneOffsetArr2, c2277eArr);
        } else if (b2 == 2) {
            int i11 = C2274b.f872e;
            long jM850a = m850a(objectInput);
            ZoneOffset zoneOffsetM851b = m851b(objectInput);
            ZoneOffset zoneOffsetM851b2 = m851b(objectInput);
            if (zoneOffsetM851b.equals(zoneOffsetM851b2)) {
                C2148b.m608a("Offsets must not be equal");
                return;
            }
            zoneRules = new C2274b(jM850a, zoneOffsetM851b, zoneOffsetM851b2);
        } else if (b2 == 3) {
            zoneRules = C2277e.m855a(objectInput);
        } else {
            if (b2 != 100) {
                throw new StreamCorruptedException("Unknown serialized type");
            }
            zoneRules = new ZoneRules(TimeZone.getTimeZone(objectInput.readUTF()));
        }
        this.f871b = zoneRules;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) throws IOException {
        byte b2 = this.f870a;
        Object obj = this.f871b;
        objectOutput.writeByte(b2);
        if (b2 != 1) {
            if (b2 == 2) {
                C2274b c2274b = (C2274b) obj;
                m852c(c2274b.f873a, objectOutput);
                m853d(c2274b.f875c, objectOutput);
                m853d(c2274b.f876d, objectOutput);
                return;
            }
            if (b2 == 3) {
                ((C2277e) obj).m856b(objectOutput);
                return;
            } else {
                if (b2 != 100) {
                    throw new InvalidClassException("Unknown serialized type");
                }
                objectOutput.writeUTF(((ZoneRules) obj).f868g.getID());
                return;
            }
        }
        ZoneRules zoneRules = (ZoneRules) obj;
        objectOutput.writeInt(zoneRules.f862a.length);
        for (long j : zoneRules.f862a) {
            m852c(j, objectOutput);
        }
        for (ZoneOffset zoneOffset : zoneRules.f863b) {
            m853d(zoneOffset, objectOutput);
        }
        objectOutput.writeInt(zoneRules.f864c.length);
        for (long j2 : zoneRules.f864c) {
            m852c(j2, objectOutput);
        }
        for (ZoneOffset zoneOffset2 : zoneRules.f866e) {
            m853d(zoneOffset2, objectOutput);
        }
        objectOutput.writeByte(zoneRules.f867f.length);
        for (C2277e c2277e : zoneRules.f867f) {
            c2277e.m856b(objectOutput);
        }
    }

    public C2273a() {
    }
}
