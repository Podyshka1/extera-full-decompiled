package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntFunction;
import p022j$.util.InterfaceC2246c0;
import p022j$.util.Spliterator;
import p022j$.util.Spliterators;

/* JADX INFO: renamed from: j$.util.stream.Z0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2436Z0 extends AbstractC2448b1 implements InterfaceC2342G0 {
    @Override // p022j$.util.stream.AbstractC2448b1, p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final /* synthetic */ InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        return AbstractC2573y1.m1053R(this, j, j2);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2573y1.m1050O(this, consumer);
    }

    @Override // p022j$.util.stream.AbstractC2448b1, p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ InterfaceC2352I0 mo919a(int i) {
        mo919a(i);
        throw null;
    }

    @Override // p022j$.util.stream.AbstractC2448b1, p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: a */
    public final InterfaceC2347H0 mo919a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: f */
    public final /* synthetic */ void mo926f(Object[] objArr, int i) {
        AbstractC2573y1.m1047L(this, (Long[]) objArr, i);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: b */
    public final /* bridge */ /* synthetic */ Object mo920b() {
        return AbstractC2573y1.f1514f;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return Spliterators.f921c;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final /* bridge */ /* synthetic */ InterfaceC2246c0 spliterator() {
        return Spliterators.f921c;
    }
}
