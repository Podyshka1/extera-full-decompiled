package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.p1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6241p1 extends AbstractC6257t1 implements InterfaceC6230m2 {

    /* JADX INFO: renamed from: h */
    public final double[] f1210h;

    @Override // j$.util.stream.InterfaceC6230m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo771A(Double d) {
        AbstractC6277y1.m882A(this, d);
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo771A((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    public C6241p1(Spliterator spliterator, AbstractC6277y1 abstractC6277y1, double[] dArr) {
        super(spliterator, abstractC6277y1, dArr.length);
        this.f1210h = dArr;
    }

    public C6241p1(C6241p1 c6241p1, Spliterator spliterator, long j, long j2) {
        super(c6241p1, spliterator, j, j2, c6241p1.f1210h.length);
        this.f1210h = c6241p1.f1210h;
    }

    @Override // j$.util.stream.AbstractC6257t1
    /* JADX INFO: renamed from: a */
    public final AbstractC6257t1 mo870a(Spliterator spliterator, long j, long j2) {
        return new C6241p1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC6257t1, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        int i = this.f1242f;
        if (i >= this.f1243g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1242f));
        }
        double[] dArr = this.f1210h;
        this.f1242f = i + 1;
        dArr[i] = d;
    }
}
