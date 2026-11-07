package j$.time;

import j$.time.chrono.InterfaceC2196k;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2266m;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;

/* JADX INFO: renamed from: j$.time.e */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2213e implements InterfaceC2266m {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f716a;

    public /* synthetic */ C2213e(int i) {
        this.f716a = i;
    }

    @Override // j$.time.temporal.InterfaceC2266m
    /* JADX INFO: renamed from: e */
    public Temporal mo641e(Temporal temporal) {
        EnumC2254a enumC2254a = EnumC2254a.DAY_OF_MONTH;
        return temporal.mo652a(temporal.mo643l(enumC2254a).f857d, enumC2254a);
    }

    /* JADX INFO: renamed from: l */
    public Object m766l(InterfaceC2265l interfaceC2265l) {
        int i = this.f716a;
        C2213e c2213e = AbstractC2270q.f847a;
        switch (i) {
            case 0:
                return Instant.m647D(interfaceC2265l);
            case 1:
                return ZonedDateTime.m708D(interfaceC2265l);
            case 2:
                ZoneId zoneId = (ZoneId) interfaceC2265l.mo530d(c2213e);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 3:
            default:
                EnumC2254a enumC2254a = EnumC2254a.NANO_OF_DAY;
                if (interfaceC2265l.mo531i(enumC2254a)) {
                    return LocalTime.m682S(interfaceC2265l.mo532k(enumC2254a));
                }
                return null;
            case 4:
                return (ZoneId) interfaceC2265l.mo530d(c2213e);
            case 5:
                return (InterfaceC2196k) interfaceC2265l.mo530d(AbstractC2270q.f848b);
            case 6:
                return (TemporalUnit) interfaceC2265l.mo530d(AbstractC2270q.f849c);
            case 7:
                EnumC2254a enumC2254a2 = EnumC2254a.OFFSET_SECONDS;
                if (interfaceC2265l.mo531i(enumC2254a2)) {
                    return ZoneOffset.ofTotalSeconds(interfaceC2265l.mo642g(enumC2254a2));
                }
                return null;
            case 8:
                ZoneId zoneId2 = (ZoneId) interfaceC2265l.mo530d(c2213e);
                return zoneId2 != null ? zoneId2 : (ZoneId) interfaceC2265l.mo530d(AbstractC2270q.f850d);
            case 9:
                EnumC2254a enumC2254a3 = EnumC2254a.EPOCH_DAY;
                if (interfaceC2265l.mo531i(enumC2254a3)) {
                    return LocalDate.g0(interfaceC2265l.mo532k(enumC2254a3));
                }
                return null;
        }
    }

    public String toString() {
        switch (this.f716a) {
            case 4:
                return "ZoneId";
            case 5:
                return "Chronology";
            case 6:
                return "Precision";
            case 7:
                return "ZoneOffset";
            case 8:
                return "Zone";
            case 9:
                return "LocalDate";
            case 10:
                return "LocalTime";
            default:
                return super.toString();
        }
    }
}
