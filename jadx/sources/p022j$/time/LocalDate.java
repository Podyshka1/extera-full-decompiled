package p022j$.time;

import de.robv.android.xposed.callbacks.XCallback;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.MediaDataController;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.chrono.C2136r;
import p022j$.time.chrono.ChronoLocalDateTime;
import p022j$.time.chrono.InterfaceC2120b;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.format.C2148a;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.C2205t;
import p022j$.time.temporal.C2206u;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.EnumC2187b;
import p022j$.time.temporal.InterfaceC2198m;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2200o;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.time.temporal.InterfaceC2204s;
import p022j$.time.zone.C2209b;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class LocalDate implements InterfaceC2198m, InterfaceC2200o, InterfaceC2120b, Serializable {

    /* JADX INFO: renamed from: d */
    public static final LocalDate f638d = m596of(-999999999, 1, 1);

    /* JADX INFO: renamed from: e */
    public static final LocalDate f639e = m596of(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;

    /* JADX INFO: renamed from: a */
    public final int f640a;

    /* JADX INFO: renamed from: b */
    public final short f641b;

    /* JADX INFO: renamed from: c */
    public final short f642c;

    static {
        m596of(1970, 1, 1);
    }

    public static LocalDate now() {
        ZoneId zoneIdSystemDefault = ZoneId.systemDefault();
        Objects.requireNonNull(new C2107a(zoneIdSystemDefault), "clock");
        long jCurrentTimeMillis = System.currentTimeMillis();
        Instant instant = Instant.f635c;
        long j = MediaDataController.MAX_STYLE_RUNS_COUNT;
        Instant instantM585v = Instant.m585v(AbstractC2104a.m534T(jCurrentTimeMillis, j), ((int) AbstractC2104a.m533S(jCurrentTimeMillis, j)) * 1000000);
        Objects.requireNonNull(instantM585v, "instant");
        Objects.requireNonNull(zoneIdSystemDefault, "zone");
        return m594K(AbstractC2104a.m534T(instantM585v.f636a + ((long) zoneIdSystemDefault.getRules().getOffset(instantM585v).getTotalSeconds()), 86400));
    }

    /* JADX INFO: renamed from: of */
    public static LocalDate m596of(int i, int i2, int i3) {
        EnumC2186a.YEAR.m774r(i);
        EnumC2186a.MONTH_OF_YEAR.m774r(i2);
        EnumC2186a.DAY_OF_MONTH.m774r(i3);
        return m592A(i, i2, i3);
    }

    /* JADX INFO: renamed from: K */
    public static LocalDate m594K(long j) {
        long j2;
        EnumC2186a.EPOCH_DAY.m774r(j);
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
        EnumC2186a enumC2186a = EnumC2186a.YEAR;
        return new LocalDate(enumC2186a.f827b.m786a(j7, enumC2186a), i3, i4);
    }

    /* JADX INFO: renamed from: D */
    public static LocalDate m593D(InterfaceC2199n interfaceC2199n) {
        Objects.requireNonNull(interfaceC2199n, "temporal");
        LocalDate localDate = (LocalDate) interfaceC2199n.mo578k(AbstractC2203r.f850f);
        if (localDate != null) {
            return localDate;
        }
        throw new C2108b("Unable to obtain LocalDate from TemporalAccessor: " + interfaceC2199n + " of type " + interfaceC2199n.getClass().getName());
    }

    /* JADX INFO: renamed from: A */
    public static LocalDate m592A(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else {
                C2136r.f714c.getClass();
                if (C2136r.m706i(i)) {
                    i4 = 29;
                }
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new C2108b("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                throw new C2108b("Invalid date '" + EnumC2175j.m754E(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    /* JADX INFO: renamed from: O */
    public static LocalDate m595O(int i, int i2, int i3) {
        if (i2 == 2) {
            C2136r.f714c.getClass();
            i3 = Math.min(i3, C2136r.m706i((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    public LocalDate(int i, int i2, int i3) {
        this.f640a = i;
        this.f641b = (short) i2;
        this.f642c = (short) i3;
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: e */
    public final boolean mo575e(InterfaceC2202q interfaceC2202q) {
        return AbstractC2104a.m555r(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: j */
    public final C2206u mo577j(InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return interfaceC2202q.mo770i(this);
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        if (!enumC2186a.isDateBased()) {
            throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
        int i = AbstractC2146e.f733a[enumC2186a.ordinal()];
        if (i == 1) {
            return C2206u.m784e(1L, m603J());
        }
        if (i == 2) {
            return C2206u.m784e(1L, m602I() ? 366 : 365);
        }
        if (i != 3) {
            return i != 4 ? enumC2186a.f827b : getYear() <= 0 ? C2206u.m784e(1L, 1000000000L) : C2206u.m784e(1L, 999999999L);
        }
        return C2206u.m784e(1L, (EnumC2175j.m754E(this.f641b) != EnumC2175j.FEBRUARY || m602I()) ? 5L : 4L);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: h */
    public final int mo576h(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            return m598E(interfaceC2202q);
        }
        return AbstractC2203r.m780a(this, interfaceC2202q);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: w */
    public final long mo580w(InterfaceC2202q interfaceC2202q) {
        if (interfaceC2202q instanceof EnumC2186a) {
            if (interfaceC2202q == EnumC2186a.EPOCH_DAY) {
                return mo612x();
            }
            if (interfaceC2202q == EnumC2186a.PROLEPTIC_MONTH) {
                return m601H();
            }
            return m598E(interfaceC2202q);
        }
        return interfaceC2202q.mo772k(this);
    }

    /* JADX INFO: renamed from: E */
    public final int m598E(InterfaceC2202q interfaceC2202q) {
        switch (AbstractC2146e.f733a[((EnumC2186a) interfaceC2202q).ordinal()]) {
            case 1:
                return this.f642c;
            case 2:
                return m600G();
            case 3:
                return ((this.f642c - 1) / 7) + 1;
            case 4:
                int i = this.f640a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return m599F().getValue();
            case 6:
                return ((this.f642c - 1) % 7) + 1;
            case 7:
                return ((m600G() - 1) % 7) + 1;
            case 8:
                throw new C2205t("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((m600G() - 1) / 7) + 1;
            case 10:
                return this.f641b;
            case 11:
                throw new C2205t("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.f640a;
            case 13:
                return this.f640a >= 1 ? 1 : 0;
            default:
                throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
    }

    /* JADX INFO: renamed from: H */
    public final long m601H() {
        return ((((long) this.f640a) * 12) + ((long) this.f641b)) - 1;
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: a */
    public final InterfaceC2129k mo610a() {
        return C2136r.f714c;
    }

    public int getYear() {
        return this.f640a;
    }

    /* JADX INFO: renamed from: G */
    public final int m600G() {
        return (EnumC2175j.m754E(this.f641b).m757v(m602I()) + this.f642c) - 1;
    }

    /* JADX INFO: renamed from: F */
    public final DayOfWeek m599F() {
        return DayOfWeek.m574v(((int) AbstractC2104a.m533S(mo612x() + 3, 7)) + 1);
    }

    /* JADX INFO: renamed from: I */
    public final boolean m602I() {
        C2136r c2136r = C2136r.f714c;
        long j = this.f640a;
        c2136r.getClass();
        return C2136r.m706i(j);
    }

    /* JADX INFO: renamed from: J */
    public final int m603J() {
        short s = this.f641b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : m602I() ? 29 : 28;
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: i */
    public final InterfaceC2198m mo590i(LocalDate localDate) {
        return AbstractC2109c.m665b(localDate) ? localDate : (LocalDate) localDate.mo579n(this);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public final LocalDate mo588c(long j, InterfaceC2202q interfaceC2202q) {
        if (!(interfaceC2202q instanceof EnumC2186a)) {
            return (LocalDate) interfaceC2202q.mo773n(this, j);
        }
        EnumC2186a enumC2186a = (EnumC2186a) interfaceC2202q;
        enumC2186a.m774r(j);
        switch (AbstractC2146e.f733a[enumC2186a.ordinal()]) {
            case 1:
                int i = (int) j;
                if (this.f642c != i) {
                    return m596of(this.f640a, this.f641b, i);
                }
                return this;
            case 2:
                return m608Q((int) j);
            case 3:
                return plusDays(AbstractC2104a.m529O(j - mo580w(EnumC2186a.ALIGNED_WEEK_OF_MONTH), 7));
            case 4:
                if (this.f640a < 1) {
                    j = 1 - j;
                }
                return m609R((int) j);
            case 5:
                return plusDays(j - ((long) m599F().getValue()));
            case 6:
                return plusDays(j - mo580w(EnumC2186a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return plusDays(j - mo580w(EnumC2186a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return m594K(j);
            case 9:
                return plusDays(AbstractC2104a.m529O(j - mo580w(EnumC2186a.ALIGNED_WEEK_OF_YEAR), 7));
            case 10:
                int i2 = (int) j;
                if (this.f641b != i2) {
                    EnumC2186a.MONTH_OF_YEAR.m774r(i2);
                    return m595O(this.f640a, i2, this.f642c);
                }
                return this;
            case 11:
                return m605M(j - m601H());
            case 12:
                return m609R((int) j);
            case 13:
                if (mo580w(EnumC2186a.ERA) != j) {
                    return m609R(1 - this.f640a);
                }
                return this;
            default:
                throw new C2205t(AbstractC2109c.m664a("Unsupported field: ", interfaceC2202q));
        }
    }

    /* JADX INFO: renamed from: R */
    public final LocalDate m609R(int i) {
        if (this.f640a == i) {
            return this;
        }
        EnumC2186a.YEAR.m774r(i);
        return m595O(i, this.f641b, this.f642c);
    }

    /* JADX INFO: renamed from: Q */
    public final LocalDate m608Q(int i) {
        if (m600G() == i) {
            return this;
        }
        int i2 = this.f640a;
        long j = i2;
        EnumC2186a.YEAR.m774r(j);
        EnumC2186a.DAY_OF_YEAR.m774r(i);
        C2136r.f714c.getClass();
        boolean zM706i = C2136r.m706i(j);
        if (i == 366 && !zM706i) {
            throw new C2108b("Invalid date 'DayOfYear 366' as '" + i2 + "' is not a leap year");
        }
        EnumC2175j enumC2175jM754E = EnumC2175j.m754E(((i - 1) / 31) + 1);
        if (i > (enumC2175jM754E.m755A(zM706i) + enumC2175jM754E.m757v(zM706i)) - 1) {
            enumC2175jM754E = EnumC2175j.f802a[((((int) 1) + 12) + enumC2175jM754E.ordinal()) % 12];
        }
        return new LocalDate(i2, enumC2175jM754E.getValue(), (i - enumC2175jM754E.m757v(zM706i)) + 1);
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public final LocalDate mo589d(long j, InterfaceC2204s interfaceC2204s) {
        if (interfaceC2204s instanceof EnumC2187b) {
            switch (AbstractC2146e.f734b[((EnumC2187b) interfaceC2204s).ordinal()]) {
                case 1:
                    return plusDays(j);
                case 2:
                    return plusDays(AbstractC2104a.m529O(j, 7));
                case 3:
                    return m605M(j);
                case 4:
                    return m606N(j);
                case 5:
                    return m606N(AbstractC2104a.m529O(j, 10));
                case 6:
                    return m606N(AbstractC2104a.m529O(j, 100));
                case 7:
                    return m606N(AbstractC2104a.m529O(j, MediaDataController.MAX_STYLE_RUNS_COUNT));
                case 8:
                    EnumC2186a enumC2186a = EnumC2186a.ERA;
                    return mo588c(AbstractC2104a.m530P(mo580w(enumC2186a), j), enumC2186a);
                default:
                    throw new C2205t("Unsupported unit: " + interfaceC2204s);
            }
        }
        return (LocalDate) interfaceC2204s.mo776h(this, j);
    }

    /* JADX INFO: renamed from: N */
    public final LocalDate m606N(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2186a enumC2186a = EnumC2186a.YEAR;
        return m595O(enumC2186a.f827b.m786a(((long) this.f640a) + j, enumC2186a), this.f641b, this.f642c);
    }

    /* JADX INFO: renamed from: M */
    public final LocalDate m605M(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f640a) * 12) + ((long) (this.f641b - 1)) + j;
        EnumC2186a enumC2186a = EnumC2186a.YEAR;
        long j3 = 12;
        return m595O(enumC2186a.f827b.m786a(AbstractC2104a.m534T(j2, j3), enumC2186a), ((int) AbstractC2104a.m533S(j2, j3)) + 1, this.f642c);
    }

    public LocalDate plusDays(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = ((long) this.f642c) + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new LocalDate(this.f640a, this.f641b, (int) j2);
            }
            if (j2 <= 59) {
                long jM603J = m603J();
                if (j2 <= jM603J) {
                    return new LocalDate(this.f640a, this.f641b, (int) j2);
                }
                short s = this.f641b;
                if (s < 12) {
                    return new LocalDate(this.f640a, s + 1, (int) (j2 - jM603J));
                }
                EnumC2186a.YEAR.m774r(this.f640a + 1);
                return new LocalDate(this.f640a + 1, 1, (int) (j2 - jM603J));
            }
        }
        return m594K(AbstractC2104a.m530P(mo612x(), j));
    }

    @Override // p022j$.time.temporal.InterfaceC2198m
    /* JADX INFO: renamed from: r */
    public final InterfaceC2198m mo591r(long j, EnumC2187b enumC2187b) {
        return j == Long.MIN_VALUE ? mo589d(Long.MAX_VALUE, enumC2187b).mo589d(1L, enumC2187b) : mo589d(-j, enumC2187b);
    }

    @Override // p022j$.time.temporal.InterfaceC2199n
    /* JADX INFO: renamed from: k */
    public final Object mo578k(C2148a c2148a) {
        return c2148a == AbstractC2203r.f850f ? this : AbstractC2104a.m557t(this, c2148a);
    }

    @Override // p022j$.time.temporal.InterfaceC2200o
    /* JADX INFO: renamed from: n */
    public final InterfaceC2198m mo579n(InterfaceC2198m interfaceC2198m) {
        return AbstractC2104a.m538a(this, interfaceC2198m);
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: y */
    public final ChronoLocalDateTime mo613y(C2173h c2173h) {
        return LocalDateTime.m615E(this, c2173h);
    }

    public LocalDateTime atStartOfDay() {
        return LocalDateTime.m615E(this, C2173h.f795g);
    }

    public ZonedDateTime atStartOfDay(ZoneId zoneId) {
        C2209b c2209bM795e;
        Objects.requireNonNull(zoneId, "zone");
        LocalDateTime localDateTimeM615E = LocalDateTime.m615E(this, C2173h.f795g);
        if (!(zoneId instanceof ZoneOffset) && (c2209bM795e = zoneId.getRules().m795e(localDateTimeM615E)) != null && c2209bM795e.m802h()) {
            localDateTimeM615E = c2209bM795e.f873b.m619H(c2209bM795e.f875d.getTotalSeconds() - c2209bM795e.f874c.getTotalSeconds());
        }
        return ZonedDateTime.m652v(localDateTimeM615E, zoneId, null);
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    /* JADX INFO: renamed from: x */
    public final long mo612x() {
        long j = this.f640a;
        long j2 = this.f641b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + ((long) (this.f642c - 1));
        if (j2 > 2) {
            j4 = !m602I() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC2120b interfaceC2120b) {
        if (interfaceC2120b instanceof LocalDate) {
            return m611v((LocalDate) interfaceC2120b);
        }
        return AbstractC2104a.m542e(this, interfaceC2120b);
    }

    /* JADX INFO: renamed from: v */
    public final int m611v(LocalDate localDate) {
        int i = this.f640a - localDate.f640a;
        if (i != 0) {
            return i;
        }
        int i2 = this.f641b - localDate.f641b;
        return i2 == 0 ? this.f642c - localDate.f642c : i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && m611v((LocalDate) obj) == 0;
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    public final int hashCode() {
        int i = this.f640a;
        return (((i << 11) + (this.f641b << 6)) + this.f642c) ^ (i & (-2048));
    }

    @Override // p022j$.time.chrono.InterfaceC2120b
    public final String toString() {
        int i = this.f640a;
        short s = this.f641b;
        short s2 = this.f642c;
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
        return new C2180o((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }
}
