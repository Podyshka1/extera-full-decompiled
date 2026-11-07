package j$.time;

import j$.nio.file.C2148b;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
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

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class LocalTime implements Temporal, InterfaceC2266m, Comparable<LocalTime>, Serializable {

    /* JADX INFO: renamed from: e */
    public static final LocalTime f618e;

    /* JADX INFO: renamed from: f */
    public static final LocalTime f619f;

    /* JADX INFO: renamed from: g */
    public static final LocalTime f620g;

    /* JADX INFO: renamed from: h */
    public static final LocalTime[] f621h = new LocalTime[24];
    private static final long serialVersionUID = 6414437269572265201L;

    /* JADX INFO: renamed from: a */
    public final byte f622a;

    /* JADX INFO: renamed from: b */
    public final byte f623b;

    /* JADX INFO: renamed from: c */
    public final byte f624c;

    /* JADX INFO: renamed from: d */
    public final int f625d;

    static {
        int i = 0;
        while (true) {
            LocalTime[] localTimeArr = f621h;
            if (i >= localTimeArr.length) {
                LocalTime localTime = localTimeArr[0];
                f620g = localTime;
                LocalTime localTime2 = localTimeArr[12];
                f618e = localTime;
                f619f = new LocalTime(23, 59, 59, 999999999);
                return;
            }
            localTimeArr[i] = new LocalTime(i, 0, 0, 0);
            i++;
        }
    }

    public LocalTime(int i, int i2, int i3, int i4) {
        this.f622a = (byte) i;
        this.f623b = (byte) i2;
        this.f624c = (byte) i3;
        this.f625d = i4;
    }

    /* JADX INFO: renamed from: D */
    public static LocalTime m680D(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? f621h[i] : new LocalTime(i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: I */
    public static LocalTime m681I(InterfaceC2265l interfaceC2265l) {
        Objects.requireNonNull(interfaceC2265l, "temporal");
        LocalTime localTime = (LocalTime) interfaceC2265l.mo530d(AbstractC2270q.f853g);
        if (localTime != null) {
            return localTime;
        }
        C2148b.m613f("Unable to obtain LocalTime from TemporalAccessor: ", interfaceC2265l, " of type ", interfaceC2265l.getClass().getName());
        return null;
    }

    /* JADX INFO: renamed from: S */
    public static LocalTime m682S(long j) {
        EnumC2254a.NANO_OF_DAY.a0(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (((long) i) * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (((long) i2) * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return m680D(i, i2, i3, (int) (j3 - (((long) i3) * 1000000000)));
    }

    public static LocalTime e0(DataInput dataInput) throws IOException {
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
        EnumC2254a.HOUR_OF_DAY.a0(i);
        EnumC2254a.MINUTE_OF_HOUR.a0(i2);
        EnumC2254a.SECOND_OF_MINUTE.a0(i3);
        EnumC2254a.NANO_OF_SECOND.a0(i4);
        return m680D(i, i2, i3, i4);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2249o((byte) 4, this);
    }

    /* JADX INFO: renamed from: K */
    public final int m683K(InterfaceC2269p interfaceC2269p) {
        switch (AbstractC2243i.f807a[((EnumC2254a) interfaceC2269p).ordinal()]) {
            case 1:
                return this.f625d;
            case 2:
                throw new C2271r("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.f625d / 1000;
            case 4:
                throw new C2271r("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.f625d / DurationKt.NANOS_IN_MILLIS;
            case 6:
                return (int) (f0() / 1000000);
            case 7:
                return this.f624c;
            case 8:
                return g0();
            case 9:
                return this.f623b;
            case 10:
                return (this.f622a * 60) + this.f623b;
            case 11:
                return this.f622a % 12;
            case 12:
                int i = this.f622a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case 13:
                return this.f622a;
            case 14:
                byte b2 = this.f622a;
                if (b2 == 0) {
                    return 24;
                }
                return b2;
            case 15:
                return this.f622a / 12;
            default:
                throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final LocalTime mo653b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalTime) temporalUnit.mo828s(this, j);
        }
        switch (AbstractC2243i.f808b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return c0(j);
            case 2:
                return c0((j % 86400000000L) * 1000);
            case 3:
                return c0((j % DurationKt.MILLIS_IN_DAY) * 1000000);
            case 4:
                return d0(j);
            case 5:
                return b0(j);
            case 6:
                return a0(j);
            case 7:
                return a0((j % 2) * 12);
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return null;
        }
    }

    public final LocalTime a0(long j) {
        return j == 0 ? this : m680D(((((int) (j % 24)) + this.f622a) + 24) % 24, this.f623b, this.f624c, this.f625d);
    }

    public final LocalTime b0(long j) {
        if (j != 0) {
            int i = (this.f622a * 60) + this.f623b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return m680D(i2 / 60, i2 % 60, this.f624c, this.f625d);
            }
        }
        return this;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo654c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo653b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo653b(j2, temporalUnit);
    }

    public final LocalTime c0(long j) {
        if (j != 0) {
            long jF0 = f0();
            long j2 = (((j % 86400000000000L) + jF0) + 86400000000000L) % 86400000000000L;
            if (jF0 != j2) {
                return m680D((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        if (c2213e == AbstractC2270q.f848b || c2213e == AbstractC2270q.f847a || c2213e == AbstractC2270q.f851e || c2213e == AbstractC2270q.f850d) {
            return null;
        }
        if (c2213e == AbstractC2270q.f853g) {
            return this;
        }
        if (c2213e == AbstractC2270q.f852f) {
            return null;
        }
        return c2213e == AbstractC2270q.f849c ? ChronoUnit.NANOS : c2213e.m766l(this);
    }

    public final LocalTime d0(long j) {
        if (j != 0) {
            int i = (this.f623b * 60) + (this.f622a * 3600) + this.f624c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return m680D(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.f625d);
            }
        }
        return this;
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        return temporal.mo652a(f0(), EnumC2254a.NANO_OF_DAY);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalTime) {
            LocalTime localTime = (LocalTime) obj;
            if (this.f622a == localTime.f622a && this.f623b == localTime.f623b && this.f624c == localTime.f624c && this.f625d == localTime.f625d) {
                return true;
            }
        }
        return false;
    }

    public final long f0() {
        return (((long) this.f624c) * 1000000000) + (((long) this.f623b) * 60000000000L) + (((long) this.f622a) * 3600000000000L) + ((long) this.f625d);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? m683K(interfaceC2269p) : super.mo642g(interfaceC2269p);
    }

    public final int g0() {
        return (this.f623b * 60) + (this.f622a * 3600) + this.f624c;
    }

    public int getHour() {
        return this.f622a;
    }

    public int getMinute() {
        return this.f623b;
    }

    public int getNano() {
        return this.f625d;
    }

    public int getSecond() {
        return this.f624c;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo716j(LocalDate localDate) {
        return (LocalTime) localDate.mo641e(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public final LocalTime mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (LocalTime) interfaceC2269p.mo832Y(this, j);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        enumC2254a.a0(j);
        switch (AbstractC2243i.f807a[enumC2254a.ordinal()]) {
            case 1:
                return i0((int) j);
            case 2:
                return m682S(j);
            case 3:
                return i0(((int) j) * 1000);
            case 4:
                return m682S(j * 1000);
            case 5:
                return i0(((int) j) * DurationKt.NANOS_IN_MILLIS);
            case 6:
                return m682S(j * 1000000);
            case 7:
                int i = (int) j;
                if (this.f624c != i) {
                    EnumC2254a.SECOND_OF_MINUTE.a0(i);
                    return m680D(this.f622a, this.f623b, i, this.f625d);
                }
                return this;
            case 8:
                return d0(j - ((long) g0()));
            case 9:
                int i2 = (int) j;
                if (this.f623b != i2) {
                    EnumC2254a.MINUTE_OF_HOUR.a0(i2);
                    return m680D(this.f622a, i2, this.f624c, this.f625d);
                }
                return this;
            case 10:
                return b0(j - ((long) ((this.f622a * 60) + this.f623b)));
            case 11:
                return a0(j - ((long) (this.f622a % 12)));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return a0(j - ((long) (this.f622a % 12)));
            case 13:
                int i3 = (int) j;
                if (this.f622a != i3) {
                    EnumC2254a.HOUR_OF_DAY.a0(i3);
                    return m680D(i3, this.f623b, this.f624c, this.f625d);
                }
                return this;
            case 14:
                if (j == 24) {
                    j = 0;
                }
                int i4 = (int) j;
                if (this.f622a != i4) {
                    EnumC2254a.HOUR_OF_DAY.a0(i4);
                    return m680D(i4, this.f623b, this.f624c, this.f625d);
                }
                return this;
            case 15:
                return a0((j - ((long) (this.f622a / 12))) * 12);
            default:
                throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
    }

    public final int hashCode() {
        long jF0 = f0();
        return (int) (jF0 ^ (jF0 >>> 32));
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? ((EnumC2254a) interfaceC2269p).b0() : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    public final LocalTime i0(int i) {
        if (this.f625d == i) {
            return this;
        }
        EnumC2254a.NANO_OF_SECOND.a0(i);
        return m680D(this.f622a, this.f623b, this.f624c, i);
    }

    public final void j0(DataOutput dataOutput) {
        if (this.f625d != 0) {
            dataOutput.writeByte(this.f622a);
            dataOutput.writeByte(this.f623b);
            dataOutput.writeByte(this.f624c);
            dataOutput.writeInt(this.f625d);
            return;
        }
        if (this.f624c != 0) {
            dataOutput.writeByte(this.f622a);
            dataOutput.writeByte(this.f623b);
            dataOutput.writeByte(~this.f624c);
            return;
        }
        byte b2 = this.f623b;
        byte b3 = this.f622a;
        if (b2 == 0) {
            dataOutput.writeByte(~b3);
        } else {
            dataOutput.writeByte(b3);
            dataOutput.writeByte(~this.f623b);
        }
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.NANO_OF_DAY ? f0() : interfaceC2269p == EnumC2254a.MICRO_OF_DAY ? f0() / 1000 : m683K(interfaceC2269p) : interfaceC2269p.mo831S(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        LocalTime localTimeM681I = m681I(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, localTimeM681I);
        }
        long jF0 = localTimeM681I.f0() - f0();
        switch (AbstractC2243i.f808b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return jF0;
            case 2:
                return jF0 / 1000;
            case 3:
                return jF0 / 1000000;
            case 4:
                return jF0 / 1000000000;
            case 5:
                return jF0 / 60000000000L;
            case 6:
                return jF0 / 3600000000000L;
            case 7:
                return jF0 / 43200000000000L;
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final int compareTo(LocalTime localTime) {
        int iCompare = Integer.compare(this.f622a, localTime.f622a);
        return (iCompare == 0 && (iCompare = Integer.compare(this.f623b, localTime.f623b)) == 0 && (iCompare = Integer.compare(this.f624c, localTime.f624c)) == 0) ? Integer.compare(this.f625d, localTime.f625d) : iCompare;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b2 = this.f622a;
        byte b3 = this.f623b;
        byte b4 = this.f624c;
        int i = this.f625d;
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
}
