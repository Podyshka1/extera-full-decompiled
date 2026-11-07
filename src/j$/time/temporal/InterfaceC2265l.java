package j$.time.temporal;

import j$.time.AbstractC2185c;
import j$.time.C2184b;
import j$.time.C2213e;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.temporal.l */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2265l {
    /* JADX INFO: renamed from: d */
    default Object mo530d(C2213e c2213e) {
        if (c2213e == AbstractC2270q.f847a || c2213e == AbstractC2270q.f848b || c2213e == AbstractC2270q.f849c) {
            return null;
        }
        return c2213e.m766l(this);
    }

    /* JADX INFO: renamed from: g */
    default int mo642g(InterfaceC2269p interfaceC2269p) {
        C2272s c2272sMo643l = mo643l(interfaceC2269p);
        if (!c2272sMo643l.m840d()) {
            throw new C2271r("Invalid field " + interfaceC2269p + " for get() method, use getLong() instead");
        }
        long jMo532k = mo532k(interfaceC2269p);
        if (c2272sMo643l.m841e(jMo532k)) {
            return (int) jMo532k;
        }
        throw new C2184b("Invalid value for " + interfaceC2269p + " (valid values " + c2272sMo643l + "): " + jMo532k);
    }

    /* JADX INFO: renamed from: i */
    boolean mo531i(InterfaceC2269p interfaceC2269p);

    /* JADX INFO: renamed from: k */
    long mo532k(InterfaceC2269p interfaceC2269p);

    /* JADX INFO: renamed from: l */
    default C2272s mo643l(InterfaceC2269p interfaceC2269p) {
        if (!(interfaceC2269p instanceof EnumC2254a)) {
            Objects.requireNonNull(interfaceC2269p, "field");
            return interfaceC2269p.mo829D(this);
        }
        if (mo531i(interfaceC2269p)) {
            return ((EnumC2254a) interfaceC2269p).f830b;
        }
        throw new C2271r(AbstractC2185c.m719a("Unsupported field: ", interfaceC2269p));
    }
}
