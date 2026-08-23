package j$.time;

import j$.time.chrono.InterfaceC2114k;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2185m;
import j$.time.temporal.InterfaceC2190r;
import j$.time.temporal.Temporal;

/* JADX INFO: renamed from: j$.time.x */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2196x implements InterfaceC2185m {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f714a;

    public /* synthetic */ C2196x(int i) {
        this.f714a = i;
    }

    @Override // j$.time.temporal.InterfaceC2185m
    /* JADX INFO: renamed from: e */
    public Temporal mo483e(Temporal temporal) {
        EnumC2173a enumC2173a = EnumC2173a.DAY_OF_MONTH;
        return temporal.mo496a(temporal.mo487m(enumC2173a).f707d, enumC2173a);
    }

    /* JADX INFO: renamed from: m */
    public Object m734m(InterfaceC2184l interfaceC2184l) {
        int i = this.f714a;
        C2196x c2196x = AbstractC2189q.f697a;
        switch (i) {
            case 0:
                return ZonedDateTime.m550B(interfaceC2184l);
            case 1:
                ZoneId zoneId = (ZoneId) interfaceC2184l.mo482d(c2196x);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 2:
            default:
                EnumC2173a enumC2173a = EnumC2173a.NANO_OF_DAY;
                if (interfaceC2184l.mo485i(enumC2173a)) {
                    return C2162j.m696V(interfaceC2184l.mo486k(enumC2173a));
                }
                return null;
            case 3:
                return (ZoneId) interfaceC2184l.mo482d(c2196x);
            case 4:
                return (InterfaceC2114k) interfaceC2184l.mo482d(AbstractC2189q.f698b);
            case 5:
                return (InterfaceC2190r) interfaceC2184l.mo482d(AbstractC2189q.f699c);
            case 6:
                EnumC2173a enumC2173a2 = EnumC2173a.OFFSET_SECONDS;
                if (interfaceC2184l.mo485i(enumC2173a2)) {
                    return ZoneOffset.m549Z(interfaceC2184l.mo484g(enumC2173a2));
                }
                return null;
            case 7:
                ZoneId zoneId2 = (ZoneId) interfaceC2184l.mo482d(c2196x);
                return zoneId2 != null ? zoneId2 : (ZoneId) interfaceC2184l.mo482d(AbstractC2189q.f700d);
            case 8:
                EnumC2173a enumC2173a3 = EnumC2173a.EPOCH_DAY;
                if (interfaceC2184l.mo485i(enumC2173a3)) {
                    return LocalDate.d0(interfaceC2184l.mo486k(enumC2173a3));
                }
                return null;
        }
    }

    public String toString() {
        switch (this.f714a) {
            case 3:
                return "ZoneId";
            case 4:
                return "Chronology";
            case 5:
                return "Precision";
            case 6:
                return "ZoneOffset";
            case 7:
                return "Zone";
            case 8:
                return "LocalDate";
            case 9:
                return "LocalTime";
            default:
                return super.toString();
        }
    }
}
