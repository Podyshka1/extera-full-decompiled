package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntFunction;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.R0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2396R0 extends AbstractC2401S0 implements InterfaceC2342G0 {
    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1053R(this, j, j2);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2573y1.m1050O(this, consumer);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ void mo926f(Object[] objArr, int i) {
        AbstractC2573y1.m1047L(this, (Long[]) objArr, i);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    public final Object newArray(int i) {
        return new long[i];
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final Spliterator spliterator() {
        return new C2490i1(this);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final InterfaceC2246c0 spliterator() {
        return new C2490i1(this);
    }
}
