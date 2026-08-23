package p022j$.time.format;

import p022j$.time.C2108b;
import p022j$.time.ZoneId;
import p022j$.time.chrono.C2136r;
import p022j$.time.chrono.InterfaceC2120b;
import p022j$.time.chrono.InterfaceC2129k;
import p022j$.time.temporal.AbstractC2203r;
import p022j$.time.temporal.EnumC2186a;
import p022j$.time.temporal.InterfaceC2199n;
import p022j$.time.temporal.InterfaceC2202q;
import p022j$.util.Objects;

/* JADX INFO: renamed from: j$.time.format.r */
/* JADX INFO: loaded from: classes2.dex */
public final class C2165r {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2199n f781a;

    /* JADX INFO: renamed from: b */
    public final DateTimeFormatter f782b;

    /* JADX INFO: renamed from: c */
    public int f783c;

    public C2165r(InterfaceC2199n interfaceC2199n, DateTimeFormatter dateTimeFormatter) {
        InterfaceC2129k interfaceC2129k = dateTimeFormatter.f740d;
        if (interfaceC2129k != null) {
            InterfaceC2129k interfaceC2129k2 = (InterfaceC2129k) interfaceC2199n.mo578k(AbstractC2203r.f846b);
            ZoneId zoneId = (ZoneId) interfaceC2199n.mo578k(AbstractC2203r.f845a);
            InterfaceC2120b interfaceC2120bMo678s = null;
            interfaceC2129k = Objects.equals(interfaceC2129k, interfaceC2129k2) ? null : interfaceC2129k;
            Objects.equals(null, zoneId);
            if (interfaceC2129k != null) {
                InterfaceC2129k interfaceC2129k3 = interfaceC2129k != null ? interfaceC2129k : interfaceC2129k2;
                if (interfaceC2129k != null) {
                    if (interfaceC2199n.mo575e(EnumC2186a.EPOCH_DAY)) {
                        interfaceC2120bMo678s = interfaceC2129k3.mo678s(interfaceC2199n);
                    } else if (interfaceC2129k != C2136r.f714c || interfaceC2129k2 != null) {
                        for (EnumC2186a enumC2186a : EnumC2186a.values()) {
                            if (enumC2186a.isDateBased() && interfaceC2199n.mo575e(enumC2186a)) {
                                throw new C2108b("Unable to apply override chronology '" + interfaceC2129k + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + interfaceC2199n);
                            }
                        }
                    }
                }
                interfaceC2199n = new C2164q(interfaceC2120bMo678s, interfaceC2199n, interfaceC2129k3, zoneId);
            }
        }
        this.f781a = interfaceC2199n;
        this.f782b = dateTimeFormatter;
    }

    /* JADX INFO: renamed from: b */
    public final Object m736b(C2148a c2148a) {
        InterfaceC2199n interfaceC2199n = this.f781a;
        Object objMo578k = interfaceC2199n.mo578k(c2148a);
        if (objMo578k != null || this.f783c != 0) {
            return objMo578k;
        }
        throw new C2108b("Unable to extract " + c2148a + " from temporal " + interfaceC2199n);
    }

    /* JADX INFO: renamed from: a */
    public final Long m735a(InterfaceC2202q interfaceC2202q) {
        int i = this.f783c;
        InterfaceC2199n interfaceC2199n = this.f781a;
        if (i <= 0 || interfaceC2199n.mo575e(interfaceC2202q)) {
            return Long.valueOf(interfaceC2199n.mo580w(interfaceC2202q));
        }
        return null;
    }

    public final String toString() {
        return this.f781a.toString();
    }
}
