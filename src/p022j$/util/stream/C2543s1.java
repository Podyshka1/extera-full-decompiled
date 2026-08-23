package p022j$.util.stream;

import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.s1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2543s1 extends AbstractC2548t1 {

    /* JADX INFO: renamed from: h */
    public final Object[] f1468h;

    public C2543s1(Spliterator spliterator, AbstractC2573y1 abstractC2573y1, Object[] objArr) {
        super(spliterator, abstractC2573y1, objArr.length);
        this.f1468h = objArr;
    }

    public C2543s1(C2543s1 c2543s1, Spliterator spliterator, long j, long j2) {
        super(c2543s1, spliterator, j, j2, c2543s1.f1468h.length);
        this.f1468h = c2543s1.f1468h;
    }

    @Override // p022j$.util.stream.AbstractC2548t1
    /* JADX INFO: renamed from: a */
    public final AbstractC2548t1 mo1024a(Spliterator spliterator, long j, long j2) {
        return new C2543s1(this, spliterator, j, j2);
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        int i = this.f1478f;
        if (i >= this.f1479g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1478f));
        }
        Object[] objArr = this.f1468h;
        this.f1478f = i + 1;
        objArr[i] = obj;
    }
}
