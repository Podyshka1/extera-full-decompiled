package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2045s;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.q3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6247q3 extends AbstractC6203f3 implements Spliterator.OfInt {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m428k(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m395A(this, consumer);
    }

    @Override // j$.util.stream.AbstractC6203f3
    /* JADX INFO: renamed from: e */
    public final AbstractC6203f3 mo787e(Spliterator spliterator) {
        return new C6247q3(this.f1136b, spliterator, this.f1135a);
    }

    @Override // j$.util.stream.AbstractC6203f3
    /* JADX INFO: renamed from: d */
    public final void mo786d() {
        V2 v2 = new V2();
        this.f1142h = v2;
        Objects.requireNonNull(v2);
        this.f1139e = this.f1136b.t0(new C6243p3(v2, 1));
        this.f1140f = new C2045s(12, this);
    }

    @Override // j$.util.stream.AbstractC6203f3, j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC6203f3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC6203f3, j$.util.Spliterator
    public final j$.util.c0 trySplit() {
        return (Spliterator.OfInt) super.trySplit();
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        int i;
        Objects.requireNonNull(intConsumer);
        boolean zM855a = m855a();
        if (zM855a) {
            V2 v2 = (V2) this.f1142h;
            long j = this.f1141g;
            int iM832k = v2.m832k(j);
            if (v2.f1092c == 0 && iM832k == 0) {
                i = ((int[]) v2.f1054e)[(int) j];
            } else {
                i = ((int[][]) v2.f1055f)[iM832k][(int) (j - v2.f1093d[iM832k])];
            }
            intConsumer.accept(i);
        }
        return zM855a;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        if (this.f1142h == null && !this.f1143i) {
            Objects.requireNonNull(intConsumer);
            m857c();
            Objects.requireNonNull(intConsumer);
            C6243p3 c6243p3 = new C6243p3(intConsumer, 0);
            this.f1136b.s0(this.f1138d, c6243p3);
            this.f1143i = true;
            return;
        }
        while (tryAdvance(intConsumer)) {
        }
    }
}
