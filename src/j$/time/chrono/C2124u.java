package j$.time.chrono;

import j$.time.AbstractC2102b;
import j$.time.C2103c;
import j$.time.C2159g;
import j$.time.C2196x;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.format.EnumC2158z;
import j$.time.temporal.C2192t;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.chrono.u */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2124u extends AbstractC2104a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2124u f546c = new C2124u();
    private static final long serialVersionUID = 459996390165777884L;

    private C2124u() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: A */
    public final List mo594A() {
        C2127x[] c2127xArr = C2127x.f553e;
        return AbstractC2102b.m567c((C2127x[]) Arrays.copyOf(c2127xArr, c2127xArr.length));
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: C */
    public final InterfaceC2115l mo595C(int i) {
        return C2127x.m627t(i);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: D */
    public final int mo596D(InterfaceC2115l interfaceC2115l, int i) {
        if (!(interfaceC2115l instanceof C2127x)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        C2127x c2127x = (C2127x) interfaceC2115l;
        int year = (c2127x.f555b.getYear() + i) - 1;
        if (i == 1 || (year >= -999999999 && year <= 999999999 && year >= c2127x.f555b.getYear() && interfaceC2115l == C2127x.m626r(LocalDate.of(year, 1, 1)))) {
            return year;
        }
        C2159g.m684a("Invalid yearOfEra value");
        return 0;
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: H */
    public final InterfaceC2105b mo597H(InterfaceC2184l interfaceC2184l) {
        return interfaceC2184l instanceof C2126w ? (C2126w) interfaceC2184l : new C2126w(LocalDate.m502G(interfaceC2184l));
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: L */
    public final InterfaceC2105b mo598L() {
        return new C2126w(LocalDate.m502G(LocalDate.c0(AbstractC2102b.m568d())));
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: Q */
    public final InterfaceC2105b mo599Q(int i, int i2, int i3) {
        return new C2126w(LocalDate.of(i, i2, i3));
    }

    @Override // j$.time.chrono.AbstractC2104a, j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: S */
    public final InterfaceC2105b mo578S(Map map, EnumC2158z enumC2158z) {
        return (C2126w) super.mo578S(map, enumC2158z);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: T */
    public final ChronoZonedDateTime mo600T(Instant instant, ZoneId zoneId) {
        return C2113j.m609G(this, instant, zoneId);
    }

    @Override // j$.time.chrono.AbstractC2104a
    /* JADX INFO: renamed from: V */
    public final InterfaceC2105b mo579V(Map map, EnumC2158z enumC2158z) {
        C2126w c2126wM625Z;
        EnumC2173a enumC2173a = EnumC2173a.ERA;
        Long l = (Long) map.get(enumC2173a);
        C2127x c2127xM627t = l != null ? C2127x.m627t(mo604z(enumC2173a).m728a(l.longValue(), enumC2173a)) : null;
        EnumC2173a enumC2173a2 = EnumC2173a.YEAR_OF_ERA;
        Long l2 = (Long) map.get(enumC2173a2);
        int iM728a = l2 != null ? mo604z(enumC2173a2).m728a(l2.longValue(), enumC2173a2) : 0;
        if (c2127xM627t == null && l2 != null && !map.containsKey(EnumC2173a.YEAR) && enumC2158z != EnumC2158z.STRICT) {
            C2127x[] c2127xArr = C2127x.f553e;
            c2127xM627t = ((C2127x[]) Arrays.copyOf(c2127xArr, c2127xArr.length))[((C2127x[]) Arrays.copyOf(c2127xArr, c2127xArr.length)).length - 1];
        }
        if (l2 != null && c2127xM627t != null) {
            EnumC2173a enumC2173a3 = EnumC2173a.MONTH_OF_YEAR;
            if (map.containsKey(enumC2173a3)) {
                EnumC2173a enumC2173a4 = EnumC2173a.DAY_OF_MONTH;
                if (map.containsKey(enumC2173a4)) {
                    map.remove(enumC2173a);
                    map.remove(enumC2173a2);
                    if (enumC2158z == EnumC2158z.LENIENT) {
                        return new C2126w(LocalDate.of((c2127xM627t.f555b.getYear() + iM728a) - 1, 1, 1)).m622V(Math.subtractExact(((Long) map.remove(enumC2173a3)).longValue(), 1L), ChronoUnit.MONTHS).m622V(Math.subtractExact(((Long) map.remove(enumC2173a4)).longValue(), 1L), ChronoUnit.DAYS);
                    }
                    int iM728a2 = mo604z(enumC2173a3).m728a(((Long) map.remove(enumC2173a3)).longValue(), enumC2173a3);
                    int iM728a3 = mo604z(enumC2173a4).m728a(((Long) map.remove(enumC2173a4)).longValue(), enumC2173a4);
                    if (enumC2158z != EnumC2158z.SMART) {
                        LocalDate localDate = C2126w.f548d;
                        LocalDate localDateOf = LocalDate.of((c2127xM627t.f555b.getYear() + iM728a) - 1, iM728a2, iM728a3);
                        if (!localDateOf.m512Y(c2127xM627t.f555b) && c2127xM627t == C2127x.m626r(localDateOf)) {
                            return new C2126w(c2127xM627t, iM728a, localDateOf);
                        }
                        C2159g.m684a("year, month, and day not valid for Era");
                        return null;
                    }
                    if (iM728a < 1) {
                        C2159g.m685b("Invalid YearOfEra: ", iM728a);
                        return null;
                    }
                    int year = (c2127xM627t.f555b.getYear() + iM728a) - 1;
                    try {
                        c2126wM625Z = new C2126w(LocalDate.of(year, iM728a2, iM728a3));
                    } catch (C2103c unused) {
                        c2126wM625Z = new C2126w(LocalDate.of(year, iM728a2, 1)).m625Z(new C2196x(2));
                    }
                    if (c2126wM625Z.f550b == c2127xM627t || c2126wM625Z.mo484g(EnumC2173a.YEAR_OF_ERA) <= 1 || iM728a <= 1) {
                        return c2126wM625Z;
                    }
                    throw new C2103c("Invalid YearOfEra for Era: " + c2127xM627t + " " + iM728a);
                }
            }
            EnumC2173a enumC2173a5 = EnumC2173a.DAY_OF_YEAR;
            if (map.containsKey(enumC2173a5)) {
                map.remove(enumC2173a);
                map.remove(enumC2173a2);
                if (enumC2158z == EnumC2158z.LENIENT) {
                    return new C2126w(LocalDate.e0((c2127xM627t.f555b.getYear() + iM728a) - 1, 1)).m622V(Math.subtractExact(((Long) map.remove(enumC2173a5)).longValue(), 1L), ChronoUnit.DAYS);
                }
                int iM728a4 = mo604z(enumC2173a5).m728a(((Long) map.remove(enumC2173a5)).longValue(), enumC2173a5);
                LocalDate localDate2 = C2126w.f548d;
                LocalDate localDate3 = c2127xM627t.f555b;
                LocalDate localDateE0 = iM728a == 1 ? LocalDate.e0(localDate3.getYear(), (c2127xM627t.f555b.m510V() + iM728a4) - 1) : LocalDate.e0((localDate3.getYear() + iM728a) - 1, iM728a4);
                if (!localDateE0.m512Y(c2127xM627t.f555b) && c2127xM627t == C2127x.m626r(localDateE0)) {
                    return new C2126w(c2127xM627t, iM728a, localDateE0);
                }
                C2159g.m684a("Invalid parameters");
            }
        }
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2114k
    public final String getId() {
        return "Japanese";
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: r */
    public final InterfaceC2105b mo601r(long j) {
        return new C2126w(LocalDate.d0(j));
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: v */
    public final String mo602v() {
        return "japanese";
    }

    public Object writeReplace() {
        return new d0((byte) 1, this);
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: x */
    public final InterfaceC2105b mo603x(int i, int i2) {
        return new C2126w(LocalDate.e0(i, i2));
    }

    @Override // j$.time.chrono.InterfaceC2114k
    /* JADX INFO: renamed from: z */
    public final C2192t mo604z(EnumC2173a enumC2173a) {
        switch (AbstractC2123t.f545a[enumC2173a.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                C2159g.m687d("Unsupported field: ", enumC2173a);
                return null;
            case 5:
                C2127x[] c2127xArr = C2127x.f553e;
                int year = c2127xArr[c2127xArr.length - 1].f555b.getYear();
                int year2 = 1000000000 - c2127xArr[c2127xArr.length - 1].f555b.getYear();
                int year3 = c2127xArr[0].f555b.getYear();
                int i = 1;
                while (true) {
                    C2127x[] c2127xArr2 = C2127x.f553e;
                    if (i >= c2127xArr2.length) {
                        return C2192t.m727g(year2, 999999999 - year);
                    }
                    C2127x c2127x = c2127xArr2[i];
                    year2 = Math.min(year2, (c2127x.f555b.getYear() - year3) + 1);
                    year3 = c2127x.f555b.getYear();
                    i++;
                }
                break;
            case 6:
                C2127x c2127x2 = C2127x.f552d;
                long jMin = EnumC2173a.DAY_OF_YEAR.f681b.f706c;
                for (C2127x c2127x3 : C2127x.f553e) {
                    jMin = Math.min(jMin, ((c2127x3.f555b.m513Z() ? 366 : 365) - c2127x3.f555b.m510V()) + 1);
                    if (c2127x3.m628s() != null) {
                        jMin = Math.min(jMin, c2127x3.m628s().f555b.m510V() - 1);
                    }
                }
                return C2192t.m727g(jMin, EnumC2173a.DAY_OF_YEAR.f681b.f707d);
            case 7:
                return C2192t.m726f(C2126w.f548d.getYear(), 999999999L);
            case 8:
                long j = C2127x.f552d.f554a;
                C2127x[] c2127xArr3 = C2127x.f553e;
                return C2192t.m726f(j, c2127xArr3[c2127xArr3.length - 1].f554a);
            default:
                return enumC2173a.f681b;
        }
    }
}
