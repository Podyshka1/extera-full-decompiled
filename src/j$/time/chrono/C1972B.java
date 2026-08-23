package j$.time.chrono;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.AbstractC1970c;
import j$.time.C2034h;
import j$.time.LocalDate;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* JADX INFO: renamed from: j$.time.chrono.B */
/* JADX INFO: loaded from: classes2.dex */
public final class C1972B extends AbstractC1983d {
    private static final long serialVersionUID = 1300372329181994526L;

    /* JADX INFO: renamed from: a */
    public final transient LocalDate f438a;

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: y */
    public final ChronoLocalDateTime mo492y(C2034h c2034h) {
        return new C1985f(this, c2034h);
    }

    public C1972B(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.f438a = localDate;
    }

    @Override // j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: a */
    public final InterfaceC1990k mo489a() {
        return C2005z.f495c;
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b
    public final int hashCode() {
        C2005z.f495c.getClass();
        return this.f438a.hashCode() ^ (-1990173233);
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: A */
    public final InterfaceC1991l mo543A() {
        return m549I() >= 1 ? EnumC1973C.ROC : EnumC1973C.BEFORE_ROC;
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo645i(this);
        }
        if (!AbstractC1965a.m435r(this, interfaceC2063q)) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        int i = AbstractC1971A.f437a[enumC2047a.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.f438a.mo457j(interfaceC2063q);
        }
        if (i != 4) {
            return C2005z.f495c.m591i(enumC2047a);
        }
        C2067u c2067u = EnumC2047a.YEAR.f592b;
        return C2067u.m659e(1L, m549I() <= 0 ? (-c2067u.f617a) + 1912 : c2067u.f620d - 1911);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            int i = AbstractC1971A.f437a[((EnumC2047a) interfaceC2063q).ordinal()];
            if (i == 4) {
                int iM549I = m549I();
                if (iM549I < 1) {
                    iM549I = 1 - iM549I;
                }
                return iM549I;
            }
            if (i == 5) {
                return ((((long) m549I()) * 12) + ((long) this.f438a.f409b)) - 1;
            }
            if (i == 6) {
                return m549I();
            }
            if (i != 7) {
                return this.f438a.mo460w(interfaceC2063q);
            }
            return m549I() < 1 ? 0 : 1;
        }
        return interfaceC2063q.mo647k(this);
    }

    /* JADX INFO: renamed from: I */
    public final int m549I() {
        return this.f438a.getYear() - 1911;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C1972B mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
            if (mo460w(enumC2047a) == j) {
                return this;
            }
            int[] iArr = AbstractC1971A.f437a;
            int i = iArr[enumC2047a.ordinal()];
            if (i == 4) {
                int iM661a = C2005z.f495c.m591i(enumC2047a).m661a(j, enumC2047a);
                int i2 = iArr[enumC2047a.ordinal()];
                if (i2 == 4) {
                    return m551K(this.f438a.m488R(m549I() >= 1 ? iM661a + 1911 : 1912 - iM661a));
                }
                if (i2 == 6) {
                    return m551K(this.f438a.m488R(iM661a + 1911));
                }
                if (i2 == 7) {
                    return m551K(this.f438a.m488R(1912 - m549I()));
                }
            } else {
                if (i == 5) {
                    C2005z.f495c.m591i(enumC2047a).m662b(j, enumC2047a);
                    long jM549I = ((long) m549I()) * 12;
                    LocalDate localDate = this.f438a;
                    return m551K(localDate.m484M(j - ((jM549I + ((long) localDate.f409b)) - 1)));
                }
                if (i == 6 || i == 7) {
                }
            }
            return m551K(this.f438a.mo468c(j, interfaceC2063q));
        }
        return (C1972B) super.mo468c(j, interfaceC2063q);
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: H */
    public final InterfaceC1981b mo470i(InterfaceC2061o interfaceC2061o) {
        return (C1972B) super.mo470i(interfaceC2061o);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        return (C1972B) super.mo470i(localDate);
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: G */
    public final InterfaceC1981b mo547G(long j) {
        return m551K(this.f438a.m485N(j));
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: F */
    public final InterfaceC1981b mo546F(long j) {
        return m551K(this.f438a.m484M(j));
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: E */
    public final InterfaceC1981b mo545E(long j) {
        return m551K(this.f438a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: d */
    public final InterfaceC1981b mo469d(long j, InterfaceC2065s interfaceC2065s) {
        return (C1972B) super.mo469d(j, interfaceC2065s);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2059m mo469d(long j, InterfaceC2065s interfaceC2065s) {
        return (C1972B) super.mo469d(j, interfaceC2065s);
    }

    @Override // j$.time.chrono.AbstractC1983d
    /* JADX INFO: renamed from: D */
    public final InterfaceC1981b mo471r(long j, InterfaceC2065s interfaceC2065s) {
        return (C1972B) super.mo471r(j, interfaceC2065s);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return (C1972B) super.mo471r(j, enumC2048b);
    }

    /* JADX INFO: renamed from: K */
    public final C1972B m551K(LocalDate localDate) {
        return localDate.equals(this.f438a) ? this : new C1972B(localDate);
    }

    @Override // j$.time.chrono.AbstractC1983d, j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: x */
    public final long mo491x() {
        return this.f438a.mo491x();
    }

    @Override // j$.time.chrono.AbstractC1983d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1972B) {
            return this.f438a.equals(((C1972B) obj).f438a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C1974D((byte) 7, this);
    }
}
