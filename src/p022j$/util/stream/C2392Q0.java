package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntFunction;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.Q0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2392Q0 extends AbstractC2401S0 implements InterfaceC2332E0 {
    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1052Q(this, j, j2);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2573y1.m1049N(this, consumer);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ void mo926f(Object[] objArr, int i) {
        AbstractC2573y1.m1046K(this, (Integer[]) objArr, i);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    public final Object newArray(int i) {
        return new int[i];
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final Spliterator spliterator() {
        return new C2484h1(this);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final InterfaceC2246c0 spliterator() {
        return new C2484h1(this);
    }
}
