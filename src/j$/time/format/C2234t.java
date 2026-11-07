package j$.time.format;

import j$.time.C2184b;
import j$.time.C2213e;
import j$.time.ZoneId;
import j$.time.chrono.C2203r;
import j$.time.chrono.InterfaceC2187b;
import j$.time.chrono.InterfaceC2196k;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import j$.time.temporal.InterfaceC2269p;
import java.util.Objects;

/* JADX INFO: renamed from: j$.time.format.t */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2234t {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2265l f786a;

    /* JADX INFO: renamed from: b */
    public final DateTimeFormatter f787b;

    /* JADX INFO: renamed from: c */
    public int f788c;

    public C2234t(InterfaceC2265l interfaceC2265l, DateTimeFormatter dateTimeFormatter) {
        InterfaceC2196k interfaceC2196k = dateTimeFormatter.f724e;
        if (interfaceC2196k != null) {
            InterfaceC2196k interfaceC2196k2 = (InterfaceC2196k) interfaceC2265l.mo530d(AbstractC2270q.f848b);
            ZoneId zoneId = (ZoneId) interfaceC2265l.mo530d(AbstractC2270q.f847a);
            InterfaceC2187b interfaceC2187bMo747J = null;
            interfaceC2196k = Objects.equals(interfaceC2196k, interfaceC2196k2) ? null : interfaceC2196k;
            if (interfaceC2196k != null) {
                InterfaceC2196k interfaceC2196k3 = interfaceC2196k != null ? interfaceC2196k : interfaceC2196k2;
                if (interfaceC2196k != null) {
                    if (interfaceC2265l.mo531i(EnumC2254a.EPOCH_DAY)) {
                        interfaceC2187bMo747J = interfaceC2196k3.mo747J(interfaceC2265l);
                    } else if (interfaceC2196k != C2203r.f699c || interfaceC2196k2 != null) {
                        for (EnumC2254a enumC2254a : EnumC2254a.values()) {
                            if (enumC2254a.isDateBased() && interfaceC2265l.mo531i(enumC2254a)) {
                                throw new C2184b("Unable to apply override chronology '" + interfaceC2196k + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + interfaceC2265l);
                            }
                        }
                    }
                }
                interfaceC2265l = new C2233s(interfaceC2187bMo747J, interfaceC2265l, interfaceC2196k3, zoneId);
            }
        }
        this.f786a = interfaceC2265l;
        this.f787b = dateTimeFormatter;
    }

    /* JADX INFO: renamed from: a */
    public final Long m810a(InterfaceC2269p interfaceC2269p) {
        int i = this.f788c;
        InterfaceC2265l interfaceC2265l = this.f786a;
        if (i <= 0 || interfaceC2265l.mo531i(interfaceC2269p)) {
            return Long.valueOf(interfaceC2265l.mo532k(interfaceC2269p));
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public final Object m811b(C2213e c2213e) {
        InterfaceC2265l interfaceC2265l = this.f786a;
        Object objMo530d = interfaceC2265l.mo530d(c2213e);
        if (objMo530d != null || this.f788c != 0) {
            return objMo530d;
        }
        throw new C2184b("Unable to extract " + c2213e + " from temporal " + interfaceC2265l);
    }

    public final String toString() {
        return this.f786a.toString();
    }
}
