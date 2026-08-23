package j$.time.format;

import j$.time.C1969b;
import j$.time.ZoneId;
import j$.time.chrono.C1997r;
import j$.time.chrono.InterfaceC1981b;
import j$.time.chrono.InterfaceC1990k;
import j$.time.temporal.AbstractC2064r;
import j$.time.temporal.EnumC2047a;
import j$.time.temporal.InterfaceC2060n;
import j$.time.temporal.InterfaceC2063q;
import j$.util.Objects;

/* JADX INFO: renamed from: j$.time.format.r */
/* JADX INFO: loaded from: classes2.dex */
public final class C2026r {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2060n f546a;

    /* JADX INFO: renamed from: b */
    public final DateTimeFormatter f547b;

    /* JADX INFO: renamed from: c */
    public int f548c;

    public C2026r(InterfaceC2060n interfaceC2060n, DateTimeFormatter dateTimeFormatter) {
        InterfaceC1990k interfaceC1990k = dateTimeFormatter.f505d;
        if (interfaceC1990k != null) {
            InterfaceC1990k interfaceC1990k2 = (InterfaceC1990k) interfaceC2060n.mo458k(AbstractC2064r.f611b);
            ZoneId zoneId = (ZoneId) interfaceC2060n.mo458k(AbstractC2064r.f610a);
            InterfaceC1981b interfaceC1981bMo555s = null;
            interfaceC1990k = Objects.equals(interfaceC1990k, interfaceC1990k2) ? null : interfaceC1990k;
            Objects.equals(null, zoneId);
            if (interfaceC1990k != null) {
                InterfaceC1990k interfaceC1990k3 = interfaceC1990k != null ? interfaceC1990k : interfaceC1990k2;
                if (interfaceC1990k != null) {
                    if (interfaceC2060n.mo455e(EnumC2047a.EPOCH_DAY)) {
                        interfaceC1981bMo555s = interfaceC1990k3.mo555s(interfaceC2060n);
                    } else if (interfaceC1990k != C1997r.f480c || interfaceC1990k2 != null) {
                        for (EnumC2047a enumC2047a : EnumC2047a.values()) {
                            if (enumC2047a.isDateBased() && interfaceC2060n.mo455e(enumC2047a)) {
                                throw new C1969b("Unable to apply override chronology '" + interfaceC1990k + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + interfaceC2060n);
                            }
                        }
                    }
                }
                interfaceC2060n = new C2025q(interfaceC1981bMo555s, interfaceC2060n, interfaceC1990k3, zoneId);
            }
        }
        this.f546a = interfaceC2060n;
        this.f547b = dateTimeFormatter;
    }

    /* JADX INFO: renamed from: b */
    public final Object m613b(C2009a c2009a) {
        InterfaceC2060n interfaceC2060n = this.f546a;
        Object objMo458k = interfaceC2060n.mo458k(c2009a);
        if (objMo458k != null || this.f548c != 0) {
            return objMo458k;
        }
        throw new C1969b("Unable to extract " + c2009a + " from temporal " + interfaceC2060n);
    }

    /* JADX INFO: renamed from: a */
    public final Long m612a(InterfaceC2063q interfaceC2063q) {
        int i = this.f548c;
        InterfaceC2060n interfaceC2060n = this.f546a;
        if (i <= 0 || interfaceC2060n.mo455e(interfaceC2063q)) {
            return Long.valueOf(interfaceC2060n.mo460w(interfaceC2063q));
        }
        return null;
    }

    public final String toString() {
        return this.f546a.toString();
    }
}
