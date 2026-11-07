package j$.time;

import j$.time.chrono.InterfaceC2336k;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2405m;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;

/* JADX INFO: renamed from: j$.time.d */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2352d implements InterfaceC2405m {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f717a;

    public /* synthetic */ C2352d(int i) {
        this.f717a = i;
    }

    @Override // j$.time.temporal.InterfaceC2405m
    /* JADX INFO: renamed from: e */
    public Temporal mo665e(Temporal temporal) {
        EnumC2393a enumC2393a = EnumC2393a.DAY_OF_MONTH;
        return temporal.mo676a(temporal.mo667l(enumC2393a).f859d, enumC2393a);
    }

    /* JADX INFO: renamed from: l */
    public Object m810l(InterfaceC2404l interfaceC2404l) {
        int i = this.f717a;
        C2352d c2352d = AbstractC2409q.f849a;
        switch (i) {
            case 0:
                return Instant.m671D(interfaceC2404l);
            case 1:
                return OffsetDateTime.m716s(interfaceC2404l);
            case 2:
                return ZonedDateTime.m740D(interfaceC2404l);
            case 3:
                ZoneId zoneId = (ZoneId) interfaceC2404l.mo554d(c2352d);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 4:
            default:
                EnumC2393a enumC2393a = EnumC2393a.NANO_OF_DAY;
                if (interfaceC2404l.mo555i(enumC2393a)) {
                    return LocalTime.m709R(interfaceC2404l.mo556k(enumC2393a));
                }
                return null;
            case 5:
                return (ZoneId) interfaceC2404l.mo554d(c2352d);
            case 6:
                return (InterfaceC2336k) interfaceC2404l.mo554d(AbstractC2409q.f850b);
            case 7:
                return (TemporalUnit) interfaceC2404l.mo554d(AbstractC2409q.f851c);
            case 8:
                EnumC2393a enumC2393a2 = EnumC2393a.OFFSET_SECONDS;
                if (interfaceC2404l.mo555i(enumC2393a2)) {
                    return ZoneOffset.ofTotalSeconds(interfaceC2404l.mo666g(enumC2393a2));
                }
                return null;
            case 9:
                ZoneId zoneId2 = (ZoneId) interfaceC2404l.mo554d(c2352d);
                return zoneId2 != null ? zoneId2 : (ZoneId) interfaceC2404l.mo554d(AbstractC2409q.f852d);
            case 10:
                EnumC2393a enumC2393a3 = EnumC2393a.EPOCH_DAY;
                if (interfaceC2404l.mo555i(enumC2393a3)) {
                    return LocalDate.e0(interfaceC2404l.mo556k(enumC2393a3));
                }
                return null;
        }
    }

    public String toString() {
        switch (this.f717a) {
            case 5:
                return "ZoneId";
            case 6:
                return "Chronology";
            case 7:
                return "Precision";
            case 8:
                return "ZoneOffset";
            case 9:
                return "Zone";
            case 10:
                return "LocalDate";
            case 11:
                return "LocalTime";
            default:
                return super.toString();
        }
    }
}
