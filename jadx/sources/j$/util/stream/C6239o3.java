package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2045s;
import j$.util.InterfaceC2096U;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.o3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6239o3 extends AbstractC6203f3 implements InterfaceC2096U {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m427j(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m443z(this, consumer);
    }

    @Override // j$.util.stream.AbstractC6203f3
    /* JADX INFO: renamed from: e */
    public final AbstractC6203f3 mo787e(Spliterator spliterator) {
        return new C6239o3(this.f1136b, spliterator, this.f1135a);
    }

    @Override // j$.util.stream.AbstractC6203f3
    /* JADX INFO: renamed from: d */
    public final void mo786d() {
        T2 t2 = new T2();
        this.f1142h = t2;
        Objects.requireNonNull(t2);
        this.f1139e = this.f1136b.t0(new C6235n3(t2, 1));
        this.f1140f = new C2045s(11, this);
    }

    @Override // j$.util.stream.AbstractC6203f3, j$.util.Spliterator
    public final Spliterator trySplit() {
        return (InterfaceC2096U) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC6203f3, j$.util.Spliterator
    public final InterfaceC2096U trySplit() {
        return (InterfaceC2096U) super.trySplit();
    }

    @Override // j$.util.stream.AbstractC6203f3, j$.util.Spliterator
    public final j$.util.c0 trySplit() {
        return (InterfaceC2096U) super.trySplit();
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        double d;
        Objects.requireNonNull(doubleConsumer);
        boolean zM855a = m855a();
        if (zM855a) {
            T2 t2 = (T2) this.f1142h;
            long j = this.f1141g;
            int iM832k = t2.m832k(j);
            if (t2.f1092c == 0 && iM832k == 0) {
                d = ((double[]) t2.f1054e)[(int) j];
            } else {
                d = ((double[][]) t2.f1055f)[iM832k][(int) (j - t2.f1093d[iM832k])];
            }
            doubleConsumer.accept(d);
        }
        return zM855a;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        if (this.f1142h == null && !this.f1143i) {
            Objects.requireNonNull(doubleConsumer);
            m857c();
            Objects.requireNonNull(doubleConsumer);
            C6235n3 c6235n3 = new C6235n3(doubleConsumer, 0);
            this.f1136b.s0(this.f1138d, c6235n3);
            this.f1143i = true;
            return;
        }
        while (tryAdvance(doubleConsumer)) {
        }
    }
}
