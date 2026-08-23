package j$.time.temporal;

import j$.time.AbstractC2130d;
import j$.time.C2103c;
import j$.time.C2196x;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.temporal.l */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2184l {
    /* JADX INFO: renamed from: d */
    default Object mo482d(C2196x c2196x) {
        if (c2196x == AbstractC2189q.f697a || c2196x == AbstractC2189q.f698b || c2196x == AbstractC2189q.f699c) {
            return null;
        }
        return c2196x.m734m(this);
    }

    /* JADX INFO: renamed from: g */
    default int mo484g(InterfaceC2188p interfaceC2188p) {
        C2192t c2192tMo487m = mo487m(interfaceC2188p);
        if (!c2192tMo487m.m731d()) {
            throw new C2191s("Invalid field " + interfaceC2188p + " for get() method, use getLong() instead");
        }
        long jMo486k = mo486k(interfaceC2188p);
        if (c2192tMo487m.m732e(jMo486k)) {
            return (int) jMo486k;
        }
        throw new C2103c("Invalid value for " + interfaceC2188p + " (valid values " + c2192tMo487m + "): " + jMo486k);
    }

    /* JADX INFO: renamed from: i */
    boolean mo485i(InterfaceC2188p interfaceC2188p);

    /* JADX INFO: renamed from: k */
    long mo486k(InterfaceC2188p interfaceC2188p);

    /* JADX INFO: renamed from: m */
    default C2192t mo487m(InterfaceC2188p interfaceC2188p) {
        if (!(interfaceC2188p instanceof EnumC2173a)) {
            Objects.requireNonNull(interfaceC2188p, "field");
            return interfaceC2188p.mo715B(this);
        }
        if (mo485i(interfaceC2188p)) {
            return ((EnumC2173a) interfaceC2188p).f681b;
        }
        throw new C2191s(AbstractC2130d.m629a("Unsupported field: ", interfaceC2188p));
    }
}
