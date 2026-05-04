package p022j$.util.stream;

import java.util.function.LongConsumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.i0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2489i0 extends AbstractC2507l0 {
    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final LongStream sequential() {
        this.f1296h.f1306r = false;
        return this;
    }

    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final LongStream parallel() {
        this.f1296h.f1306r = true;
        return this;
    }

    @Override // p022j$.util.stream.AbstractC2507l0, p022j$.util.stream.LongStream
    public final void forEach(LongConsumer longConsumer) {
        if (this.f1296h.f1306r) {
            super.forEach(longConsumer);
        } else {
            AbstractC2507l0.m1012H0(m977F0()).forEachRemaining(longConsumer);
        }
    }

    @Override // p022j$.util.stream.AbstractC2507l0, p022j$.util.stream.LongStream
    public final void forEachOrdered(LongConsumer longConsumer) {
        if (this.f1296h.f1306r) {
            super.forEachOrdered(longConsumer);
        } else {
            AbstractC2507l0.m1012H0(m977F0()).forEachRemaining(longConsumer);
        }
    }

    @Override // p022j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC2462d3.ORDERED.m1001k(this.f1301m) ? this : new C2556v(this, EnumC2462d3.f1348r, 4);
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
