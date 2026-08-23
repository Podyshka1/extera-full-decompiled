package p022j$.util.stream;

import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.p1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2528p1 extends AbstractC2548t1 implements InterfaceC2514m2 {

    /* JADX INFO: renamed from: h */
    public final double[] f1446h;

    @Override // p022j$.util.stream.InterfaceC2514m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo907A(Double d) {
        AbstractC2573y1.m1036A(this, d);
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo907A((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    public C2528p1(Spliterator spliterator, AbstractC2573y1 abstractC2573y1, double[] dArr) {
        super(spliterator, abstractC2573y1, dArr.length);
        this.f1446h = dArr;
    }

    public C2528p1(C2528p1 c2528p1, Spliterator spliterator, long j, long j2) {
        super(c2528p1, spliterator, j, j2, c2528p1.f1446h.length);
        this.f1446h = c2528p1.f1446h;
    }

    @Override // p022j$.util.stream.AbstractC2548t1
    /* JADX INFO: renamed from: a */
    public final AbstractC2548t1 mo1024a(Spliterator spliterator, long j, long j2) {
        return new C2528p1(this, spliterator, j, j2);
    }

    @Override // p022j$.util.stream.AbstractC2548t1, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        int i = this.f1478f;
        if (i >= this.f1479g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1478f));
        }
        double[] dArr = this.f1446h;
        this.f1478f = i + 1;
        dArr[i] = d;
    }
}
