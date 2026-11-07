package j$.time;

import de.robv.android.xposed.callbacks.XCallback;
import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.nio.file.C2148b;
import j$.time.chrono.C2203r;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.EnumC2204s;
import j$.time.chrono.InterfaceC2187b;
import j$.time.chrono.InterfaceC2196k;
import j$.time.chrono.InterfaceC2197l;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2271r;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.InterfaceC2268o;
import j$.time.temporal.InterfaceC2269p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.time.zone.C2274b;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class LocalDate implements Temporal, InterfaceC2266m, InterfaceC2187b, Serializable {

    /* JADX INFO: renamed from: d */
    public static final LocalDate f609d = of(-999999999, 1, 1);

    /* JADX INFO: renamed from: e */
    public static final LocalDate f610e = of(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;

    /* JADX INFO: renamed from: a */
    public final int f611a;

    /* JADX INFO: renamed from: b */
    public final short f612b;

    /* JADX INFO: renamed from: c */
    public final short f613c;

    static {
        of(1970, 1, 1);
    }

    public LocalDate(int i, int i2, int i3) {
        this.f611a = i;
        this.f612b = (short) i2;
        this.f613c = (short) i3;
    }

    /* JADX INFO: renamed from: D */
    public static LocalDate m657D(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else {
                C2203r.f699c.getClass();
                if (C2203r.a0(i)) {
                    i4 = 29;
                }
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    C2148b.m610c("Invalid date 'February 29' as '", i, "' is not a leap year");
                    return null;
                }
                throw new C2184b("Invalid date '" + EnumC2245k.m822K(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    /* JADX INFO: renamed from: I */
    public static LocalDate m658I(InterfaceC2265l interfaceC2265l) {
        Objects.requireNonNull(interfaceC2265l, "temporal");
        LocalDate localDate = (LocalDate) interfaceC2265l.mo530d(AbstractC2270q.f852f);
        if (localDate != null) {
            return localDate;
        }
        C2148b.m613f("Unable to obtain LocalDate from TemporalAccessor: ", interfaceC2265l, " of type ", interfaceC2265l.getClass().getName());
        return null;
    }

    public static LocalDate f0(C2183a c2183a) {
        Instant instantOfEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        ZoneId zoneId = c2183a.f655a;
        Objects.requireNonNull(instantOfEpochMilli, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return g0(Math.floorDiv(instantOfEpochMilli.getEpochSecond() + ((long) zoneId.getRules().getOffset(instantOfEpochMilli).getTotalSeconds()), 86400L));
    }

    public static LocalDate g0(long j) {
        long j2;
        EnumC2254a.EPOCH_DAY.a0(j);
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
        EnumC2254a enumC2254a = EnumC2254a.YEAR;
        return new LocalDate(enumC2254a.f830b.m837a(j7, enumC2254a), i3, i4);
    }

    public static LocalDate h0(int i, int i2) {
        long j = i;
        EnumC2254a.YEAR.a0(j);
        EnumC2254a.DAY_OF_YEAR.a0(i2);
        C2203r.f699c.getClass();
        boolean zA0 = C2203r.a0(j);
        if (i2 == 366 && !zA0) {
            C2148b.m610c("Invalid date 'DayOfYear 366' as '", i, "' is not a leap year");
            return null;
        }
        EnumC2245k enumC2245kM822K = EnumC2245k.m822K(((i2 - 1) / 31) + 1);
        if (i2 > (enumC2245kM822K.m823D(zA0) + enumC2245kM822K.m825s(zA0)) - 1) {
            enumC2245kM822K = EnumC2245k.f810a[(enumC2245kM822K.ordinal() + 13) % 12];
        }
        return new LocalDate(i, enumC2245kM822K.getValue(), (i2 - enumC2245kM822K.m825s(zA0)) + 1);
    }

    public static LocalDate m0(int i, int i2, int i3) {
        if (i2 == 2) {
            C2203r.f699c.getClass();
            i3 = Math.min(i3, C2203r.a0((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate now() {
        return f0(AbstractC2108g.m503A());
    }

    public static LocalDate of(int i, int i2, int i3) {
        EnumC2254a.YEAR.a0(i);
        EnumC2254a.MONTH_OF_YEAR.a0(i2);
        EnumC2254a.DAY_OF_MONTH.a0(i3);
        return m657D(i, i2, i3);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2249o((byte) 3, this);
    }

    /* JADX INFO: renamed from: K */
    public final int m659K(InterfaceC2269p interfaceC2269p) {
        switch (AbstractC2241g.f804a[((EnumC2254a) interfaceC2269p).ordinal()]) {
            case 1:
                return this.f613c;
            case 2:
                return m666Y();
            case 3:
                return ((this.f613c - 1) / 7) + 1;
            case 4:
                int i = this.f611a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return m663S().getValue();
            case 6:
                return ((this.f613c - 1) % 7) + 1;
            case 7:
                return ((m666Y() - 1) % 7) + 1;
            case 8:
                throw new C2271r("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((m666Y() - 1) / 7) + 1;
            case 10:
                return this.f612b;
            case 11:
                throw new C2271r("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.f611a;
            case 13:
                return this.f611a >= 1 ? 1 : 0;
            default:
                throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: L */
    public final long mo660L() {
        long j = this.f611a;
        long j2 = this.f612b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + ((long) (this.f613c - 1));
        if (j2 > 2) {
            j4 = !c0() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: M */
    public final ChronoLocalDateTime mo661M(LocalTime localTime) {
        return LocalDateTime.of(this, localTime);
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: P */
    public final InterfaceC2197l mo662P() {
        return getYear() >= 1 ? EnumC2204s.CE : EnumC2204s.BCE;
    }

    /* JADX INFO: renamed from: S */
    public final DayOfWeek m663S() {
        return DayOfWeek.m640s(((int) Math.floorMod(mo660L() + 3, 7L)) + 1);
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: U */
    public final InterfaceC2187b mo664U(InterfaceC2268o interfaceC2268o) {
        if (interfaceC2268o != null) {
            Period period = (Period) interfaceC2268o;
            return j0((((long) period.f636a) * 12) + ((long) period.f637b)).plusDays(period.getDays());
        }
        Objects.requireNonNull(interfaceC2268o, "amountToAdd");
        return (LocalDate) ((Period) interfaceC2268o).mo646s(this);
    }

    @Override // j$.time.chrono.InterfaceC2187b, java.lang.Comparable
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC2187b interfaceC2187b) {
        return interfaceC2187b instanceof LocalDate ? m669s((LocalDate) interfaceC2187b) : super.compareTo(interfaceC2187b);
    }

    /* JADX INFO: renamed from: Y */
    public final int m666Y() {
        return (EnumC2245k.m822K(this.f612b).m825s(c0()) + this.f613c) - 1;
    }

    public final long a0() {
        return ((((long) this.f611a) * 12) + ((long) this.f612b)) - 1;
    }

    public ZonedDateTime atStartOfDay(ZoneId zoneId) {
        C2274b c2274bM847e;
        Objects.requireNonNull(zoneId, "zone");
        LocalDateTime localDateTimeOf = LocalDateTime.of(this, LocalTime.f620g);
        if (!(zoneId instanceof ZoneOffset) && (c2274bM847e = zoneId.getRules().m847e(localDateTimeOf)) != null && c2274bM847e.m854s()) {
            localDateTimeOf = c2274bM847e.f874b.m676Y(c2274bM847e.f876d.getTotalSeconds() - c2274bM847e.f875c.getTotalSeconds());
        }
        return ZonedDateTime.m709I(localDateTimeOf, null, zoneId);
    }

    public final boolean b0(InterfaceC2187b interfaceC2187b) {
        return interfaceC2187b instanceof LocalDate ? m669s((LocalDate) interfaceC2187b) < 0 : mo660L() < interfaceC2187b.mo660L();
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

    public final boolean c0() {
        C2203r c2203r = C2203r.f699c;
        long j = this.f611a;
        c2203r.getClass();
        return C2203r.a0(j);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: d */
    public final Object mo530d(C2213e c2213e) {
        return c2213e == AbstractC2270q.f852f ? this : super.mo530d(c2213e);
    }

    public final int d0() {
        short s = this.f612b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : c0() ? 29 : 28;
    }

    public final long e0(LocalDate localDate) {
        return (((localDate.a0() * 32) + ((long) localDate.getDayOfMonth())) - ((a0() * 32) + ((long) getDayOfMonth()))) / 32;
    }

    @Override // j$.time.chrono.InterfaceC2187b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && m669s((LocalDate) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2196k mo667f() {
        return C2203r.f699c;
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: g */
    public final int mo642g(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? m659K(interfaceC2269p) : super.mo642g(interfaceC2269p);
    }

    public int getDayOfMonth() {
        return this.f613c;
    }

    public int getMonthValue() {
        return this.f612b;
    }

    public int getYear() {
        return this.f611a;
    }

    @Override // j$.time.chrono.InterfaceC2187b
    public final int hashCode() {
        int i = this.f611a;
        return (i & (-2048)) ^ (((i << 11) + (this.f612b << 6)) + this.f613c);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public final LocalDate mo653b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDate) temporalUnit.mo828s(this, j);
        }
        switch (AbstractC2241g.f805b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return plusDays(j);
            case 2:
                return k0(j);
            case 3:
                return j0(j);
            case 4:
                return l0(j);
            case 5:
                return l0(Math.multiplyExact(j, 10L));
            case 6:
                return l0(Math.multiplyExact(j, 100L));
            case 7:
                return l0(Math.multiplyExact(j, 1000L));
            case 8:
                EnumC2254a enumC2254a = EnumC2254a.ERA;
                return mo652a(Math.addExact(mo532k(enumC2254a), j), enumC2254a);
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return null;
        }
    }

    public final LocalDate j0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f611a) * 12) + ((long) (this.f612b - 1)) + j;
        EnumC2254a enumC2254a = EnumC2254a.YEAR;
        return m0(enumC2254a.f830b.m837a(Math.floorDiv(j2, 12L), enumC2254a), ((int) Math.floorMod(j2, 12L)) + 1, this.f613c);
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: k */
    public final long mo532k(InterfaceC2269p interfaceC2269p) {
        return interfaceC2269p instanceof EnumC2254a ? interfaceC2269p == EnumC2254a.EPOCH_DAY ? mo660L() : interfaceC2269p == EnumC2254a.PROLEPTIC_MONTH ? a0() : m659K(interfaceC2269p) : interfaceC2269p.mo831S(this);
    }

    public final LocalDate k0(long j) {
        return plusDays(Math.multiplyExact(j, 7L));
    }

    @Override // j$.time.temporal.InterfaceC2265l
    /* JADX INFO: renamed from: l */
    public final C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return interfaceC2269p.mo829D(this);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        if (!enumC2254a.isDateBased()) {
            throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
        int i = AbstractC2241g.f804a[enumC2254a.ordinal()];
        if (i == 1) {
            return C2272s.m835f(1L, d0());
        }
        if (i == 2) {
            return C2272s.m835f(1L, c0() ? 366 : 365);
        }
        if (i != 3) {
            return i != 4 ? enumC2254a.f830b : getYear() <= 0 ? C2272s.m835f(1L, 1000000000L) : C2272s.m835f(1L, 999999999L);
        }
        return C2272s.m835f(1L, (EnumC2245k.m822K(this.f612b) != EnumC2245k.FEBRUARY || c0()) ? 5L : 4L);
    }

    public final LocalDate l0(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2254a enumC2254a = EnumC2254a.YEAR;
        return m0(enumC2254a.f830b.m837a(((long) this.f611a) + j, enumC2254a), this.f612b, this.f613c);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo656n(Temporal temporal, TemporalUnit temporalUnit) {
        LocalDate localDateM658I = m658I(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, localDateM658I);
        }
        switch (AbstractC2241g.f805b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return localDateM658I.mo660L() - mo660L();
            case 2:
                return (localDateM658I.mo660L() - mo660L()) / 7;
            case 3:
                return e0(localDateM658I);
            case 4:
                return e0(localDateM658I) / 12;
            case 5:
                return e0(localDateM658I) / 120;
            case 6:
                return e0(localDateM658I) / 1200;
            case 7:
                return e0(localDateM658I) / 12000;
            case 8:
                EnumC2254a enumC2254a = EnumC2254a.ERA;
                return localDateM658I.mo532k(enumC2254a) - mo532k(enumC2254a);
            default:
                C2148b.m611d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
    public final LocalDate mo652a(long j, InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            return (LocalDate) interfaceC2269p.mo832Y(this, j);
        }
        EnumC2254a enumC2254a = (EnumC2254a) interfaceC2269p;
        enumC2254a.a0(j);
        switch (AbstractC2241g.f804a[enumC2254a.ordinal()]) {
            case 1:
                int i = (int) j;
                if (this.f613c != i) {
                    return of(this.f611a, this.f612b, i);
                }
                return this;
            case 2:
                int i2 = (int) j;
                if (m666Y() != i2) {
                    return h0(this.f611a, i2);
                }
                return this;
            case 3:
                return k0(j - mo532k(EnumC2254a.ALIGNED_WEEK_OF_MONTH));
            case 4:
                if (this.f611a < 1) {
                    j = 1 - j;
                }
                return p0((int) j);
            case 5:
                return plusDays(j - ((long) m663S().getValue()));
            case 6:
                return plusDays(j - mo532k(EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return plusDays(j - mo532k(EnumC2254a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return g0(j);
            case 9:
                return k0(j - mo532k(EnumC2254a.ALIGNED_WEEK_OF_YEAR));
            case 10:
                int i3 = (int) j;
                if (this.f612b != i3) {
                    EnumC2254a.MONTH_OF_YEAR.a0(i3);
                    return m0(this.f611a, i3, this.f613c);
                }
                return this;
            case 11:
                return j0(j - a0());
            case 12:
                return p0((int) j);
            case 13:
                if (mo532k(EnumC2254a.ERA) != j) {
                    return p0(1 - this.f611a);
                }
                return this;
            default:
                throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
        }
    }

    @Override // j$.time.chrono.InterfaceC2187b
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDate mo677j(InterfaceC2266m interfaceC2266m) {
        return interfaceC2266m instanceof LocalDate ? (LocalDate) interfaceC2266m : (LocalDate) interfaceC2266m.mo641e(this);
    }

    public final LocalDate p0(int i) {
        if (this.f611a == i) {
            return this;
        }
        EnumC2254a.YEAR.a0(i);
        return m0(i, this.f612b, this.f613c);
    }

    public LocalDate plusDays(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = ((long) this.f613c) + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new LocalDate(this.f611a, this.f612b, (int) j2);
            }
            if (j2 <= 59) {
                long jD0 = d0();
                if (j2 <= jD0) {
                    return new LocalDate(this.f611a, this.f612b, (int) j2);
                }
                short s = this.f612b;
                if (s < 12) {
                    return new LocalDate(this.f611a, s + 1, (int) (j2 - jD0));
                }
                EnumC2254a.YEAR.a0(this.f611a + 1);
                return new LocalDate(this.f611a + 1, 1, (int) (j2 - jD0));
            }
        }
        return g0(Math.addExact(mo660L(), j));
    }

    /* JADX INFO: renamed from: s */
    public final int m669s(LocalDate localDate) {
        int i = this.f611a - localDate.f611a;
        return (i == 0 && (i = this.f612b - localDate.f612b) == 0) ? this.f613c - localDate.f613c : i;
    }

    @Override // j$.time.chrono.InterfaceC2187b
    public final String toString() {
        int i = this.f611a;
        short s = this.f612b;
        short s2 = this.f613c;
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
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append((int) s2);
        return sb.toString();
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: c */
    public final InterfaceC2187b mo654c(long j, TemporalUnit temporalUnit) {
        return mo653b(-1L, temporalUnit);
    }

    public LocalDateTime atStartOfDay() {
        return LocalDateTime.of(this, LocalTime.f620g);
    }
}
