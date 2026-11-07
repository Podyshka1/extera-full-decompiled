package j$.time;

import j$.nio.file.C2288b;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class LocalTime implements Temporal, InterfaceC2405m, Comparable<LocalTime>, Serializable {

    /* JADX INFO: renamed from: e */
    public static final LocalTime f619e;

    /* JADX INFO: renamed from: f */
    public static final LocalTime f620f;

    /* JADX INFO: renamed from: g */
    public static final LocalTime f621g;

    /* JADX INFO: renamed from: h */
    public static final LocalTime[] f622h = new LocalTime[24];
    private static final long serialVersionUID = 6414437269572265201L;

    /* JADX INFO: renamed from: a */
    public final byte f623a;

    /* JADX INFO: renamed from: b */
    public final byte f624b;

    /* JADX INFO: renamed from: c */
    public final byte f625c;

    /* JADX INFO: renamed from: d */
    public final int f626d;

    static {
        int i = 0;
        while (true) {
            LocalTime[] localTimeArr = f622h;
            if (i >= localTimeArr.length) {
                LocalTime localTime = localTimeArr[0];
                f621g = localTime;
                LocalTime localTime2 = localTimeArr[12];
                f619e = localTime;
                f620f = new LocalTime(23, 59, 59, 999999999);
                return;
            }
            localTimeArr[i] = new LocalTime(i, 0, 0, 0);
            i++;
        }
    }

    public LocalTime(int i, int i2, int i3, int i4) {
        this.f623a = (byte) i;
        this.f624b = (byte) i2;
        this.f625c = (byte) i3;
        this.f626d = i4;
    }

    /* JADX INFO: renamed from: D */
    public static LocalTime m707D(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? f622h[i] : new LocalTime(i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: I */
    public static LocalTime m708I(InterfaceC2404l interfaceC2404l) {
        Objects.requireNonNull(interfaceC2404l, "temporal");
        LocalTime localTime = (LocalTime) interfaceC2404l.mo554d(AbstractC2409q.f855g);
        if (localTime != null) {
            return localTime;
        }
        C2288b.m637f("Unable to obtain LocalTime from TemporalAccessor: ", interfaceC2404l, " of type ", interfaceC2404l.getClass().getName());
        return null;
    }

    /* JADX INFO: renamed from: R */
    public static LocalTime m709R(long j) {
        EnumC2393a.NANO_OF_DAY.m877Y(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (((long) i) * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (((long) i2) * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return m707D(i, i2, i3, (int) (j3 - (((long) i3) * 1000000000)));
    }

    public static LocalTime c0(DataInput dataInput) throws IOException {
        int i;
        int i2;
        int i3 = dataInput.readByte();
        int i4 = 0;
        if (i3 < 0) {
            i3 = ~i3;
            i2 = 0;
            i = 0;
        } else {
            byte b2 = dataInput.readByte();
            if (b2 < 0) {
                int i5 = ~b2;
                i = 0;
                i4 = i5;
                i2 = 0;
            } else {
                byte b3 = dataInput.readByte();
                if (b3 < 0) {
                    i2 = ~b3;
                    i = 0;
                    i4 = b2;
                } else {
                    i = dataInput.readInt();
                    i4 = b2;
                    i2 = b3;
                }
            }
        }
        return of(i3, i4, i2, i);
    }

    public static LocalTime of(int i, int i2, int i3, int i4) {
        EnumC2393a.HOUR_OF_DAY.m877Y(i);
        EnumC2393a.MINUTE_OF_HOUR.m877Y(i2);
        EnumC2393a.SECOND_OF_MINUTE.m877Y(i3);
        EnumC2393a.NANO_OF_SECOND.m877Y(i4);
        return m707D(i, i2, i3, i4);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2388n((byte) 4, this);
    }

    /* JADX INFO: renamed from: K */
    public final int m710K(InterfaceC2408p interfaceC2408p) {
        switch (AbstractC2382h.f809a[((EnumC2393a) interfaceC2408p).ordinal()]) {
            case 1:
                return this.f626d;
            case 2:
                throw new C2410r("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.f626d / 1000;
            case 4:
                throw new C2410r("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.f626d / DurationKt.NANOS_IN_MILLIS;
            case 6:
                return (int) (d0() / 1000000);
            case 7:
                return this.f625c;
            case 8:
                return e0();
            case 9:
                return this.f624b;
            case 10:
                return (this.f623a * 60) + this.f624b;
            case 11:
                return this.f623a % 12;
            case 12:
                int i = this.f623a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case 13:
                return this.f623a;
            case 14:
                byte b2 = this.f623a;
                if (b2 == 0) {
                    return 24;
                }
                return b2;
            case 15:
                return this.f623a / 12;
            default:
                throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public final LocalTime mo677b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalTime) temporalUnit.mo872s(this, j);
        }
        switch (AbstractC2382h.f810b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return a0(j);
            case 2:
                return a0((j % 86400000000L) * 1000);
            case 3:
                return a0((j % DurationKt.MILLIS_IN_DAY) * 1000000);
            case 4:
                return b0(j);
            case 5:
                return m713Z(j);
            case 6:
                return m712Y(j);
            case 7:
                return m712Y((j % 2) * 12);
            default:
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return null;
        }
    }

    /* JADX INFO: renamed from: Y */
    public final LocalTime m712Y(long j) {
        return j == 0 ? this : m707D(((((int) (j % 24)) + this.f623a) + 24) % 24, this.f624b, this.f625c, this.f626d);
    }

    /* JADX INFO: renamed from: Z */
    public final LocalTime m713Z(long j) {
        if (j != 0) {
            int i = (this.f623a * 60) + this.f624b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return m707D(i2 / 60, i2 % 60, this.f625c, this.f626d);
            }
        }
        return this;
    }

    public final LocalTime a0(long j) {
        if (j != 0) {
            long jD0 = d0();
            long j2 = (((j % 86400000000000L) + jD0) + 86400000000000L) % 86400000000000L;
            if (jD0 != j2) {
                return m707D((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    public final LocalTime b0(long j) {
        if (j != 0) {
            int i = (this.f624b * 60) + (this.f623a * 3600) + this.f625c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return m707D(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.f626d);
            }
        }
        return this;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo678c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo677b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo677b(j2, temporalUnit);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        if (c2352d == AbstractC2409q.f850b || c2352d == AbstractC2409q.f849a || c2352d == AbstractC2409q.f853e || c2352d == AbstractC2409q.f852d) {
            return null;
        }
        if (c2352d == AbstractC2409q.f855g) {
            return this;
        }
        if (c2352d == AbstractC2409q.f854f) {
            return null;
        }
        return c2352d == AbstractC2409q.f851c ? ChronoUnit.NANOS : c2352d.m810l(this);
    }

    public final long d0() {
        return (((long) this.f625c) * 1000000000) + (((long) this.f624b) * 60000000000L) + (((long) this.f623a) * 3600000000000L) + ((long) this.f626d);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public final Temporal mo665e(Temporal temporal) {
        return temporal.mo676a(d0(), EnumC2393a.NANO_OF_DAY);
    }

    public final int e0() {
        return (this.f624b * 60) + (this.f623a * 3600) + this.f625c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalTime) {
            LocalTime localTime = (LocalTime) obj;
            if (this.f623a == localTime.f623a && this.f624b == localTime.f624b && this.f625c == localTime.f625c && this.f626d == localTime.f626d) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public final LocalTime mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (LocalTime) interfaceC2408p.mo876X(this, j);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        enumC2393a.m877Y(j);
        switch (AbstractC2382h.f809a[enumC2393a.ordinal()]) {
            case 1:
                return g0((int) j);
            case 2:
                return m709R(j);
            case 3:
                return g0(((int) j) * 1000);
            case 4:
                return m709R(j * 1000);
            case 5:
                return g0(((int) j) * DurationKt.NANOS_IN_MILLIS);
            case 6:
                return m709R(j * 1000000);
            case 7:
                int i = (int) j;
                if (this.f625c != i) {
                    EnumC2393a.SECOND_OF_MINUTE.m877Y(i);
                    return m707D(this.f623a, this.f624b, i, this.f626d);
                }
                return this;
            case 8:
                return b0(j - ((long) e0()));
            case 9:
                int i2 = (int) j;
                if (this.f624b != i2) {
                    EnumC2393a.MINUTE_OF_HOUR.m877Y(i2);
                    return m707D(this.f623a, i2, this.f625c, this.f626d);
                }
                return this;
            case 10:
                return m713Z(j - ((long) ((this.f623a * 60) + this.f624b)));
            case 11:
                return m712Y(j - ((long) (this.f623a % 12)));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return m712Y(j - ((long) (this.f623a % 12)));
            case 13:
                int i3 = (int) j;
                if (this.f623a != i3) {
                    EnumC2393a.HOUR_OF_DAY.m877Y(i3);
                    return m707D(i3, this.f624b, this.f625c, this.f626d);
                }
                return this;
            case 14:
                if (j == 24) {
                    j = 0;
                }
                int i4 = (int) j;
                if (this.f623a != i4) {
                    EnumC2393a.HOUR_OF_DAY.m877Y(i4);
                    return m707D(i4, this.f624b, this.f625c, this.f626d);
                }
                return this;
            case 15:
                return m712Y((j - ((long) (this.f623a / 12))) * 12);
            default:
                throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? m710K(interfaceC2408p) : super.mo666g(interfaceC2408p);
    }

    public final LocalTime g0(int i) {
        if (this.f626d == i) {
            return this;
        }
        EnumC2393a.NANO_OF_SECOND.m877Y(i);
        return m707D(this.f623a, this.f624b, this.f625c, i);
    }

    public int getHour() {
        return this.f623a;
    }

    public int getMinute() {
        return this.f624b;
    }

    public int getNano() {
        return this.f626d;
    }

    public int getSecond() {
        return this.f625c;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo750j(LocalDate localDate) {
        return (LocalTime) localDate.mo665e(this);
    }

    public final void h0(DataOutput dataOutput) {
        if (this.f626d != 0) {
            dataOutput.writeByte(this.f623a);
            dataOutput.writeByte(this.f624b);
            dataOutput.writeByte(this.f625c);
            dataOutput.writeInt(this.f626d);
            return;
        }
        if (this.f625c != 0) {
            dataOutput.writeByte(this.f623a);
            dataOutput.writeByte(this.f624b);
            dataOutput.writeByte(~this.f625c);
            return;
        }
        byte b2 = this.f624b;
        byte b3 = this.f623a;
        if (b2 == 0) {
            dataOutput.writeByte(~b3);
        } else {
            dataOutput.writeByte(b3);
            dataOutput.writeByte(~this.f624b);
        }
    }

    public final int hashCode() {
        long jD0 = d0();
        return (int) (jD0 ^ (jD0 >>> 32));
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? ((EnumC2393a) interfaceC2408p).m878Z() : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.NANO_OF_DAY ? d0() : interfaceC2408p == EnumC2393a.MICRO_OF_DAY ? d0() / 1000 : m710K(interfaceC2408p) : interfaceC2408p.mo875R(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        LocalTime localTimeM708I = m708I(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, localTimeM708I);
        }
        long jD0 = localTimeM708I.d0() - d0();
        switch (AbstractC2382h.f810b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return jD0;
            case 2:
                return jD0 / 1000;
            case 3:
                return jD0 / 1000000;
            case 4:
                return jD0 / 1000000000;
            case 5:
                return jD0 / 60000000000L;
            case 6:
                return jD0 / 3600000000000L;
            case 7:
                return jD0 / 43200000000000L;
            default:
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final int compareTo(LocalTime localTime) {
        int iCompare = Integer.compare(this.f623a, localTime.f623a);
        return (iCompare == 0 && (iCompare = Integer.compare(this.f624b, localTime.f624b)) == 0 && (iCompare = Integer.compare(this.f625c, localTime.f625c)) == 0) ? Integer.compare(this.f626d, localTime.f626d) : iCompare;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b2 = this.f623a;
        byte b3 = this.f624b;
        byte b4 = this.f625c;
        int i = this.f626d;
        sb.append(b2 < 10 ? MVEL.VERSION_SUB : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append((int) b2);
        sb.append(b3 < 10 ? ":0" : ":");
        sb.append((int) b3);
        if (b4 > 0 || i > 0) {
            sb.append(b4 < 10 ? ":0" : ":");
            sb.append((int) b4);
            if (i > 0) {
                sb.append('.');
                if (i % DurationKt.NANOS_IN_MILLIS == 0) {
                    sb.append(Integer.toString((i / DurationKt.NANOS_IN_MILLIS) + 1000).substring(1));
                } else if (i % 1000 == 0) {
                    sb.append(Integer.toString((i / 1000) + DurationKt.NANOS_IN_MILLIS).substring(1));
                } else {
                    sb.append(Integer.toString(i + 1000000000).substring(1));
                }
            }
        }
        return sb.toString();
    }

    public static LocalTime of(int i, int i2) {
        EnumC2393a.HOUR_OF_DAY.m877Y(i);
        if (i2 == 0) {
            return f622h[i];
        }
        EnumC2393a.MINUTE_OF_HOUR.m877Y(i2);
        return new LocalTime(i, i2, 0, 0);
    }
}
