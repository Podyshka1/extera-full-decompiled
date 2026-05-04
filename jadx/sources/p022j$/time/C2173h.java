package p022j$.time;

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
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.h */
/* JADX INFO: loaded from: classes2.dex */
public final class C2173h implements InterfaceC2198m, InterfaceC2200o, Comparable, Serializable {

    /* JADX INFO: renamed from: e */
    public static final C2173h f793e;

    /* JADX INFO: renamed from: f */
    public static final C2173h f794f;

    /* JADX INFO: renamed from: g */
    public static final C2173h f795g;

    /* JADX INFO: renamed from: h */
    public static final C2173h[] f796h = new C2173h[24];
    private static final long serialVersionUID = 6414437269572265201L;

    /* JADX INFO: renamed from: a */
    public final byte f797a;

    /* JADX INFO: renamed from: b */
    public final byte f798b;

    /* JADX INFO: renamed from: c */
    public final byte f799c;

    /* JADX INFO: renamed from: d */
    public final int f800d;

    static {
        int i = 0;
        while (true) {
            C2173h[] c2173hArr = f796h;
            if (i < c2173hArr.length) {
                c2173hArr[i] = new C2173h(i, 0, 0, 0);
                i++;
            } else {
                C2173h c2173h = c2173hArr[0];
                f795g = c2173h;
                C2173h c2173h2 = c2173hArr[12];
                f793e = c2173h;
                f794f = new C2173h(23, 59, 59, 999999999);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: F */
    public static C2173h m740F(long j) {
        EnumC2186a.NANO_OF_DAY.m774r(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (((long) i) * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (((long) i2) * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return m738A(i, i2, i3, (int) (j3 - (((long) i3) * 1000000000)));
    }

    /* JADX INFO: renamed from: D */
    public static C2173h m739D(InterfaceC2199n interfaceC2199n) {
        Objects.requireNonNull(interfaceC2199n, "temporal");
        C2173h c2173h = (C2173h) interfaceC2199n.mo578k(AbstractC2203r.f851g);
        if (c2173h != null) {
            return c2173h;
        }
        throw new C2108b("Unable to obtain LocalTime from TemporalAccessor: " + interfaceC2199n + " of type " + interfaceC2199n.getClass().getName());
    }

    /* JADX INFO: renamed from: A */
    public static C2173h m738A(int i, int i2, int i3, int i4) {
        if ((i2 | i3 | i4) == 0) {
            return f796h[i];
        }
        return new C2173h(i, i2, i3, i4);
    }

    public C2173h(int i, int i2, int i3, int i4) {
        this.f797a = (byte) i;
        this.f798b = (byte) i2;
        this.f799c = (byte) i3;
        this.f800d = i4;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return ((EnumC2186a) interfaceC2202q).m775v();
        }
        return interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        return AbstractC2203r.m783d(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return m742E(interfaceC2202q);
        }
        return AbstractC2203r.m780a(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (interfaceC2202q == EnumC2186a.NANO_OF_DAY) {
                return m748M();
            }
            if (interfaceC2202q == EnumC2186a.MICRO_OF_DAY) {
                return m748M() / 1000;
            }
            return m742E(interfaceC2202q);
        }
        return interfaceC2202q.mo772k(this);
    }

    /* JADX INFO: renamed from: E */
    public final int m742E(InterfaceC2202q interfaceC2202q) {
        switch (AbstractC2172g.f791a[((EnumC2186a) interfaceC2202q).ordinal()]) {
            case 1:
                return this.f800d;
            case 2:
                throw new C2205t("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.f800d / MediaDataController.MAX_STYLE_RUNS_COUNT;
            case 4:
                throw new C2205t("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.f800d / 1000000;
            case 6:
                return (int) (m748M() / 1000000);
            case 7:
                return this.f799c;
            case 8:
                return m749N();
            case 9:
                return this.f798b;
            case 10:
                return (this.f797a * 60) + this.f798b;
            case 11:
                return this.f797a % 12;
            case 12:
                int i = this.f797a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case 13:
                return this.f797a;
            case 14:
                byte b = this.f797a;
                if (b == 0) {
                    return 24;
                }
                return b;
            case 15:
                return this.f797a / 12;
            default:
                throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        localDate.getClass();
        return (C2173h) AbstractC2104a.m538a(localDate, this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public final C2173h mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return (C2173h) interfaceC2202q.mo773n(this, j);
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        enumC2186a.m774r(j);
        switch (AbstractC2172g.f791a[enumC2186a.ordinal()]) {
            case 1:
                return m751P((int) j);
            case 2:
                return m740F(j);
            case 3:
                return m751P(((int) j) * MediaDataController.MAX_STYLE_RUNS_COUNT);
            case 4:
                return m740F(j * 1000);
            case 5:
                return m751P(((int) j) * 1000000);
            case 6:
                return m740F(j * 1000000);
            case 7:
                int i = (int) j;
                if (this.f799c != i) {
                    EnumC2186a.SECOND_OF_MINUTE.m774r(i);
                    return m738A(this.f797a, this.f798b, i, this.f800d);
                }
                return this;
            case 8:
                return m747K(j - ((long) m749N()));
            case 9:
                int i2 = (int) j;
                if (this.f798b != i2) {
                    EnumC2186a.MINUTE_OF_HOUR.m774r(i2);
                    return m738A(this.f797a, i2, this.f799c, this.f800d);
                }
                return this;
            case 10:
                return m745I(j - ((long) ((this.f797a * 60) + this.f798b)));
            case 11:
                return m744H(j - ((long) (this.f797a % 12)));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return m744H(j - ((long) (this.f797a % 12)));
            case 13:
                int i3 = (int) j;
                if (this.f797a != i3) {
                    EnumC2186a.HOUR_OF_DAY.m774r(i3);
                    return m738A(i3, this.f798b, this.f799c, this.f800d);
                }
                return this;
            case 14:
                if (j == 24) {
                    j = 0;
                }
                int i4 = (int) j;
                if (this.f797a != i4) {
                    EnumC2186a.HOUR_OF_DAY.m774r(i4);
                    return m738A(i4, this.f798b, this.f799c, this.f800d);
                }
                return this;
            case 15:
                return m744H((j - ((long) (this.f797a / 12))) * 12);
            default:
                throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
    }

    /* JADX INFO: renamed from: P */
    public final C2173h m751P(int i) {
        if (this.f800d == i) {
            return this;
        }
        EnumC2186a.NANO_OF_SECOND.m774r(i);
        return m738A(this.f797a, this.f798b, this.f799c, i);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public final C2173h mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (interfaceC2204s instanceof EnumC2187b) {
            switch (AbstractC2172g.f792b[((EnumC2187b) interfaceC2204s).ordinal()]) {
                case 1:
                    return m746J(j);
                case 2:
                    return m746J((j % 86400000000L) * 1000);
                case 3:
                    return m746J((j % 86400000) * 1000000);
                case 4:
                    return m747K(j);
                case 5:
                    return m745I(j);
                case 6:
                    return m744H(j);
                case 7:
                    return m744H((j % 2) * 12);
                default:
                    throw new C2205t("Unsupported unit: " + interfaceC2204s);
            }
        }
        return (C2173h) interfaceC2204s.mo776h(this, j);
    }

    /* JADX INFO: renamed from: H */
    public final C2173h m744H(long j) {
        return j == 0 ? this : m738A(((((int) (j % 24)) + this.f797a) + 24) % 24, this.f798b, this.f799c, this.f800d);
    }

    /* JADX INFO: renamed from: I */
    public final C2173h m745I(long j) {
        if (j != 0) {
            int i = (this.f797a * 60) + this.f798b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return m738A(i2 / 60, i2 % 60, this.f799c, this.f800d);
            }
        }
        return this;
    }

    /* JADX INFO: renamed from: K */
    public final C2173h m747K(long j) {
        if (j != 0) {
            int i = (this.f798b * 60) + (this.f797a * 3600) + this.f799c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return m738A(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.f800d);
            }
        }
        return this;
    }

    /* JADX INFO: renamed from: J */
    public final C2173h m746J(long j) {
        if (j != 0) {
            long jM748M = m748M();
            long j2 = (((j % 86400000000000L) + jM748M) + 86400000000000L) % 86400000000000L;
            if (jM748M != j2) {
                return m738A((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return j == Long.MIN_VALUE ? mo589d(Long.MAX_VALUE, enumC2187b).mo589d(1L, enumC2187b) : mo589d(-j, enumC2187b);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f846b || c2148a == AbstractC2203r.f845a || c2148a == AbstractC2203r.f849e || c2148a == AbstractC2203r.f848d) {
            return null;
        }
        if (c2148a == AbstractC2203r.f851g) {
            return this;
        }
        if (c2148a == AbstractC2203r.f850f) {
            return null;
        }
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.NANOS;
        }
        return c2148a.m716a(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return interfaceC2198m.mo588c(m748M(), EnumC2186a.NANO_OF_DAY);
    }

    /* JADX INFO: renamed from: N */
    public final int m749N() {
        return (this.f798b * 60) + (this.f797a * 3600) + this.f799c;
    }

    /* JADX INFO: renamed from: M */
    public final long m748M() {
        return (((long) this.f799c) * 1000000000) + (((long) this.f798b) * 60000000000L) + (((long) this.f797a) * 3600000000000L) + ((long) this.f800d);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C2173h c2173h) {
        int iCompare = Integer.compare(this.f797a, c2173h.f797a);
        return (iCompare == 0 && (iCompare = Integer.compare(this.f798b, c2173h.f798b)) == 0 && (iCompare = Integer.compare(this.f799c, c2173h.f799c)) == 0) ? Integer.compare(this.f800d, c2173h.f800d) : iCompare;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2173h) {
            C2173h c2173h = (C2173h) obj;
            if (this.f797a == c2173h.f797a && this.f798b == c2173h.f798b && this.f799c == c2173h.f799c && this.f800d == c2173h.f800d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long jM748M = m748M();
        return (int) (jM748M ^ (jM748M >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b = this.f797a;
        byte b2 = this.f798b;
        byte b3 = this.f799c;
        int i = this.f800d;
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
        return new C2180o((byte) 4, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX INFO: renamed from: Q */
    public final void m752Q(DataOutput dataOutput) throws IOException {
        if (this.f800d == 0) {
            if (this.f799c == 0) {
                if (this.f798b == 0) {
                    dataOutput.writeByte(~this.f797a);
                    return;
                } else {
                    dataOutput.writeByte(this.f797a);
                    dataOutput.writeByte(~this.f798b);
                    return;
                }
            }
            dataOutput.writeByte(this.f797a);
            dataOutput.writeByte(this.f798b);
            dataOutput.writeByte(~this.f799c);
            return;
        }
        dataOutput.writeByte(this.f797a);
        dataOutput.writeByte(this.f798b);
        dataOutput.writeByte(this.f799c);
        dataOutput.writeInt(this.f800d);
    }

    /* JADX INFO: renamed from: L */
    public static C2173h m741L(DataInput dataInput) throws IOException {
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
        EnumC2186a.HOUR_OF_DAY.m774r(i3);
        EnumC2186a.MINUTE_OF_HOUR.m774r(i4);
        EnumC2186a.SECOND_OF_MINUTE.m774r(i2);
        EnumC2186a.NANO_OF_SECOND.m774r(i);
        return m738A(i3, i4, i2, i);
    }
}
