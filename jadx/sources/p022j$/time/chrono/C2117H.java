package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.AbstractC2109c;
import p022j$.time.C2173h;
import p022j$.time.LocalDate;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.chrono.H */
/* JADX INFO: loaded from: classes2.dex */
public final class C2117H extends AbstractC2122d {
    private static final long serialVersionUID = -8722293800195731463L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f677a;

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: y */
    public final ChronoLocalDateTime mo613y(C2173h c2173h) {
        return new C2124f(this, c2173h);
    }

    public C2117H(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.f677a = localDate;
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: a */
    public final InterfaceC2129k mo610a() {
        return C2115F.f675c;
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    public final int hashCode() {
        C2115F.f675c.getClass();
        return this.f677a.hashCode() ^ 146118545;
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: A */
    public final InterfaceC2130l mo666A() {
        return m679I() >= 1 ? EnumC2118I.f678BE : EnumC2118I.BEFORE_BE;
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo770i(this);
        }
        if (!AbstractC2104a.m555r(this, interfaceC2202q)) {
            throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        int i = AbstractC2116G.f676a[enumC2186a.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.f677a.mo577j(interfaceC2202q);
        }
        if (i != 4) {
            return C2115F.f675c.m675i(enumC2186a);
        }
        C2206u c2206u = EnumC2186a.YEAR.f827b;
        return C2206u.m784e(1L, m679I() <= 0 ? (-(c2206u.f852a + 543)) + 1 : 543 + c2206u.f855d);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            int i = AbstractC2116G.f676a[((EnumC2186a) interfaceC2202q).ordinal()];
            if (i == 4) {
                int iM679I = m679I();
                if (iM679I < 1) {
                    iM679I = 1 - iM679I;
                }
                return iM679I;
            }
            if (i == 5) {
                return ((((long) m679I()) * 12) + ((long) this.f677a.f641b)) - 1;
            }
            if (i == 6) {
                return m679I();
            }
            if (i != 7) {
                return this.f677a.mo580w(interfaceC2202q);
            }
            return m679I() < 1 ? 0 : 1;
        }
        return interfaceC2202q.mo772k(this);
    }

    /* JADX INFO: renamed from: I */
    public final int m679I() {
        return this.f677a.getYear() + 543;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2117H mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
            if (mo580w(enumC2186a) == j) {
                return this;
            }
            int[] iArr = AbstractC2116G.f676a;
            int i = iArr[enumC2186a.ordinal()];
            if (i == 4) {
                int iM786a = C2115F.f675c.m675i(enumC2186a).m786a(j, enumC2186a);
                int i2 = iArr[enumC2186a.ordinal()];
                if (i2 == 4) {
                    LocalDate localDate = this.f677a;
                    if (m679I() < 1) {
                        iM786a = 1 - iM786a;
                    }
                    return m681K(localDate.m609R(iM786a - 543));
                }
                if (i2 == 6) {
                    return m681K(this.f677a.m609R(iM786a - 543));
                }
                if (i2 == 7) {
                    return m681K(this.f677a.m609R((-542) - m679I()));
                }
            } else {
                if (i == 5) {
                    C2115F.f675c.m675i(enumC2186a).m787b(j, enumC2186a);
                    long jM679I = ((long) m679I()) * 12;
                    LocalDate localDate2 = this.f677a;
                    return m681K(localDate2.m605M(j - ((jM679I + ((long) localDate2.f641b)) - 1)));
                }
                if (i == 6 || i == 7) {
                }
            }
            return m681K(this.f677a.mo588c(j, interfaceC2202q));
        }
        return (C2117H) super.mo588c(j, interfaceC2202q);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: H */
    public final InterfaceC2120b mo590i(InterfaceC2200o interfaceC2200o) {
        return (C2117H) super.mo590i(interfaceC2200o);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        return (C2117H) super.mo590i(localDate);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: G */
    public final InterfaceC2120b mo670G(long j) {
        return m681K(this.f677a.m606N(j));
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: F */
    public final InterfaceC2120b mo669F(long j) {
        return m681K(this.f677a.m605M(j));
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: E */
    public final InterfaceC2120b mo668E(long j) {
        return m681K(this.f677a.plusDays(j));
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2120b mo589d(long j, InterfaceC2204s interfaceC2204s) {
        return (C2117H) super.mo589d(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2198m mo589d(long j, InterfaceC2204s interfaceC2204s) {
        return (C2117H) super.mo589d(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: D */
    public final InterfaceC2120b mo591r(long j, InterfaceC2204s interfaceC2204s) {
        return (C2117H) super.mo591r(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return (C2117H) super.mo591r(j, enumC2187b);
    }

    /* JADX INFO: renamed from: K */
    public final C2117H m681K(LocalDate localDate) {
        return localDate.equals(this.f677a) ? this : new C2117H(localDate);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: x */
    public final long mo612x() {
        return this.f677a.mo612x();
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2117H) {
            return this.f677a.equals(((C2117H) obj).f677a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2113D((byte) 8, this);
    }
}
