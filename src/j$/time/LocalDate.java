package j$.time;

import de.robv.android.xposed.callbacks.XCallback;
import j$.time.chrono.C2121r;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.chrono.EnumC2122s;
import j$.time.chrono.InterfaceC2105b;
import j$.time.chrono.InterfaceC2114k;
import j$.time.chrono.InterfaceC2115l;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2191s;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2187o;
import j$.time.temporal.InterfaceC2188p;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;
import j$.time.zone.C2199b;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class LocalDate implements Temporal, InterfaceC2185m, InterfaceC2105b, Serializable {

    /* JADX INFO: renamed from: d */
    public static final LocalDate f469d = of(-999999999, 1, 1);

    /* JADX INFO: renamed from: e */
    public static final LocalDate f470e = of(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;

    /* JADX INFO: renamed from: a */
    public final int f471a;

    /* JADX INFO: renamed from: b */
    public final short f472b;

    /* JADX INFO: renamed from: c */
    public final short f473c;

    static {
        of(1970, 1, 1);
    }

    public LocalDate(int i, int i2, int i3) {
        this.f471a = i;
        this.f472b = (short) i2;
        this.f473c = (short) i3;
    }

    /* JADX INFO: renamed from: B */
    public static LocalDate m501B(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else {
                C2121r.f543c.getClass();
                if (C2121r.m621X(i)) {
                    i4 = 29;
                }
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    C2159g.m686c("Invalid date 'February 29' as '", i, "' is not a leap year");
                    return null;
                }
                throw new C2103c("Invalid date '" + EnumC2164l.m702I(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    /* JADX INFO: renamed from: G */
    public static LocalDate m502G(InterfaceC2184l interfaceC2184l) {
        Objects.requireNonNull(interfaceC2184l, "temporal");
        LocalDate localDate = (LocalDate) interfaceC2184l.mo482d(AbstractC2189q.f702f);
        if (localDate != null) {
            return localDate;
        }
        C2159g.m689f("Unable to obtain LocalDate from TemporalAccessor: ", interfaceC2184l, " of type ", interfaceC2184l.getClass().getName());
        return null;
    }

    public static LocalDate c0(C2101a c2101a) {
        Instant instantOfEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        ZoneId zoneId = c2101a.f499a;
        Objects.requireNonNull(instantOfEpochMilli, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return d0(Math.floorDiv(instantOfEpochMilli.getEpochSecond() + ((long) zoneId.getRules().getOffset(instantOfEpochMilli).getTotalSeconds()), 86400L));
    }

    public static LocalDate d0(long j) {
        long j2;
        EnumC2173a.EPOCH_DAY.m719X(j);
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
        EnumC2173a enumC2173a = EnumC2173a.YEAR;
        return new LocalDate(enumC2173a.f681b.m728a(j7, enumC2173a), i3, i4);
    }

    public static LocalDate e0(int i, int i2) {
        long j = i;
        EnumC2173a.YEAR.m719X(j);
        EnumC2173a.DAY_OF_YEAR.m719X(i2);
        C2121r.f543c.getClass();
        boolean zM621X = C2121r.m621X(j);
        if (i2 == 366 && !zM621X) {
            C2159g.m686c("Invalid date 'DayOfYear 366' as '", i, "' is not a leap year");
            return null;
        }
        EnumC2164l enumC2164lM702I = EnumC2164l.m702I(((i2 - 1) / 31) + 1);
        if (i2 > (enumC2164lM702I.m703B(zM621X) + enumC2164lM702I.m705t(zM621X)) - 1) {
            enumC2164lM702I = EnumC2164l.f660a[(enumC2164lM702I.ordinal() + 13) % 12];
        }
        return new LocalDate(i, enumC2164lM702I.getValue(), (i2 - enumC2164lM702I.m705t(zM621X)) + 1);
    }

    public static LocalDate j0(int i, int i2, int i3) {
        if (i2 == 2) {
            C2121r.f543c.getClass();
            i3 = Math.min(i3, C2121r.m621X((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate now() {
        return c0(AbstractC2102b.m568d());
    }

    public static LocalDate of(int i, int i2, int i3) {
        EnumC2173a.YEAR.m719X(i);
        EnumC2173a.MONTH_OF_YEAR.m719X(i2);
        EnumC2173a.DAY_OF_MONTH.m719X(i3);
        return m501B(i, i2, i3);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C2170r((byte) 3, this);
    }

    /* JADX INFO: renamed from: I */
    public final int m503I(InterfaceC2188p interfaceC2188p) {
        switch (AbstractC2132f.f561a[((EnumC2173a) interfaceC2188p).ordinal()]) {
            case 1:
                return this.f473c;
            case 2:
                return m510V();
            case 3:
                return ((this.f473c - 1) / 7) + 1;
            case 4:
                int i = this.f471a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return m507P().getValue();
            case 6:
                return ((this.f473c - 1) % 7) + 1;
            case 7:
                return ((m510V() - 1) % 7) + 1;
            case 8:
                throw new C2191s("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((m510V() - 1) / 7) + 1;
            case 10:
                return this.f472b;
            case 11:
                throw new C2191s("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.f471a;
            case 13:
                return this.f471a >= 1 ? 1 : 0;
            default:
                throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: J */
    public final long mo504J() {
        long j = this.f471a;
        long j2 = this.f472b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + ((long) (this.f473c - 1));
        if (j2 > 2) {
            j4 = !m513Z() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: K */
    public final ChronoLocalDateTime mo505K(C2162j c2162j) {
        return LocalDateTime.m518I(this, c2162j);
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: N */
    public final InterfaceC2115l mo506N() {
        return getYear() >= 1 ? EnumC2122s.CE : EnumC2122s.BCE;
    }

    /* JADX INFO: renamed from: P */
    public final DayOfWeek m507P() {
        return DayOfWeek.m481t(((int) Math.floorMod(mo504J() + 3, 7L)) + 1);
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: R */
    public final InterfaceC2105b mo508R(InterfaceC2187o interfaceC2187o) {
        if (interfaceC2187o != null) {
            Period period = (Period) interfaceC2187o;
            return g0((((long) period.f482a) * 12) + ((long) period.f483b)).plusDays(period.f484c);
        }
        Objects.requireNonNull(interfaceC2187o, "amountToAdd");
        return (LocalDate) ((Period) interfaceC2187o).mo490t(this);
    }

    @Override // j$.time.chrono.InterfaceC2105b, java.lang.Comparable
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC2105b interfaceC2105b) {
        return interfaceC2105b instanceof LocalDate ? m516t((LocalDate) interfaceC2105b) : super.compareTo(interfaceC2105b);
    }

    /* JADX INFO: renamed from: V */
    public final int m510V() {
        return (EnumC2164l.m702I(this.f472b).m705t(m513Z()) + this.f473c) - 1;
    }

    /* JADX INFO: renamed from: X */
    public final long m511X() {
        return ((((long) this.f471a) * 12) + ((long) this.f472b)) - 1;
    }

    /* JADX INFO: renamed from: Y */
    public final boolean m512Y(InterfaceC2105b interfaceC2105b) {
        return interfaceC2105b instanceof LocalDate ? m516t((LocalDate) interfaceC2105b) < 0 : mo504J() < interfaceC2105b.mo504J();
    }

    /* JADX INFO: renamed from: Z */
    public final boolean m513Z() {
        C2121r c2121r = C2121r.f543c;
        long j = this.f471a;
        c2121r.getClass();
        return C2121r.m621X(j);
    }

    public final int a0() {
        short s = this.f472b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : m513Z() ? 29 : 28;
    }

    public ZonedDateTime atStartOfDay(ZoneId zoneId) {
        C2199b c2199bM740e;
        Objects.requireNonNull(zoneId, "zone");
        LocalDateTime localDateTimeM518I = LocalDateTime.m518I(this, C2162j.f653g);
        if (!(zoneId instanceof ZoneOffset) && (c2199bM740e = zoneId.getRules().m740e(localDateTimeM518I)) != null && c2199bM740e.m747t()) {
            localDateTimeM518I = c2199bM740e.f732b.m524X(c2199bM740e.f734d.getTotalSeconds() - c2199bM740e.f733c.getTotalSeconds());
        }
        return ZonedDateTime.m551G(localDateTimeM518I, zoneId, null);
    }

    public final long b0(LocalDate localDate) {
        return (((localDate.m511X() * 32) + ((long) localDate.f473c)) - ((m511X() * 32) + ((long) this.f473c))) / 32;
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

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: d */
    public final Object mo482d(C2196x c2196x) {
        return c2196x == AbstractC2189q.f702f ? this : super.mo482d(c2196x);
    }

    @Override // j$.time.chrono.InterfaceC2105b
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && m516t((LocalDate) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: f */
    public final InterfaceC2114k mo514f() {
        return C2121r.f543c;
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public final LocalDate mo497b(long j, InterfaceC2190r interfaceC2190r) {
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return (LocalDate) interfaceC2190r.mo714t(this, j);
        }
        switch (AbstractC2132f.f562b[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return plusDays(j);
            case 2:
                return h0(j);
            case 3:
                return g0(j);
            case 4:
                return i0(j);
            case 5:
                return i0(Math.multiplyExact(j, 10L));
            case 6:
                return i0(Math.multiplyExact(j, 100L));
            case 7:
                return i0(Math.multiplyExact(j, 1000L));
            case 8:
                EnumC2173a enumC2173a = EnumC2173a.ERA;
                return mo496a(Math.addExact(mo486k(enumC2173a), j), enumC2173a);
            default:
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return null;
        }
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: g */
    public final int mo484g(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? m503I(interfaceC2188p) : super.mo484g(interfaceC2188p);
    }

    public final LocalDate g0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (((long) this.f471a) * 12) + ((long) (this.f472b - 1)) + j;
        EnumC2173a enumC2173a = EnumC2173a.YEAR;
        return j0(enumC2173a.f681b.m728a(Math.floorDiv(j2, 12L), enumC2173a), ((int) Math.floorMod(j2, 12L)) + 1, this.f473c);
    }

    public int getYear() {
        return this.f471a;
    }

    public final LocalDate h0(long j) {
        return plusDays(Math.multiplyExact(j, 7L));
    }

    @Override // j$.time.chrono.InterfaceC2105b
    public final int hashCode() {
        int i = this.f471a;
        return (i & (-2048)) ^ (((i << 11) + (this.f472b << 6)) + this.f473c);
    }

    public final LocalDate i0(long j) {
        if (j == 0) {
            return this;
        }
        EnumC2173a enumC2173a = EnumC2173a.YEAR;
        return j0(enumC2173a.f681b.m728a(((long) this.f471a) + j, enumC2173a), this.f472b, this.f473c);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: k */
    public final long mo486k(InterfaceC2188p interfaceC2188p) {
        return interfaceC2188p instanceof EnumC2173a ? interfaceC2188p == EnumC2173a.EPOCH_DAY ? mo504J() : interfaceC2188p == EnumC2173a.PROLEPTIC_MONTH ? m511X() : m503I(interfaceC2188p) : interfaceC2188p.mo717P(this);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public final LocalDate mo496a(long j, InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return (LocalDate) interfaceC2188p.mo718V(this, j);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        enumC2173a.m719X(j);
        switch (AbstractC2132f.f561a[enumC2173a.ordinal()]) {
            case 1:
                int i = (int) j;
                if (this.f473c != i) {
                    return of(this.f471a, this.f472b, i);
                }
                return this;
            case 2:
                int i2 = (int) j;
                if (m510V() != i2) {
                    return e0(this.f471a, i2);
                }
                return this;
            case 3:
                return h0(j - mo486k(EnumC2173a.ALIGNED_WEEK_OF_MONTH));
            case 4:
                if (this.f471a < 1) {
                    j = 1 - j;
                }
                return m0((int) j);
            case 5:
                return plusDays(j - ((long) m507P().getValue()));
            case 6:
                return plusDays(j - mo486k(EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 7:
                return plusDays(j - mo486k(EnumC2173a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 8:
                return d0(j);
            case 9:
                return h0(j - mo486k(EnumC2173a.ALIGNED_WEEK_OF_YEAR));
            case 10:
                int i3 = (int) j;
                if (this.f472b != i3) {
                    EnumC2173a.MONTH_OF_YEAR.m719X(i3);
                    return j0(this.f471a, i3, this.f473c);
                }
                return this;
            case 11:
                return g0(j - m511X());
            case 12:
                return m0((int) j);
            case 13:
                if (mo486k(EnumC2173a.ERA) != j) {
                    return m0(1 - this.f471a);
                }
                return this;
            default:
                throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
    }

    @Override // j$.time.chrono.InterfaceC2105b
    /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDate mo559j(InterfaceC2185m interfaceC2185m) {
        return interfaceC2185m instanceof LocalDate ? (LocalDate) interfaceC2185m : (LocalDate) interfaceC2185m.mo483e(this);
    }

    @Override // j$.time.temporal.InterfaceC2184l
    /* JADX INFO: renamed from: m */
    public final C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            return interfaceC2188p.mo715B(this);
        }
        EnumC2173a enumC2173a = (EnumC2173a) interfaceC2188p;
        if (!enumC2173a.isDateBased()) {
            throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
        }
        int i = AbstractC2132f.f561a[enumC2173a.ordinal()];
        if (i == 1) {
            return C2192t.m726f(1L, a0());
        }
        if (i == 2) {
            return C2192t.m726f(1L, m513Z() ? 366 : 365);
        }
        if (i != 3) {
            return i != 4 ? enumC2173a.f681b : getYear() <= 0 ? C2192t.m726f(1L, 1000000000L) : C2192t.m726f(1L, 999999999L);
        }
        return C2192t.m726f(1L, (EnumC2164l.m702I(this.f472b) != EnumC2164l.FEBRUARY || m513Z()) ? 5L : 4L);
    }

    public final LocalDate m0(int i) {
        if (this.f471a == i) {
            return this;
        }
        EnumC2173a.YEAR.m719X(i);
        return j0(i, this.f472b, this.f473c);
    }

    @Override // j$.time.temporal.Temporal
    /* JADX INFO: renamed from: o */
    public final long mo500o(Temporal temporal, InterfaceC2190r interfaceC2190r) {
        LocalDate localDateM502G = m502G(temporal);
        if (!(interfaceC2190r instanceof ChronoUnit)) {
            return interfaceC2190r.between(this, localDateM502G);
        }
        switch (AbstractC2132f.f562b[((ChronoUnit) interfaceC2190r).ordinal()]) {
            case 1:
                return localDateM502G.mo504J() - mo504J();
            case 2:
                return (localDateM502G.mo504J() - mo504J()) / 7;
            case 3:
                return b0(localDateM502G);
            case 4:
                return b0(localDateM502G) / 12;
            case 5:
                return b0(localDateM502G) / 120;
            case 6:
                return b0(localDateM502G) / 1200;
            case 7:
                return b0(localDateM502G) / 12000;
            case 8:
                EnumC2173a enumC2173a = EnumC2173a.ERA;
                return localDateM502G.mo486k(enumC2173a) - mo486k(enumC2173a);
            default:
                C2159g.m687d("Unsupported unit: ", interfaceC2190r);
                return 0L;
        }
    }

    public LocalDate plusDays(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = ((long) this.f473c) + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new LocalDate(this.f471a, this.f472b, (int) j2);
            }
            if (j2 <= 59) {
                long jA0 = a0();
                if (j2 <= jA0) {
                    return new LocalDate(this.f471a, this.f472b, (int) j2);
                }
                short s = this.f472b;
                if (s < 12) {
                    return new LocalDate(this.f471a, s + 1, (int) (j2 - jA0));
                }
                EnumC2173a.YEAR.m719X(this.f471a + 1);
                return new LocalDate(this.f471a + 1, 1, (int) (j2 - jA0));
            }
        }
        return d0(Math.addExact(mo504J(), j));
    }

    /* JADX INFO: renamed from: t */
    public final int m516t(LocalDate localDate) {
        int i = this.f471a - localDate.f471a;
        return (i == 0 && (i = this.f472b - localDate.f472b) == 0) ? this.f473c - localDate.f473c : i;
    }

    @Override // j$.time.chrono.InterfaceC2105b
    public final String toString() {
        int i = this.f471a;
        short s = this.f472b;
        short s2 = this.f473c;
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
    public final InterfaceC2105b mo498c(long j, InterfaceC2190r interfaceC2190r) {
        return mo497b(-1L, interfaceC2190r);
    }

    public LocalDateTime atStartOfDay() {
        return LocalDateTime.m518I(this, C2162j.f653g);
    }
}
