package p022j$.util.stream;

import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;
import p022j$.time.format.C2148a;
import p022j$.util.Objects;
import p022j$.util.Spliterator;
import p022j$.util.concurrent.C2265s;
import p022j$.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: j$.util.stream.o */
/* JADX INFO: loaded from: classes2.dex */
public final class C2521o extends AbstractC2473f2 {
    /* JADX INFO: renamed from: H0 */
    public static C2372M0 m1022H0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator) {
        C2494j c2494j = new C2494j(6);
        C2148a c2148a = new C2148a(23);
        C2148a c2148a2 = new C2148a(24);
        Objects.requireNonNull(c2494j);
        Objects.requireNonNull(c2148a);
        Objects.requireNonNull(c2148a2);
        return new C2372M0((Collection) new C2328D1(EnumC2468e3.REFERENCE, c2148a2, c2148a, c2494j, 3).mo860i(abstractC2573y1, spliterator));
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: A0 */
    public final InterfaceC2352I0 mo929A0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        AbstractC2446b abstractC2446b = (AbstractC2446b) abstractC2573y1;
        if (EnumC2462d3.DISTINCT.m1001k(abstractC2446b.f1301m)) {
            return abstractC2573y1.mo980d0(spliterator, false, intFunction);
        }
        if (EnumC2462d3.ORDERED.m1001k(abstractC2446b.f1301m)) {
            return m1022H0(abstractC2573y1, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        C2265s c2265s = new C2265s(4, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(c2265s);
        new C2391Q(c2265s, false).m958a(abstractC2573y1, spliterator);
        Collection collectionKeySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(collectionKeySet);
            hashSet.add(null);
            collectionKeySet = hashSet;
        }
        return new C2372M0(collectionKeySet);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: B0 */
    public final Spliterator mo930B0(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        if (EnumC2462d3.DISTINCT.m1001k(abstractC2446b.f1301m)) {
            return abstractC2446b.mo984u0(spliterator);
        }
        if (EnumC2462d3.ORDERED.m1001k(abstractC2446b.f1301m)) {
            return m1022H0(abstractC2446b, spliterator).spliterator();
        }
        return new C2515m3(abstractC2446b.mo984u0(spliterator), new ConcurrentHashMap());
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        Objects.requireNonNull(interfaceC2529p2);
        if (EnumC2462d3.DISTINCT.m1001k(i)) {
            return interfaceC2529p2;
        }
        if (EnumC2462d3.SORTED.m1001k(i)) {
            return new C2511m(interfaceC2529p2);
        }
        return new C2516n(interfaceC2529p2);
    }
}
