package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.url._UrlKt;
import org.mvel2.MVEL;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: renamed from: j$.time.h */
/* JADX INFO: loaded from: classes2.dex */
public final class C2034h implements InterfaceC2059m, InterfaceC2061o, Comparable, Serializable {

    /* JADX INFO: renamed from: e */
    public static final C2034h f558e;

    /* JADX INFO: renamed from: f */
    public static final C2034h f559f;

    /* JADX INFO: renamed from: g */
    public static final C2034h f560g;

    /* JADX INFO: renamed from: h */
    public static final C2034h[] f561h = new C2034h[24];
    private static final long serialVersionUID = 6414437269572265201L;

    /* JADX INFO: renamed from: a */
    public final byte f562a;

    /* JADX INFO: renamed from: b */
    public final byte f563b;

    /* JADX INFO: renamed from: c */
    public final byte f564c;

    /* JADX INFO: renamed from: d */
    public final int f565d;

    static {
        int i = 0;
        while (true) {
            C2034h[] c2034hArr = f561h;
            if (i < c2034hArr.length) {
                c2034hArr[i] = new C2034h(i, 0, 0, 0);
                i++;
            } else {
                C2034h c2034h = c2034hArr[0];
                f560g = c2034h;
                C2034h c2034h2 = c2034hArr[12];
                f558e = c2034h;
                f559f = new C2034h(23, 59, 59, 999999999);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: F */
    public static C2034h m617F(long j) {
        EnumC2047a.NANO_OF_DAY.m649r(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (((long) i) * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (((long) i2) * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return m615A(i, i2, i3, (int) (j3 - (((long) i3) * 1000000000)));
    }

    /* JADX INFO: renamed from: D */
    public static C2034h m616D(InterfaceC2060n interfaceC2060n) {
        Objects.requireNonNull(interfaceC2060n, "temporal");
        C2034h c2034h = (C2034h) interfaceC2060n.mo458k(AbstractC2064r.f616g);
        if (c2034h != null) {
            return c2034h;
        }
        throw new C1969b("Unable to obtain LocalTime from TemporalAccessor: " + interfaceC2060n + " of type " + interfaceC2060n.getClass().getName());
    }

    /* JADX INFO: renamed from: A */
    public static C2034h m615A(int i, int i2, int i3, int i4) {
        if ((i2 | i3 | i4) == 0) {
            return f561h[i];
        }
        return new C2034h(i, i2, i3, i4);
    }

    public C2034h(int i, int i2, int i3, int i4) {
        this.f562a = (byte) i;
        this.f563b = (byte) i2;
        this.f564c = (byte) i3;
        this.f565d = i4;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return ((EnumC2047a) interfaceC2063q).m650v();
        }
        return interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        return AbstractC2064r.m658d(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return m619E(interfaceC2063q);
        }
        return AbstractC2064r.m655a(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (interfaceC2063q == EnumC2047a.NANO_OF_DAY) {
                return m625M();
            }
            if (interfaceC2063q == EnumC2047a.MICRO_OF_DAY) {
                return m625M() / 1000;
            }
            return m619E(interfaceC2063q);
        }
        return interfaceC2063q.mo647k(this);
    }

    /* JADX INFO: renamed from: E */
    public final int m619E(InterfaceC2063q interfaceC2063q) {
        switch (AbstractC2033g.f556a[((EnumC2047a) interfaceC2063q).ordinal()]) {
            case 1:
                return this.f565d;
            case 2:
                throw new C2066t("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.f565d / MediaDataController.MAX_STYLE_RUNS_COUNT;
            case 4:
                throw new C2066t("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.f565d / 1000000;
            case 6:
                return (int) (m625M() / 1000000);
            case 7:
                return this.f564c;
            case 8:
                return m626N();
            case 9:
                return this.f563b;
            case 10:
                return (this.f562a * 60) + this.f563b;
            case 11:
                return this.f562a % 12;
            case 12:
                int i = this.f562a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case 13:
                return this.f562a;
            case 14:
                byte b = this.f562a;
                if (b == 0) {
                    return 24;
                }
                return b;
            case 15:
                return this.f562a / 12;
            default:
                throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        localDate.getClass();
        return (C2034h) AbstractC1965a.m418a(localDate, this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final C2034h mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return (C2034h) interfaceC2063q.mo648n(this, j);
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        enumC2047a.m649r(j);
        switch (AbstractC2033g.f556a[enumC2047a.ordinal()]) {
            case 1:
                return m628P((int) j);
            case 2:
                return m617F(j);
            case 3:
                return m628P(((int) j) * MediaDataController.MAX_STYLE_RUNS_COUNT);
            case 4:
                return m617F(j * 1000);
            case 5:
                return m628P(((int) j) * 1000000);
            case 6:
                return m617F(j * 1000000);
            case 7:
                int i = (int) j;
                if (this.f564c != i) {
                    EnumC2047a.SECOND_OF_MINUTE.m649r(i);
                    return m615A(this.f562a, this.f563b, i, this.f565d);
                }
                return this;
            case 8:
                return m624K(j - ((long) m626N()));
            case 9:
                int i2 = (int) j;
                if (this.f563b != i2) {
                    EnumC2047a.MINUTE_OF_HOUR.m649r(i2);
                    return m615A(this.f562a, i2, this.f564c, this.f565d);
                }
                return this;
            case 10:
                return m622I(j - ((long) ((this.f562a * 60) + this.f563b)));
            case 11:
                return m621H(j - ((long) (this.f562a % 12)));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return m621H(j - ((long) (this.f562a % 12)));
            case 13:
                int i3 = (int) j;
                if (this.f562a != i3) {
                    EnumC2047a.HOUR_OF_DAY.m649r(i3);
                    return m615A(i3, this.f563b, this.f564c, this.f565d);
                }
                return this;
            case 14:
                if (j == 24) {
                    j = 0;
                }
                int i4 = (int) j;
                if (this.f562a != i4) {
                    EnumC2047a.HOUR_OF_DAY.m649r(i4);
                    return m615A(i4, this.f563b, this.f564c, this.f565d);
                }
                return this;
            case 15:
                return m621H((j - ((long) (this.f562a / 12))) * 12);
            default:
                throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
    }

    /* JADX INFO: renamed from: P */
    public final C2034h m628P(int i) {
        if (this.f565d == i) {
            return this;
        }
        EnumC2047a.NANO_OF_SECOND.m649r(i);
        return m615A(this.f562a, this.f563b, this.f564c, i);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public final C2034h mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (interfaceC2065s instanceof EnumC2048b) {
            switch (AbstractC2033g.f557b[((EnumC2048b) interfaceC2065s).ordinal()]) {
                case 1:
                    return m623J(j);
                case 2:
                    return m623J((j % 86400000000L) * 1000);
                case 3:
                    return m623J((j % 86400000) * 1000000);
                case 4:
                    return m624K(j);
                case 5:
                    return m622I(j);
                case 6:
                    return m621H(j);
                case 7:
                    return m621H((j % 2) * 12);
                default:
                    throw new C2066t("Unsupported unit: " + interfaceC2065s);
            }
        }
        return (C2034h) interfaceC2065s.mo651h(this, j);
    }

    /* JADX INFO: renamed from: H */
    public final C2034h m621H(long j) {
        return j == 0 ? this : m615A(((((int) (j % 24)) + this.f562a) + 24) % 24, this.f563b, this.f564c, this.f565d);
    }

    /* JADX INFO: renamed from: I */
    public final C2034h m622I(long j) {
        if (j != 0) {
            int i = (this.f562a * 60) + this.f563b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return m615A(i2 / 60, i2 % 60, this.f564c, this.f565d);
            }
        }
        return this;
    }

    /* JADX INFO: renamed from: K */
    public final C2034h m624K(long j) {
        if (j != 0) {
            int i = (this.f563b * 60) + (this.f562a * 3600) + this.f564c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return m615A(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.f565d);
            }
        }
        return this;
    }

    /* JADX INFO: renamed from: J */
    public final C2034h m623J(long j) {
        if (j != 0) {
            long jM625M = m625M();
            long j2 = (((j % 86400000000000L) + jM625M) + 86400000000000L) % 86400000000000L;
            if (jM625M != j2) {
                return m615A((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return j == Long.MIN_VALUE ? mo469d(Long.MAX_VALUE, enumC2048b).mo469d(1L, enumC2048b) : mo469d(-j, enumC2048b);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f611b || c2009a == AbstractC2064r.f610a || c2009a == AbstractC2064r.f614e || c2009a == AbstractC2064r.f613d) {
            return null;
        }
        if (c2009a == AbstractC2064r.f616g) {
            return this;
        }
        if (c2009a == AbstractC2064r.f615f) {
            return null;
        }
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.NANOS;
        }
        return c2009a.m593a(this);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return interfaceC2059m.mo468c(m625M(), EnumC2047a.NANO_OF_DAY);
    }

    /* JADX INFO: renamed from: N */
    public final int m626N() {
        return (this.f563b * 60) + (this.f562a * 3600) + this.f564c;
    }

    /* JADX INFO: renamed from: M */
    public final long m625M() {
        return (((long) this.f564c) * 1000000000) + (((long) this.f563b) * 60000000000L) + (((long) this.f562a) * 3600000000000L) + ((long) this.f565d);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C2034h c2034h) {
        int iCompare = Integer.compare(this.f562a, c2034h.f562a);
        return (iCompare == 0 && (iCompare = Integer.compare(this.f563b, c2034h.f563b)) == 0 && (iCompare = Integer.compare(this.f564c, c2034h.f564c)) == 0) ? Integer.compare(this.f565d, c2034h.f565d) : iCompare;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2034h) {
            C2034h c2034h = (C2034h) obj;
            if (this.f562a == c2034h.f562a && this.f563b == c2034h.f563b && this.f564c == c2034h.f564c && this.f565d == c2034h.f565d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long jM625M = m625M();
        return (int) (jM625M ^ (jM625M >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b = this.f562a;
        byte b2 = this.f563b;
        byte b3 = this.f564c;
        int i = this.f565d;
        sb.append(b < 10 ? MVEL.VERSION_SUB : _UrlKt.FRAGMENT_ENCODE_SET);
        sb.append((int) b);
        sb.append(b2 < 10 ? ":0" : ":");
        sb.append((int) b2);
        if (b3 > 0 || i > 0) {
            sb.append(b3 < 10 ? ":0" : ":");
            sb.append((int) b3);
            if (i > 0) {
                sb.append('.');
                if (i % 1000000 == 0) {
                    sb.append(Integer.toString((i / 1000000) + MediaDataController.MAX_STYLE_RUNS_COUNT).substring(1));
                } else if (i % MediaDataController.MAX_STYLE_RUNS_COUNT == 0) {
                    sb.append(Integer.toString((i / MediaDataController.MAX_STYLE_RUNS_COUNT) + 1000000).substring(1));
                } else {
                    sb.append(Integer.toString(i + Http2Connection.DEGRADED_PONG_TIMEOUT_NS).substring(1));
                }
            }
        }
        return sb.toString();
    }

    private Object writeReplace() {
        return new C2041o((byte) 4, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: Q */
    public final void m629Q(DataOutput dataOutput) throws IOException {
        if (this.f565d == 0) {
            if (this.f564c == 0) {
                if (this.f563b == 0) {
                    dataOutput.writeByte(~this.f562a);
                    return;
                } else {
                    dataOutput.writeByte(this.f562a);
                    dataOutput.writeByte(~this.f563b);
                    return;
                }
            }
            dataOutput.writeByte(this.f562a);
            dataOutput.writeByte(this.f563b);
            dataOutput.writeByte(~this.f564c);
            return;
        }
        dataOutput.writeByte(this.f562a);
        dataOutput.writeByte(this.f563b);
        dataOutput.writeByte(this.f564c);
        dataOutput.writeInt(this.f565d);
    }

    /* JADX INFO: renamed from: L */
    public static C2034h m618L(DataInput dataInput) throws IOException {
        int i;
        int i2;
        int i3 = dataInput.readByte();
        int i4 = 0;
        if (i3 < 0) {
            i3 = ~i3;
            i2 = 0;
            i = 0;
        } else {
            byte b = dataInput.readByte();
            if (b < 0) {
                int i5 = ~b;
                i = 0;
                i4 = i5;
                i2 = 0;
            } else {
                byte b2 = dataInput.readByte();
                if (b2 < 0) {
                    i2 = ~b2;
                    i = 0;
                    i4 = b;
                } else {
                    i = dataInput.readInt();
                    i4 = b;
                    i2 = b2;
                }
            }
        }
        EnumC2047a.HOUR_OF_DAY.m649r(i3);
        EnumC2047a.MINUTE_OF_HOUR.m649r(i4);
        EnumC2047a.SECOND_OF_MINUTE.m649r(i2);
        EnumC2047a.NANO_OF_SECOND.m649r(i);
        return m615A(i3, i4, i2, i);
    }
}
