package j$.time;

import de.robv.android.xposed.callbacks.XCallback;
import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.chrono.C1997r;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.InterfaceC1981b;
import j$.time.chrono.InterfaceC1990k;
import j$.time.format.C2009a;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.C2066t;
import j$.time.temporal.C2067u;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.EnumC2048b;
import j$.time.temporal.InterfaceC2059m;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2061o;
import j$.time.temporal.InterfaceC2063q;
import j$.time.temporal.InterfaceC2065s;
import j$.time.zone.C2070b;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes2.dex */
public final class LocalDate implements InterfaceC2059m, InterfaceC2061o, InterfaceC1981b, Serializable {

    /* JADX INFO: renamed from: d */
    public static final LocalDate f406d = of(-999999999, 1, 1);

    /* JADX INFO: renamed from: e */
    public static final LocalDate f407e = of(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;

    /* JADX INFO: renamed from: a */
    public final int f408a;

    /* JADX INFO: renamed from: b */
    public final short f409b;

    /* JADX INFO: renamed from: c */
    public final short f410c;

    static {
        of(1970, 1, 1);
    }

    public static LocalDate now() {
        ZoneId zoneIdSystemDefault = ZoneId.systemDefault();
        Objects.requireNonNull(new C1968a(zoneIdSystemDefault), "clock");
        long jCurrentTimeMillis = System.currentTimeMillis();
        Instant instant = Instant.f403c;
        long j = MediaDataController.MAX_STYLE_RUNS_COUNT;
        Instant instantM465v = Instant.m465v(AbstractC1965a.m414T(jCurrentTimeMillis, j), ((int) AbstractC1965a.m413S(jCurrentTimeMillis, j)) * 1000000);
        Objects.requireNonNull(instantM465v, "instant");
        Objects.requireNonNull(zoneIdSystemDefault, "zone");
        return m474K(AbstractC1965a.m414T(instantM465v.f404a + ((long) zoneIdSystemDefault.getRules().getOffset(instantM465v).getTotalSeconds()), 86400));
    }

    public static LocalDate of(int i, int i2, int i3) {
        EnumC2047a.YEAR.m649r(i);
        EnumC2047a.MONTH_OF_YEAR.m649r(i2);
        EnumC2047a.DAY_OF_MONTH.m649r(i3);
        return m472A(i, i2, i3);
    }

    /* JADX INFO: renamed from: K */
    public static LocalDate m474K(long j) {
        long j2;
        EnumC2047a.EPOCH_DAY.m649r(j);
        long j3 = 719468 + j;
        if (j3 < 0) {
            long j4 = ((j + 719469) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / 153;
        int i3 = ((i2 + 2) % 12) + 1;
        int i4 = (i - (((i2 * 306) + 5) / 10)) + 1;
        long j7 = j5 + j2 + ((long) (i2 / 10));
        EnumC2047a enumC2047a = EnumC2047a.YEAR;
        return new LocalDate(enumC2047a.f592b.m661a(j7, enumC2047a), i3, i4);
    }

    /* JADX INFO: renamed from: D */
    public static LocalDate m473D(InterfaceC2060n interfaceC2060n) {
        Objects.requireNonNull(interfaceC2060n, "temporal");
        LocalDate localDate = (LocalDate) interfaceC2060n.mo458k(AbstractC2064r.f615f);
        if (localDate != null) {
            return localDate;
        }
        throw new C1969b("Unable to obtain LocalDate from TemporalAccessor: " + interfaceC2060n + " of type " + interfaceC2060n.getClass().getName());
    }

    /* JADX INFO: renamed from: A */
    public static LocalDate m472A(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else {
                C1997r.f480c.getClass();
                if (C1997r.m583i(i)) {
                    i4 = 29;
                }
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new C1969b("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                throw new C1969b("Invalid date '" + EnumC2036j.m631E(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    /* JADX INFO: renamed from: O */
    public static LocalDate m475O(int i, int i2, int i3) {
        if (i2 == 2) {
            C1997r.f480c.getClass();
            i3 = Math.min(i3, C1997r.m583i((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    public LocalDate(int i, int i2, int i3) {
        this.f408a = i;
        this.f409b = (short) i2;
        this.f410c = (short) i3;
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: e */
    public final boolean mo455e(InterfaceC2063q interfaceC2063q) {
        return AbstractC1965a.m435r(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: j */
    public final C2067u mo457j(InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return interfaceC2063q.mo645i(this);
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        if (!enumC2047a.isDateBased()) {
            throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
        int i = AbstractC2007e.f498a[enumC2047a.ordinal()];
        if (i == 1) {
            return C2067u.m659e(1L, m482J());
        }
        if (i == 2) {
            return C2067u.m659e(1L, m481I() ? 366 : 365);
        }
        if (i != 3) {
            return i != 4 ? enumC2047a.f592b : getYear() <= 0 ? C2067u.m659e(1L, 1000000000L) : C2067u.m659e(1L, 999999999L);
        }
        return C2067u.m659e(1L, (EnumC2036j.m631E(this.f409b) != EnumC2036j.FEBRUARY || m481I()) ? 5L : 4L);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: h */
    public final int mo456h(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            return m477E(interfaceC2063q);
        }
        return AbstractC2064r.m655a(this, interfaceC2063q);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: w */
    public final long mo460w(InterfaceC2063q interfaceC2063q) {
        if (interfaceC2063q instanceof EnumC2047a) {
            if (interfaceC2063q == EnumC2047a.EPOCH_DAY) {
                return mo491x();
            }
            if (interfaceC2063q == EnumC2047a.PROLEPTIC_MONTH) {
                return m480H();
            }
            return m477E(interfaceC2063q);
        }
        return interfaceC2063q.mo647k(this);
    }

    /* JADX INFO: renamed from: E */
    public final int m477E(InterfaceC2063q interfaceC2063q) {
        switch (AbstractC2007e.f498a[((EnumC2047a) interfaceC2063q).ordinal()]) {
            case 1:
                return this.f410c;
            case 2:
                return m479G();
            case 3:
                return ((this.f410c - 1) / 7) + 1;
            case 4:
                int i = this.f408a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return m478F().getValue();
            case 6:
                return ((this.f410c - 1) % 7) + 1;
            case 7:
                return ((m479G() - 1) % 7) + 1;
            case 8:
                throw new C2066t("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((m479G() - 1) / 7) + 1;
            case 10:
                return this.f409b;
            case 11:
                throw new C2066t("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.f408a;
            case 13:
                return this.f408a >= 1 ? 1 : 0;
            default:
                throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
    }

    /* JADX INFO: renamed from: H */
    public final long m480H() {
        return ((((long) this.f408a) * 12) + ((long) this.f409b)) - 1;
    }

    @Override // j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: a */
    public final InterfaceC1990k mo489a() {
        return C1997r.f480c;
    }

    public int getYear() {
        return this.f408a;
    }

    /* JADX INFO: renamed from: G */
    public final int m479G() {
        return (EnumC2036j.m631E(this.f409b).m634v(m481I()) + this.f410c) - 1;
    }

    /* JADX INFO: renamed from: F */
    public final DayOfWeek m478F() {
        return DayOfWeek.m454v(((int) AbstractC1965a.m413S(mo491x() + 3, 7)) + 1);
    }

    /* JADX INFO: renamed from: I */
    public final boolean m481I() {
        C1997r c1997r = C1997r.f480c;
        long j = this.f408a;
        c1997r.getClass();
        return C1997r.m583i(j);
    }

    /* JADX INFO: renamed from: J */
    public final int m482J() {
        short s = this.f409b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : m481I() ? 29 : 28;
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2059m mo470i(LocalDate localDate) {
        return AbstractC1970c.m542b(localDate) ? localDate : (LocalDate) localDate.mo459n(this);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public final LocalDate mo468c(long j, InterfaceC2063q interfaceC2063q) {
        if (!(interfaceC2063q instanceof EnumC2047a)) {
            return (LocalDate) interfaceC2063q.mo648n(this, j);
        }
        EnumC2047a enumC2047a = (EnumC2047a) interfaceC2063q;
        enumC2047a.m649r(j);
        switch (AbstractC2007e.f498a[enumC2047a.ordinal()]) {
            case 1:
                int i = (int) j;
                if (this.f410c != i) {
                    return of(this.f408a, this.f409b, i);
                }
                return this;
            case 2:
                return m487Q((int) j);
            case 3:
                return plusDays(AbstractC1965a.m409O(j - mo460w(EnumC2047a.ALIGNED_WEEK_OF_MONTH), 7));
            case 4:
                if (this.f408a < 1) {
                    j = 1 - j;
                }
                return m488R((int) j);
            case 5:
                return plusDays(j - ((long) m478F().getValue()));
            case 6:
                return plusDays(j - mo460w(EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return plusDays(j - mo460w(EnumC2047a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return m474K(j);
            case 9:
                return plusDays(AbstractC1965a.m409O(j - mo460w(EnumC2047a.ALIGNED_WEEK_OF_YEAR), 7));
            case 10:
                int i2 = (int) j;
                if (this.f409b != i2) {
                    EnumC2047a.MONTH_OF_YEAR.m649r(i2);
                    return m475O(this.f408a, i2, this.f410c);
                }
                return this;
            case 11:
                return m484M(j - m480H());
            case 12:
                return m488R((int) j);
            case 13:
                if (mo460w(EnumC2047a.ERA) != j) {
                    return m488R(1 - this.f408a);
                }
                return this;
            default:
                throw new C2066t(AbstractC1970c.m541a("Unsupported field: ", interfaceC2063q));
        }
    }

    /* JADX INFO: renamed from: R */
    public final LocalDate m488R(int i) {
        if (this.f408a == i) {
            return this;
        }
        EnumC2047a.YEAR.m649r(i);
        return m475O(i, this.f409b, this.f410c);
    }

    /* JADX INFO: renamed from: Q */
    public final LocalDate m487Q(int i) {
        if (m479G() == i) {
            return this;
        }
        int i2 = this.f408a;
        long j = i2;
        EnumC2047a.YEAR.m649r(j);
        EnumC2047a.DAY_OF_YEAR.m649r(i);
        C1997r.f480c.getClass();
        boolean zM583i = C1997r.m583i(j);
        if (i == 366 && !zM583i) {
            throw new C1969b("Invalid date 'DayOfYear 366' as '" + i2 + "' is not a leap year");
        }
        EnumC2036j enumC2036jM631E = EnumC2036j.m631E(((i - 1) / 31) + 1);
        if (i > (enumC2036jM631E.m632A(zM583i) + enumC2036jM631E.m634v(zM583i)) - 1) {
            enumC2036jM631E = EnumC2036j.f567a[((((int) 1) + 12) + enumC2036jM631E.ordinal()) % 12];
        }
        return new LocalDate(i2, enumC2036jM631E.getValue(), (i - enumC2036jM631E.m634v(zM583i)) + 1);
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public final LocalDate mo469d(long j, InterfaceC2065s interfaceC2065s) {
        if (interfaceC2065s instanceof EnumC2048b) {
            switch (AbstractC2007e.f499b[((EnumC2048b) interfaceC2065s).ordinal()]) {
                case 1:
                    return plusDays(j);
                case 2:
                    return plusDays(AbstractC1965a.m409O(j, 7));
                case 3:
                    return m484M(j);
                case 4:
                    return m485N(j);
                case 5:
                    return m485N(AbstractC1965a.m409O(j, 10));
                case 6:
                    return m485N(AbstractC1965a.m409O(j, 100));
                case 7:
                    return m485N(AbstractC1965a.m409O(j, MediaDataController.MAX_STYLE_RUNS_COUNT));
                case 8:
                    EnumC2047a enumC2047a = EnumC2047a.ERA;
                    return mo468c(AbstractC1965a.m410P(mo460w(enumC2047a), j), enumC2047a);
                default:
                    throw new C2066t("Unsupported unit: " + interfaceC2065s);
            }
        }
        return (LocalDate) interfaceC2065s.mo651h(this, j);
    }

    /* JADX INFO: renamed from: N */
    public final LocalDate m485N(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2047a enumC2047a = EnumC2047a.YEAR;
        return m475O(enumC2047a.f592b.m661a(((long) this.f408a) + j, enumC2047a), this.f409b, this.f410c);
    }

    /* JADX INFO: renamed from: M */
    public final LocalDate m484M(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f408a) * 12) + ((long) (this.f409b - 1)) + j;
        EnumC2047a enumC2047a = EnumC2047a.YEAR;
        long j3 = 12;
        return m475O(enumC2047a.f592b.m661a(AbstractC1965a.m414T(j2, j3), enumC2047a), ((int) AbstractC1965a.m413S(j2, j3)) + 1, this.f410c);
    }

    public LocalDate plusDays(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = ((long) this.f410c) + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new LocalDate(this.f408a, this.f409b, (int) j2);
            }
            if (j2 <= 59) {
                long jM482J = m482J();
                if (j2 <= jM482J) {
                    return new LocalDate(this.f408a, this.f409b, (int) j2);
                }
                short s = this.f409b;
                if (s < 12) {
                    return new LocalDate(this.f408a, s + 1, (int) (j2 - jM482J));
                }
                EnumC2047a.YEAR.m649r(this.f408a + 1);
                return new LocalDate(this.f408a + 1, 1, (int) (j2 - jM482J));
            }
        }
        return m474K(AbstractC1965a.m410P(mo491x(), j));
    }

    @Override // j$.time.temporal.InterfaceC2059m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2059m mo471r(long j, EnumC2048b enumC2048b) {
        return j == Long.MIN_VALUE ? mo469d(Long.MAX_VALUE, enumC2048b).mo469d(1L, enumC2048b) : mo469d(-j, enumC2048b);
    }

    @Override // j$.time.temporal.InterfaceC2060n
    /* JADX INFO: renamed from: k */
    public final Object mo458k(C2009a c2009a) {
        return c2009a == AbstractC2064r.f615f ? this : AbstractC1965a.m437t(this, c2009a);
    }

    @Override // j$.time.temporal.InterfaceC2061o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2059m mo459n(InterfaceC2059m interfaceC2059m) {
        return AbstractC1965a.m418a(this, interfaceC2059m);
    }

    @Override // j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: y */
    public final ChronoLocalDateTime mo492y(C2034h c2034h) {
        return LocalDateTime.m494E(this, c2034h);
    }

    public LocalDateTime atStartOfDay() {
        return LocalDateTime.m494E(this, C2034h.f560g);
    }

    public ZonedDateTime atStartOfDay(ZoneId zoneId) {
        C2070b c2070bM670e;
        Objects.requireNonNull(zoneId, "zone");
        LocalDateTime localDateTimeM494E = LocalDateTime.m494E(this, C2034h.f560g);
        if (!(zoneId instanceof ZoneOffset) && (c2070bM670e = zoneId.getRules().m670e(localDateTimeM494E)) != null && c2070bM670e.m677h()) {
            localDateTimeM494E = c2070bM670e.f638b.m498H(c2070bM670e.f640d.getTotalSeconds() - c2070bM670e.f639c.getTotalSeconds());
        }
        return ZonedDateTime.m529v(localDateTimeM494E, zoneId, null);
    }

    @Override // j$.time.chrono.InterfaceC1981b
    /* JADX INFO: renamed from: x */
    public final long mo491x() {
        long j = this.f408a;
        long j2 = this.f409b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + ((long) (this.f410c - 1));
        if (j2 > 2) {
            j4 = !m481I() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC1981b interfaceC1981b) {
        if (interfaceC1981b instanceof LocalDate) {
            return m490v((LocalDate) interfaceC1981b);
        }
        return AbstractC1965a.m422e(this, interfaceC1981b);
    }

    /* JADX INFO: renamed from: v */
    public final int m490v(LocalDate localDate) {
        int i = this.f408a - localDate.f408a;
        if (i != 0) {
            return i;
        }
        int i2 = this.f409b - localDate.f409b;
        return i2 == 0 ? this.f410c - localDate.f410c : i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && m490v((LocalDate) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC1981b
    public final int hashCode() {
        int i = this.f408a;
        return (((i << 11) + (this.f409b << 6)) + this.f410c) ^ (i & (-2048));
    }

    @Override // j$.time.chrono.InterfaceC1981b
    public final String toString() {
        int i = this.f408a;
        short s = this.f409b;
        short s2 = this.f410c;
        int iAbs = Math.abs(i);
        StringBuilder sb = new StringBuilder(10);
        if (iAbs >= 1000) {
            if (i > 9999) {
                sb.append(SignatureVisitor.EXTENDS);
            }
            sb.append(i);
        } else if (i < 0) {
            sb.append(i + XCallback.PRIORITY_LOWEST);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + XCallback.PRIORITY_HIGHEST);
            sb.deleteCharAt(0);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append((int) s2);
        return sb.toString();
    }

    private Object writeReplace() {
        return new C2041o((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
