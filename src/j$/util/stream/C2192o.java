package j$.util.stream;

import j$.time.format.C2009a;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.C2123s;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.o */
/* JADX INFO: loaded from: classes2.dex */
public final class C2192o extends AbstractC6202f2 {
    public static M0 H0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator) {
        C2187j c2187j = new C2187j(6);
        C2009a c2009a = new C2009a(23);
        C2009a c2009a2 = new C2009a(24);
        Objects.requireNonNull(c2187j);
        Objects.requireNonNull(c2009a);
        Objects.requireNonNull(c2009a2);
        return new M0((Collection) new D1(EnumC6199e3.REFERENCE, c2009a2, c2009a, c2187j, 3).mo734i(abstractC6277y1, spliterator));
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 A0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        AbstractC2179b abstractC2179b = (AbstractC2179b) abstractC6277y1;
        if (EnumC6195d3.DISTINCT.m850k(abstractC2179b.f1066m)) {
            return abstractC6277y1.d0(spliterator, false, intFunction);
        }
        if (EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m)) {
            return H0(abstractC6277y1, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        C2123s c2123s = new C2123s(4, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(c2123s);
        new C2169Q(c2123s, false).m818a(abstractC6277y1, spliterator);
        Collection collectionKeySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(collectionKeySet);
            hashSet.add(null);
            collectionKeySet = hashSet;
        }
        return new M0(collectionKeySet);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final Spliterator B0(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        if (EnumC6195d3.DISTINCT.m850k(abstractC2179b.f1066m)) {
            return abstractC2179b.u0(spliterator);
        }
        if (EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m)) {
            return H0(abstractC2179b, spliterator).spliterator();
        }
        return new C6231m3(abstractC2179b.u0(spliterator), new ConcurrentHashMap());
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        Objects.requireNonNull(interfaceC6242p2);
        if (EnumC6195d3.DISTINCT.m850k(i)) {
            return interfaceC6242p2;
        }
        if (EnumC6195d3.SORTED.m850k(i)) {
            return new C2190m(interfaceC6242p2);
        }
        return new C2191n(interfaceC6242p2);
    }
}
