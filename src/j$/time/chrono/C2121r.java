package j$.time.chrono;

import j$.time.AbstractC2102b;
import j$.time.C2159g;
import j$.time.C2172t;
import j$.time.EnumC2164l;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZonedDateTime;
import j$.time.format.EnumC2158z;
import j$.time.temporal.C2192t;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.chrono.r */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2121r extends AbstractC2104a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2121r f543c = new C2121r();
    private static final long serialVersionUID = -1440403870442975015L;

    private C2121r() {
    }

    /* JADX INFO: renamed from: X */
    public static boolean m621X(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: A */
    public final List mo594A() {
        return AbstractC2102b.m567c(EnumC2122s.values());
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: C */
    public final InterfaceC2115l mo595C(int i) {
        if (i == 0) {
            return EnumC2122s.BCE;
        }
        if (i == 1) {
            return EnumC2122s.CE;
        }
        C2159g.m685b("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: D */
    public final int mo596D(InterfaceC2115l interfaceC2115l, int i) {
        if (interfaceC2115l instanceof EnumC2122s) {
            return interfaceC2115l == EnumC2122s.CE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be IsoEra");
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: H */
    public final InterfaceC2105b mo597H(InterfaceC2184l interfaceC2184l) {
        return LocalDate.m502G(interfaceC2184l);
    }

    @Override // j$.time.chrono.AbstractC2104a
    /* JADX INFO: renamed from: I */
    public final void mo576I(Map map, EnumC2158z enumC2158z) {
        EnumC2173a enumC2173a = EnumC2173a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(enumC2173a);
        if (l != null) {
            if (enumC2158z != EnumC2158z.LENIENT) {
                enumC2173a.m719X(l.longValue());
            }
            AbstractC2104a.m575t(map, EnumC2173a.MONTH_OF_YEAR, ((int) Math.floorMod(l.longValue(), 12L)) + 1);
            AbstractC2104a.m575t(map, EnumC2173a.YEAR, Math.floorDiv(l.longValue(), 12L));
        }
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: L */
    public final InterfaceC2105b mo598L() {
        return LocalDate.m502G(LocalDate.c0(AbstractC2102b.m568d()));
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: M */
    public final ChronoLocalDateTime mo612M(InterfaceC2184l interfaceC2184l) {
        return LocalDateTime.m517B(interfaceC2184l);
    }

    @Override // j$.time.chrono.AbstractC2104a
    /* JADX INFO: renamed from: P */
    public final InterfaceC2105b mo577P(Map map, EnumC2158z enumC2158z) {
        EnumC2173a enumC2173a = EnumC2173a.YEAR;
        int iM728a = enumC2173a.f681b.m728a(((Long) map.remove(enumC2173a)).longValue(), enumC2173a);
        boolean z = true;
        if (enumC2158z == EnumC2158z.LENIENT) {
            return LocalDate.of(iM728a, 1, 1).g0(Math.subtractExact(((Long) map.remove(EnumC2173a.MONTH_OF_YEAR)).longValue(), 1L)).plusDays(Math.subtractExact(((Long) map.remove(EnumC2173a.DAY_OF_MONTH)).longValue(), 1L));
        }
        EnumC2173a enumC2173a2 = EnumC2173a.MONTH_OF_YEAR;
        int iM728a2 = enumC2173a2.f681b.m728a(((Long) map.remove(enumC2173a2)).longValue(), enumC2173a2);
        EnumC2173a enumC2173a3 = EnumC2173a.DAY_OF_MONTH;
        int iM728a3 = enumC2173a3.f681b.m728a(((Long) map.remove(enumC2173a3)).longValue(), enumC2173a3);
        if (enumC2158z == EnumC2158z.SMART) {
            if (iM728a2 == 4 || iM728a2 == 6 || iM728a2 == 9 || iM728a2 == 11) {
                iM728a3 = Math.min(iM728a3, 30);
            } else if (iM728a2 == 2) {
                EnumC2164l enumC2164l = EnumC2164l.FEBRUARY;
                long j = iM728a;
                int i = C2172t.f675b;
                if ((3 & j) != 0 || (j % 100 == 0 && j % 400 != 0)) {
                    z = false;
                }
                iM728a3 = Math.min(iM728a3, enumC2164l.m703B(z));
            }
        }
        return LocalDate.of(iM728a, iM728a2, iM728a3);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: Q */
    public final InterfaceC2105b mo599Q(int i, int i2, int i3) {
        return LocalDate.of(i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC2104a, j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: S */
    public final InterfaceC2105b mo578S(Map map, EnumC2158z enumC2158z) {
        return (LocalDate) super.mo578S(map, enumC2158z);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: T */
    public final ChronoZonedDateTime mo600T(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return ZonedDateTime.m552t(instant.getEpochSecond(), instant.getNano(), zoneId);
    }

    @Override // j$.time.chrono.AbstractC2104a
    /* JADX INFO: renamed from: V */
    public final InterfaceC2105b mo579V(Map map, EnumC2158z enumC2158z) {
        EnumC2173a enumC2173a = EnumC2173a.YEAR_OF_ERA;
        Long l = (Long) map.remove(enumC2173a);
        if (l != null) {
            if (enumC2158z != EnumC2158z.LENIENT) {
                enumC2173a.m719X(l.longValue());
            }
            Long l2 = (Long) map.remove(EnumC2173a.ERA);
            if (l2 == null) {
                EnumC2173a enumC2173a2 = EnumC2173a.YEAR;
                Long l3 = (Long) map.get(enumC2173a2);
                if (enumC2158z != EnumC2158z.STRICT) {
                    AbstractC2104a.m575t(map, enumC2173a2, (l3 == null || l3.longValue() > 0) ? l.longValue() : Math.subtractExact(1L, l.longValue()));
                } else if (l3 != null) {
                    long jLongValue = l3.longValue();
                    long jLongValue2 = l.longValue();
                    if (jLongValue <= 0) {
                        jLongValue2 = Math.subtractExact(1L, jLongValue2);
                    }
                    AbstractC2104a.m575t(map, enumC2173a2, jLongValue2);
                } else {
                    map.put(enumC2173a, l);
                }
            } else if (l2.longValue() == 1) {
                AbstractC2104a.m575t(map, EnumC2173a.YEAR, l.longValue());
            } else {
                if (l2.longValue() != 0) {
                    C2159g.m692i("Invalid value for era: ", l2);
                    return null;
                }
                AbstractC2104a.m575t(map, EnumC2173a.YEAR, Math.subtractExact(1L, l.longValue()));
            }
        } else {
            EnumC2173a enumC2173a3 = EnumC2173a.ERA;
            if (map.containsKey(enumC2173a3)) {
                enumC2173a3.m719X(((Long) map.get(enumC2173a3)).longValue());
            }
        }
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2114k
    public final String getId() {
        return "ISO";
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: r */
    public final InterfaceC2105b mo601r(long j) {
        return LocalDate.d0(j);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: v */
    public final String mo602v() {
        return "iso8601";
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: w */
    public final ChronoZonedDateTime mo613w(InterfaceC2184l interfaceC2184l) {
        return ZonedDateTime.m550B(interfaceC2184l);
    }

    public Object writeReplace() {
        return new d0((byte) 1, this);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: x */
    public final InterfaceC2105b mo603x(int i, int i2) {
        return LocalDate.e0(i, i2);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: z */
    public final C2192t mo604z(EnumC2173a enumC2173a) {
        return enumC2173a.f681b;
    }
}
