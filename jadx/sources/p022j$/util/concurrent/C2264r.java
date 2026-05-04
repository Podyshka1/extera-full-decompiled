package p022j$.util.concurrent;

import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import p022j$.util.Collection;
import p022j$.util.Spliterator;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.concurrent.r */
/* JADX INFO: loaded from: classes2.dex */
public final class C2264r extends AbstractC2248b implements Collection {
    private static final long serialVersionUID = 2249069246763182397L;

    @Override // java.util.Collection, p022j$.util.Collection
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

    @Override // java.util.Collection, p022j$.util.Collection
    public final /* synthetic */ Stream stream() {
        return Collection.CC.$default$stream(this);
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(Collection.CC.$default$stream(this));
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return toArray((Object[]) intFunction.apply(0));
    }

    @Override // p022j$.util.concurrent.AbstractC2248b, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f960a.containsValue(obj);
    }

    @Override // p022j$.util.concurrent.AbstractC2248b, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        AbstractC2247a abstractC2247a;
        if (obj == null) {
            return false;
        }
        Object it = iterator();
        do {
            abstractC2247a = (AbstractC2247a) it;
            if (!abstractC2247a.hasNext()) {
                return false;
            }
        } while (!obj.equals(((C2254h) it).next()));
        abstractC2247a.remove();
        return true;
    }

    @Override // p022j$.util.concurrent.AbstractC2248b, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        ConcurrentHashMap concurrentHashMap = this.f960a;
        C2257k[] c2257kArr = concurrentHashMap.f944a;
        int length = c2257kArr == null ? 0 : c2257kArr.length;
        return new C2254h(c2257kArr, length, length, concurrentHashMap, 1);
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // p022j$.util.concurrent.AbstractC2248b, java.util.Collection
    public final boolean removeAll(java.util.Collection collection) {
        collection.getClass();
        Object it = iterator();
        boolean z = false;
        while (true) {
            AbstractC2247a abstractC2247a = (AbstractC2247a) it;
            if (!abstractC2247a.hasNext()) {
                return z;
            }
            if (collection.contains(((C2254h) it).next())) {
                abstractC2247a.remove();
                z = true;
            }
        }
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public final boolean removeIf(Predicate predicate) {
        ConcurrentHashMap concurrentHashMap = this.f960a;
        predicate.getClass();
        C2257k[] c2257kArr = concurrentHashMap.f944a;
        boolean z = false;
        if (c2257kArr != null) {
            C2261o c2261o = new C2261o(c2257kArr, c2257kArr.length, 0, c2257kArr.length);
            while (true) {
                C2257k c2257kM849a = c2261o.m849a();
                if (c2257kM849a == null) {
                    break;
                }
                Object obj = c2257kM849a.f971b;
                Object obj2 = c2257kM849a.f972c;
                if (predicate.test(obj2) && concurrentHashMap.m836g(obj, null, obj2) != null) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.lang.Iterable, p022j$.util.Collection
    public final p022j$.util.Spliterator spliterator() {
        ConcurrentHashMap concurrentHashMap = this.f960a;
        long jM837j = concurrentHashMap.m837j();
        C2257k[] c2257kArr = concurrentHashMap.f944a;
        int length = c2257kArr == null ? 0 : c2257kArr.length;
        return new C2255i(c2257kArr, length, 0, length, jM837j < 0 ? 0L : jM837j, 1);
    }

    @Override // java.lang.Iterable, p022j$.util.Collection, p022j$.lang.InterfaceC2105a
    public final void forEach(Consumer consumer) {
        consumer.getClass();
        C2257k[] c2257kArr = this.f960a.f944a;
        if (c2257kArr == null) {
            return;
        }
        C2261o c2261o = new C2261o(c2257kArr, c2257kArr.length, 0, c2257kArr.length);
        while (true) {
            C2257k c2257kM849a = c2261o.m849a();
            if (c2257kM849a == null) {
                return;
            } else {
                consumer.m940v(c2257kM849a.f972c);
            }
        }
    }
}
