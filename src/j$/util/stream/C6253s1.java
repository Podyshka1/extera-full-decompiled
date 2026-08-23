package j$.util.stream;

import j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.s1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6253s1 extends AbstractC6257t1 {

    /* JADX INFO: renamed from: h */
    public final Object[] f1232h;

    public C6253s1(Spliterator spliterator, AbstractC6277y1 abstractC6277y1, Object[] objArr) {
        super(spliterator, abstractC6277y1, objArr.length);
        this.f1232h = objArr;
    }

    public C6253s1(C6253s1 c6253s1, Spliterator spliterator, long j, long j2) {
        super(c6253s1, spliterator, j, j2, c6253s1.f1232h.length);
        this.f1232h = c6253s1.f1232h;
    }

    @Override // j$.util.stream.AbstractC6257t1
    /* JADX INFO: renamed from: a */
    public final AbstractC6257t1 mo870a(Spliterator spliterator, long j, long j2) {
        return new C6253s1(this, spliterator, j, j2);
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        int i = this.f1242f;
        if (i >= this.f1243g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1242f));
        }
        Object[] objArr = this.f1232h;
        this.f1242f = i + 1;
        objArr[i] = obj;
    }
}
