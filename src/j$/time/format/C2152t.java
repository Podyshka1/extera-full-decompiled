package j$.time.format;

import j$.time.C2103c;
import j$.time.C2196x;
import j$.time.ZoneId;
import j$.time.chrono.C2121r;
import j$.time.chrono.InterfaceC2105b;
import j$.time.chrono.InterfaceC2114k;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import j$.time.temporal.InterfaceC2188p;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.t */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2152t {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2184l f630a;

    /* JADX INFO: renamed from: b */
    public final DateTimeFormatter f631b;

    /* JADX INFO: renamed from: c */
    public int f632c;

    public C2152t(InterfaceC2184l interfaceC2184l, DateTimeFormatter dateTimeFormatter) {
        InterfaceC2114k interfaceC2114k = dateTimeFormatter.f568e;
        if (interfaceC2114k != null) {
            InterfaceC2114k interfaceC2114k2 = (InterfaceC2114k) interfaceC2184l.mo482d(AbstractC2189q.f698b);
            ZoneId zoneId = (ZoneId) interfaceC2184l.mo482d(AbstractC2189q.f697a);
            InterfaceC2105b interfaceC2105bMo597H = null;
            interfaceC2114k = Objects.equals(interfaceC2114k, interfaceC2114k2) ? null : interfaceC2114k;
            if (interfaceC2114k != null) {
                InterfaceC2114k interfaceC2114k3 = interfaceC2114k != null ? interfaceC2114k : interfaceC2114k2;
                if (interfaceC2114k != null) {
                    if (interfaceC2184l.mo485i(EnumC2173a.EPOCH_DAY)) {
                        interfaceC2105bMo597H = interfaceC2114k3.mo597H(interfaceC2184l);
                    } else if (interfaceC2114k != C2121r.f543c || interfaceC2114k2 != null) {
                        for (EnumC2173a enumC2173a : EnumC2173a.values()) {
                            if (enumC2173a.isDateBased() && interfaceC2184l.mo485i(enumC2173a)) {
                                throw new C2103c("Unable to apply override chronology '" + interfaceC2114k + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + interfaceC2184l);
                            }
                        }
                    }
                }
                interfaceC2184l = new C2151s(interfaceC2105bMo597H, interfaceC2184l, interfaceC2114k3, zoneId);
            }
        }
        this.f630a = interfaceC2184l;
        this.f631b = dateTimeFormatter;
    }

    /* JADX INFO: renamed from: a */
    public final Long m672a(InterfaceC2188p interfaceC2188p) {
        int i = this.f632c;
        InterfaceC2184l interfaceC2184l = this.f630a;
        if (i <= 0 || interfaceC2184l.mo485i(interfaceC2188p)) {
            return Long.valueOf(interfaceC2184l.mo486k(interfaceC2188p));
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public final Object m673b(C2196x c2196x) {
        InterfaceC2184l interfaceC2184l = this.f630a;
        Object objMo482d = interfaceC2184l.mo482d(c2196x);
        if (objMo482d != null || this.f632c != 0) {
            return objMo482d;
        }
        throw new C2103c("Unable to extract " + c2196x + " from temporal " + interfaceC2184l);
    }

    public final String toString() {
        return this.f630a.toString();
    }
}
