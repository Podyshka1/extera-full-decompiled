package j$.time;

import de.robv.android.xposed.callbacks.XCallback;
import j$.nio.file.C2288b;
import j$.time.chrono.C2343r;
import j$.time.chrono.InterfaceC2336k;
import j$.time.format.C2371q;
import j$.time.format.EnumC2380z;
import j$.time.format.a0;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class YearMonth implements Temporal, InterfaceC2405m, Comparable<YearMonth>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f642c = 0;
    private static final long serialVersionUID = 4183400860270640070L;

    /* JADX INFO: renamed from: a */
    public final int f643a;

    /* JADX INFO: renamed from: b */
    public final int f644b;

    static {
        C2371q c2371q = new C2371q();
        c2371q.m842h(EnumC2393a.YEAR, 4, 10, a0.EXCEEDS_PAD);
        c2371q.m837c(SignatureVisitor.SUPER);
        c2371q.m841g(EnumC2393a.MONTH_OF_YEAR, 2);
        c2371q.m846l(Locale.getDefault(), EnumC2380z.SMART, null);
    }

    public YearMonth(int i, int i2) {
        this.f643a = i;
        this.f644b = i2;
    }

    public static YearMonth of(int i, int i2) {
        EnumC2393a.YEAR.m877Y(i);
        EnumC2393a.MONTH_OF_YEAR.m877Y(i2);
        return new YearMonth(i, i2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2388n((byte) 12, this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public final YearMonth mo677b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (YearMonth) temporalUnit.mo872s(this, j);
        }
        switch (AbstractC2390p.f822b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return m727I(j);
            case 2:
                return m728K(j);
            case 3:
                return m728K(Math.multiplyExact(j, 10L));
            case 4:
                return m728K(Math.multiplyExact(j, 100L));
            case 5:
                return m728K(Math.multiplyExact(j, 1000L));
            case 6:
                EnumC2393a enumC2393a = EnumC2393a.ERA;
                return mo676a(Math.addExact(mo556k(enumC2393a), j), enumC2393a);
            default:
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return null;
        }
    }

    /* JADX INFO: renamed from: I */
    public final YearMonth m727I(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f643a) * 12) + ((long) (this.f644b - 1)) + j;
        EnumC2393a enumC2393a = EnumC2393a.YEAR;
        return m729R(enumC2393a.f832b.m885a(Math.floorDiv(j2, 12L), enumC2393a), ((int) Math.floorMod(j2, 12L)) + 1);
    }

    /* JADX INFO: renamed from: K */
    public final YearMonth m728K(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2393a enumC2393a = EnumC2393a.YEAR;
        return m729R(enumC2393a.f832b.m885a(((long) this.f643a) + j, enumC2393a), this.f644b);
    }

    /* JADX INFO: renamed from: R */
    public final YearMonth m729R(int i, int i2) {
        return (this.f643a == i && this.f644b == i2) ? this : new YearMonth(i, i2);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public final YearMonth mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (YearMonth) interfaceC2408p.mo876X(this, j);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        enumC2393a.m877Y(j);
        int i = AbstractC2390p.f821a[enumC2393a.ordinal()];
        if (i == 1) {
            int i2 = (int) j;
            EnumC2393a.MONTH_OF_YEAR.m877Y(i2);
            return m729R(this.f643a, i2);
        }
        if (i == 2) {
            return m727I(j - m731s());
        }
        if (i == 3) {
            if (this.f643a < 1) {
                j = 1 - j;
            }
            int i3 = (int) j;
            EnumC2393a.YEAR.m877Y(i3);
            return m729R(i3, this.f644b);
        }
        if (i == 4) {
            int i4 = (int) j;
            EnumC2393a.YEAR.m877Y(i4);
            return m729R(i4, this.f644b);
        }
        if (i != 5) {
            throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
        if (mo556k(EnumC2393a.ERA) == j) {
            return this;
        }
        int i5 = 1 - this.f643a;
        EnumC2393a.YEAR.m877Y(i5);
        return m729R(i5, this.f644b);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo678c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo677b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo677b(j2, temporalUnit);
    }

    @Override // java.lang.Comparable
    public final int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f643a - yearMonth2.f643a;
        return i == 0 ? this.f644b - yearMonth2.f644b : i;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        return c2352d == AbstractC2409q.f850b ? C2343r.f701c : c2352d == AbstractC2409q.f851c ? ChronoUnit.MONTHS : super.mo554d(c2352d);
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public final Temporal mo665e(Temporal temporal) {
        if (InterfaceC2336k.m795r(temporal).equals(C2343r.f701c)) {
            return temporal.mo676a(m731s(), EnumC2393a.PROLEPTIC_MONTH);
        }
        C2288b.m639h("Adjustment only supported on ISO date-time");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            if (this.f643a == yearMonth.f643a && this.f644b == yearMonth.f644b) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        return mo667l(interfaceC2408p).m885a(mo556k(interfaceC2408p), interfaceC2408p);
    }

    public int getMonthValue() {
        return this.f644b;
    }

    public int getYear() {
        return this.f643a;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo750j(LocalDate localDate) {
        return (YearMonth) localDate.mo665e(this);
    }

    public final int hashCode() {
        return (this.f644b << 27) ^ this.f643a;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: i */
    public final boolean mo555i(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.YEAR || interfaceC2408p == EnumC2393a.MONTH_OF_YEAR || interfaceC2408p == EnumC2393a.PROLEPTIC_MONTH || interfaceC2408p == EnumC2393a.YEAR_OF_ERA || interfaceC2408p == EnumC2393a.ERA : interfaceC2408p != null && interfaceC2408p.mo879s(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        int i;
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo875R(this);
        }
        int i2 = AbstractC2390p.f821a[((EnumC2393a) interfaceC2408p).ordinal()];
        if (i2 == 1) {
            i = this.f644b;
        } else {
            if (i2 == 2) {
                return m731s();
            }
            if (i2 == 3) {
                int i3 = this.f643a;
                if (i3 < 1) {
                    i3 = 1 - i3;
                }
                return i3;
            }
            if (i2 != 4) {
                if (i2 == 5) {
                    return this.f643a < 1 ? 0 : 1;
                }
                throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
            }
            i = this.f643a;
        }
        return i;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        if (interfaceC2408p == EnumC2393a.YEAR_OF_ERA) {
            return C2411s.m883f(1L, getYear() <= 0 ? 1000000000L : 999999999L);
        }
        return super.mo667l(interfaceC2408p);
    }

    public int lengthOfMonth() {
        EnumC2384j enumC2384jM866K = EnumC2384j.m866K(this.f644b);
        C2343r c2343r = C2343r.f701c;
        long j = this.f643a;
        c2343r.getClass();
        return enumC2384jM866K.m867D(C2343r.m803Y(j));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        YearMonth yearMonthOf;
        if (temporal instanceof YearMonth) {
            yearMonthOf = (YearMonth) temporal;
        } else {
            Objects.requireNonNull(temporal, "temporal");
            try {
                if (!C2343r.f701c.equals(InterfaceC2336k.m795r(temporal))) {
                    temporal = LocalDate.m682I(temporal);
                }
                yearMonthOf = of(temporal.mo666g(EnumC2393a.YEAR), temporal.mo666g(EnumC2393a.MONTH_OF_YEAR));
            } catch (DateTimeException e) {
                C2288b.m638g("Unable to obtain YearMonth from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, yearMonthOf);
        }
        long jM731s = yearMonthOf.m731s() - m731s();
        switch (AbstractC2390p.f822b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return jM731s;
            case 2:
                return jM731s / 12;
            case 3:
                return jM731s / 120;
            case 4:
                return jM731s / 1200;
            case 5:
                return jM731s / 12000;
            case 6:
                EnumC2393a enumC2393a = EnumC2393a.ERA;
                return yearMonthOf.mo556k(enumC2393a) - mo556k(enumC2393a);
            default:
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    /* JADX INFO: renamed from: s */
    public final long m731s() {
        return ((((long) this.f643a) * 12) + ((long) this.f644b)) - 1;
    }

    public final String toString() {
        int iAbs = Math.abs(this.f643a);
        StringBuilder sb = new StringBuilder(9);
        int i = this.f643a;
        if (iAbs >= 1000) {
            sb.append(i);
        } else if (i < 0) {
            sb.append(i + XCallback.PRIORITY_LOWEST);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(this.f644b < 10 ? "-0" : "-");
        sb.append(this.f644b);
        return sb.toString();
    }
}
