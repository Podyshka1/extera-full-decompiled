package j$.time;

import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
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

/* JADX INFO: renamed from: j$.time.j */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2162j implements Temporal, InterfaceC2185m, Comparable, Serializable {

    /* JADX INFO: renamed from: e */
    public static final C2162j f651e;

    /* JADX INFO: renamed from: f */
    public static final C2162j f652f;

    /* JADX INFO: renamed from: g */
    public static final C2162j f653g;

    /* JADX INFO: renamed from: h */
    public static final C2162j[] f654h = new C2162j[24];
    private static final long serialVersionUID = 6414437269572265201L;

    /* JADX INFO: renamed from: a */
    public final byte f655a;

    /* JADX INFO: renamed from: b */
    public final byte f656b;

    /* JADX INFO: renamed from: c */
    public final byte f657c;

    /* JADX INFO: renamed from: d */
    public final int f658d;

    static {
        int i = 0;
        while (true) {
            C2162j[] c2162jArr = f654h;
            if (i >= c2162jArr.length) {
                C2162j c2162j = c2162jArr[0];
                f653g = c2162j;
                C2162j c2162j2 = c2162jArr[12];
                f651e = c2162j;
                f652f = new C2162j(23, 59, 59, 999999999);
                return;
            }
            c2162jArr[i] = new C2162j(i, 0, 0, 0);
            i++;
        }
    }

    public C2162j(int i, int i2, int i3, int i4) {
        this.f655a = (byte) i;
        this.f656b = (byte) i2;
        this.f657c = (byte) i3;
        this.f658d = i4;
    }

    /* JADX INFO: renamed from: B */
    public static C2162j m693B(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? f654h[i] : new C2162j(i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: G */
    public static C2162j m694G(InterfaceC2184l interfaceC2184l) {
        Objects.requireNonNull(interfaceC2184l, "temporal");
        C2162j c2162j = (C2162j) interfaceC2184l.mo482d(AbstractC2189q.f703g);
        if (c2162j != null) {
            return c2162j;
        }
        C2159g.m689f("Unable to obtain LocalTime from TemporalAccessor: ", interfaceC2184l, " of type ", interfaceC2184l.getClass().getName());
        return null;
    }

    /* JADX INFO: renamed from: P */
    public static C2162j m695P(int i, int i2, int i3, int i4) {
        EnumC2173a.HOUR_OF_DAY.m719X(i);
        EnumC2173a.MINUTE_OF_HOUR.m719X(i2);
        EnumC2173a.SECOND_OF_MINUTE.m719X(i3);
        EnumC2173a.NANO_OF_SECOND.m719X(i4);
        return m693B(i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: V */
    public static C2162j m696V(long j) {
        EnumC2173a.NANO_OF_DAY.m719X(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (((long) i) * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (((long) i2) * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return m693B(i, i2, i3, (int) (j3 - (((long) i3) * 1000000000)));
    }

    public static C2162j c0(DataInput dataInput) throws IOException {
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
        return m695P(i3, i4, i2, i);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2170r((byte) 4, this);
    }

    /* JADX INFO: renamed from: I */
    public final int m697I(InterfaceC2188p interfaceC2188p) {
        switch (AbstractC2161i.f649a[((EnumC2173a) interfaceC2188p).ordinal()]) {
            case 1:
                return this.f658d;
            case 2:
                throw new C2191s("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.f658d / 1000;
            case 4:
                throw new C2191s("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.f658d / DurationKt.NANOS_IN_MILLIS;
            case 6:
                return (int) (d0() / 1000000);
            case 7:
                return this.f657c;
            case 8:
                return e0();
            case 9:
                return this.f656b;
            case 10:
                return (this.f655a * 60) + this.f656b;
            case 11:
                return this.f655a % 12;
            case 12:
                int i = this.f655a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case 13:
                return this.f655a;
            case 14:
                byte b2 = this.f655a;
                if (b2 == 0) {
                    return 24;
                }
                return b2;
            case 15:
                return this.f655a / 12;
            default:
                throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public final C2162j mo497b(long j, InterfaceC2190r interfaceC2190r) {
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return (C2162j) interfaceC2190r.mo714t(this, j);
        }
        switch (AbstractC2161i.f650b[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return a0(j);
            case 2:
                return a0((j % 86400000000L) * 1000);
            case 3:
                return a0((j % DurationKt.MILLIS_IN_DAY) * 1000000);
            case 4:
                return b0(j);
            case 5:
                return m700Z(j);
            case 6:
                return m699Y(j);
            case 7:
                return m699Y((j % 2) * 12);
            default:
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return null;
        }
    }

    /* JADX INFO: renamed from: Y */
    public final C2162j m699Y(long j) {
        return j == 0 ? this : m693B(((((int) (j % 24)) + this.f655a) + 24) % 24, this.f656b, this.f657c, this.f658d);
    }

    /* JADX INFO: renamed from: Z */
    public final C2162j m700Z(long j) {
        if (j != 0) {
            int i = (this.f655a * 60) + this.f656b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return m693B(i2 / 60, i2 % 60, this.f657c, this.f658d);
            }
        }
        return this;
    }

    public final C2162j a0(long j) {
        if (j != 0) {
            long jD0 = d0();
            long j2 = (((j % 86400000000000L) + jD0) + 86400000000000L) % 86400000000000L;
            if (jD0 != j2) {
                return m693B((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    public final C2162j b0(long j) {
        if (j != 0) {
            int i = (this.f656b * 60) + (this.f655a * 3600) + this.f657c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return m693B(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.f658d);
            }
        }
        return this;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo498c(long j, InterfaceC2190r interfaceC2190r) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo497b(LongCompanionObject.MAX_VALUE, interfaceC2190r);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo497b(j2, interfaceC2190r);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        if (c2196x == AbstractC2189q.f698b || c2196x == AbstractC2189q.f697a || c2196x == AbstractC2189q.f701e || c2196x == AbstractC2189q.f700d) {
            return null;
        }
        if (c2196x == AbstractC2189q.f703g) {
            return this;
        }
        if (c2196x == AbstractC2189q.f702f) {
            return null;
        }
        return c2196x == AbstractC2189q.f699c ? ChronoUnit.NANOS : c2196x.m734m(this);
    }

    public final long d0() {
        return (((long) this.f657c) * 1000000000) + (((long) this.f656b) * 60000000000L) + (((long) this.f655a) * 3600000000000L) + ((long) this.f658d);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        return temporal.mo496a(d0(), EnumC2173a.NANO_OF_DAY);
    }

    public final int e0() {
        return (this.f656b * 60) + (this.f655a * 3600) + this.f657c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2162j) {
            C2162j c2162j = (C2162j) obj;
            if (this.f655a == c2162j.f655a && this.f656b == c2162j.f656b && this.f657c == c2162j.f657c && this.f658d == c2162j.f658d) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public final C2162j mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (C2162j) interfaceC2188p.mo718V(this, j);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        enumC2173a.m719X(j);
        switch (AbstractC2161i.f649a[enumC2173a.ordinal()]) {
            case 1:
                return g0((int) j);
            case 2:
                return m696V(j);
            case 3:
                return g0(((int) j) * 1000);
            case 4:
                return m696V(j * 1000);
            case 5:
                return g0(((int) j) * DurationKt.NANOS_IN_MILLIS);
            case 6:
                return m696V(j * 1000000);
            case 7:
                int i = (int) j;
                if (this.f657c != i) {
                    EnumC2173a.SECOND_OF_MINUTE.m719X(i);
                    return m693B(this.f655a, this.f656b, i, this.f658d);
                }
                return this;
            case 8:
                return b0(j - ((long) e0()));
            case 9:
                int i2 = (int) j;
                if (this.f656b != i2) {
                    EnumC2173a.MINUTE_OF_HOUR.m719X(i2);
                    return m693B(this.f655a, i2, this.f657c, this.f658d);
                }
                return this;
            case 10:
                return m700Z(j - ((long) ((this.f655a * 60) + this.f656b)));
            case 11:
                return m699Y(j - ((long) (this.f655a % 12)));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return m699Y(j - ((long) (this.f655a % 12)));
            case 13:
                int i3 = (int) j;
                if (this.f655a != i3) {
                    EnumC2173a.HOUR_OF_DAY.m719X(i3);
                    return m693B(i3, this.f656b, this.f657c, this.f658d);
                }
                return this;
            case 14:
                if (j == 24) {
                    j = 0;
                }
                int i4 = (int) j;
                if (this.f655a != i4) {
                    EnumC2173a.HOUR_OF_DAY.m719X(i4);
                    return m693B(i4, this.f656b, this.f657c, this.f658d);
                }
                return this;
            case 15:
                return m699Y((j - ((long) (this.f655a / 12))) * 12);
            default:
                throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? m697I(interfaceC2188p) : super.mo484g(interfaceC2188p);
    }

    public final C2162j g0(int i) {
        if (this.f658d == i) {
            return this;
        }
        EnumC2173a.NANO_OF_SECOND.m719X(i);
        return m693B(this.f655a, this.f656b, this.f657c, i);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo559j(LocalDate localDate) {
        return (C2162j) localDate.mo483e(this);
    }

    public final void h0(DataOutput dataOutput) {
        if (this.f658d != 0) {
            dataOutput.writeByte(this.f655a);
            dataOutput.writeByte(this.f656b);
            dataOutput.writeByte(this.f657c);
            dataOutput.writeInt(this.f658d);
            return;
        }
        if (this.f657c != 0) {
            dataOutput.writeByte(this.f655a);
            dataOutput.writeByte(this.f656b);
            dataOutput.writeByte(~this.f657c);
            return;
        }
        byte b2 = this.f656b;
        byte b3 = this.f655a;
        if (b2 == 0) {
            dataOutput.writeByte(~b3);
        } else {
            dataOutput.writeByte(b3);
            dataOutput.writeByte(~this.f656b);
        }
    }

    public final int hashCode() {
        long jD0 = d0();
        return (int) (jD0 ^ (jD0 >>> 32));
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? ((EnumC2173a) interfaceC2188p).m720Y() : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.NANO_OF_DAY ? d0() : interfaceC2188p == EnumC2173a.MICRO_OF_DAY ? d0() / 1000 : m697I(interfaceC2188p) : interfaceC2188p.mo717P(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        C2162j c2162jM694G = m694G(temporal);
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return interfaceC2190r.between(this, c2162jM694G);
        }
        long jD0 = c2162jM694G.d0() - d0();
        switch (AbstractC2161i.f650b[((ChronoUnit) interfaceC2190r).ordinal()]) {
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
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return 0L;
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C2162j c2162j) {
        int iCompare = Integer.compare(this.f655a, c2162j.f655a);
        return (iCompare == 0 && (iCompare = Integer.compare(this.f656b, c2162j.f656b)) == 0 && (iCompare = Integer.compare(this.f657c, c2162j.f657c)) == 0) ? Integer.compare(this.f658d, c2162j.f658d) : iCompare;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b2 = this.f655a;
        byte b3 = this.f656b;
        byte b4 = this.f657c;
        int i = this.f658d;
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
