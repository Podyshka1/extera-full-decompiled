package p022j$.util;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.stream.Stream;
import p022j$.util.Collection;
import p022j$.util.Spliterator;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.n */
/* JADX INFO: loaded from: classes2.dex */
public class C2299n implements Collection, Serializable, Collection {
    private static final long serialVersionUID = 1820017752578914078L;

    /* JADX INFO: renamed from: a */
    public final Collection f1068a;

    @Override // java.util.Collection
    public final /* synthetic */ Stream parallelStream() {
        return Stream.Wrapper.convert(parallelStream());
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // java.util.Collection
    public final /* synthetic */ java.util.stream.Stream stream() {
        return Stream.Wrapper.convert(stream());
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
        return toArray((Object[]) intFunction.apply(0));
    }

    public C2299n(Collection collection) {
        collection.getClass();
        this.f1068a = collection;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f1068a.size();
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f1068a.isEmpty();
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.f1068a.contains(obj);
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return this.f1068a.toArray();
    }

    @Override // java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return this.f1068a.toArray(objArr);
    }

    public final String toString() {
        return this.f1068a.toString();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new C2297m(this);
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
    public boolean containsAll(Collection collection) {
        return this.f1068a.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.lang.Iterable, p022j$.util.Collection, p022j$.lang.InterfaceC2105a
    public void forEach(Consumer consumer) {
        Collection.EL.m807a(this.f1068a, consumer);
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public final boolean removeIf(Predicate predicate) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.lang.Iterable, p022j$.util.Collection
    public Spliterator spliterator() {
        return Collection.EL.m809c(this.f1068a);
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public p022j$.util.stream.Stream stream() {
        return Collection.EL.stream(this.f1068a);
    }

    @Override // java.util.Collection, p022j$.util.Collection
    public p022j$.util.stream.Stream parallelStream() {
        return Collection.EL.m808b(this.f1068a);
    }
}
