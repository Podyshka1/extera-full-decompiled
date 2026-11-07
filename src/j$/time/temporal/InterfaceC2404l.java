package j$.time.temporal;

import j$.time.AbstractC2324b;
import j$.time.C2352d;
import j$.time.DateTimeException;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.temporal.l */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2404l {
    /* JADX INFO: renamed from: d */
    default Object mo554d(C2352d c2352d) {
        if (c2352d == AbstractC2409q.f849a || c2352d == AbstractC2409q.f850b || c2352d == AbstractC2409q.f851c) {
            return null;
        }
        return c2352d.m810l(this);
    }

    /* JADX INFO: renamed from: g */
    default int mo666g(InterfaceC2408p interfaceC2408p) {
        C2411s c2411sMo667l = mo667l(interfaceC2408p);
        if (!c2411sMo667l.m888d()) {
            throw new C2410r("Invalid field " + interfaceC2408p + " for get() method, use getLong() instead");
        }
        long jMo556k = mo556k(interfaceC2408p);
        if (c2411sMo667l.m889e(jMo556k)) {
            return (int) jMo556k;
        }
        throw new DateTimeException("Invalid value for " + interfaceC2408p + " (valid values " + c2411sMo667l + "): " + jMo556k);
    }

    /* JADX INFO: renamed from: i */
    boolean mo555i(InterfaceC2408p interfaceC2408p);

    /* JADX INFO: renamed from: k */
    long mo556k(InterfaceC2408p interfaceC2408p);

    /* JADX INFO: renamed from: l */
    default C2411s mo667l(InterfaceC2408p interfaceC2408p) {
        if (!(interfaceC2408p instanceof EnumC2393a)) {
            Objects.requireNonNull(interfaceC2408p, "field");
            return interfaceC2408p.mo873D(this);
        }
        if (mo555i(interfaceC2408p)) {
            return ((EnumC2393a) interfaceC2408p).f832b;
        }
        throw new C2410r(AbstractC2324b.m753a("Unsupported field: ", interfaceC2408p));
    }
}
