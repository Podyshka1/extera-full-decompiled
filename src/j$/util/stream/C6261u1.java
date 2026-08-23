package j$.util.stream;

import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.u1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6261u1 extends C6183a3 implements I0, A0 {
    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(double d) {
        AbstractC6277y1.m907z();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final /* synthetic */ void accept(int i) {
        AbstractC6277y1.m888G();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        AbstractC6277y1.m889H();
        throw null;
    }

    @Override // j$.util.stream.A0
    public final I0 build() {
        return this;
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m900S(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.InterfaceC6242p2
    public final void end() {
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo791h() {
        return 0;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final /* synthetic */ boolean mo745p() {
        return false;
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: a */
    public final I0 mo782a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: f */
    public final void mo789f(Object[] objArr, int i) {
        long j = i;
        long jCount = count() + j;
        if (jCount > objArr.length || jCount < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f1092c == 0) {
            System.arraycopy(this.f1059e, 0, objArr, i, this.f1091b);
            return;
        }
        for (int i2 = 0; i2 < this.f1092c; i2++) {
            Object[] objArr2 = this.f1060f[i2];
            System.arraycopy(objArr2, 0, objArr, i, objArr2.length);
            i += this.f1060f[i2].length;
        }
        int i3 = this.f1091b;
        if (i3 > 0) {
            System.arraycopy(this.f1059e, 0, objArr, i, i3);
        }
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: g */
    public final Object[] mo790g(IntFunction intFunction) {
        long jCount = count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jCount);
        mo789f(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        clear();
        m835i(j);
    }
}
