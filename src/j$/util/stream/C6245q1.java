package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.q1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6245q1 extends AbstractC6257t1 implements InterfaceC6234n2 {

    /* JADX INFO: renamed from: h */
    public final int[] f1217h;

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo814n((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC6234n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo814n(Integer num) {
        AbstractC6277y1.m884C(this, num);
    }

    public C6245q1(Spliterator spliterator, AbstractC6277y1 abstractC6277y1, int[] iArr) {
        super(spliterator, abstractC6277y1, iArr.length);
        this.f1217h = iArr;
    }

    public C6245q1(C6245q1 c6245q1, Spliterator spliterator, long j, long j2) {
        super(c6245q1, spliterator, j, j2, c6245q1.f1217h.length);
        this.f1217h = c6245q1.f1217h;
    }

    @Override // j$.util.stream.AbstractC6257t1
    /* JADX INFO: renamed from: a */
    public final AbstractC6257t1 mo870a(Spliterator spliterator, long j, long j2) {
        return new C6245q1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC6257t1, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        int i2 = this.f1242f;
        if (i2 >= this.f1243g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1242f));
        }
        int[] iArr = this.f1217h;
        this.f1242f = i2 + 1;
        iArr[i2] = i;
    }
}
