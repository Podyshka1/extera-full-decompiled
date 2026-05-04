package j$.util.concurrent;

import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* JADX INFO: renamed from: j$.util.concurrent.e */
/* JADX INFO: loaded from: classes2.dex */
public final class C2109e extends AbstractC2106b implements Set, j$.util.Set {
    private static final long serialVersionUID = 2249069246763182397L;

    @Override // java.util.Collection, j$.util.Collection
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

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        return this.f725a.m709f(entry.getKey(), entry.getValue(), false) == null;
    }

    @Override // j$.util.concurrent.AbstractC2106b, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map.Entry entry;
        Object key;
        Object obj2;
        Object value;
        if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = this.f725a.get(key)) == null || (value = entry.getValue()) == null) {
            return false;
        }
        return value == obj2 || value.equals(obj2);
    }

    @Override // j$.util.concurrent.AbstractC2106b, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map.Entry entry;
        Object key;
        Object value;
        return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (value = entry.getValue()) != null && this.f725a.remove(key, value);
    }

    @Override // j$.util.concurrent.AbstractC2106b, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        ConcurrentHashMap concurrentHashMap = this.f725a;
        C2115k[] c2115kArr = concurrentHashMap.f709a;
        int length = c2115kArr == null ? 0 : c2115kArr.length;
        return new C2108d(c2115kArr, length, length, concurrentHashMap);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(java.util.Collection collection) {
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (this.f725a.m709f(entry.getKey(), entry.getValue(), false) == null) {
                z = true;
            }
        }
        return z;
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
                if (predicate.test(new AbstractMap.SimpleImmutableEntry(obj, obj2)) && concurrentHashMap.m710g(obj, null, obj2) != null) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        C2115k[] c2115kArr = this.f725a.f709a;
        int iHashCode = 0;
        if (c2115kArr != null) {
            C2119o c2119o = new C2119o(c2115kArr, c2115kArr.length, 0, c2115kArr.length);
            while (true) {
                C2115k c2115kM723a = c2119o.m723a();
                if (c2115kM723a == null) {
                    break;
                }
                iHashCode += c2115kM723a.hashCode();
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

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set, j$.util.Collection
    public final j$.util.Spliterator spliterator() {
        ConcurrentHashMap concurrentHashMap = this.f725a;
        long jM711j = concurrentHashMap.m711j();
        C2115k[] c2115kArr = concurrentHashMap.f709a;
        int length = c2115kArr == null ? 0 : c2115kArr.length;
        return new C2110f(c2115kArr, length, 0, length, jM711j >= 0 ? jM711j : 0L, concurrentHashMap);
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
                consumer.m800v(new C2114j(c2115kM723a.f736b, c2115kM723a.f737c, this.f725a));
            }
        }
    }
}
