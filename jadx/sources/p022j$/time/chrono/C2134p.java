package p022j$.time.chrono;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.AbstractC2109c;
import p022j$.time.C2108b;
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

/* JADX INFO: renamed from: j$.time.chrono.p */
/* JADX INFO: loaded from: classes2.dex */
public final class C2134p extends AbstractC2122d {
    private static final long serialVersionUID = -5207853542612002020L;

    /* JADX INFO: renamed from: a */
    public final transient C2132n f708a;

    /* JADX INFO: renamed from: b */
    public final transient int f709b;

    /* JADX INFO: renamed from: c */
    public final transient int f710c;

    /* JADX INFO: renamed from: d */
    public final transient int f711d;

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: y */
    public final ChronoLocalDateTime mo613y(C2173h c2173h) {
        return new C2124f(this, c2173h);
    }

    public C2134p(C2132n c2132n, int i, int i2, int i3) {
        c2132n.m697k(i, i2, i3);
        this.f708a = c2132n;
        this.f709b = i;
        this.f710c = i2;
        this.f711d = i3;
    }

    public C2134p(C2132n c2132n, long j) {
        int i = (int) j;
        c2132n.m695i();
        if (i < c2132n.f700e || i >= c2132n.f701f) {
            throw new C2108b("Hijrah date out of range");
        }
        int iBinarySearch = Arrays.binarySearch(c2132n.f699d, i);
        iBinarySearch = iBinarySearch < 0 ? (-iBinarySearch) - 2 : iBinarySearch;
        int i2 = c2132n.f702g;
        int[] iArr = {(iBinarySearch + i2) / 12, ((i2 + iBinarySearch) % 12) + 1, (i - c2132n.f699d[iBinarySearch]) + 1};
        this.f708a = c2132n;
        this.f709b = iArr[0];
        this.f710c = iArr[1];
        this.f711d = iArr[2];
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: a */
    public final InterfaceC2129k mo610a() {
        return this.f708a;
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: A */
    public final InterfaceC2130l mo666A() {
        return EnumC2135q.f712AH;
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
        int i = AbstractC2133o.f707a[enumC2186a.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.f708a.m699v(enumC2186a) : C2206u.m784e(1L, 5L) : C2206u.m784e(1L, this.f708a.m700w(this.f709b, 12)) : C2206u.m784e(1L, this.f708a.m698n(this.f709b, this.f710c));
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo772k(this);
        }
        switch (AbstractC2133o.f707a[((EnumC2186a) interfaceC2202q).ordinal()]) {
            case 1:
                return this.f711d;
            case 2:
                return m701I();
            case 3:
                return ((this.f711d - 1) / 7) + 1;
            case 4:
                return ((int) AbstractC2104a.m533S(mo612x() + 3, 7)) + 1;
            case 5:
                return ((this.f711d - 1) % 7) + 1;
            case 6:
                return ((m701I() - 1) % 7) + 1;
            case 7:
                return mo612x();
            case 8:
                return ((m701I() - 1) / 7) + 1;
            case 9:
                return this.f710c;
            case 10:
                return ((((long) this.f709b) * 12) + ((long) this.f710c)) - 1;
            case 11:
                return this.f709b;
            case 12:
                return this.f709b;
            case 13:
                return this.f709b <= 1 ? 0 : 1;
            default:
                throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public final C2134p mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return (C2134p) super.mo588c(j, interfaceC2202q);
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        this.f708a.m699v(enumC2186a).m787b(j, enumC2186a);
        int i = (int) j;
        switch (AbstractC2133o.f707a[enumC2186a.ordinal()]) {
            case 1:
                return m704L(this.f709b, this.f710c, i);
            case 2:
                return mo668E(Math.min(i, this.f708a.m700w(this.f709b, 12)) - m701I());
            case 3:
                return mo668E((j - mo580w(EnumC2186a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return mo668E(j - ((long) (((int) AbstractC2104a.m533S(mo612x() + 3, 7)) + 1)));
            case 5:
                return mo668E(j - mo580w(EnumC2186a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return mo668E(j - mo580w(EnumC2186a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new C2134p(this.f708a, j);
            case 8:
                return mo668E((j - mo580w(EnumC2186a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return m704L(this.f709b, i, this.f711d);
            case 10:
                return mo669F(j - (((((long) this.f709b) * 12) + ((long) this.f710c)) - 1));
            case 11:
                if (this.f709b < 1) {
                    i = 1 - i;
                }
                return m704L(i, this.f710c, this.f711d);
            case 12:
                return m704L(i, this.f710c, this.f711d);
            case 13:
                return m704L(1 - this.f709b, this.f710c, this.f711d);
            default:
                throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
    }

    /* JADX INFO: renamed from: L */
    public final C2134p m704L(int i, int i2, int i3) {
        int iM698n = this.f708a.m698n(i, i2);
        if (i3 > iM698n) {
            i3 = iM698n;
        }
        return new C2134p(this.f708a, i, i2, i3);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: H */
    public final InterfaceC2120b mo590i(InterfaceC2200o interfaceC2200o) {
        return (C2134p) super.mo590i(interfaceC2200o);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        return (C2134p) super.mo590i(localDate);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: x */
    public final long mo612x() {
        return this.f708a.m697k(this.f709b, this.f710c, this.f711d);
    }

    /* JADX INFO: renamed from: I */
    public final int m701I() {
        return this.f708a.m700w(this.f709b, this.f710c - 1) + this.f711d;
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: G */
    public final InterfaceC2120b mo670G(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = ((long) this.f709b) + ((long) ((int) j));
        int i = (int) j2;
        if (j2 == i) {
            return m704L(i, this.f710c, this.f711d);
        }
        throw new ArithmeticException();
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public final C2134p mo669F(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f709b) * 12) + ((long) (this.f710c - 1)) + j;
        C2132n c2132n = this.f708a;
        long jM534T = AbstractC2104a.m534T(j2, 12L);
        int i = c2132n.f702g;
        if (jM534T >= i / 12 && jM534T <= (((c2132n.f699d.length - 1) + i) / 12) - 1) {
            return m704L((int) jM534T, ((int) AbstractC2104a.m533S(j2, 12L)) + 1, this.f711d);
        }
        throw new C2108b("Invalid Hijrah year: " + jM534T);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public final C2134p mo668E(long j) {
        return new C2134p(this.f708a, mo612x() + j);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2120b mo589d(long j, InterfaceC2204s interfaceC2204s) {
        return (C2134p) super.mo589d(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: d */
    public final InterfaceC2198m mo589d(long j, InterfaceC2204s interfaceC2204s) {
        return (C2134p) super.mo589d(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    /* JADX INFO: renamed from: D */
    public final InterfaceC2120b mo591r(long j, InterfaceC2204s interfaceC2204s) {
        return (C2134p) super.mo591r(j, interfaceC2204s);
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return (C2134p) super.mo591r(j, enumC2187b);
    }

    @Override // p022j$.time.chrono.AbstractC2122d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2134p) {
            C2134p c2134p = (C2134p) obj;
            if (this.f709b == c2134p.f709b && this.f710c == c2134p.f710c && this.f711d == c2134p.f711d && this.f708a.equals(c2134p.f708a)) {
                return true;
            }
        }
        return false;
    }

    @Override // p022j$.time.chrono.AbstractC2122d, p022j$.time.chrono.InterfaceC2120b
    public final int hashCode() {
        int i = this.f709b;
        int i2 = this.f710c;
        int i3 = this.f711d;
        this.f708a.getClass();
        return (((i << 11) + (i2 << 6)) + i3) ^ ((i & (-2048)) ^ 2100100019);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2113D((byte) 6, this);
    }
}
