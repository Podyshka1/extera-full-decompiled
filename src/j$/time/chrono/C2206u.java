package j$.time.chrono;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import j$.nio.file.C2148b;
import j$.time.C2184b;
import j$.time.C2213e;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.format.EnumC2240z;
import j$.time.temporal.C2272s;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: j$.time.chrono.u */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2206u extends AbstractC2186a implements Serializable {

    /* JADX INFO: renamed from: c */
    public static final C2206u f702c = new C2206u();
    private static final long serialVersionUID = 459996390165777884L;

    private C2206u() {
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: B */
    public final C2272s mo743B(EnumC2254a enumC2254a) {
        switch (AbstractC2205t.f701a[enumC2254a.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                C2148b.m611d("Unsupported field: ", enumC2254a);
                return null;
            case 5:
                C2209x[] c2209xArr = C2209x.f709e;
                int year = c2209xArr[c2209xArr.length - 1].f711b.getYear();
                int year2 = 1000000000 - c2209xArr[c2209xArr.length - 1].f711b.getYear();
                int year3 = c2209xArr[0].f711b.getYear();
                int i = 1;
                while (true) {
                    C2209x[] c2209xArr2 = C2209x.f709e;
                    if (i >= c2209xArr2.length) {
                        return C2272s.m836g(year2, 999999999 - year);
                    }
                    C2209x c2209x = c2209xArr2[i];
                    year2 = Math.min(year2, (c2209x.f711b.getYear() - year3) + 1);
                    year3 = c2209x.f711b.getYear();
                    i++;
                }
                break;
            case 6:
                C2209x c2209x2 = C2209x.f708d;
                long jMin = EnumC2254a.DAY_OF_YEAR.f830b.f856c;
                for (C2209x c2209x3 : C2209x.f709e) {
                    jMin = Math.min(jMin, ((c2209x3.f711b.c0() ? 366 : 365) - c2209x3.f711b.m666Y()) + 1);
                    if (c2209x3.m765q() != null) {
                        jMin = Math.min(jMin, c2209x3.m765q().f711b.m666Y() - 1);
                    }
                }
                return C2272s.m836g(jMin, EnumC2254a.DAY_OF_YEAR.f830b.f857d);
            case 7:
                return C2272s.m835f(C2208w.f704d.getYear(), 999999999L);
            case 8:
                long j = C2209x.f708d.f710a;
                C2209x[] c2209xArr3 = C2209x.f709e;
                return C2272s.m835f(j, c2209xArr3[c2209xArr3.length - 1].f710a);
            default:
                return enumC2254a.f830b;
        }
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: C */
    public final List mo744C() {
        C2209x[] c2209xArr = C2209x.f709e;
        return AbstractC2108g.m519p((C2209x[]) Arrays.copyOf(c2209xArr, c2209xArr.length));
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: E */
    public final InterfaceC2197l mo745E(int i) {
        return C2209x.m764r(i);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: F */
    public final int mo746F(InterfaceC2197l interfaceC2197l, int i) {
        if (!(interfaceC2197l instanceof C2209x)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        C2209x c2209x = (C2209x) interfaceC2197l;
        int year = (c2209x.f711b.getYear() + i) - 1;
        if (i == 1 || (year >= -999999999 && year <= 999999999 && year >= c2209x.f711b.getYear() && interfaceC2197l == C2209x.m763p(LocalDate.of(year, 1, 1)))) {
            return year;
        }
        C2148b.m615h("Invalid yearOfEra value");
        return 0;
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: J */
    public final InterfaceC2187b mo747J(InterfaceC2265l interfaceC2265l) {
        return interfaceC2265l instanceof C2208w ? (C2208w) interfaceC2265l : new C2208w(LocalDate.m658I(interfaceC2265l));
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: N */
    public final InterfaceC2187b mo748N() {
        return new C2208w(LocalDate.m658I(LocalDate.f0(AbstractC2108g.m503A())));
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: T */
    public final InterfaceC2187b mo749T(int i, int i2, int i3) {
        return new C2208w(LocalDate.of(i, i2, i3));
    }

    @Override // j$.time.chrono.AbstractC2186a, j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: V */
    public final InterfaceC2187b mo729V(Map map, EnumC2240z enumC2240z) {
        return (C2208w) super.mo729V(map, enumC2240z);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: W */
    public final ChronoZonedDateTime mo750W(Instant instant, ZoneId zoneId) {
        return C2195j.m756I(this, instant, zoneId);
    }

    @Override // j$.time.chrono.AbstractC2186a
    /* JADX INFO: renamed from: Y */
    public final InterfaceC2187b mo730Y(Map map, EnumC2240z enumC2240z) {
        C2208w c2208wB0;
        EnumC2254a enumC2254a = EnumC2254a.ERA;
        Long l = (Long) map.get(enumC2254a);
        C2209x c2209xM764r = l != null ? C2209x.m764r(mo743B(enumC2254a).m837a(l.longValue(), enumC2254a)) : null;
        EnumC2254a enumC2254a2 = EnumC2254a.YEAR_OF_ERA;
        Long l2 = (Long) map.get(enumC2254a2);
        int iM837a = l2 != null ? mo743B(enumC2254a2).m837a(l2.longValue(), enumC2254a2) : 0;
        if (c2209xM764r == null && l2 != null && !map.containsKey(EnumC2254a.YEAR) && enumC2240z != EnumC2240z.STRICT) {
            C2209x[] c2209xArr = C2209x.f709e;
            c2209xM764r = ((C2209x[]) Arrays.copyOf(c2209xArr, c2209xArr.length))[((C2209x[]) Arrays.copyOf(c2209xArr, c2209xArr.length)).length - 1];
        }
        if (l2 != null && c2209xM764r != null) {
            EnumC2254a enumC2254a3 = EnumC2254a.MONTH_OF_YEAR;
            if (map.containsKey(enumC2254a3)) {
                EnumC2254a enumC2254a4 = EnumC2254a.DAY_OF_MONTH;
                if (map.containsKey(enumC2254a4)) {
                    map.remove(enumC2254a);
                    map.remove(enumC2254a2);
                    if (enumC2240z == EnumC2240z.LENIENT) {
                        return new C2208w(LocalDate.of((c2209xM764r.f711b.getYear() + iM837a) - 1, 1, 1)).m762Y(Math.subtractExact(((Long) map.remove(enumC2254a3)).longValue(), 1L), ChronoUnit.MONTHS).m762Y(Math.subtractExact(((Long) map.remove(enumC2254a4)).longValue(), 1L), ChronoUnit.DAYS);
                    }
                    int iM837a2 = mo743B(enumC2254a3).m837a(((Long) map.remove(enumC2254a3)).longValue(), enumC2254a3);
                    int iM837a3 = mo743B(enumC2254a4).m837a(((Long) map.remove(enumC2254a4)).longValue(), enumC2254a4);
                    if (enumC2240z != EnumC2240z.SMART) {
                        LocalDate localDate = C2208w.f704d;
                        LocalDate localDateOf = LocalDate.of((c2209xM764r.f711b.getYear() + iM837a) - 1, iM837a2, iM837a3);
                        if (!localDateOf.b0(c2209xM764r.f711b) && c2209xM764r == C2209x.m763p(localDateOf)) {
                            return new C2208w(c2209xM764r, iM837a, localDateOf);
                        }
                        C2148b.m615h("year, month, and day not valid for Era");
                        return null;
                    }
                    if (iM837a < 1) {
                        C2148b.m609b("Invalid YearOfEra: ", iM837a);
                        return null;
                    }
                    int year = (c2209xM764r.f711b.getYear() + iM837a) - 1;
                    try {
                        c2208wB0 = new C2208w(LocalDate.of(year, iM837a2, iM837a3));
                    } catch (C2184b unused) {
                        c2208wB0 = new C2208w(LocalDate.of(year, iM837a2, 1)).b0(new C2213e(3));
                    }
                    if (c2208wB0.f706b == c2209xM764r || c2208wB0.mo642g(EnumC2254a.YEAR_OF_ERA) <= 1 || iM837a <= 1) {
                        return c2208wB0;
                    }
                    throw new C2184b("Invalid YearOfEra for Era: " + c2209xM764r + " " + iM837a);
                }
            }
            EnumC2254a enumC2254a5 = EnumC2254a.DAY_OF_YEAR;
            if (map.containsKey(enumC2254a5)) {
                map.remove(enumC2254a);
                map.remove(enumC2254a2);
                if (enumC2240z == EnumC2240z.LENIENT) {
                    return new C2208w(LocalDate.h0((c2209xM764r.f711b.getYear() + iM837a) - 1, 1)).m762Y(Math.subtractExact(((Long) map.remove(enumC2254a5)).longValue(), 1L), ChronoUnit.DAYS);
                }
                int iM837a4 = mo743B(enumC2254a5).m837a(((Long) map.remove(enumC2254a5)).longValue(), enumC2254a5);
                LocalDate localDate2 = C2208w.f704d;
                LocalDate localDate3 = c2209xM764r.f711b;
                LocalDate localDateH0 = iM837a == 1 ? LocalDate.h0(localDate3.getYear(), (c2209xM764r.f711b.m666Y() + iM837a4) - 1) : LocalDate.h0((localDate3.getYear() + iM837a) - 1, iM837a4);
                if (!localDateH0.b0(c2209xM764r.f711b) && c2209xM764r == C2209x.m763p(localDateH0)) {
                    return new C2208w(c2209xM764r, iM837a, localDateH0);
                }
                C2148b.m615h("Invalid parameters");
            }
        }
        return null;
    }

    @Override // j$.time.chrono.InterfaceC2196k
    public final String getId() {
        return "Japanese";
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: p */
    public final InterfaceC2187b mo751p(long j) {
        return new C2208w(LocalDate.g0(j));
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: v */
    public final String mo752v() {
        return "japanese";
    }

    public Object writeReplace() {
        return new d0((byte) 1, this);
    }

    @Override // j$.time.chrono.InterfaceC2196k
    /* JADX INFO: renamed from: x */
    public final InterfaceC2187b mo753x(int i, int i2) {
        return new C2208w(LocalDate.h0(i, i2));
    }
}
