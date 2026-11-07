package j$.time.chrono;

import j$.nio.file.C2288b;
import j$.time.DateTimeException;
import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.format.EnumC2380z;
import j$.time.temporal.AbstractC2409q;
import j$.time.temporal.C2411s;
import j$.time.temporal.EnumC2393a;
import j$.time.temporal.InterfaceC2404l;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.chrono.k */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2336k extends Comparable {
    static InterfaceC2336k of(String str) {
        ConcurrentHashMap concurrentHashMap = AbstractC2326a.f658a;
        Objects.requireNonNull(str, "id");
        while (true) {
            ConcurrentHashMap concurrentHashMap2 = AbstractC2326a.f658a;
            InterfaceC2336k interfaceC2336k = (InterfaceC2336k) concurrentHashMap2.get(str);
            if (interfaceC2336k == null) {
                interfaceC2336k = (InterfaceC2336k) AbstractC2326a.f659b.get(str);
            }
            if (interfaceC2336k != null) {
                return interfaceC2336k;
            }
            if (concurrentHashMap2.get("ISO") != null) {
                for (InterfaceC2336k interfaceC2336k2 : ServiceLoader.load(InterfaceC2336k.class)) {
                    if (str.equals(interfaceC2336k2.getId()) || str.equals(interfaceC2336k2.mo787v())) {
                        return interfaceC2336k2;
                    }
                }
                C2288b.m639h("Unknown chronology: ".concat(str));
                return null;
            }
            C2339n c2339n = C2339n.f685l;
            c2339n.getClass();
            AbstractC2326a.m757D(c2339n, "Hijrah-umalqura");
            C2346u c2346u = C2346u.f704c;
            c2346u.getClass();
            AbstractC2326a.m757D(c2346u, "Japanese");
            C2351z c2351z = C2351z.f716c;
            c2351z.getClass();
            AbstractC2326a.m757D(c2351z, "Minguo");
            f0 f0Var = f0.f670c;
            f0Var.getClass();
            AbstractC2326a.m757D(f0Var, "ThaiBuddhist");
            try {
                for (AbstractC2326a abstractC2326a : Arrays.asList(new AbstractC2326a[0])) {
                    if (!abstractC2326a.getId().equals("ISO")) {
                        AbstractC2326a.m757D(abstractC2326a, abstractC2326a.getId());
                    }
                }
                C2343r c2343r = C2343r.f701c;
                c2343r.getClass();
                AbstractC2326a.m757D(c2343r, "ISO");
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    /* JADX INFO: renamed from: r */
    static InterfaceC2336k m795r(InterfaceC2404l interfaceC2404l) {
        Objects.requireNonNull(interfaceC2404l, "temporal");
        InterfaceC2336k interfaceC2336k = (InterfaceC2336k) interfaceC2404l.mo554d(AbstractC2409q.f850b);
        C2343r c2343r = C2343r.f701c;
        if (interfaceC2336k != null) {
            return interfaceC2336k;
        }
        Objects.requireNonNull(c2343r, "defaultObj");
        return c2343r;
    }

    /* JADX INFO: renamed from: B */
    C2411s mo778B(EnumC2393a enumC2393a);

    /* JADX INFO: renamed from: C */
    List mo779C();

    /* JADX INFO: renamed from: E */
    InterfaceC2337l mo780E(int i);

    /* JADX INFO: renamed from: F */
    int mo781F(InterfaceC2337l interfaceC2337l, int i);

    /* JADX INFO: renamed from: J */
    InterfaceC2327b mo782J(InterfaceC2404l interfaceC2404l);

    /* JADX INFO: renamed from: M */
    InterfaceC2327b mo783M();

    /* JADX INFO: renamed from: N */
    default ChronoLocalDateTime mo796N(InterfaceC2404l interfaceC2404l) {
        try {
            return mo782J(interfaceC2404l).mo684L(LocalTime.m708I(interfaceC2404l));
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + interfaceC2404l.getClass(), e);
        }
    }

    /* JADX INFO: renamed from: S */
    InterfaceC2327b mo784S(int i, int i2, int i3);

    /* JADX INFO: renamed from: U */
    InterfaceC2327b mo762U(Map map, EnumC2380z enumC2380z);

    /* JADX INFO: renamed from: V */
    ChronoZonedDateTime mo785V(Instant instant, ZoneId zoneId);

    boolean equals(Object obj);

    String getId();

    int hashCode();

    /* JADX INFO: renamed from: p */
    InterfaceC2327b mo786p(long j);

    String toString();

    /* JADX INFO: renamed from: v */
    String mo787v();

    /* JADX INFO: renamed from: w */
    default ChronoZonedDateTime mo797w(InterfaceC2404l interfaceC2404l) {
        try {
            ZoneId zoneIdM735s = ZoneId.m735s(interfaceC2404l);
            try {
                return mo785V(Instant.m671D(interfaceC2404l), zoneIdM735s);
            } catch (DateTimeException unused) {
                return C2335j.m792D(zoneIdM735s, null, C2331f.m772s(this, this.mo796N(interfaceC2404l)));
            }
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain ChronoZonedDateTime from TemporalAccessor: " + interfaceC2404l.getClass(), e);
        }
    }

    /* JADX INFO: renamed from: x */
    InterfaceC2327b mo788x(int i, int i2);
}
