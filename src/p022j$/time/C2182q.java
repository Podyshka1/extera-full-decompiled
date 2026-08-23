package p022j$.time;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import org.telegram.messenger.MediaDataController;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.chrono.C2136r;
import p022j$.time.format.C2148a;
import p022j$.time.format.C2163p;
import p022j$.time.format.EnumC2170w;
import p022j$.time.format.EnumC2171x;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;

/* JADX INFO: renamed from: j$.time.q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2182q implements InterfaceC2198m, InterfaceC2200o, Comparable, Serializable {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f816b = 0;
    private static final long serialVersionUID = -23038383694477807L;

    /* JADX INFO: renamed from: a */
    public final int f817a;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f817a - ((C2182q) obj).f817a;
    }

    static {
        C2163p c2163p = new C2163p();
        c2163p.m730h(EnumC2186a.YEAR, 4, 10, EnumC2171x.EXCEEDS_PAD);
        c2163p.m734l(Locale.getDefault(), EnumC2170w.SMART, null);
    }

    /* JADX INFO: renamed from: v */
    public static C2182q m761v(int i) {
        EnumC2186a.YEAR.m774r(i);
        return new C2182q(i);
    }

    public C2182q(int i) {
        this.f817a = i;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return interfaceC2202q instanceof EnumC2186a ? interfaceC2202q == EnumC2186a.YEAR || interfaceC2202q == EnumC2186a.YEAR_OF_ERA || interfaceC2202q == EnumC2186a.ERA : interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.YEAR_OF_ERA) {
            return C2206u.m784e(1L, this.f817a <= 0 ? 1000000000L : 999999999L);
        }
        return AbstractC2203r.m783d(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        return mo577j(interfaceC2202q).m786a(mo580w(interfaceC2202q), interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo772k(this);
        }
        int i = AbstractC2181p.f814a[((EnumC2186a) interfaceC2202q).ordinal()];
        if (i == 1) {
            int i2 = this.f817a;
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return this.f817a;
        }
        if (i == 3) {
            return this.f817a < 1 ? 0 : 1;
        }
        throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        localDate.getClass();
        return (C2182q) AbstractC2104a.m538a(localDate, this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public final C2182q mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return (C2182q) interfaceC2202q.mo773n(this, j);
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        enumC2186a.m774r(j);
        int i = AbstractC2181p.f814a[enumC2186a.ordinal()];
        if (i == 1) {
            if (this.f817a < 1) {
                j = 1 - j;
            }
            return m761v((int) j);
        }
        if (i == 2) {
            return m761v((int) j);
        }
        if (i == 3) {
            return mo580w(EnumC2186a.ERA) == j ? this : m761v(1 - this.f817a);
        }
        throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final C2182q mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (interfaceC2204s instanceof EnumC2187b) {
            int i = AbstractC2181p.f815b[((EnumC2187b) interfaceC2204s).ordinal()];
            if (i == 1) {
                return m763D(j);
            }
            if (i == 2) {
                return m763D(AbstractC2104a.m529O(j, 10));
            }
            if (i == 3) {
                return m763D(AbstractC2104a.m529O(j, 100));
            }
            if (i == 4) {
                return m763D(AbstractC2104a.m529O(j, MediaDataController.MAX_STYLE_RUNS_COUNT));
            }
            if (i == 5) {
                EnumC2186a enumC2186a = EnumC2186a.ERA;
                return mo588c(AbstractC2104a.m530P(mo580w(enumC2186a), j), enumC2186a);
            }
            throw new C2205t("Unsupported unit: " + interfaceC2204s);
        }
        return (C2182q) interfaceC2204s.mo776h(this, j);
    }

    /* JADX INFO: renamed from: D */
    public final C2182q m763D(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2186a enumC2186a = EnumC2186a.YEAR;
        return m761v(enumC2186a.f827b.m786a(((long) this.f817a) + j, enumC2186a));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return j == Long.MIN_VALUE ? mo589d(Long.MAX_VALUE, enumC2187b).mo589d(1L, enumC2187b) : mo589d(-j, enumC2187b);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        if (c2148a == AbstractC2203r.f846b) {
            return C2136r.f714c;
        }
        if (c2148a == AbstractC2203r.f847c) {
            return EnumC2187b.YEARS;
        }
        return AbstractC2203r.m782c(this, c2148a);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        if (!AbstractC2104a.m528N(interfaceC2198m).equals(C2136r.f714c)) {
            throw new C2108b("Adjustment only supported on ISO date-time");
        }
        return interfaceC2198m.mo588c(this.f817a, EnumC2186a.YEAR);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2182q) && this.f817a == ((C2182q) obj).f817a;
    }

    public final int hashCode() {
        return this.f817a;
    }

    public final String toString() {
        return Integer.toString(this.f817a);
    }

    private Object writeReplace() {
        return new C2180o((byte) 11, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
