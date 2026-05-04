package p022j$.time;

import de.robv.android.xposed.callbacks.XCallback;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import org.mvel2.asm.signature.SignatureVisitor;
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

/* JADX INFO: loaded from: classes2.dex */
public final class YearMonth implements InterfaceC2198m, InterfaceC2200o, Comparable<YearMonth>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f654c = 0;
    private static final long serialVersionUID = 4183400860270640070L;

    /* JADX INFO: renamed from: a */
    public final int f655a;

    /* JADX INFO: renamed from: b */
    public final int f656b;

    @Override // java.lang.Comparable
    public final int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f655a - yearMonth2.f655a;
        return i == 0 ? this.f656b - yearMonth2.f656b : i;
    }

    static {
        C2163p c2163p = new C2163p();
        c2163p.m730h(EnumC2186a.YEAR, 4, 10, EnumC2171x.EXCEEDS_PAD);
        c2163p.m725c(SignatureVisitor.SUPER);
        c2163p.m729g(EnumC2186a.MONTH_OF_YEAR, 2);
        c2163p.m734l(Locale.getDefault(), EnumC2170w.SMART, null);
    }

    /* JADX INFO: renamed from: of */
    public static YearMonth m633of(int i, int i2) {
        EnumC2186a.YEAR.m774r(i);
        EnumC2186a.MONTH_OF_YEAR.m774r(i2);
        return new YearMonth(i, i2);
    }

    public YearMonth(int i, int i2) {
        this.f655a = i;
        this.f656b = i2;
    }

    /* JADX INFO: renamed from: F */
    public final YearMonth m637F(int i, int i2) {
        return (this.f655a == i && this.f656b == i2) ? this : new YearMonth(i, i2);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return interfaceC2202q instanceof EnumC2186a ? interfaceC2202q == EnumC2186a.YEAR || interfaceC2202q == EnumC2186a.MONTH_OF_YEAR || interfaceC2202q == EnumC2186a.PROLEPTIC_MONTH || interfaceC2202q == EnumC2186a.YEAR_OF_ERA || interfaceC2202q == EnumC2186a.ERA : interfaceC2202q != null && interfaceC2202q.mo769h(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q == EnumC2186a.YEAR_OF_ERA) {
            return C2206u.m784e(1L, this.f655a <= 0 ? 1000000000L : 999999999L);
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
        int i;
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo772k(this);
        }
        int i2 = AbstractC2183r.f818a[((EnumC2186a) interfaceC2202q).ordinal()];
        if (i2 == 1) {
            i = this.f656b;
        } else {
            if (i2 == 2) {
                return m639v();
            }
            if (i2 == 3) {
                int i3 = this.f655a;
                if (i3 < 1) {
                    i3 = 1 - i3;
                }
                return i3;
            }
            if (i2 != 4) {
                if (i2 == 5) {
                    return this.f655a < 1 ? 0 : 1;
                }
                throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
            }
            i = this.f655a;
        }
        return i;
    }

    /* JADX INFO: renamed from: v */
    public final long m639v() {
        return ((((long) this.f655a) * 12) + ((long) this.f656b)) - 1;
    }

    public int lengthOfMonth() {
        EnumC2175j enumC2175jM754E = EnumC2175j.m754E(this.f656b);
        C2136r c2136r = C2136r.f714c;
        long j = this.f655a;
        c2136r.getClass();
        return enumC2175jM754E.m755A(C2136r.m706i(j));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        localDate.getClass();
        return (YearMonth) AbstractC2104a.m538a(localDate, this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public final YearMonth mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return (YearMonth) interfaceC2202q.mo773n(this, j);
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        enumC2186a.m774r(j);
        int i = AbstractC2183r.f818a[enumC2186a.ordinal()];
        if (i == 1) {
            int i2 = (int) j;
            EnumC2186a.MONTH_OF_YEAR.m774r(i2);
            return m637F(this.f655a, i2);
        }
        if (i == 2) {
            return m635D(j - m639v());
        }
        if (i == 3) {
            if (this.f655a < 1) {
                j = 1 - j;
            }
            int i3 = (int) j;
            EnumC2186a.YEAR.m774r(i3);
            return m637F(i3, this.f656b);
        }
        if (i == 4) {
            int i4 = (int) j;
            EnumC2186a.YEAR.m774r(i4);
            return m637F(i4, this.f656b);
        }
        if (i != 5) {
            throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
        if (mo580w(EnumC2186a.ERA) == j) {
            return this;
        }
        int i5 = 1 - this.f655a;
        EnumC2186a.YEAR.m774r(i5);
        return m637F(i5, this.f656b);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final YearMonth mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (interfaceC2204s instanceof EnumC2187b) {
            switch (AbstractC2183r.f819b[((EnumC2187b) interfaceC2204s).ordinal()]) {
                case 1:
                    return m635D(j);
                case 2:
                    return m636E(j);
                case 3:
                    return m636E(AbstractC2104a.m529O(j, 10));
                case 4:
                    return m636E(AbstractC2104a.m529O(j, 100));
                case 5:
                    return m636E(AbstractC2104a.m529O(j, MediaDataController.MAX_STYLE_RUNS_COUNT));
                case 6:
                    EnumC2186a enumC2186a = EnumC2186a.ERA;
                    return mo588c(AbstractC2104a.m530P(mo580w(enumC2186a), j), enumC2186a);
                default:
                    throw new C2205t("Unsupported unit: " + interfaceC2204s);
            }
        }
        return (YearMonth) interfaceC2204s.mo776h(this, j);
    }

    /* JADX INFO: renamed from: E */
    public final YearMonth m636E(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2186a enumC2186a = EnumC2186a.YEAR;
        return m637F(enumC2186a.f827b.m786a(((long) this.f655a) + j, enumC2186a), this.f656b);
    }

    /* JADX INFO: renamed from: D */
    public final YearMonth m635D(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f655a) * 12) + ((long) (this.f656b - 1)) + j;
        EnumC2186a enumC2186a = EnumC2186a.YEAR;
        long j3 = 12;
        return m637F(enumC2186a.f827b.m786a(AbstractC2104a.m534T(j2, j3), enumC2186a), ((int) AbstractC2104a.m533S(j2, j3)) + 1);
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
            return EnumC2187b.MONTHS;
        }
        return AbstractC2203r.m782c(this, c2148a);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        if (!AbstractC2104a.m528N(interfaceC2198m).equals(C2136r.f714c)) {
            throw new C2108b("Adjustment only supported on ISO date-time");
        }
        return interfaceC2198m.mo588c(m639v(), EnumC2186a.PROLEPTIC_MONTH);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            if (this.f655a == yearMonth.f655a && this.f656b == yearMonth.f656b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f655a ^ (this.f656b << 27);
    }

    public final String toString() {
        int iAbs = Math.abs(this.f655a);
        StringBuilder sb = new StringBuilder(9);
        if (iAbs < 1000) {
            int i = this.f655a;
            if (i < 0) {
                sb.append(i + XCallback.PRIORITY_LOWEST);
                sb.deleteCharAt(1);
            } else {
                sb.append(i + XCallback.PRIORITY_HIGHEST);
                sb.deleteCharAt(0);
            }
        } else {
            sb.append(this.f655a);
        }
        sb.append(this.f656b < 10 ? "-0" : "-");
        sb.append(this.f656b);
        return sb.toString();
    }

    private Object writeReplace() {
        return new C2180o((byte) 12, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
