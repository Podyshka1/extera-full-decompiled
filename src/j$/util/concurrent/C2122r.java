package j$.util.concurrent;

import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* JADX INFO: renamed from: j$.util.concurrent.r */
/* JADX INFO: loaded from: classes2.dex */
public final class C2122r extends AbstractC2106b implements Collection {
    private static final long serialVersionUID = 2249069246763182397L;

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Stream parallelStream() {
        return Collection.CC.$default$parallelStream(this);
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream parallelStream() {
        return Stream.Wrapper.convert(Collection.CC.$default$parallelStream(this));
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Stream stream() {
        return Collection.CC.$default$stream(this);
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(Collection.CC.$default$stream(this));
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return toArray((Object[]) intFunction.apply(0));
    }

    @Override // j$.util.concurrent.AbstractC2106b, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f725a.containsValue(obj);
    }

    @Override // j$.util.concurrent.AbstractC2106b, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        AbstractC2105a abstractC2105a;
        if (obj == null) {
            return false;
        }
        Object it = iterator();
        do {
            abstractC2105a = (AbstractC2105a) it;
            if (!abstractC2105a.hasNext()) {
                return false;
            }
        } while (!obj.equals(((C2112h) it).next()));
        abstractC2105a.remove();
        return true;
    }

    @Override // j$.util.concurrent.AbstractC2106b, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        ConcurrentHashMap concurrentHashMap = this.f725a;
        C2115k[] c2115kArr = concurrentHashMap.f709a;
        int length = c2115kArr == null ? 0 : c2115kArr.length;
        return new C2112h(c2115kArr, length, length, concurrentHashMap, 1);
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.concurrent.AbstractC2106b, java.util.Collection
    public final boolean removeAll(java.util.Collection collection) {
        collection.getClass();
        Object it = iterator();
        boolean z = false;
        while (true) {
            AbstractC2105a abstractC2105a = (AbstractC2105a) it;
            if (!abstractC2105a.hasNext()) {
                return z;
            }
            if (collection.contains(((C2112h) it).next())) {
                abstractC2105a.remove();
                z = true;
            }
        }
    }

    @Override // java.util.Collection, j$.util.Collection
    public final boolean removeIf(Predicate predicate) {
        ConcurrentHashMap concurrentHashMap = this.f725a;
        predicate.getClass();
        C2115k[] c2115kArr = concurrentHashMap.f709a;
        boolean z = false;
        if (c2115kArr != null) {
            C2119o c2119o = new C2119o(c2115kArr, c2115kArr.length, 0, c2115kArr.length);
            while (true) {
                C2115k c2115kM723a = c2119o.m723a();
                if (c2115kM723a == null) {
                    break;
                }
                Object obj = c2115kM723a.f736b;
                Object obj2 = c2115kM723a.f737c;
                if (predicate.test(obj2) && concurrentHashMap.m710g(obj, null, obj2) != null) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.lang.Iterable, j$.util.Collection
    public final j$.util.Spliterator spliterator() {
        ConcurrentHashMap concurrentHashMap = this.f725a;
        long jM711j = concurrentHashMap.m711j();
        C2115k[] c2115kArr = concurrentHashMap.f709a;
        int length = c2115kArr == null ? 0 : c2115kArr.length;
        return new C2113i(c2115kArr, length, 0, length, jM711j < 0 ? 0L : jM711j, 1);
    }

    @Override // java.lang.Iterable, j$.util.Collection, j$.lang.InterfaceC1966a
    public final void forEach(Consumer consumer) {
        consumer.getClass();
        C2115k[] c2115kArr = this.f725a.f709a;
        if (c2115kArr == null) {
            return;
        }
        C2119o c2119o = new C2119o(c2115kArr, c2115kArr.length, 0, c2115kArr.length);
        while (true) {
            C2115k c2115kM723a = c2119o.m723a();
            if (c2115kM723a == null) {
                return;
            } else {
                consumer.m800v(c2115kM723a.f737c);
            }
        }
    }
}
