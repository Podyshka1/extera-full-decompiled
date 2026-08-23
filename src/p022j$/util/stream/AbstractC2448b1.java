package p022j$.util.stream;

import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.b1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2448b1 implements InterfaceC2352I0 {
    @Override // p022j$.util.stream.InterfaceC2352I0
    public final long count() {
        return 0L;
    }

    /* JADX INFO: renamed from: d */
    public final void m988d(Object obj) {
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1054S(this, j, j2, intFunction);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo928h() {
        return 0;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: a */
    public InterfaceC2352I0 mo919a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: g */
    public final Object[] mo927g(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    /* JADX INFO: renamed from: c */
    public final void m987c(int i, Object obj) {
    }
}
