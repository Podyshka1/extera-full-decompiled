package j$.time;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.chrono.C1997r;
import j$.time.format.C2009a;
import j$.time.format.C2024p;
import j$.time.format.EnumC2031w;
import j$.time.format.EnumC2032x;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: renamed from: j$.time.q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2043q implements InterfaceC2059m, InterfaceC2061o, Comparable, Serializable {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f581b = 0;
    private static final long serialVersionUID = -23038383694477807L;

    /* JADX INFO: renamed from: a */
    public final int f582a;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f582a - ((C2043q) obj).f582a;
    }

    static {
        C2024p c2024p = new C2024p();
        c2024p.m607h(EnumC2047a.YEAR, 4, 10, EnumC2032x.EXCEEDS_PAD);
        c2024p.m611l(Locale.getDefault(), EnumC2031w.SMART, null);
    }

    /* JADX INFO: renamed from: v */
    public static C2043q m638v(int i) {
        EnumC2047a.YEAR.m649r(i);
        return new C2043q(i);
    }

    public C2043q(int i) {
        this.f582a = i;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return interfaceC2063q instanceof EnumC2047a ? interfaceC2063q == EnumC2047a.YEAR || interfaceC2063q == EnumC2047a.YEAR_OF_ERA || interfaceC2063q == EnumC2047a.ERA : interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.YEAR_OF_ERA) {
            return C2067u.m659e(1L, this.f582a <= 0 ? 1000000000L : 999999999L);
        }
        return AbstractC2064r.m658d(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        return mo457j(interfaceC2063q).m661a(mo460w(interfaceC2063q), interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo647k(this);
        }
        int i = AbstractC2042p.f579a[((EnumC2047a) interfaceC2063q).ordinal()];
        if (i == 1) {
            int i2 = this.f582a;
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return this.f582a;
        }
        if (i == 3) {
            return this.f582a < 1 ? 0 : 1;
        }
        throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        localDate.getClass();
        return (C2043q) AbstractC1965a.m418a(localDate, this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public final C2043q mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return (C2043q) interfaceC2063q.mo648n(this, j);
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        enumC2047a.m649r(j);
        int i = AbstractC2042p.f579a[enumC2047a.ordinal()];
        if (i == 1) {
            if (this.f582a < 1) {
                j = 1 - j;
            }
            return m638v((int) j);
        }
        if (i == 2) {
            return m638v((int) j);
        }
        if (i == 3) {
            return mo460w(EnumC2047a.ERA) == j ? this : m638v(1 - this.f582a);
        }
        throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final C2043q mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (interfaceC2065s instanceof EnumC2048b) {
            int i = AbstractC2042p.f580b[((EnumC2048b) interfaceC2065s).ordinal()];
            if (i == 1) {
                return m640D(j);
            }
            if (i == 2) {
                return m640D(AbstractC1965a.m409O(j, 10));
            }
            if (i == 3) {
                return m640D(AbstractC1965a.m409O(j, 100));
            }
            if (i == 4) {
                return m640D(AbstractC1965a.m409O(j, MediaDataController.MAX_STYLE_RUNS_COUNT));
            }
            if (i == 5) {
                EnumC2047a enumC2047a = EnumC2047a.ERA;
                return mo468c(AbstractC1965a.m410P(mo460w(enumC2047a), j), enumC2047a);
            }
            throw new C2066t("Unsupported unit: " + interfaceC2065s);
        }
        return (C2043q) interfaceC2065s.mo651h(this, j);
    }

    /* JADX INFO: renamed from: D */
    public final C2043q m640D(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2047a enumC2047a = EnumC2047a.YEAR;
        return m638v(enumC2047a.f592b.m661a(((long) this.f582a) + j, enumC2047a));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return j == Long.MIN_VALUE ? mo469d(Long.MAX_VALUE, enumC2048b).mo469d(1L, enumC2048b) : mo469d(-j, enumC2048b);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        if (c2009a == AbstractC2064r.f611b) {
            return C1997r.f480c;
        }
        if (c2009a == AbstractC2064r.f612c) {
            return EnumC2048b.YEARS;
        }
        return AbstractC2064r.m657c(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        if (!AbstractC1965a.m408N(interfaceC2059m).equals(C1997r.f480c)) {
            throw new C1969b("Adjustment only supported on ISO date-time");
        }
        return interfaceC2059m.mo468c(this.f582a, EnumC2047a.YEAR);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2043q) && this.f582a == ((C2043q) obj).f582a;
    }

    public final int hashCode() {
        return this.f582a;
    }

    public final String toString() {
        return Integer.toString(this.f582a);
    }

    private Object writeReplace() {
        return new C2041o((byte) 11, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
