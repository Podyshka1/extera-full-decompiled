package j$.time;

import de.robv.android.xposed.callbacks.XCallback;
import j$.time.chrono.C2121r;
import j$.time.chrono.InterfaceC2114k;
import j$.time.format.C2149q;
import j$.time.format.EnumC2158z;
import j$.time.format.a0;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class YearMonth implements Temporal, InterfaceC2185m, Comparable<YearMonth>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f485c = 0;
    private static final long serialVersionUID = 4183400860270640070L;

    /* JADX INFO: renamed from: a */
    public final int f486a;

    /* JADX INFO: renamed from: b */
    public final int f487b;

    static {
        C2149q c2149q = new C2149q();
        c2149q.m660h(EnumC2173a.YEAR, 4, 10, a0.EXCEEDS_PAD);
        c2149q.m655c(SignatureVisitor.SUPER);
        c2149q.m659g(EnumC2173a.MONTH_OF_YEAR, 2);
        c2149q.m664l(Locale.getDefault(), EnumC2158z.SMART, null);
    }

    public YearMonth(int i, int i2) {
        this.f486a = i;
        this.f487b = i2;
    }

    public static YearMonth of(int i, int i2) {
        EnumC2173a.YEAR.m719X(i);
        EnumC2173a.MONTH_OF_YEAR.m719X(i2);
        return new YearMonth(i, i2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2170r((byte) 12, this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final YearMonth mo497b(long j, InterfaceC2190r interfaceC2190r) {
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return (YearMonth) interfaceC2190r.mo714t(this, j);
        }
        switch (AbstractC2193u.f709b[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return m536G(j);
            case 2:
                return m537I(j);
            case 3:
                return m537I(Math.multiplyExact(j, 10L));
            case 4:
                return m537I(Math.multiplyExact(j, 100L));
            case 5:
                return m537I(Math.multiplyExact(j, 1000L));
            case 6:
                EnumC2173a enumC2173a = EnumC2173a.ERA;
                return mo496a(Math.addExact(mo486k(enumC2173a), j), enumC2173a);
            default:
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return null;
        }
    }

    /* JADX INFO: renamed from: G */
    public final YearMonth m536G(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f486a) * 12) + ((long) (this.f487b - 1)) + j;
        EnumC2173a enumC2173a = EnumC2173a.YEAR;
        return m538P(enumC2173a.f681b.m728a(Math.floorDiv(j2, 12L), enumC2173a), ((int) Math.floorMod(j2, 12L)) + 1);
    }

    /* JADX INFO: renamed from: I */
    public final YearMonth m537I(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2173a enumC2173a = EnumC2173a.YEAR;
        return m538P(enumC2173a.f681b.m728a(((long) this.f486a) + j, enumC2173a), this.f487b);
    }

    /* JADX INFO: renamed from: P */
    public final YearMonth m538P(int i, int i2) {
        return (this.f486a == i && this.f487b == i2) ? this : new YearMonth(i, i2);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public final YearMonth mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (YearMonth) interfaceC2188p.mo718V(this, j);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        enumC2173a.m719X(j);
        int i = AbstractC2193u.f708a[enumC2173a.ordinal()];
        if (i == 1) {
            int i2 = (int) j;
            EnumC2173a.MONTH_OF_YEAR.m719X(i2);
            return m538P(this.f486a, i2);
        }
        if (i == 2) {
            return m536G(j - m540t());
        }
        if (i == 3) {
            if (this.f486a < 1) {
                j = 1 - j;
            }
            int i3 = (int) j;
            EnumC2173a.YEAR.m719X(i3);
            return m538P(i3, this.f487b);
        }
        if (i == 4) {
            int i4 = (int) j;
            EnumC2173a.YEAR.m719X(i4);
            return m538P(i4, this.f487b);
        }
        if (i != 5) {
            throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
        if (mo486k(EnumC2173a.ERA) == j) {
            return this;
        }
        int i5 = 1 - this.f486a;
        EnumC2173a.YEAR.m719X(i5);
        return m538P(i5, this.f487b);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo498c(long j, InterfaceC2190r interfaceC2190r) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo497b(LongCompanionObject.MAX_VALUE, interfaceC2190r);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo497b(j2, interfaceC2190r);
    }

    @Override // java.lang.Comparable
    public final int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f486a - yearMonth2.f486a;
        return i == 0 ? this.f487b - yearMonth2.f487b : i;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        return c2196x == AbstractC2189q.f698b ? C2121r.f543c : c2196x == AbstractC2189q.f699c ? ChronoUnit.MONTHS : super.mo482d(c2196x);
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public final Temporal mo483e(Temporal temporal) {
        if (InterfaceC2114k.m611s(temporal).equals(C2121r.f543c)) {
            return temporal.mo496a(m540t(), EnumC2173a.PROLEPTIC_MONTH);
        }
        C2159g.m684a("Adjustment only supported on ISO date-time");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            if (this.f486a == yearMonth.f486a && this.f487b == yearMonth.f487b) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        return mo487m(interfaceC2188p).m728a(mo486k(interfaceC2188p), interfaceC2188p);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo559j(LocalDate localDate) {
        return (YearMonth) localDate.mo483e(this);
    }

    public final int hashCode() {
        return (this.f487b << 27) ^ this.f486a;
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: i */
    public final boolean mo485i(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.YEAR || interfaceC2188p == EnumC2173a.MONTH_OF_YEAR || interfaceC2188p == EnumC2173a.PROLEPTIC_MONTH || interfaceC2188p == EnumC2173a.YEAR_OF_ERA || interfaceC2188p == EnumC2173a.ERA : interfaceC2188p != null && interfaceC2188p.mo721t(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        int i;
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo717P(this);
        }
        int i2 = AbstractC2193u.f708a[((EnumC2173a) interfaceC2188p).ordinal()];
        if (i2 == 1) {
            i = this.f487b;
        } else {
            if (i2 == 2) {
                return m540t();
            }
            if (i2 == 3) {
                int i3 = this.f486a;
                if (i3 < 1) {
                    i3 = 1 - i3;
                }
                return i3;
            }
            if (i2 != 4) {
                if (i2 == 5) {
                    return this.f486a < 1 ? 0 : 1;
                }
                throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
            }
            i = this.f486a;
        }
        return i;
    }

    public int lengthOfMonth() {
        EnumC2164l enumC2164lM702I = EnumC2164l.m702I(this.f487b);
        C2121r c2121r = C2121r.f543c;
        long j = this.f486a;
        c2121r.getClass();
        return enumC2164lM702I.m703B(C2121r.m621X(j));
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        if (interfaceC2188p == EnumC2173a.YEAR_OF_ERA) {
            return C2192t.m726f(1L, this.f486a <= 0 ? 1000000000L : 999999999L);
        }
        return super.mo487m(interfaceC2188p);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        YearMonth yearMonthOf;
        if (temporal instanceof YearMonth) {
            yearMonthOf = (YearMonth) temporal;
        } else {
            Objects.requireNonNull(temporal, "temporal");
            try {
                if (!C2121r.f543c.equals(InterfaceC2114k.m611s(temporal))) {
                    temporal = LocalDate.m502G(temporal);
                }
                yearMonthOf = of(temporal.mo484g(EnumC2173a.YEAR), temporal.mo484g(EnumC2173a.MONTH_OF_YEAR));
            } catch (C2103c e) {
                C2159g.m690g("Unable to obtain YearMonth from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return interfaceC2190r.between(this, yearMonthOf);
        }
        long jM540t = yearMonthOf.m540t() - m540t();
        switch (AbstractC2193u.f709b[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return jM540t;
            case 2:
                return jM540t / 12;
            case 3:
                return jM540t / 120;
            case 4:
                return jM540t / 1200;
            case 5:
                return jM540t / 12000;
            case 6:
                EnumC2173a enumC2173a = EnumC2173a.ERA;
                return yearMonthOf.mo486k(enumC2173a) - mo486k(enumC2173a);
            default:
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return 0L;
        }
    }

    /* JADX INFO: renamed from: t */
    public final long m540t() {
        return ((((long) this.f486a) * 12) + ((long) this.f487b)) - 1;
    }

    public final String toString() {
        int iAbs = Math.abs(this.f486a);
        StringBuilder sb = new StringBuilder(9);
        int i = this.f486a;
        if (iAbs >= 1000) {
            sb.append(i);
        } else if (i < 0) {
            sb.append(i + XCallback.PRIORITY_LOWEST);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(this.f487b < 10 ? "-0" : "-");
        sb.append(this.f487b);
        return sb.toString();
    }
}
