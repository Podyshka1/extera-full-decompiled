package j$.time.chrono;

import j$.nio.file.C2148b;
import j$.time.C2184b;
import j$.time.Instant;
import j$.time.LocalTime;
import j$.time.ZoneId;
import j$.time.format.EnumC2240z;
import j$.time.temporal.AbstractC2270q;
import j$.time.temporal.C2272s;
import j$.time.temporal.EnumC2254a;
import j$.time.temporal.InterfaceC2265l;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.time.chrono.k */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2196k extends Comparable {
    static InterfaceC2196k of(String str) {
        ConcurrentHashMap concurrentHashMap = AbstractC2186a.f656a;
        Objects.requireNonNull(str, "id");
        while (true) {
            ConcurrentHashMap concurrentHashMap2 = AbstractC2186a.f656a;
            InterfaceC2196k interfaceC2196k = (InterfaceC2196k) concurrentHashMap2.get(str);
            if (interfaceC2196k == null) {
                interfaceC2196k = (InterfaceC2196k) AbstractC2186a.f657b.get(str);
            }
            if (interfaceC2196k != null) {
                return interfaceC2196k;
            }
            if (concurrentHashMap2.get("ISO") != null) {
                for (InterfaceC2196k interfaceC2196k2 : ServiceLoader.load(InterfaceC2196k.class)) {
                    if (str.equals(interfaceC2196k2.getId()) || str.equals(interfaceC2196k2.mo752v())) {
                        return interfaceC2196k2;
                    }
                }
                C2148b.m615h("Unknown chronology: ".concat(str));
                return null;
            }
            C2199n c2199n = C2199n.f683l;
            c2199n.getClass();
            AbstractC2186a.m724D(c2199n, "Hijrah-umalqura");
            C2206u c2206u = C2206u.f702c;
            c2206u.getClass();
            AbstractC2186a.m724D(c2206u, "Japanese");
            C2211z c2211z = C2211z.f714c;
            c2211z.getClass();
            AbstractC2186a.m724D(c2211z, "Minguo");
            f0 f0Var = f0.f668c;
            f0Var.getClass();
            AbstractC2186a.m724D(f0Var, "ThaiBuddhist");
            try {
                for (AbstractC2186a abstractC2186a : Arrays.asList(new AbstractC2186a[0])) {
                    if (!abstractC2186a.getId().equals("ISO")) {
                        AbstractC2186a.m724D(abstractC2186a, abstractC2186a.getId());
                    }
                }
                C2203r c2203r = C2203r.f699c;
                c2203r.getClass();
                AbstractC2186a.m724D(c2203r, "ISO");
            } catch (Throwable th) {
                throw new ServiceConfigurationError(th.getMessage(), th);
            }
        }
    }

    /* JADX INFO: renamed from: r */
    static InterfaceC2196k m758r(InterfaceC2265l interfaceC2265l) {
        Objects.requireNonNull(interfaceC2265l, "temporal");
        InterfaceC2196k interfaceC2196k = (InterfaceC2196k) interfaceC2265l.mo530d(AbstractC2270q.f848b);
        C2203r c2203r = C2203r.f699c;
        if (interfaceC2196k != null) {
            return interfaceC2196k;
        }
        Objects.requireNonNull(c2203r, "defaultObj");
        return c2203r;
    }

    /* JADX INFO: renamed from: B */
    C2272s mo743B(EnumC2254a enumC2254a);

    /* JADX INFO: renamed from: C */
    List mo744C();

    /* JADX INFO: renamed from: E */
    InterfaceC2197l mo745E(int i);

    /* JADX INFO: renamed from: F */
    int mo746F(InterfaceC2197l interfaceC2197l, int i);

    /* JADX INFO: renamed from: J */
    InterfaceC2187b mo747J(InterfaceC2265l interfaceC2265l);

    /* JADX INFO: renamed from: N */
    InterfaceC2187b mo748N();

    /* JADX INFO: renamed from: O */
    default ChronoLocalDateTime mo759O(InterfaceC2265l interfaceC2265l) {
        try {
            return mo747J(interfaceC2265l).mo661M(LocalTime.m681I(interfaceC2265l));
        } catch (C2184b e) {
            throw new C2184b("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + interfaceC2265l.getClass(), e);
        }
    }

    /* JADX INFO: renamed from: T */
    InterfaceC2187b mo749T(int i, int i2, int i3);

    /* JADX INFO: renamed from: V */
    InterfaceC2187b mo729V(Map map, EnumC2240z enumC2240z);

    /* JADX INFO: renamed from: W */
    ChronoZonedDateTime mo750W(Instant instant, ZoneId zoneId);

    boolean equals(Object obj);

    String getId();

    int hashCode();

    /* JADX INFO: renamed from: p */
    InterfaceC2187b mo751p(long j);

    String toString();

    /* JADX INFO: renamed from: v */
    String mo752v();

    /* JADX INFO: renamed from: w */
    default ChronoZonedDateTime mo760w(InterfaceC2265l interfaceC2265l) {
        try {
            ZoneId zoneIdM705s = ZoneId.m705s(interfaceC2265l);
            try {
                return mo750W(Instant.m647D(interfaceC2265l), zoneIdM705s);
            } catch (C2184b unused) {
                return C2195j.m755D(zoneIdM705s, null, C2191f.m737s(this, this.mo759O(interfaceC2265l)));
            }
        } catch (C2184b e) {
            throw new C2184b("Unable to obtain ChronoZonedDateTime from TemporalAccessor: " + interfaceC2265l.getClass(), e);
        }
    }

    /* JADX INFO: renamed from: x */
    InterfaceC2187b mo753x(int i, int i2);
}
