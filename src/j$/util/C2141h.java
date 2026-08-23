package j$.util;

import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* JADX INFO: renamed from: j$.util.h */
/* JADX INFO: loaded from: classes2.dex */
public class C2141h implements java.util.Collection, Serializable, Collection {
    private static final long serialVersionUID = 3053995032091335093L;

    /* JADX INFO: renamed from: a */
    public final java.util.Collection f812a;

    /* JADX INFO: renamed from: b */
    public final Object f813b;

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return toArray((Object[]) intFunction.apply(0));
    }

    public C2141h(java.util.Collection collection) {
        this.f812a = (java.util.Collection) Objects.requireNonNull(collection);
        this.f813b = this;
    }

    public C2141h(java.util.Collection collection, Object obj) {
        this.f812a = (java.util.Collection) Objects.requireNonNull(collection);
        this.f813b = Objects.requireNonNull(obj);
    }

    @Override // java.util.Collection
    public final int size() {
        int size;
        synchronized (this.f813b) {
            size = this.f812a.size();
        }
        return size;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        boolean zIsEmpty;
        synchronized (this.f813b) {
            zIsEmpty = this.f812a.isEmpty();
        }
        return zIsEmpty;
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        boolean zContains;
        synchronized (this.f813b) {
            zContains = this.f812a.contains(obj);
        }
        return zContains;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        Object[] array;
        synchronized (this.f813b) {
            array = this.f812a.toArray();
        }
        return array;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] array;
        synchronized (this.f813b) {
            array = this.f812a.toArray(objArr);
        }
        return array;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return this.f812a.iterator();
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        boolean zAdd;
        synchronized (this.f813b) {
            zAdd = this.f812a.add(obj);
        }
        return zAdd;
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        boolean zRemove;
        synchronized (this.f813b) {
            zRemove = this.f812a.remove(obj);
        }
        return zRemove;
    }

    @Override // java.util.Collection
    public final boolean containsAll(java.util.Collection collection) {
        boolean zContainsAll;
        synchronized (this.f813b) {
            zContainsAll = this.f812a.containsAll(collection);
        }
        return zContainsAll;
    }

    @Override // java.util.Collection
    public final boolean addAll(java.util.Collection collection) {
        boolean zAddAll;
        synchronized (this.f813b) {
            zAddAll = this.f812a.addAll(collection);
        }
        return zAddAll;
    }

    @Override // java.util.Collection
    public final boolean removeAll(java.util.Collection collection) {
        boolean zRemoveAll;
        synchronized (this.f813b) {
            zRemoveAll = this.f812a.removeAll(collection);
        }
        return zRemoveAll;
    }

    @Override // java.util.Collection
    public final boolean retainAll(java.util.Collection collection) {
        boolean zRetainAll;
        synchronized (this.f813b) {
            zRetainAll = this.f812a.retainAll(collection);
        }
        return zRetainAll;
    }

    @Override // java.util.Collection
    public final void clear() {
        synchronized (this.f813b) {
            this.f812a.clear();
        }
    }

    public final String toString() {
        String string;
        synchronized (this.f813b) {
            string = this.f812a.toString();
        }
        return string;
    }

    @Override // java.lang.Iterable, j$.util.Collection, j$.lang.InterfaceC1966a
    public final void forEach(Consumer consumer) {
        synchronized (this.f813b) {
            Collection.EL.m682a(this.f812a, consumer);
        }
    }

    @Override // java.util.Collection, j$.util.Collection
    public final boolean removeIf(Predicate predicate) {
        boolean zRemoveIf;
        synchronized (this.f813b) {
            zRemoveIf = Collection.EL.removeIf(this.f812a, predicate);
        }
        return zRemoveIf;
    }

    @Override // java.util.Collection, java.lang.Iterable, j$.util.Collection
    public final Spliterator spliterator() {
        return Collection.EL.m684c(this.f812a);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(Collection.EL.m684c(this.f812a));
    }

    @Override // java.util.Collection, j$.util.Collection
    public final Stream stream() {
        return Collection.EL.stream(this.f812a);
    }

    @Override // java.util.Collection
    public final java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(Collection.EL.stream(this.f812a));
    }

    @Override // java.util.Collection, j$.util.Collection
    public final Stream parallelStream() {
        return Collection.EL.m683b(this.f812a);
    }

    @Override // java.util.Collection
    public final java.util.stream.Stream parallelStream() {
        return Stream.Wrapper.convert(Collection.EL.m683b(this.f812a));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        synchronized (this.f813b) {
            objectOutputStream.defaultWriteObject();
        }
    }
}
