package j$.util.stream;

import j$.util.Collection;
import j$.util.Spliterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class M0 implements I0 {

    /* JADX INFO: renamed from: a */
    public final Collection f958a;

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m900S(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo791h() {
        return 0;
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: a */
    public final I0 mo782a(int i) {
        throw new IndexOutOfBoundsException();
    }

    public M0(Collection collection) {
        this.f958a = collection;
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return Collection.EL.stream(this.f958a).spliterator();
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: f */
    public final void mo789f(Object[] objArr, int i) {
        Iterator it = this.f958a.iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: g */
    public final Object[] mo790g(IntFunction intFunction) {
        java.util.Collection collection = this.f958a;
        return collection.toArray((Object[]) intFunction.apply(collection.size()));
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f958a.size();
    }

    @Override // j$.util.stream.I0
    public final void forEach(Consumer consumer) {
        Collection.EL.m682a(this.f958a, consumer);
    }

    public final String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f958a.size()), this.f958a);
    }
}
