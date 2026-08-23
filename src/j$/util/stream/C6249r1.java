package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.r1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6249r1 extends AbstractC6257t1 implements InterfaceC6238o2 {

    /* JADX INFO: renamed from: h */
    public final long[] f1225h;

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo747v((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC6238o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo747v(Long l) {
        AbstractC6277y1.m886E(this, l);
    }

    public C6249r1(Spliterator spliterator, AbstractC6277y1 abstractC6277y1, long[] jArr) {
        super(spliterator, abstractC6277y1, jArr.length);
        this.f1225h = jArr;
    }

    public C6249r1(C6249r1 c6249r1, Spliterator spliterator, long j, long j2) {
        super(c6249r1, spliterator, j, j2, c6249r1.f1225h.length);
        this.f1225h = c6249r1.f1225h;
    }

    @Override // j$.util.stream.AbstractC6257t1
    /* JADX INFO: renamed from: a */
    public final AbstractC6257t1 mo870a(Spliterator spliterator, long j, long j2) {
        return new C6249r1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC6257t1, j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.f1242f;
        if (i >= this.f1243g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1242f));
        }
        long[] jArr = this.f1225h;
        this.f1242f = i + 1;
        jArr[i] = j;
    }
}
