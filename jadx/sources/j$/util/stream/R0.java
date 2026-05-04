package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class R0 extends S0 implements G0 {
    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m899R(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC6277y1.m896O(this, consumer);
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ void mo789f(Object[] objArr, int i) {
        AbstractC6277y1.m893L(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.H0
    public final Object newArray(int i) {
        return new long[i];
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return new C6213i1(this);
    }

    @Override // j$.util.stream.I0
    public final j$.util.c0 spliterator() {
        return new C6213i1(this);
    }
}
