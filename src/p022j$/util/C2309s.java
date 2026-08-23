package p022j$.util;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;
import p022j$.time.C2184s;
import p022j$.util.Collection;
import p022j$.util.stream.AbstractC2355I3;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.s */
/* JADX INFO: loaded from: classes2.dex */
public final class C2309s extends C2584v {
    private static final long serialVersionUID = 7854390611657943733L;

    @Override // p022j$.util.C2299n, java.lang.Iterable, p022j$.util.Collection, p022j$.lang.InterfaceC2105a
    public final void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Collection.EL.m807a(this.f1068a, new C2184s(1, consumer));
    }

    @Override // p022j$.util.C2299n, java.util.Collection, java.lang.Iterable, p022j$.util.Collection
    public final Spliterator spliterator() {
        return new C2307r(Collection.EL.m809c(this.f1068a));
    }

    @Override // p022j$.util.C2299n, java.util.Collection, p022j$.util.Collection
    public final Stream stream() {
        return AbstractC2355I3.m934b(spliterator(), false);
    }

    @Override // p022j$.util.C2299n, java.util.Collection, p022j$.util.Collection
    public final Stream parallelStream() {
        return AbstractC2355I3.m934b(spliterator(), true);
    }

    @Override // p022j$.util.C2299n, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C2297m(this);
    }

    @Override // p022j$.util.C2299n, java.util.Collection
    public final Object[] toArray() {
        Object[] array = this.f1068a.toArray();
        for (int i = 0; i < array.length; i++) {
            array[i] = new C2305q((Map.Entry) array[i]);
        }
        return array;
    }

    @Override // p022j$.util.C2299n, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] array = this.f1068a.toArray(objArr.length == 0 ? objArr : Arrays.copyOf(objArr, 0));
        for (int i = 0; i < array.length; i++) {
            array[i] = new C2305q((Map.Entry) array[i]);
        }
        if (array.length > objArr.length) {
            return array;
        }
        System.arraycopy(array, 0, objArr, 0, array.length);
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }

    @Override // p022j$.util.C2299n, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return this.f1068a.contains(new C2305q((Map.Entry) obj));
        }
        return false;
    }

    @Override // p022j$.util.C2299n, java.util.Collection
    public final boolean containsAll(java.util.Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // p022j$.util.C2584v, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (set.size() != this.f1068a.size()) {
            return false;
        }
        return containsAll(set);
    }
}
