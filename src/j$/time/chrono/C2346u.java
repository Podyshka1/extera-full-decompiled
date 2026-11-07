package j$.time.chrono;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import j$.nio.file.C2288b;
import j$.time.C2352d;
import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.format.EnumC2380z;
import j$.time.temporal.C2411s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.chrono.u */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2346u extends AbstractC2326a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2346u f704c = new C2346u();
    private static final long serialVersionUID = 459996390165777884L;

    private C2346u() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: B */
    public final C2411s mo778B(EnumC2393a enumC2393a) {
        switch (AbstractC2345t.f703a[enumC2393a.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                C2288b.m635d("Unsupported field: ", enumC2393a);
                return null;
            case 5:
                C2349x[] c2349xArr = C2349x.f711e;
                int year = c2349xArr[c2349xArr.length - 1].f713b.getYear();
                int year2 = 1000000000 - c2349xArr[c2349xArr.length - 1].f713b.getYear();
                int year3 = c2349xArr[0].f713b.getYear();
                int i = 1;
                while (true) {
                    C2349x[] c2349xArr2 = C2349x.f711e;
                    if (i >= c2349xArr2.length) {
                        return C2411s.m884g(year2, 999999999 - year);
                    }
                    C2349x c2349x = c2349xArr2[i];
                    year2 = Math.min(year2, (c2349x.f713b.getYear() - year3) + 1);
                    year3 = c2349x.f713b.getYear();
                    i++;
                }
                break;
            case 6:
                C2349x c2349x2 = C2349x.f710d;
                long jMin = EnumC2393a.DAY_OF_YEAR.f832b.f858c;
                for (C2349x c2349x3 : C2349x.f711e) {
                    jMin = Math.min(jMin, ((c2349x3.f713b.a0() ? 366 : 365) - c2349x3.f713b.m689X()) + 1);
                    if (c2349x3.m809q() != null) {
                        jMin = Math.min(jMin, c2349x3.m809q().f713b.m689X() - 1);
                    }
                }
                return C2411s.m884g(jMin, EnumC2393a.DAY_OF_YEAR.f832b.f859d);
            case 7:
                return C2411s.m883f(C2348w.f706d.getYear(), 999999999L);
            case 8:
                long j = C2349x.f710d.f712a;
                C2349x[] c2349xArr3 = C2349x.f711e;
                return C2411s.m883f(j, c2349xArr3[c2349xArr3.length - 1].f712a);
            default:
                return enumC2393a.f832b;
        }
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: C */
    public final List mo779C() {
        C2349x[] c2349xArr = C2349x.f711e;
        return AbstractC2248g.m543p((C2349x[]) Arrays.copyOf(c2349xArr, c2349xArr.length));
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: E */
    public final InterfaceC2337l mo780E(int i) {
        return C2349x.m808r(i);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: F */
    public final int mo781F(InterfaceC2337l interfaceC2337l, int i) {
        if (!(interfaceC2337l instanceof C2349x)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        C2349x c2349x = (C2349x) interfaceC2337l;
        int year = (c2349x.f713b.getYear() + i) - 1;
        if (i == 1 || (year >= -999999999 && year <= 999999999 && year >= c2349x.f713b.getYear() && interfaceC2337l == C2349x.m807p(LocalDate.of(year, 1, 1)))) {
            return year;
        }
        C2288b.m639h("Invalid yearOfEra value");
        return 0;
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: J */
    public final InterfaceC2327b mo782J(InterfaceC2404l interfaceC2404l) {
        return interfaceC2404l instanceof C2348w ? (C2348w) interfaceC2404l : new C2348w(LocalDate.m682I(interfaceC2404l));
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: M */
    public final InterfaceC2327b mo783M() {
        return new C2348w(LocalDate.m682I(LocalDate.d0(AbstractC2248g.m527A())));
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: S */
    public final InterfaceC2327b mo784S(int i, int i2, int i3) {
        return new C2348w(LocalDate.of(i, i2, i3));
    }

    @Override // j$.time.chrono.AbstractC2326a, j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: U */
    public final InterfaceC2327b mo762U(Map map, EnumC2380z enumC2380z) {
        return (C2348w) super.mo762U(map, enumC2380z);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: V */
    public final ChronoZonedDateTime mo785V(Instant instant, ZoneId zoneId) {
        return C2335j.m793I(this, instant, zoneId);
    }

    @Override // j$.time.chrono.AbstractC2326a
    /* JADX INFO: renamed from: X */
    public final InterfaceC2327b mo763X(Map map, EnumC2380z enumC2380z) {
        C2348w c2348wM806Z;
        EnumC2393a enumC2393a = EnumC2393a.ERA;
        Long l = (Long) map.get(enumC2393a);
        C2349x c2349xM808r = l != null ? C2349x.m808r(mo778B(enumC2393a).m885a(l.longValue(), enumC2393a)) : null;
        EnumC2393a enumC2393a2 = EnumC2393a.YEAR_OF_ERA;
        Long l2 = (Long) map.get(enumC2393a2);
        int iM885a = l2 != null ? mo778B(enumC2393a2).m885a(l2.longValue(), enumC2393a2) : 0;
        if (c2349xM808r == null && l2 != null && !map.containsKey(EnumC2393a.YEAR) && enumC2380z != EnumC2380z.STRICT) {
            C2349x[] c2349xArr = C2349x.f711e;
            c2349xM808r = ((C2349x[]) Arrays.copyOf(c2349xArr, c2349xArr.length))[((C2349x[]) Arrays.copyOf(c2349xArr, c2349xArr.length)).length - 1];
        }
        if (l2 != null && c2349xM808r != null) {
            EnumC2393a enumC2393a3 = EnumC2393a.MONTH_OF_YEAR;
            if (map.containsKey(enumC2393a3)) {
                EnumC2393a enumC2393a4 = EnumC2393a.DAY_OF_MONTH;
                if (map.containsKey(enumC2393a4)) {
                    map.remove(enumC2393a);
                    map.remove(enumC2393a2);
                    if (enumC2380z == EnumC2380z.LENIENT) {
                        return new C2348w(LocalDate.of((c2349xM808r.f713b.getYear() + iM885a) - 1, 1, 1)).m804X(Math.subtractExact(((Long) map.remove(enumC2393a3)).longValue(), 1L), ChronoUnit.MONTHS).m804X(Math.subtractExact(((Long) map.remove(enumC2393a4)).longValue(), 1L), ChronoUnit.DAYS);
                    }
                    int iM885a2 = mo778B(enumC2393a3).m885a(((Long) map.remove(enumC2393a3)).longValue(), enumC2393a3);
                    int iM885a3 = mo778B(enumC2393a4).m885a(((Long) map.remove(enumC2393a4)).longValue(), enumC2393a4);
                    if (enumC2380z != EnumC2380z.SMART) {
                        LocalDate localDate = C2348w.f706d;
                        LocalDate localDateOf = LocalDate.of((c2349xM808r.f713b.getYear() + iM885a) - 1, iM885a2, iM885a3);
                        if (!localDateOf.m691Z(c2349xM808r.f713b) && c2349xM808r == C2349x.m807p(localDateOf)) {
                            return new C2348w(c2349xM808r, iM885a, localDateOf);
                        }
                        C2288b.m639h("year, month, and day not valid for Era");
                        return null;
                    }
                    if (iM885a < 1) {
                        C2288b.m633b("Invalid YearOfEra: ", iM885a);
                        return null;
                    }
                    int year = (c2349xM808r.f713b.getYear() + iM885a) - 1;
                    try {
                        c2348wM806Z = new C2348w(LocalDate.of(year, iM885a2, iM885a3));
                    } catch (DateTimeException unused) {
                        c2348wM806Z = new C2348w(LocalDate.of(year, iM885a2, 1)).m806Z(new C2352d(4));
                    }
                    if (c2348wM806Z.f708b == c2349xM808r || c2348wM806Z.mo666g(EnumC2393a.YEAR_OF_ERA) <= 1 || iM885a <= 1) {
                        return c2348wM806Z;
                    }
                    throw new DateTimeException("Invalid YearOfEra for Era: " + c2349xM808r + " " + iM885a);
                }
            }
            EnumC2393a enumC2393a5 = EnumC2393a.DAY_OF_YEAR;
            if (map.containsKey(enumC2393a5)) {
                map.remove(enumC2393a);
                map.remove(enumC2393a2);
                if (enumC2380z == EnumC2380z.LENIENT) {
                    return new C2348w(LocalDate.f0((c2349xM808r.f713b.getYear() + iM885a) - 1, 1)).m804X(Math.subtractExact(((Long) map.remove(enumC2393a5)).longValue(), 1L), ChronoUnit.DAYS);
                }
                int iM885a4 = mo778B(enumC2393a5).m885a(((Long) map.remove(enumC2393a5)).longValue(), enumC2393a5);
                LocalDate localDate2 = C2348w.f706d;
                LocalDate localDate3 = c2349xM808r.f713b;
                LocalDate localDateF0 = iM885a == 1 ? LocalDate.f0(localDate3.getYear(), (c2349xM808r.f713b.m689X() + iM885a4) - 1) : LocalDate.f0((localDate3.getYear() + iM885a) - 1, iM885a4);
                if (!localDateF0.m691Z(c2349xM808r.f713b) && c2349xM808r == C2349x.m807p(localDateF0)) {
                    return new C2348w(c2349xM808r, iM885a, localDateF0);
                }
                C2288b.m639h("Invalid parameters");
            }
        }
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2336k
    public final String getId() {
        return "Japanese";
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: p */
    public final InterfaceC2327b mo786p(long j) {
        return new C2348w(LocalDate.e0(j));
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: v */
    public final String mo787v() {
        return "japanese";
    }

    public Object writeReplace() {
        return new d0((byte) 1, this);
    }

    @Override // j$.time.chrono.InterfaceC2336k
    /* JADX INFO: renamed from: x */
    public final InterfaceC2327b mo788x(int i, int i2) {
        return new C2348w(LocalDate.f0(i, i2));
    }
}
