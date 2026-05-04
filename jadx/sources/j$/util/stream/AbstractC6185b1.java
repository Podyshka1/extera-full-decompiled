package j$.util.stream;

import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.b1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6185b1 implements I0 {
    @Override // j$.util.stream.I0
    public final long count() {
        return 0L;
    }

    /* JADX INFO: renamed from: d */
    public final void m838d(Object obj) {
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m900S(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int mo791h() {
        return 0;
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: a */
    public I0 mo782a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: g */
    public final Object[] mo790g(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }

    /* JADX INFO: renamed from: c */
    public final void m837c(int i, Object obj) {
    }
}
