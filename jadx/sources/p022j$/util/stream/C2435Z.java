package p022j$.util.stream;

import java.util.function.IntConsumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.Z */
/* JADX INFO: loaded from: classes2.dex */
public final class C2435Z extends AbstractC2453c0 {
    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final IntStream sequential() {
        this.f1296h.f1306r = false;
        return this;
    }

    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final IntStream parallel() {
        this.f1296h.f1306r = true;
        return this;
    }

    @Override // p022j$.util.stream.AbstractC2453c0, p022j$.util.stream.IntStream
    public final void forEach(IntConsumer intConsumer) {
        if (this.f1296h.f1306r) {
            super.forEach(intConsumer);
        } else {
            AbstractC2453c0.m994H0(m977F0()).forEachRemaining(intConsumer);
        }
    }

    @Override // p022j$.util.stream.AbstractC2453c0, p022j$.util.stream.IntStream
    public final void forEachOrdered(IntConsumer intConsumer) {
        if (this.f1296h.f1306r) {
            super.forEachOrdered(intConsumer);
        } else {
            AbstractC2453c0.m994H0(m977F0()).forEachRemaining(intConsumer);
        }
    }

    @Override // p022j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC2462d3.ORDERED.m1001k(this.f1301m) ? this : new C2551u(this, EnumC2462d3.f1348r, 1);
    }

    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: C0 */
    public final boolean mo872C0() {
        throw new UnsupportedOperationException();
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        throw new UnsupportedOperationException();
    }
}
