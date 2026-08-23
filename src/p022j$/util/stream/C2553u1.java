package p022j$.util.stream;

import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.u1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2553u1 extends C2444a3 implements InterfaceC2352I0, InterfaceC2312A0 {
    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(double d) {
        AbstractC2573y1.m1074z();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final /* synthetic */ void accept(int i) {
        AbstractC2573y1.m1042G();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC2573y1.m1043H();
        throw null;
    }

    @Override // p022j$.util.stream.InterfaceC2312A0
    public final InterfaceC2352I0 build() {
        return this;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1054S(this, j, j2, intFunction);
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    public final void end() {
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo928h() {
        return 0;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo874p() {
        return false;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: a */
    public final InterfaceC2352I0 mo919a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: f */
    public final void mo926f(Object[] objArr, int i) {
        long j = i;
        long jCount = count() + j;
        if (jCount > objArr.length || jCount < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1328c == 0) {
            System.arraycopy(this.f1294e, 0, objArr, i, this.f1327b);
            return;
        }
        for (int i2 = 0; i2 < this.f1328c; i2++) {
            Object[] objArr2 = this.f1295f[i2];
            System.arraycopy(objArr2, 0, objArr, i, objArr2.length);
            i += this.f1295f[i2].length;
        }
        int i3 = this.f1327b;
        if (i3 > 0) {
            System.arraycopy(this.f1294e, 0, objArr, i, i3);
        }
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: g */
    public final Object[] mo927g(IntFunction intFunction) {
        long jCount = count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jCount);
        mo926f(objArr, 0);
        return objArr;
    }

    @Override // p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        clear();
        m975i(j);
    }
}
