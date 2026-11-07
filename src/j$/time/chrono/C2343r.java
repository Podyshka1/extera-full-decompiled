package j$.time.chrono;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.nio.file.C2288b;
import j$.time.EnumC2384j;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.Year;
import j$.time.ZoneId;
import j$.time.ZonedDateTime;
import j$.time.format.EnumC2380z;
import j$.time.temporal.C2411s;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.chrono.r */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2343r extends AbstractC2326a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2343r f701c = new C2343r();
    private static final long serialVersionUID = -1440403870442975015L;

    private C2343r() {
    }

    /* JADX INFO: renamed from: Y */
    public static boolean m803Y(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: B */
    public final C2411s mo778B(EnumC2393a enumC2393a) {
        return enumC2393a.f832b;
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: C */
    public final List mo779C() {
        return AbstractC2248g.m543p(EnumC2344s.values());
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: E */
    public final InterfaceC2337l mo780E(int i) {
        if (i == 0) {
            return EnumC2344s.BCE;
        }
        if (i == 1) {
            return EnumC2344s.CE;
        }
        C2288b.m633b("Invalid era: ", i);
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: F */
    public final int mo781F(InterfaceC2337l interfaceC2337l, int i) {
        if (interfaceC2337l instanceof EnumC2344s) {
            return interfaceC2337l == EnumC2344s.CE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be IsoEra");
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: J */
    public final InterfaceC2327b mo782J(InterfaceC2404l interfaceC2404l) {
        return LocalDate.m682I(interfaceC2404l);
    }

    @Override // j$.time.chrono.AbstractC2326a
    /* JADX INFO: renamed from: K */
    public final void mo760K(Map map, EnumC2380z enumC2380z) {
        EnumC2393a enumC2393a = EnumC2393a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(enumC2393a);
        if (l != null) {
            if (enumC2380z != EnumC2380z.LENIENT) {
                enumC2393a.m877Y(l.longValue());
            }
            AbstractC2326a.m759s(map, EnumC2393a.MONTH_OF_YEAR, ((int) Math.floorMod(l.longValue(), 12L)) + 1);
            AbstractC2326a.m759s(map, EnumC2393a.YEAR, Math.floorDiv(l.longValue(), 12L));
        }
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: M */
    public final InterfaceC2327b mo783M() {
        return LocalDate.m682I(LocalDate.d0(AbstractC2248g.m527A()));
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: N */
    public final ChronoLocalDateTime mo796N(InterfaceC2404l interfaceC2404l) {
        return LocalDateTime.m695D(interfaceC2404l);
    }

    @Override // j$.time.chrono.AbstractC2326a
    /* JADX INFO: renamed from: R */
    public final InterfaceC2327b mo761R(Map map, EnumC2380z enumC2380z) {
        EnumC2393a enumC2393a = EnumC2393a.YEAR;
        int iM885a = enumC2393a.f832b.m885a(((Long) map.remove(enumC2393a)).longValue(), enumC2393a);
        boolean z = true;
        if (enumC2380z == EnumC2380z.LENIENT) {
            return LocalDate.of(iM885a, 1, 1).h0(Math.subtractExact(((Long) map.remove(EnumC2393a.MONTH_OF_YEAR)).longValue(), 1L)).plusDays(Math.subtractExact(((Long) map.remove(EnumC2393a.DAY_OF_MONTH)).longValue(), 1L));
        }
        EnumC2393a enumC2393a2 = EnumC2393a.MONTH_OF_YEAR;
        int iM885a2 = enumC2393a2.f832b.m885a(((Long) map.remove(enumC2393a2)).longValue(), enumC2393a2);
        EnumC2393a enumC2393a3 = EnumC2393a.DAY_OF_MONTH;
        int iM885a3 = enumC2393a3.f832b.m885a(((Long) map.remove(enumC2393a3)).longValue(), enumC2393a3);
        if (enumC2380z == EnumC2380z.SMART) {
            if (iM885a2 == 4 || iM885a2 == 6 || iM885a2 == 9 || iM885a2 == 11) {
                iM885a3 = Math.min(iM885a3, 30);
            } else if (iM885a2 == 2) {
                EnumC2384j enumC2384j = EnumC2384j.FEBRUARY;
                long j = iM885a;
                int i = Year.f640b;
                if ((3 & j) != 0 || (j % 100 == 0 && j % 400 != 0)) {
                    z = false;
                }
                iM885a3 = Math.min(iM885a3, enumC2384j.m867D(z));
            }
        }
        return LocalDate.of(iM885a, iM885a2, iM885a3);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: S */
    public final InterfaceC2327b mo784S(int i, int i2, int i3) {
        return LocalDate.of(i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC2326a, j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: U */
    public final InterfaceC2327b mo762U(Map map, EnumC2380z enumC2380z) {
        return (LocalDate) super.mo762U(map, enumC2380z);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: V */
    public final ChronoZonedDateTime mo785V(Instant instant, ZoneId zoneId) {
        return ZonedDateTime.m741I(instant, zoneId);
    }

    @Override // j$.time.chrono.AbstractC2326a
    /* JADX INFO: renamed from: X */
    public final InterfaceC2327b mo763X(Map map, EnumC2380z enumC2380z) {
        EnumC2393a enumC2393a = EnumC2393a.YEAR_OF_ERA;
        Long l = (Long) map.remove(enumC2393a);
        if (l != null) {
            if (enumC2380z != EnumC2380z.LENIENT) {
                enumC2393a.m877Y(l.longValue());
            }
            Long l2 = (Long) map.remove(EnumC2393a.ERA);
            if (l2 == null) {
                EnumC2393a enumC2393a2 = EnumC2393a.YEAR;
                Long l3 = (Long) map.get(enumC2393a2);
                if (enumC2380z != EnumC2380z.STRICT) {
                    AbstractC2326a.m759s(map, enumC2393a2, (l3 == null || l3.longValue() > 0) ? l.longValue() : Math.subtractExact(1L, l.longValue()));
                } else if (l3 != null) {
                    long jLongValue = l3.longValue();
                    long jLongValue2 = l.longValue();
                    if (jLongValue <= 0) {
                        jLongValue2 = Math.subtractExact(1L, jLongValue2);
                    }
                    AbstractC2326a.m759s(map, enumC2393a2, jLongValue2);
                } else {
                    map.put(enumC2393a, l);
                }
            } else if (l2.longValue() == 1) {
                AbstractC2326a.m759s(map, EnumC2393a.YEAR, l.longValue());
            } else {
                if (l2.longValue() != 0) {
                    C2288b.m641j("Invalid value for era: ", l2);
                    return null;
                }
                AbstractC2326a.m759s(map, EnumC2393a.YEAR, Math.subtractExact(1L, l.longValue()));
            }
        } else {
            EnumC2393a enumC2393a3 = EnumC2393a.ERA;
            if (map.containsKey(enumC2393a3)) {
                enumC2393a3.m877Y(((Long) map.get(enumC2393a3)).longValue());
            }
        }
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2336k
    public final String getId() {
        return "ISO";
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: p */
    public final InterfaceC2327b mo786p(long j) {
        return LocalDate.e0(j);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: v */
    public final String mo787v() {
        return "iso8601";
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: w */
    public final ChronoZonedDateTime mo797w(InterfaceC2404l interfaceC2404l) {
        return ZonedDateTime.m740D(interfaceC2404l);
    }

    public Object writeReplace() {
        return new d0((byte) 1, this);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: x */
    public final InterfaceC2327b mo788x(int i, int i2) {
        return LocalDate.f0(i, i2);
    }
}
