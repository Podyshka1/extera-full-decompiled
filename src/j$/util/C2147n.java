package j$.util;

import j$.util.Collection;
import j$.util.Spliterator;
import j$.util.stream.Stream;
import java.io.Serializable;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.n */
/* JADX INFO: loaded from: classes2.dex */
public class C2147n implements java.util.Collection, Serializable, Collection {
    private static final long serialVersionUID = 1820017752578914078L;

    /* JADX INFO: renamed from: a */
    public final java.util.Collection f833a;

    @Override // java.util.Collection
    public final /* synthetic */ Stream parallelStream() {
        return Stream.Wrapper.convert(parallelStream());
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(stream());
    }

    @Override // java.util.Collection, j$.util.Collection
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return toArray((Object[]) intFunction.apply(0));
    }

    public C2147n(java.util.Collection collection) {
        collection.getClass();
        this.f833a = collection;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f833a.size();
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f833a.isEmpty();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.f833a.contains(obj);
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return this.f833a.toArray();
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return this.f833a.toArray(objArr);
    }

    public final String toString() {
        return this.f833a.toString();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new C2146m(this);
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public boolean containsAll(java.util.Collection collection) {
        return this.f833a.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean addAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean removeAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean retainAll(java.util.Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.lang.Iterable, j$.util.Collection, j$.lang.InterfaceC1966a
    public void forEach(Consumer consumer) {
        Collection.EL.m682a(this.f833a, consumer);
    }

    @Override // java.util.Collection, j$.util.Collection
    public final boolean removeIf(Predicate predicate) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.lang.Iterable, j$.util.Collection
    public Spliterator spliterator() {
        return Collection.EL.m684c(this.f833a);
    }

    @Override // java.util.Collection, j$.util.Collection
    public j$.util.stream.Stream stream() {
        return Collection.EL.stream(this.f833a);
    }

    @Override // java.util.Collection, j$.util.Collection
    public j$.util.stream.Stream parallelStream() {
        return Collection.EL.m683b(this.f833a);
    }
}
