package j$.time.format;

import j$.time.C2352d;
import j$.time.DateTimeException;
import j$.time.ZoneId;
import j$.time.chrono.C2343r;
import j$.time.chrono.InterfaceC2327b;
import j$.time.chrono.InterfaceC2336k;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import j$.time.temporal.InterfaceC2408p;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.t */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2374t {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2404l f790a;

    /* JADX INFO: renamed from: b */
    public final DateTimeFormatter f791b;

    /* JADX INFO: renamed from: c */
    public int f792c;

    public C2374t(InterfaceC2404l interfaceC2404l, DateTimeFormatter dateTimeFormatter) {
        InterfaceC2336k interfaceC2336k = dateTimeFormatter.f728e;
        if (interfaceC2336k != null) {
            InterfaceC2336k interfaceC2336k2 = (InterfaceC2336k) interfaceC2404l.mo554d(AbstractC2409q.f850b);
            ZoneId zoneId = (ZoneId) interfaceC2404l.mo554d(AbstractC2409q.f849a);
            InterfaceC2327b interfaceC2327bMo782J = null;
            interfaceC2336k = Objects.equals(interfaceC2336k, interfaceC2336k2) ? null : interfaceC2336k;
            if (interfaceC2336k != null) {
                InterfaceC2336k interfaceC2336k3 = interfaceC2336k != null ? interfaceC2336k : interfaceC2336k2;
                if (interfaceC2336k != null) {
                    if (interfaceC2404l.mo555i(EnumC2393a.EPOCH_DAY)) {
                        interfaceC2327bMo782J = interfaceC2336k3.mo782J(interfaceC2404l);
                    } else if (interfaceC2336k != C2343r.f701c || interfaceC2336k2 != null) {
                        for (EnumC2393a enumC2393a : EnumC2393a.values()) {
                            if (enumC2393a.isDateBased() && interfaceC2404l.mo555i(enumC2393a)) {
                                throw new DateTimeException("Unable to apply override chronology '" + interfaceC2336k + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + interfaceC2404l);
                            }
                        }
                    }
                }
                interfaceC2404l = new C2373s(interfaceC2327bMo782J, interfaceC2404l, interfaceC2336k3, zoneId);
            }
        }
        this.f790a = interfaceC2404l;
        this.f791b = dateTimeFormatter;
    }

    /* JADX INFO: renamed from: a */
    public final Long m854a(InterfaceC2408p interfaceC2408p) {
        int i = this.f792c;
        InterfaceC2404l interfaceC2404l = this.f790a;
        if (i <= 0 || interfaceC2404l.mo555i(interfaceC2408p)) {
            return Long.valueOf(interfaceC2404l.mo556k(interfaceC2408p));
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public final Object m855b(C2352d c2352d) {
        InterfaceC2404l interfaceC2404l = this.f790a;
        Object objMo554d = interfaceC2404l.mo554d(c2352d);
        if (objMo554d != null || this.f792c != 0) {
            return objMo554d;
        }
        throw new DateTimeException("Unable to extract " + c2352d + " from temporal " + interfaceC2404l);
    }

    public final String toString() {
        return this.f790a.toString();
    }
}
