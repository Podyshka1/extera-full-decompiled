package j$.time;

import de.robv.android.xposed.callbacks.XCallback;
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
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes2.dex */
public final class YearMonth implements InterfaceC2059m, InterfaceC2061o, Comparable<YearMonth>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f422c = 0;
    private static final long serialVersionUID = 4183400860270640070L;

    /* JADX INFO: renamed from: a */
    public final int f423a;

    /* JADX INFO: renamed from: b */
    public final int f424b;

    @Override // java.lang.Comparable
    public final int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f423a - yearMonth2.f423a;
        return i == 0 ? this.f424b - yearMonth2.f424b : i;
    }

    static {
        C2024p c2024p = new C2024p();
        c2024p.m607h(EnumC2047a.YEAR, 4, 10, EnumC2032x.EXCEEDS_PAD);
        c2024p.m602c(SignatureVisitor.SUPER);
        c2024p.m606g(EnumC2047a.MONTH_OF_YEAR, 2);
        c2024p.m611l(Locale.getDefault(), EnumC2031w.SMART, null);
    }

    public static YearMonth of(int i, int i2) {
        EnumC2047a.YEAR.m649r(i);
        EnumC2047a.MONTH_OF_YEAR.m649r(i2);
        return new YearMonth(i, i2);
    }

    public YearMonth(int i, int i2) {
        this.f423a = i;
        this.f424b = i2;
    }

    /* JADX INFO: renamed from: F */
    public final YearMonth m515F(int i, int i2) {
        return (this.f423a == i && this.f424b == i2) ? this : new YearMonth(i, i2);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return interfaceC2063q instanceof EnumC2047a ? interfaceC2063q == EnumC2047a.YEAR || interfaceC2063q == EnumC2047a.MONTH_OF_YEAR || interfaceC2063q == EnumC2047a.PROLEPTIC_MONTH || interfaceC2063q == EnumC2047a.YEAR_OF_ERA || interfaceC2063q == EnumC2047a.ERA : interfaceC2063q != null && interfaceC2063q.mo644h(this);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q == EnumC2047a.YEAR_OF_ERA) {
            return C2067u.m659e(1L, this.f423a <= 0 ? 1000000000L : 999999999L);
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
        int i;
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo647k(this);
        }
        int i2 = AbstractC2044r.f583a[((EnumC2047a) interfaceC2063q).ordinal()];
        if (i2 == 1) {
            i = this.f424b;
        } else {
            if (i2 == 2) {
                return m517v();
            }
            if (i2 == 3) {
                int i3 = this.f423a;
                if (i3 < 1) {
                    i3 = 1 - i3;
                }
                return i3;
            }
            if (i2 != 4) {
                if (i2 == 5) {
                    return this.f423a < 1 ? 0 : 1;
                }
                throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
            }
            i = this.f423a;
        }
        return i;
    }

    /* JADX INFO: renamed from: v */
    public final long m517v() {
        return ((((long) this.f423a) * 12) + ((long) this.f424b)) - 1;
    }

    public int lengthOfMonth() {
        EnumC2036j enumC2036jM631E = EnumC2036j.m631E(this.f424b);
        C1997r c1997r = C1997r.f480c;
        long j = this.f423a;
        c1997r.getClass();
        return enumC2036jM631E.m632A(C1997r.m583i(j));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        localDate.getClass();
        return (YearMonth) AbstractC1965a.m418a(localDate, this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public final YearMonth mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return (YearMonth) interfaceC2063q.mo648n(this, j);
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        enumC2047a.m649r(j);
        int i = AbstractC2044r.f583a[enumC2047a.ordinal()];
        if (i == 1) {
            int i2 = (int) j;
            EnumC2047a.MONTH_OF_YEAR.m649r(i2);
            return m515F(this.f423a, i2);
        }
        if (i == 2) {
            return m513D(j - m517v());
        }
        if (i == 3) {
            if (this.f423a < 1) {
                j = 1 - j;
            }
            int i3 = (int) j;
            EnumC2047a.YEAR.m649r(i3);
            return m515F(i3, this.f424b);
        }
        if (i == 4) {
            int i4 = (int) j;
            EnumC2047a.YEAR.m649r(i4);
            return m515F(i4, this.f424b);
        }
        if (i != 5) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        if (mo460w(EnumC2047a.ERA) == j) {
            return this;
        }
        int i5 = 1 - this.f423a;
        EnumC2047a.YEAR.m649r(i5);
        return m515F(i5, this.f424b);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public final YearMonth mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (interfaceC2065s instanceof EnumC2048b) {
            switch (AbstractC2044r.f584b[((EnumC2048b) interfaceC2065s).ordinal()]) {
                case 1:
                    return m513D(j);
                case 2:
                    return m514E(j);
                case 3:
                    return m514E(AbstractC1965a.m409O(j, 10));
                case 4:
                    return m514E(AbstractC1965a.m409O(j, 100));
                case 5:
                    return m514E(AbstractC1965a.m409O(j, MediaDataController.MAX_STYLE_RUNS_COUNT));
                case 6:
                    EnumC2047a enumC2047a = EnumC2047a.ERA;
                    return mo468c(AbstractC1965a.m410P(mo460w(enumC2047a), j), enumC2047a);
                default:
                    throw new C2066t("Unsupported unit: " + interfaceC2065s);
            }
        }
        return (YearMonth) interfaceC2065s.mo651h(this, j);
    }

    /* JADX INFO: renamed from: E */
    public final YearMonth m514E(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2047a enumC2047a = EnumC2047a.YEAR;
        return m515F(enumC2047a.f592b.m661a(((long) this.f423a) + j, enumC2047a), this.f424b);
    }

    /* JADX INFO: renamed from: D */
    public final YearMonth m513D(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f423a) * 12) + ((long) (this.f424b - 1)) + j;
        EnumC2047a enumC2047a = EnumC2047a.YEAR;
        long j3 = 12;
        return m515F(enumC2047a.f592b.m661a(AbstractC1965a.m414T(j2, j3), enumC2047a), ((int) AbstractC1965a.m413S(j2, j3)) + 1);
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
            return EnumC2048b.MONTHS;
        }
        return AbstractC2064r.m657c(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        if (!AbstractC1965a.m408N(interfaceC2059m).equals(C1997r.f480c)) {
            throw new C1969b("Adjustment only supported on ISO date-time");
        }
        return interfaceC2059m.mo468c(m517v(), EnumC2047a.PROLEPTIC_MONTH);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            if (this.f423a == yearMonth.f423a && this.f424b == yearMonth.f424b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f423a ^ (this.f424b << 27);
    }

    public final String toString() {
        int iAbs = Math.abs(this.f423a);
        StringBuilder sb = new StringBuilder(9);
        if (iAbs < 1000) {
            int i = this.f423a;
            if (i < 0) {
                sb.append(i + XCallback.PRIORITY_LOWEST);
                sb.deleteCharAt(1);
            } else {
                sb.append(i + XCallback.PRIORITY_HIGHEST);
                sb.deleteCharAt(0);
            }
        } else {
            sb.append(this.f423a);
        }
        sb.append(this.f424b < 10 ? "-0" : "-");
        sb.append(this.f424b);
        return sb.toString();
    }

    private Object writeReplace() {
        return new C2041o((byte) 12, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
