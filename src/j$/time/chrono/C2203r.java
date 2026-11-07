package j$.time.chrono;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.nio.file.C2148b;
import j$.time.EnumC2245k;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.Year;
import j$.time.ZoneId;
import j$.time.ZonedDateTime;
import j$.time.format.EnumC2240z;
import j$.time.temporal.C2272s;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.chrono.r */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2203r extends AbstractC2186a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2203r f699c = new C2203r();
    private static final long serialVersionUID = -1440403870442975015L;

    private C2203r() {
    }

    public static boolean a0(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: B */
    public final C2272s mo743B(EnumC2254a enumC2254a) {
        return enumC2254a.f830b;
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: C */
    public final List mo744C() {
        return AbstractC2108g.m519p(EnumC2204s.values());
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: E */
    public final InterfaceC2197l mo745E(int i) {
        if (i == 0) {
            return EnumC2204s.BCE;
        }
        if (i == 1) {
            return EnumC2204s.CE;
        }
        C2148b.m609b("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: F */
    public final int mo746F(InterfaceC2197l interfaceC2197l, int i) {
        if (interfaceC2197l instanceof EnumC2204s) {
            return interfaceC2197l == EnumC2204s.CE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be IsoEra");
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: J */
    public final InterfaceC2187b mo747J(InterfaceC2265l interfaceC2265l) {
        return LocalDate.m658I(interfaceC2265l);
    }

    @Override // j$.time.chrono.AbstractC2186a
    /* JADX INFO: renamed from: K */
    public final void mo727K(Map map, EnumC2240z enumC2240z) {
        EnumC2254a enumC2254a = EnumC2254a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(enumC2254a);
        if (l != null) {
            if (enumC2240z != EnumC2240z.LENIENT) {
                enumC2254a.a0(l.longValue());
            }
            AbstractC2186a.m726s(map, EnumC2254a.MONTH_OF_YEAR, ((int) Math.floorMod(l.longValue(), 12L)) + 1);
            AbstractC2186a.m726s(map, EnumC2254a.YEAR, Math.floorDiv(l.longValue(), 12L));
        }
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: N */
    public final InterfaceC2187b mo748N() {
        return LocalDate.m658I(LocalDate.f0(AbstractC2108g.m503A()));
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: O */
    public final ChronoLocalDateTime mo759O(InterfaceC2265l interfaceC2265l) {
        return LocalDateTime.m670D(interfaceC2265l);
    }

    @Override // j$.time.chrono.AbstractC2186a
    /* JADX INFO: renamed from: S */
    public final InterfaceC2187b mo728S(Map map, EnumC2240z enumC2240z) {
        EnumC2254a enumC2254a = EnumC2254a.YEAR;
        int iM837a = enumC2254a.f830b.m837a(((Long) map.remove(enumC2254a)).longValue(), enumC2254a);
        boolean z = true;
        if (enumC2240z == EnumC2240z.LENIENT) {
            return LocalDate.of(iM837a, 1, 1).j0(Math.subtractExact(((Long) map.remove(EnumC2254a.MONTH_OF_YEAR)).longValue(), 1L)).plusDays(Math.subtractExact(((Long) map.remove(EnumC2254a.DAY_OF_MONTH)).longValue(), 1L));
        }
        EnumC2254a enumC2254a2 = EnumC2254a.MONTH_OF_YEAR;
        int iM837a2 = enumC2254a2.f830b.m837a(((Long) map.remove(enumC2254a2)).longValue(), enumC2254a2);
        EnumC2254a enumC2254a3 = EnumC2254a.DAY_OF_MONTH;
        int iM837a3 = enumC2254a3.f830b.m837a(((Long) map.remove(enumC2254a3)).longValue(), enumC2254a3);
        if (enumC2240z == EnumC2240z.SMART) {
            if (iM837a2 == 4 || iM837a2 == 6 || iM837a2 == 9 || iM837a2 == 11) {
                iM837a3 = Math.min(iM837a3, 30);
            } else if (iM837a2 == 2) {
                EnumC2245k enumC2245k = EnumC2245k.FEBRUARY;
                long j = iM837a;
                int i = Year.f639b;
                if ((3 & j) != 0 || (j % 100 == 0 && j % 400 != 0)) {
                    z = false;
                }
                iM837a3 = Math.min(iM837a3, enumC2245k.m823D(z));
            }
        }
        return LocalDate.of(iM837a, iM837a2, iM837a3);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: T */
    public final InterfaceC2187b mo749T(int i, int i2, int i3) {
        return LocalDate.of(i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC2186a, j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: V */
    public final InterfaceC2187b mo729V(Map map, EnumC2240z enumC2240z) {
        return (LocalDate) super.mo729V(map, enumC2240z);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: W */
    public final ChronoZonedDateTime mo750W(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return ZonedDateTime.m710s(instant.getEpochSecond(), instant.getNano(), zoneId);
    }

    @Override // j$.time.chrono.AbstractC2186a
    /* JADX INFO: renamed from: Y */
    public final InterfaceC2187b mo730Y(Map map, EnumC2240z enumC2240z) {
        EnumC2254a enumC2254a = EnumC2254a.YEAR_OF_ERA;
        Long l = (Long) map.remove(enumC2254a);
        if (l != null) {
            if (enumC2240z != EnumC2240z.LENIENT) {
                enumC2254a.a0(l.longValue());
            }
            Long l2 = (Long) map.remove(EnumC2254a.ERA);
            if (l2 == null) {
                EnumC2254a enumC2254a2 = EnumC2254a.YEAR;
                Long l3 = (Long) map.get(enumC2254a2);
                if (enumC2240z != EnumC2240z.STRICT) {
                    AbstractC2186a.m726s(map, enumC2254a2, (l3 == null || l3.longValue() > 0) ? l.longValue() : Math.subtractExact(1L, l.longValue()));
                } else if (l3 != null) {
                    long jLongValue = l3.longValue();
                    long jLongValue2 = l.longValue();
                    if (jLongValue <= 0) {
                        jLongValue2 = Math.subtractExact(1L, jLongValue2);
                    }
                    AbstractC2186a.m726s(map, enumC2254a2, jLongValue2);
                } else {
                    map.put(enumC2254a, l);
                }
            } else if (l2.longValue() == 1) {
                AbstractC2186a.m726s(map, EnumC2254a.YEAR, l.longValue());
            } else {
                if (l2.longValue() != 0) {
                    C2148b.m617j("Invalid value for era: ", l2);
                    return null;
                }
                AbstractC2186a.m726s(map, EnumC2254a.YEAR, Math.subtractExact(1L, l.longValue()));
            }
        } else {
            EnumC2254a enumC2254a3 = EnumC2254a.ERA;
            if (map.containsKey(enumC2254a3)) {
                enumC2254a3.a0(((Long) map.get(enumC2254a3)).longValue());
            }
        }
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2196k
    public final String getId() {
        return "ISO";
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: p */
    public final InterfaceC2187b mo751p(long j) {
        return LocalDate.g0(j);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: v */
    public final String mo752v() {
        return "iso8601";
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: w */
    public final ChronoZonedDateTime mo760w(InterfaceC2265l interfaceC2265l) {
        return ZonedDateTime.m708D(interfaceC2265l);
    }

    public Object writeReplace() {
        return new d0((byte) 1, this);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: x */
    public final InterfaceC2187b mo753x(int i, int i2) {
        return LocalDate.h0(i, i2);
    }
}
