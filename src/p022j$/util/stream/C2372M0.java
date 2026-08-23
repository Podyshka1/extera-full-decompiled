package p022j$.util.stream;

import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import p022j$.util.Collection;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.M0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2372M0 implements InterfaceC2352I0 {

    /* JADX INFO: renamed from: a */
    public final Collection f1193a;

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1054S(this, j, j2, intFunction);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo928h() {
        return 0;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: a */
    public final InterfaceC2352I0 mo919a(int i) {
        throw new IndexOutOfBoundsException();
    }

    public C2372M0(Collection collection) {
        this.f1193a = collection;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final Spliterator spliterator() {
        return Collection.EL.stream(this.f1193a).spliterator();
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: f */
    public final void mo926f(Object[] objArr, int i) {
        Iterator it = this.f1193a.iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: g */
    public final Object[] mo927g(IntFunction intFunction) {
        java.util.Collection collection = this.f1193a;
        return collection.toArray((Object[]) intFunction.apply(collection.size()));
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final long count() {
        return this.f1193a.size();
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final void forEach(Consumer consumer) {
        Collection.EL.m807a(this.f1193a, consumer);
    }

    public final String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f1193a.size()), this.f1193a);
    }
}
