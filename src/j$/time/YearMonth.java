package j$.time;

import de.robv.android.xposed.callbacks.XCallback;
import j$.nio.file.C2148b;
import j$.time.chrono.C2203r;
import j$.time.chrono.InterfaceC2196k;
import j$.time.format.C2231q;
import j$.time.format.EnumC2240z;
import j$.time.format.a0;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class YearMonth implements Temporal, InterfaceC2266m, Comparable<YearMonth>, Serializable {

    /* JADX INFO: renamed from: c */
    public static final /* synthetic */ int f641c = 0;
    private static final long serialVersionUID = 4183400860270640070L;

    /* JADX INFO: renamed from: a */
    public final int f642a;

    /* JADX INFO: renamed from: b */
    public final int f643b;

    static {
        C2231q c2231q = new C2231q();
        c2231q.m798h(EnumC2254a.YEAR, 4, 10, a0.EXCEEDS_PAD);
        c2231q.m793c(SignatureVisitor.SUPER);
        c2231q.m797g(EnumC2254a.MONTH_OF_YEAR, 2);
        c2231q.m802l(Locale.getDefault(), EnumC2240z.SMART, null);
    }

    public YearMonth(int i, int i2) {
        this.f642a = i;
        this.f643b = i2;
    }

    public static YearMonth of(int i, int i2) {
        EnumC2254a.YEAR.a0(i);
        EnumC2254a.MONTH_OF_YEAR.a0(i2);
        return new YearMonth(i, i2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2249o((byte) 12, this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public final YearMonth mo653b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (YearMonth) temporalUnit.mo828s(this, j);
        }
        switch (AbstractC2251q.f820b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return m697I(j);
            case 2:
                return m698K(j);
            case 3:
                return m698K(Math.multiplyExact(j, 10L));
            case 4:
                return m698K(Math.multiplyExact(j, 100L));
            case 5:
                return m698K(Math.multiplyExact(j, 1000L));
            case 6:
                EnumC2254a enumC2254a = EnumC2254a.ERA;
                return mo652a(Math.addExact(mo532k(enumC2254a), j), enumC2254a);
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return null;
        }
    }

    /* JADX INFO: renamed from: I */
    public final YearMonth m697I(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f642a) * 12) + ((long) (this.f643b - 1)) + j;
        EnumC2254a enumC2254a = EnumC2254a.YEAR;
        return m699S(enumC2254a.f830b.m837a(Math.floorDiv(j2, 12L), enumC2254a), ((int) Math.floorMod(j2, 12L)) + 1);
    }

    /* JADX INFO: renamed from: K */
    public final YearMonth m698K(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2254a enumC2254a = EnumC2254a.YEAR;
        return m699S(enumC2254a.f830b.m837a(((long) this.f642a) + j, enumC2254a), this.f643b);
    }

    /* JADX INFO: renamed from: S */
    public final YearMonth m699S(int i, int i2) {
        return (this.f642a == i && this.f643b == i2) ? this : new YearMonth(i, i2);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final YearMonth mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (YearMonth) interfaceC2269p.mo832Y(this, j);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        enumC2254a.a0(j);
        int i = AbstractC2251q.f819a[enumC2254a.ordinal()];
        if (i == 1) {
            int i2 = (int) j;
            EnumC2254a.MONTH_OF_YEAR.a0(i2);
            return m699S(this.f642a, i2);
        }
        if (i == 2) {
            return m697I(j - m701s());
        }
        if (i == 3) {
            if (this.f642a < 1) {
                j = 1 - j;
            }
            int i3 = (int) j;
            EnumC2254a.YEAR.a0(i3);
            return m699S(i3, this.f643b);
        }
        if (i == 4) {
            int i4 = (int) j;
            EnumC2254a.YEAR.a0(i4);
            return m699S(i4, this.f643b);
        }
        if (i != 5) {
            throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
        if (mo532k(EnumC2254a.ERA) == j) {
            return this;
        }
        int i5 = 1 - this.f642a;
        EnumC2254a.YEAR.a0(i5);
        return m699S(i5, this.f643b);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final Temporal mo654c(long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            this = mo653b(LongCompanionObject.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return this.mo653b(j2, temporalUnit);
    }

    @Override // java.lang.Comparable
    public final int compareTo(YearMonth yearMonth) {
        YearMonth yearMonth2 = yearMonth;
        int i = this.f642a - yearMonth2.f642a;
        return i == 0 ? this.f643b - yearMonth2.f643b : i;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f848b ? C2203r.f699c : c2213e == AbstractC2270q.f849c ? ChronoUnit.MONTHS : super.mo530d(c2213e);
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public final Temporal mo641e(Temporal temporal) {
        if (InterfaceC2196k.m758r(temporal).equals(C2203r.f699c)) {
            return temporal.mo652a(m701s(), EnumC2254a.PROLEPTIC_MONTH);
        }
        C2148b.m615h("Adjustment only supported on ISO date-time");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof YearMonth) {
            YearMonth yearMonth = (YearMonth) obj;
            if (this.f642a == yearMonth.f642a && this.f643b == yearMonth.f643b) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        return mo643l(interfaceC2269p).m837a(mo532k(interfaceC2269p), interfaceC2269p);
    }

    public int getMonthValue() {
        return this.f643b;
    }

    public int getYear() {
        return this.f642a;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: h */
    public final Temporal mo677j(LocalDate localDate) {
        return (YearMonth) localDate.mo641e(this);
    }

    public final int hashCode() {
        return (this.f643b << 27) ^ this.f642a;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: i */
    public final boolean mo531i(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.YEAR || interfaceC2269p == EnumC2254a.MONTH_OF_YEAR || interfaceC2269p == EnumC2254a.PROLEPTIC_MONTH || interfaceC2269p == EnumC2254a.YEAR_OF_ERA || interfaceC2269p == EnumC2254a.ERA : interfaceC2269p != null && interfaceC2269p.mo833s(this);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        int i;
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo831S(this);
        }
        int i2 = AbstractC2251q.f819a[((EnumC2254a) interfaceC2269p).ordinal()];
        if (i2 == 1) {
            i = this.f643b;
        } else {
            if (i2 == 2) {
                return m701s();
            }
            if (i2 == 3) {
                int i3 = this.f642a;
                if (i3 < 1) {
                    i3 = 1 - i3;
                }
                return i3;
            }
            if (i2 != 4) {
                if (i2 == 5) {
                    return this.f642a < 1 ? 0 : 1;
                }
                throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
            }
            i = this.f642a;
        }
        return i;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        if (interfaceC2269p == EnumC2254a.YEAR_OF_ERA) {
            return C2272s.m835f(1L, getYear() <= 0 ? 1000000000L : 999999999L);
        }
        return super.mo643l(interfaceC2269p);
    }

    public int lengthOfMonth() {
        EnumC2245k enumC2245kM822K = EnumC2245k.m822K(this.f643b);
        C2203r c2203r = C2203r.f699c;
        long j = this.f642a;
        c2203r.getClass();
        return enumC2245kM822K.m823D(C2203r.a0(j));
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        YearMonth yearMonthOf;
        if (temporal instanceof YearMonth) {
            yearMonthOf = (YearMonth) temporal;
        } else {
            Objects.requireNonNull(temporal, "temporal");
            try {
                if (!C2203r.f699c.equals(InterfaceC2196k.m758r(temporal))) {
                    temporal = LocalDate.m658I(temporal);
                }
                yearMonthOf = of(temporal.mo642g(EnumC2254a.YEAR), temporal.mo642g(EnumC2254a.MONTH_OF_YEAR));
            } catch (C2184b e) {
                C2148b.m614g("Unable to obtain YearMonth from TemporalAccessor: ", temporal, temporal.getClass().getName(), e);
                return 0L;
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, yearMonthOf);
        }
        long jM701s = yearMonthOf.m701s() - m701s();
        switch (AbstractC2251q.f820b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return jM701s;
            case 2:
                return jM701s / 12;
            case 3:
                return jM701s / 120;
            case 4:
                return jM701s / 1200;
            case 5:
                return jM701s / 12000;
            case 6:
                EnumC2254a enumC2254a = EnumC2254a.ERA;
                return yearMonthOf.mo532k(enumC2254a) - mo532k(enumC2254a);
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    /* JADX INFO: renamed from: s */
    public final long m701s() {
        return ((((long) this.f642a) * 12) + ((long) this.f643b)) - 1;
    }

    public final String toString() {
        int iAbs = Math.abs(this.f642a);
        StringBuilder sb = new StringBuilder(9);
        int i = this.f642a;
        if (iAbs >= 1000) {
            sb.append(i);
        } else if (i < 0) {
            sb.append(i + XCallback.PRIORITY_LOWEST);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(this.f643b < 10 ? "-0" : "-");
        sb.append(this.f643b);
        return sb.toString();
    }
}
