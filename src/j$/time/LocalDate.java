package j$.time;

import de.robv.android.xposed.callbacks.XCallback;
import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.nio.file.C2288b;
import j$.time.chrono.C2343r;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.EnumC2344s;
import j$.time.chrono.InterfaceC2327b;
import j$.time.chrono.InterfaceC2336k;
import j$.time.chrono.InterfaceC2337l;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2410r;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.InterfaceC2407o;
import j$.time.temporal.InterfaceC2408p;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.time.zone.C2413b;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class LocalDate implements Temporal, InterfaceC2405m, InterfaceC2327b, Serializable {

    /* JADX INFO: renamed from: d */
    public static final LocalDate f610d = of(-999999999, 1, 1);

    /* JADX INFO: renamed from: e */
    public static final LocalDate f611e = of(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;

    /* JADX INFO: renamed from: a */
    public final int f612a;

    /* JADX INFO: renamed from: b */
    public final short f613b;

    /* JADX INFO: renamed from: c */
    public final short f614c;

    static {
        of(1970, 1, 1);
    }

    public LocalDate(int i, int i2, int i3) {
        this.f612a = i;
        this.f613b = (short) i2;
        this.f614c = (short) i3;
    }

    /* JADX INFO: renamed from: D */
    public static LocalDate m681D(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else {
                C2343r.f701c.getClass();
                if (C2343r.m803Y(i)) {
                    i4 = 29;
                }
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    C2288b.m634c("Invalid date 'February 29' as '", i, "' is not a leap year");
                    return null;
                }
                throw new DateTimeException("Invalid date '" + EnumC2384j.m866K(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    /* JADX INFO: renamed from: I */
    public static LocalDate m682I(InterfaceC2404l interfaceC2404l) {
        Objects.requireNonNull(interfaceC2404l, "temporal");
        LocalDate localDate = (LocalDate) interfaceC2404l.mo554d(AbstractC2409q.f854f);
        if (localDate != null) {
            return localDate;
        }
        C2288b.m637f("Unable to obtain LocalDate from TemporalAccessor: ", interfaceC2404l, " of type ", interfaceC2404l.getClass().getName());
        return null;
    }

    public static LocalDate d0(C2323a c2323a) {
        Instant instantOfEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        ZoneId zoneId = c2323a.f656a;
        Objects.requireNonNull(instantOfEpochMilli, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return e0(Math.floorDiv(instantOfEpochMilli.getEpochSecond() + ((long) zoneId.getRules().getOffset(instantOfEpochMilli).getTotalSeconds()), 86400L));
    }

    public static LocalDate e0(long j) {
        long j2;
        EnumC2393a.EPOCH_DAY.m877Y(j);
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
        EnumC2393a enumC2393a = EnumC2393a.YEAR;
        return new LocalDate(enumC2393a.f832b.m885a(j7, enumC2393a), i3, i4);
    }

    public static LocalDate f0(int i, int i2) {
        long j = i;
        EnumC2393a.YEAR.m877Y(j);
        EnumC2393a.DAY_OF_YEAR.m877Y(i2);
        C2343r.f701c.getClass();
        boolean zM803Y = C2343r.m803Y(j);
        if (i2 == 366 && !zM803Y) {
            C2288b.m634c("Invalid date 'DayOfYear 366' as '", i, "' is not a leap year");
            return null;
        }
        EnumC2384j enumC2384jM866K = EnumC2384j.m866K(((i2 - 1) / 31) + 1);
        if (i2 > (enumC2384jM866K.m867D(zM803Y) + enumC2384jM866K.m869s(zM803Y)) - 1) {
            enumC2384jM866K = EnumC2384j.f812a[(enumC2384jM866K.ordinal() + 13) % 12];
        }
        return new LocalDate(i, enumC2384jM866K.getValue(), (i2 - enumC2384jM866K.m869s(zM803Y)) + 1);
    }

    public static LocalDate k0(int i, int i2, int i3) {
        if (i2 == 2) {
            C2343r.f701c.getClass();
            i3 = Math.min(i3, C2343r.m803Y((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate now() {
        return d0(AbstractC2248g.m527A());
    }

    public static LocalDate of(int i, int i2, int i3) {
        EnumC2393a.YEAR.m877Y(i);
        EnumC2393a.MONTH_OF_YEAR.m877Y(i2);
        EnumC2393a.DAY_OF_MONTH.m877Y(i3);
        return m681D(i, i2, i3);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2388n((byte) 3, this);
    }

    /* JADX INFO: renamed from: K */
    public final int m683K(InterfaceC2408p interfaceC2408p) {
        switch (AbstractC2354f.f720a[((EnumC2393a) interfaceC2408p).ordinal()]) {
            case 1:
                return this.f614c;
            case 2:
                return m689X();
            case 3:
                return ((this.f614c - 1) / 7) + 1;
            case 4:
                int i = this.f612a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return m686R().getValue();
            case 6:
                return ((this.f614c - 1) % 7) + 1;
            case 7:
                return ((m689X() - 1) % 7) + 1;
            case 8:
                throw new C2410r("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((m689X() - 1) / 7) + 1;
            case 10:
                return this.f613b;
            case 11:
                throw new C2410r("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.f612a;
            case 13:
                return this.f612a >= 1 ? 1 : 0;
            default:
                throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: L */
    public final ChronoLocalDateTime mo684L(LocalTime localTime) {
        return LocalDateTime.of(this, localTime);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: O */
    public final InterfaceC2337l mo685O() {
        return getYear() >= 1 ? EnumC2344s.CE : EnumC2344s.BCE;
    }

    /* JADX INFO: renamed from: R */
    public final DayOfWeek m686R() {
        return DayOfWeek.m664s(((int) Math.floorMod(toEpochDay() + 3, 7L)) + 1);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: T */
    public final InterfaceC2327b mo687T(InterfaceC2407o interfaceC2407o) {
        if (interfaceC2407o != null) {
            Period period = (Period) interfaceC2407o;
            return h0((((long) period.f637a) * 12) + ((long) period.f638b)).plusDays(period.getDays());
        }
        Objects.requireNonNull(interfaceC2407o, "amountToAdd");
        return (LocalDate) ((Period) interfaceC2407o).mo670s(this);
    }

    @Override // j$.time.chrono.InterfaceC2327b, java.lang.Comparable
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC2327b interfaceC2327b) {
        return interfaceC2327b instanceof LocalDate ? m694s((LocalDate) interfaceC2327b) : super.compareTo(interfaceC2327b);
    }

    /* JADX INFO: renamed from: X */
    public final int m689X() {
        return (EnumC2384j.m866K(this.f613b).m869s(a0()) + this.f614c) - 1;
    }

    /* JADX INFO: renamed from: Y */
    public final long m690Y() {
        return ((((long) this.f612a) * 12) + ((long) this.f613b)) - 1;
    }

    /* JADX INFO: renamed from: Z */
    public final boolean m691Z(InterfaceC2327b interfaceC2327b) {
        return interfaceC2327b instanceof LocalDate ? m694s((LocalDate) interfaceC2327b) < 0 : toEpochDay() < interfaceC2327b.toEpochDay();
    }

    public final boolean a0() {
        C2343r c2343r = C2343r.f701c;
        long j = this.f612a;
        c2343r.getClass();
        return C2343r.m803Y(j);
    }

    public ZonedDateTime atStartOfDay(ZoneId zoneId) {
        C2413b c2413bM895e;
        Objects.requireNonNull(zoneId, "zone");
        LocalDateTime localDateTimeOf = LocalDateTime.of(this, LocalTime.f621g);
        if (!(zoneId instanceof ZoneOffset) && (c2413bM895e = zoneId.getRules().m895e(localDateTimeOf)) != null && c2413bM895e.m902s()) {
            localDateTimeOf = c2413bM895e.f876b.m701X(c2413bM895e.f878d.getTotalSeconds() - c2413bM895e.f877c.getTotalSeconds());
        }
        return ZonedDateTime.m742K(localDateTimeOf, null, zoneId);
    }

    public final int b0() {
        short s = this.f613b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : a0() ? 29 : 28;
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

    public final long c0(LocalDate localDate) {
        return (((localDate.m690Y() * 32) + ((long) localDate.getDayOfMonth())) - ((m690Y() * 32) + ((long) getDayOfMonth()))) / 32;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: d */
    public final Object mo554d(C2352d c2352d) {
        return c2352d == AbstractC2409q.f854f ? this : super.mo554d(c2352d);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && m694s((LocalDate) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2336k mo692f() {
        return C2343r.f701c;
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: g */
    public final int mo666g(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? m683K(interfaceC2408p) : super.mo666g(interfaceC2408p);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public final LocalDate mo677b(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDate) temporalUnit.mo872s(this, j);
        }
        switch (AbstractC2354f.f721b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return plusDays(j);
            case 2:
                return i0(j);
            case 3:
                return h0(j);
            case 4:
                return j0(j);
            case 5:
                return j0(Math.multiplyExact(j, 10L));
            case 6:
                return j0(Math.multiplyExact(j, 100L));
            case 7:
                return j0(Math.multiplyExact(j, 1000L));
            case 8:
                EnumC2393a enumC2393a = EnumC2393a.ERA;
                return mo676a(Math.addExact(mo556k(enumC2393a), j), enumC2393a);
            default:
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return null;
        }
    }

    public int getDayOfMonth() {
        return this.f614c;
    }

    public int getMonthValue() {
        return this.f613b;
    }

    public int getYear() {
        return this.f612a;
    }

    public final LocalDate h0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f612a) * 12) + ((long) (this.f613b - 1)) + j;
        EnumC2393a enumC2393a = EnumC2393a.YEAR;
        return k0(enumC2393a.f832b.m885a(Math.floorDiv(j2, 12L), enumC2393a), ((int) Math.floorMod(j2, 12L)) + 1, this.f614c);
    }

    @Override // j$.time.chrono.InterfaceC2327b
    public final int hashCode() {
        int i = this.f612a;
        return (i & (-2048)) ^ (((i << 11) + (this.f613b << 6)) + this.f614c);
    }

    public final LocalDate i0(long j) {
        return plusDays(Math.multiplyExact(j, 7L));
    }

    public final LocalDate j0(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2393a enumC2393a = EnumC2393a.YEAR;
        return k0(enumC2393a.f832b.m885a(((long) this.f612a) + j, enumC2393a), this.f613b, this.f614c);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: k */
    public final long mo556k(InterfaceC2408p interfaceC2408p) {
        return interfaceC2408p instanceof EnumC2393a ? interfaceC2408p == EnumC2393a.EPOCH_DAY ? toEpochDay() : interfaceC2408p == EnumC2393a.PROLEPTIC_MONTH ? m690Y() : m683K(interfaceC2408p) : interfaceC2408p.mo875R(this);
    }

    @Override // j$.time.temporal.InterfaceC2404l
    /* JADX INFO: renamed from: l */
    public final C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return interfaceC2408p.mo873D(this);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        if (!enumC2393a.isDateBased()) {
            throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
        int i = AbstractC2354f.f720a[enumC2393a.ordinal()];
        if (i == 1) {
            return C2411s.m883f(1L, b0());
        }
        if (i == 2) {
            return C2411s.m883f(1L, a0() ? 366 : 365);
        }
        if (i != 3) {
            return i != 4 ? enumC2393a.f832b : getYear() <= 0 ? C2411s.m883f(1L, 1000000000L) : C2411s.m883f(1L, 999999999L);
        }
        return C2411s.m883f(1L, (EnumC2384j.m866K(this.f613b) != EnumC2384j.FEBRUARY || a0()) ? 5L : 4L);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
    public final LocalDate mo676a(long j, InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            return (LocalDate) interfaceC2408p.mo876X(this, j);
        }
        EnumC2393a enumC2393a = (EnumC2393a) interfaceC2408p;
        enumC2393a.m877Y(j);
        switch (AbstractC2354f.f720a[enumC2393a.ordinal()]) {
            case 1:
                int i = (int) j;
                if (this.f614c != i) {
                    return of(this.f612a, this.f613b, i);
                }
                return this;
            case 2:
                int i2 = (int) j;
                if (m689X() != i2) {
                    return f0(this.f612a, i2);
                }
                return this;
            case 3:
                return i0(j - mo556k(EnumC2393a.ALIGNED_WEEK_OF_MONTH));
            case 4:
                if (this.f612a < 1) {
                    j = 1 - j;
                }
                return n0((int) j);
            case 5:
                return plusDays(j - ((long) m686R().getValue()));
            case 6:
                return plusDays(j - mo556k(EnumC2393a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return plusDays(j - mo556k(EnumC2393a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return e0(j);
            case 9:
                return i0(j - mo556k(EnumC2393a.ALIGNED_WEEK_OF_YEAR));
            case 10:
                int i3 = (int) j;
                if (this.f613b != i3) {
                    EnumC2393a.MONTH_OF_YEAR.m877Y(i3);
                    return k0(this.f612a, i3, this.f614c);
                }
                return this;
            case 11:
                return h0(j - m690Y());
            case 12:
                return n0((int) j);
            case 13:
                if (mo556k(EnumC2393a.ERA) != j) {
                    return n0(1 - this.f612a);
                }
                return this;
            default:
                throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
        }
    }

    @Override // j$.time.chrono.InterfaceC2327b
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDate mo750j(InterfaceC2405m interfaceC2405m) {
        return interfaceC2405m instanceof LocalDate ? (LocalDate) interfaceC2405m : (LocalDate) interfaceC2405m.mo665e(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: n */
    public final long mo680n(Temporal temporal, TemporalUnit temporalUnit) {
        LocalDate localDateM682I = m682I(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, localDateM682I);
        }
        switch (AbstractC2354f.f721b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return localDateM682I.toEpochDay() - toEpochDay();
            case 2:
                return (localDateM682I.toEpochDay() - toEpochDay()) / 7;
            case 3:
                return c0(localDateM682I);
            case 4:
                return c0(localDateM682I) / 12;
            case 5:
                return c0(localDateM682I) / 120;
            case 6:
                return c0(localDateM682I) / 1200;
            case 7:
                return c0(localDateM682I) / 12000;
            case 8:
                EnumC2393a enumC2393a = EnumC2393a.ERA;
                return localDateM682I.mo556k(enumC2393a) - mo556k(enumC2393a);
            default:
                C2288b.m635d("Unsupported unit: ", temporalUnit);
                return 0L;
        }
    }

    public final LocalDate n0(int i) {
        if (this.f612a == i) {
            return this;
        }
        EnumC2393a.YEAR.m877Y(i);
        return k0(i, this.f613b, this.f614c);
    }

    public LocalDate plusDays(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = ((long) this.f614c) + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new LocalDate(this.f612a, this.f613b, (int) j2);
            }
            if (j2 <= 59) {
                long jB0 = b0();
                if (j2 <= jB0) {
                    return new LocalDate(this.f612a, this.f613b, (int) j2);
                }
                short s = this.f613b;
                if (s < 12) {
                    return new LocalDate(this.f612a, s + 1, (int) (j2 - jB0));
                }
                EnumC2393a.YEAR.m877Y(this.f612a + 1);
                return new LocalDate(this.f612a + 1, 1, (int) (j2 - jB0));
            }
        }
        return e0(Math.addExact(toEpochDay(), j));
    }

    /* JADX INFO: renamed from: s */
    public final int m694s(LocalDate localDate) {
        int i = this.f612a - localDate.f612a;
        return (i == 0 && (i = this.f613b - localDate.f613b) == 0) ? this.f614c - localDate.f614c : i;
    }

    @Override // j$.time.chrono.InterfaceC2327b
    public long toEpochDay() {
        long j = this.f612a;
        long j2 = this.f613b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + ((long) (this.f614c - 1));
        if (j2 > 2) {
            j4 = !a0() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // j$.time.chrono.InterfaceC2327b
    public final String toString() {
        int i = this.f612a;
        short s = this.f613b;
        short s2 = this.f614c;
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
    public final InterfaceC2327b mo678c(long j, TemporalUnit temporalUnit) {
        return mo677b(-1L, temporalUnit);
    }

    public LocalDateTime atStartOfDay() {
        return LocalDateTime.of(this, LocalTime.f621g);
    }
}
