package j$.util;

import j$.time.C2045s;
import j$.util.Collection;
import j$.util.stream.I3;
import j$.util.stream.Stream;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.s */
/* JADX INFO: loaded from: classes2.dex */
public final class C2152s extends C2206v {
    private static final long serialVersionUID = 7854390611657943733L;

    @Override // j$.util.C2147n, java.lang.Iterable, j$.util.Collection, j$.lang.InterfaceC1966a
    public final void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        Collection.EL.m682a(this.f833a, new C2045s(1, consumer));
    }

    @Override // j$.util.C2147n, java.util.Collection, java.lang.Iterable, j$.util.Collection
    public final Spliterator spliterator() {
        return new C2151r(Collection.EL.m684c(this.f833a));
    }

    @Override // j$.util.C2147n, java.util.Collection, j$.util.Collection
    public final Stream stream() {
        return I3.m794b(spliterator(), false);
    }

    @Override // j$.util.C2147n, java.util.Collection, j$.util.Collection
    public final Stream parallelStream() {
        return I3.m794b(spliterator(), true);
    }

    @Override // j$.util.C2147n, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C2146m(this);
    }

    @Override // j$.util.C2147n, java.util.Collection
    public final Object[] toArray() {
        Object[] array = this.f833a.toArray();
        for (int i = 0; i < array.length; i++) {
            array[i] = new C2150q((Map.Entry) array[i]);
        }
        return array;
    }

    @Override // j$.util.C2147n, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] array = this.f833a.toArray(objArr.length == 0 ? objArr : Arrays.copyOf(objArr, 0));
        for (int i = 0; i < array.length; i++) {
            array[i] = new C2150q((Map.Entry) array[i]);
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

    @Override // j$.util.C2147n, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return this.f833a.contains(new C2150q((Map.Entry) obj));
        }
        return false;
    }

    @Override // j$.util.C2147n, java.util.Collection
    public final boolean containsAll(java.util.Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // j$.util.C2206v, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof java.util.Set)) {
            return false;
        }
        java.util.Set set = (java.util.Set) obj;
        if (set.size() != this.f833a.size()) {
            return false;
        }
        return containsAll(set);
    }
}
