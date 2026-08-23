package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2184s;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.q3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2535q3 extends AbstractC2474f3 implements Spliterator.OfInt {
    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m548k(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m515A(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2474f3
    /* JADX INFO: renamed from: e */
    public final AbstractC2474f3 mo924e(Spliterator spliterator) {
        return new C2535q3(this.f1372b, spliterator, this.f1371a);
    }

    @Override // p022j$.util.stream.AbstractC2474f3
    /* JADX INFO: renamed from: d */
    public final void mo923d() {
        C2418V2 c2418v2 = new C2418V2();
        this.f1378h = c2418v2;
        Objects.requireNonNull(c2418v2);
        this.f1375e = this.f1372b.mo983t0(new C2530p3(c2418v2, 1));
        this.f1376f = new C2184s(12, this);
    }

    @Override // p022j$.util.stream.AbstractC2474f3, p022j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // p022j$.util.stream.AbstractC2474f3, p022j$.util.Spliterator
    public final Spliterator trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // p022j$.util.stream.AbstractC2474f3, p022j$.util.Spliterator
    public final InterfaceC2246c0 trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        int i;
        Objects.requireNonNull(intConsumer);
        boolean zM1006a = m1006a();
        if (zM1006a) {
            C2418V2 c2418v2 = (C2418V2) this.f1378h;
            long j = this.f1377g;
            int iM972k = c2418v2.m972k(j);
            if (c2418v2.f1328c == 0 && iM972k == 0) {
                i = ((int[]) c2418v2.f1289e)[(int) j];
            } else {
                i = ((int[][]) c2418v2.f1290f)[iM972k][(int) (j - c2418v2.f1329d[iM972k])];
            }
            intConsumer.accept(i);
        }
        return zM1006a;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        if (this.f1378h == null && !this.f1379i) {
            Objects.requireNonNull(intConsumer);
            m1008c();
            Objects.requireNonNull(intConsumer);
            C2530p3 c2530p3 = new C2530p3(intConsumer, 0);
            this.f1372b.mo982s0(this.f1374d, c2530p3);
            this.f1379i = true;
            return;
        }
        while (tryAdvance(intConsumer)) {
        }
    }
}
