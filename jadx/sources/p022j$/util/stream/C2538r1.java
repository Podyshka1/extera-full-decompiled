package p022j$.util.stream;

import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.r1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2538r1 extends AbstractC2548t1 implements InterfaceC2524o2 {

    /* JADX INFO: renamed from: h */
    public final long[] f1461h;

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo876v((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2524o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo876v(Long l) {
        AbstractC2573y1.m1040E(this, l);
    }

    public C2538r1(Spliterator spliterator, AbstractC2573y1 abstractC2573y1, long[] jArr) {
        super(spliterator, abstractC2573y1, jArr.length);
        this.f1461h = jArr;
    }

    public C2538r1(C2538r1 c2538r1, Spliterator spliterator, long j, long j2) {
        super(c2538r1, spliterator, j, j2, c2538r1.f1461h.length);
        this.f1461h = c2538r1.f1461h;
    }

    @Override // p022j$.util.stream.AbstractC2548t1
    /* JADX INFO: renamed from: a */
    public final AbstractC2548t1 mo1024a(Spliterator spliterator, long j, long j2) {
        return new C2538r1(this, spliterator, j, j2);
    }

    @Override // p022j$.util.stream.AbstractC2548t1, p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.f1478f;
        if (i >= this.f1479g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1478f));
        }
        long[] jArr = this.f1461h;
        this.f1478f = i + 1;
        jArr[i] = j;
    }
}
