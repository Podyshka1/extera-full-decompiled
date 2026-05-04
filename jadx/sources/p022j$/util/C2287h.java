package p022j$.util;

import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import p022j$.util.Collection;
import p022j$.util.Spliterator;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.h */
/* JADX INFO: loaded from: classes2.dex */
public class C2287h implements Collection, Serializable, Collection {
    private static final long serialVersionUID = 3053995032091335093L;

    /* JADX INFO: renamed from: a */
    public final Collection f1047a;

    /* JADX INFO: renamed from: b */
    public final Object f1048b;

    @Override // java.util.Collection, p022j$.util.Collection
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return toArray((Object[]) intFunction.apply(0));
    }

    public C2287h(Collection collection) {
        this.f1047a = (Collection) Objects.requireNonNull(collection);
        this.f1048b = this;
    }

    public C2287h(Collection collection, Object obj) {
        this.f1047a = (Collection) Objects.requireNonNull(collection);
        this.f1048b = Objects.requireNonNull(obj);
    }

    @Override // java.util.Collection
    public final int size() {
        int size;
        synchronized (this.f1048b) {
            size = this.f1047a.size();
        }
        return size;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        boolean zIsEmpty;
        synchronized (this.f1048b) {
            zIsEmpty = this.f1047a.isEmpty();
        }
        return zIsEmpty;
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        boolean zContains;
        synchronized (this.f1048b) {
            zContains = this.f1047a.contains(obj);
        }
        return zContains;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        Object[] array;
        synchronized (this.f1048b) {
            array = this.f1047a.toArray();
        }
        return array;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] array;
        synchronized (this.f1048b) {
            array = this.f1047a.toArray(objArr);
        }
        return array;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return this.f1047a.iterator();
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        boolean zAdd;
        synchronized (this.f1048b) {
            zAdd = this.f1047a.add(obj);
        }
        return zAdd;
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        boolean zRemove;
        synchronized (this.f1048b) {
            zRemove = this.f1047a.remove(obj);
        }
        return zRemove;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        boolean zContainsAll;
        synchronized (this.f1048b) {
            zContainsAll = this.f1047a.containsAll(collection);
        }
        return zContainsAll;
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        boolean zAddAll;
        synchronized (this.f1048b) {
            zAddAll = this.f1047a.addAll(collection);
        }
        return zAddAll;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        boolean zRemoveAll;
        synchronized (this.f1048b) {
            zRemoveAll = this.f1047a.removeAll(collection);
        }
        return zRemoveAll;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        boolean zRetainAll;
        synchronized (this.f1048b) {
            zRetainAll = this.f1047a.retainAll(collection);
        }
        return zRetainAll;
    }

    @Override // java.util.Collection
    public final void clear() {
        synchronized (this.f1048b) {
            this.f1047a.clear();
        }
    }

    public final String toString() {
        String string;
        synchronized (this.f1048b) {
            string = this.f1047a.toString();
        }
        return string;
    }

    @Override // java.lang.Iterable, p022j$.util.Collection, p022j$.lang.InterfaceC2105a
    public final void forEach(Consumer consumer) {
        synchronized (this.f1048b) {
            Collection.EL.m807a(this.f1047a, consumer);
        }
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public final boolean removeIf(Predicate predicate) {
        boolean zRemoveIf;
        synchronized (this.f1048b) {
            zRemoveIf = Collection.EL.removeIf(this.f1047a, predicate);
        }
        return zRemoveIf;
    }

    @Override // java.util.Collection, java.lang.Iterable, p022j$.util.Collection
    public final Spliterator spliterator() {
        return Collection.EL.m809c(this.f1047a);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Spliterator spliterator() {
        return Spliterator.Wrapper.convert(Collection.EL.m809c(this.f1047a));
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public final Stream stream() {
        return Collection.EL.stream(this.f1047a);
    }

    @Override // java.util.Collection
    public final java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(Collection.EL.stream(this.f1047a));
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public final Stream parallelStream() {
        return Collection.EL.m808b(this.f1047a);
    }

    @Override // java.util.Collection
    public final java.util.stream.Stream parallelStream() {
        return Stream.Wrapper.convert(Collection.EL.m808b(this.f1047a));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        synchronized (this.f1048b) {
            objectOutputStream.defaultWriteObject();
        }
    }
}
