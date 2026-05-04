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

/* JADX INFO: renamed from: j$.time.chrono.B */
/* JADX INFO: loaded from: classes2.dex */
public final class C2111B extends AbstractC2122d {
    private static final long serialVersionUID = 1300372329181994526L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f670a;

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: y */
    public final ChronoLocalDateTime mo613y(C2173h c2173h) {
        return new C2124f(this, c2173h);
    }

    public C2111B(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.f670a = localDate;
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: a */
    public final InterfaceC2129k mo610a() {
        return C2144z.f730c;
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    public final int hashCode() {
        C2144z.f730c.getClass();
        return this.f670a.hashCode() ^ (-1990173233);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: A */
    public final InterfaceC2130l mo666A() {
        return m672I() >= 1 ? EnumC2112C.ROC : EnumC2112C.BEFORE_ROC;
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
        int i = AbstractC2110A.f669a[enumC2186a.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.f670a.mo577j(interfaceC2202q);
        }
        if (i != 4) {
            return C2144z.f730c.m714i(enumC2186a);
        }
        C2206u c2206u = EnumC2186a.YEAR.f827b;
        return C2206u.m784e(1L, m672I() <= 0 ? (-c2206u.f852a) + 1912 : c2206u.f855d - 1911);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            int i = AbstractC2110A.f669a[((EnumC2186a) interfaceC2202q).ordinal()];
            if (i == 4) {
                int iM672I = m672I();
                if (iM672I < 1) {
                    iM672I = 1 - iM672I;
                }
                return iM672I;
            }
            if (i == 5) {
                return ((((long) m672I()) * 12) + ((long) this.f670a.f641b)) - 1;
            }
            if (i == 6) {
                return m672I();
            }
            if (i != 7) {
                return this.f670a.mo580w(interfaceC2202q);
            }
            return m672I() < 1 ? 0 : 1;
        }
        return interfaceC2202q.mo772k(this);
    }

    /* JADX INFO: renamed from: I */
    public final int m672I() {
        return this.f670a.getYear() - 1911;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C2111B mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
            if (mo580w(enumC2186a) == j) {
                return this;
            }
            int[] iArr = AbstractC2110A.f669a;
            int i = iArr[enumC2186a.ordinal()];
            if (i == 4) {
                int iM786a = C2144z.f730c.m714i(enumC2186a).m786a(j, enumC2186a);
                int i2 = iArr[enumC2186a.ordinal()];
                if (i2 == 4) {
                    return m674K(this.f670a.m609R(m672I() >= 1 ? iM786a + 1911 : 1912 - iM786a));
                }
                if (i2 == 6) {
                    return m674K(this.f670a.m609R(iM786a + 1911));
                }
                if (i2 == 7) {
                    return m674K(this.f670a.m609R(1912 - m672I()));
                }
            } else {
                if (i == 5) {
                    C2144z.f730c.m714i(enumC2186a).m787b(j, enumC2186a);
                    long jM672I = ((long) m672I()) * 12;
                    LocalDate localDate = this.f670a;
                    return m674K(localDate.m605M(j - ((jM672I + ((long) localDate.f641b)) - 1)));
                }
                if (i == 6 || i == 7) {
                }
            }
            return m674K(this.f670a.mo588c(j, interfaceC2202q));
        }
        return (C2111B) super.mo588c(j, interfaceC2202q);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: H */
    public final InterfaceC2120b mo590i(InterfaceC2200o interfaceC2200o) {
        return (C2111B) super.mo590i(interfaceC2200o);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        return (C2111B) super.mo590i(localDate);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: G */
    public final InterfaceC2120b mo670G(long j) {
        return m674K(this.f670a.m606N(j));
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: F */
    public final InterfaceC2120b mo669F(long j) {
        return m674K(this.f670a.m605M(j));
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: E */
    public final InterfaceC2120b mo668E(long j) {
        return m674K(this.f670a.plusDays(j));
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2120b mo589d(long j, InterfaceC2204s interfaceC2204s) {
        return (C2111B) super.mo589d(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2198m mo589d(long j, InterfaceC2204s interfaceC2204s) {
        return (C2111B) super.mo589d(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: D */
    public final InterfaceC2120b mo591r(long j, InterfaceC2204s interfaceC2204s) {
        return (C2111B) super.mo591r(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return (C2111B) super.mo591r(j, enumC2187b);
    }

    /* JADX INFO: renamed from: K */
    public final C2111B m674K(LocalDate localDate) {
        return localDate.equals(this.f670a) ? this : new C2111B(localDate);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: x */
    public final long mo612x() {
        return this.f670a.mo612x();
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2111B) {
            return this.f670a.equals(((C2111B) obj).f670a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2113D((byte) 7, this);
    }
}
