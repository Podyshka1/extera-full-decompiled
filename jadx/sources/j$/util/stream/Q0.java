package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class Q0 extends S0 implements E0 {
    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ I0 mo788e(long j, long j2, IntFunction intFunction) {
        return AbstractC6277y1.m898Q(this, j, j2);
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC6277y1.m895N(this, consumer);
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ void mo789f(Object[] objArr, int i) {
        AbstractC6277y1.m892K(this, (Integer[]) objArr, i);
    }

    @Override // j$.util.stream.H0
    public final Object newArray(int i) {
        return new int[i];
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return new C6209h1(this);
    }

    @Override // j$.util.stream.I0
    public final j$.util.c0 spliterator() {
        return new C6209h1(this);
    }
}
