package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntFunction;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.P0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2387P0 extends AbstractC2401S0 implements InterfaceC2322C0 {
    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1051P(this, j, j2);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2573y1.m1048M(this, consumer);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ void mo926f(Object[] objArr, int i) {
        AbstractC2573y1.m1045J(this, (Double[]) objArr, i);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    public final Object newArray(int i) {
        return new double[i];
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final Spliterator spliterator() {
        return new C2478g1(this);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final InterfaceC2246c0 spliterator() {
        return new C2478g1(this);
    }
}
