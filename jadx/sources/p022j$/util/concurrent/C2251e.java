package p022j$.util.concurrent;

import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import p022j$.util.Collection;
import p022j$.util.Spliterator;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.concurrent.e */
/* JADX INFO: loaded from: classes2.dex */
public final class C2251e extends AbstractC2248b implements Set, p022j$.util.Set {
    private static final long serialVersionUID = 2249069246763182397L;

    @Override // java.util.Collection, p022j$.util.Collection
    public final /* synthetic */ Stream parallelStream() {
        return Collection.CC.$default$parallelStream(this);
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream parallelStream() {
        return Stream.Wrapper.convert(Collection.CC.$default$parallelStream(this));
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
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

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        return this.f960a.m835f(entry.getKey(), entry.getValue(), false) == null;
    }

    @Override // p022j$.util.concurrent.AbstractC2248b, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map.Entry entry;
        Object key;
        Object obj2;
        Object value;
        if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = this.f960a.get(key)) == null || (value = entry.getValue()) == null) {
            return false;
        }
        return value == obj2 || value.equals(obj2);
    }

    @Override // p022j$.util.concurrent.AbstractC2248b, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && this.f960a.remove(key, value);
    }

    @Override // p022j$.util.concurrent.AbstractC2248b, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        ConcurrentHashMap concurrentHashMap = this.f960a;
        C2257k[] c2257kArr = concurrentHashMap.f944a;
        int length = c2257kArr == null ? 0 : c2257kArr.length;
        return new C2250d(c2257kArr, length, length, concurrentHashMap);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(java.util.Collection collection) {
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (this.f960a.m835f(entry.getKey(), entry.getValue(), false) == null) {
                z = true;
            }
        }
        return z;
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
                if (predicate.test(new AbstractMap.SimpleImmutableEntry(obj, obj2)) && concurrentHashMap.m836g(obj, null, obj2) != null) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        C2257k[] c2257kArr = this.f960a.f944a;
        int iHashCode = 0;
        if (c2257kArr != null) {
            C2261o c2261o = new C2261o(c2257kArr, c2257kArr.length, 0, c2257kArr.length);
            while (true) {
                C2257k c2257kM849a = c2261o.m849a();
                if (c2257kM849a == null) {
                    break;
                }
                iHashCode += c2257kM849a.hashCode();
            }
        }
        return iHashCode;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set != this) {
            return containsAll(set) && set.containsAll(this);
        }
        return true;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set, p022j$.util.Collection
    public final p022j$.util.Spliterator spliterator() {
        ConcurrentHashMap concurrentHashMap = this.f960a;
        long jM837j = concurrentHashMap.m837j();
        C2257k[] c2257kArr = concurrentHashMap.f944a;
        int length = c2257kArr == null ? 0 : c2257kArr.length;
        return new C2252f(c2257kArr, length, 0, length, jM837j >= 0 ? jM837j : 0L, concurrentHashMap);
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
                consumer.m940v(new C2256j(c2257kM849a.f971b, c2257kM849a.f972c, this.f960a));
            }
        }
    }
}
