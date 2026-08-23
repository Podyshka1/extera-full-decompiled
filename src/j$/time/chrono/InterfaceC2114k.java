package j$.time.chrono;

import j$.time.C2103c;
import j$.time.C2159g;
import j$.time.C2162j;
import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.format.EnumC2158z;
import j$.time.temporal.AbstractC2189q;
import j$.time.temporal.C2192t;
import j$.time.temporal.EnumC2173a;
import j$.time.temporal.InterfaceC2184l;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.chrono.k */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2114k extends Comparable {
    static InterfaceC2114k of(String str) {
        ConcurrentHashMap concurrentHashMap = AbstractC2104a.f500a;
        Objects.requireNonNull(str, "id");
        while (true) {
            ConcurrentHashMap concurrentHashMap2 = AbstractC2104a.f500a;
            InterfaceC2114k interfaceC2114k = (InterfaceC2114k) concurrentHashMap2.get(str);
            if (interfaceC2114k == null) {
                interfaceC2114k = (InterfaceC2114k) AbstractC2104a.f501b.get(str);
            }
            if (interfaceC2114k != null) {
                return interfaceC2114k;
            }
            if (concurrentHashMap2.get("ISO") != null) {
                for (InterfaceC2114k interfaceC2114k2 : ServiceLoader.load(InterfaceC2114k.class)) {
                    if (str.equals(interfaceC2114k2.getId()) || str.equals(interfaceC2114k2.mo602v())) {
                        return interfaceC2114k2;
                    }
                }
                C2159g.m684a("Unknown chronology: ".concat(str));
                return null;
            }
            C2117n c2117n = C2117n.f527l;
            c2117n.getClass();
            AbstractC2104a.m573B(c2117n, "Hijrah-umalqura");
            C2124u c2124u = C2124u.f546c;
            c2124u.getClass();
            AbstractC2104a.m573B(c2124u, "Japanese");
            C2129z c2129z = C2129z.f558c;
            c2129z.getClass();
            AbstractC2104a.m573B(c2129z, "Minguo");
            f0 f0Var = f0.f512c;
            f0Var.getClass();
            AbstractC2104a.m573B(f0Var, "ThaiBuddhist");
            try {
                for (AbstractC2104a abstractC2104a : Arrays.asList(new AbstractC2104a[0])) {
                    if (!abstractC2104a.getId().equals("ISO")) {
                        AbstractC2104a.m573B(abstractC2104a, abstractC2104a.getId());
                    }
                }
                C2121r c2121r = C2121r.f543c;
                c2121r.getClass();
                AbstractC2104a.m573B(c2121r, "ISO");
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    /* JADX INFO: renamed from: s */
    static InterfaceC2114k m611s(InterfaceC2184l interfaceC2184l) {
        Objects.requireNonNull(interfaceC2184l, "temporal");
        InterfaceC2114k interfaceC2114k = (InterfaceC2114k) interfaceC2184l.mo482d(AbstractC2189q.f698b);
        C2121r c2121r = C2121r.f543c;
        if (interfaceC2114k != null) {
            return interfaceC2114k;
        }
        Objects.requireNonNull(c2121r, "defaultObj");
        return c2121r;
    }

    /* JADX INFO: renamed from: A */
    List mo594A();

    /* JADX INFO: renamed from: C */
    InterfaceC2115l mo595C(int i);

    /* JADX INFO: renamed from: D */
    int mo596D(InterfaceC2115l interfaceC2115l, int i);

    /* JADX INFO: renamed from: H */
    InterfaceC2105b mo597H(InterfaceC2184l interfaceC2184l);

    /* JADX INFO: renamed from: L */
    InterfaceC2105b mo598L();

    /* JADX INFO: renamed from: M */
    default ChronoLocalDateTime mo612M(InterfaceC2184l interfaceC2184l) {
        try {
            return mo597H(interfaceC2184l).mo505K(C2162j.m694G(interfaceC2184l));
        } catch (C2103c e) {
            throw new C2103c("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + interfaceC2184l.getClass(), e);
        }
    }

    /* JADX INFO: renamed from: Q */
    InterfaceC2105b mo599Q(int i, int i2, int i3);

    /* JADX INFO: renamed from: S */
    InterfaceC2105b mo578S(Map map, EnumC2158z enumC2158z);

    /* JADX INFO: renamed from: T */
    ChronoZonedDateTime mo600T(Instant instant, ZoneId zoneId);

    boolean equals(Object obj);

    String getId();

    int hashCode();

    /* JADX INFO: renamed from: r */
    InterfaceC2105b mo601r(long j);

    String toString();

    /* JADX INFO: renamed from: v */
    String mo602v();

    /* JADX INFO: renamed from: w */
    default ChronoZonedDateTime mo613w(InterfaceC2184l interfaceC2184l) {
        try {
            ZoneId zoneIdM544t = ZoneId.m544t(interfaceC2184l);
            try {
                return mo600T(Instant.m491B(interfaceC2184l), zoneIdM544t);
            } catch (C2103c unused) {
                return C2113j.m608B(zoneIdM544t, null, C2109f.m588t(this, this.mo612M(interfaceC2184l)));
            }
        } catch (C2103c e) {
            throw new C2103c("Unable to obtain ChronoZonedDateTime from TemporalAccessor: " + interfaceC2184l.getClass(), e);
        }
    }

    /* JADX INFO: renamed from: x */
    InterfaceC2105b mo603x(int i, int i2);

    /* JADX INFO: renamed from: z */
    C2192t mo604z(EnumC2173a enumC2173a);
}
