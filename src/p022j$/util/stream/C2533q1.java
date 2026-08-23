package p022j$.util.stream;

import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.q1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2533q1 extends AbstractC2548t1 implements InterfaceC2519n2 {

    /* JADX INFO: renamed from: h */
    public final int[] f1453h;

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo954n((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2519n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo954n(Integer num) {
        AbstractC2573y1.m1038C(this, num);
    }

    public C2533q1(Spliterator spliterator, AbstractC2573y1 abstractC2573y1, int[] iArr) {
        super(spliterator, abstractC2573y1, iArr.length);
        this.f1453h = iArr;
    }

    public C2533q1(C2533q1 c2533q1, Spliterator spliterator, long j, long j2) {
        super(c2533q1, spliterator, j, j2, c2533q1.f1453h.length);
        this.f1453h = c2533q1.f1453h;
    }

    @Override // p022j$.util.stream.AbstractC2548t1
    /* JADX INFO: renamed from: a */
    public final AbstractC2548t1 mo1024a(Spliterator spliterator, long j, long j2) {
        return new C2533q1(this, spliterator, j, j2);
    }

    @Override // p022j$.util.stream.AbstractC2548t1, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        int i2 = this.f1478f;
        if (i2 >= this.f1479g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1478f));
        }
        int[] iArr = this.f1453h;
        this.f1478f = i2 + 1;
        iArr[i2] = i;
    }
}
