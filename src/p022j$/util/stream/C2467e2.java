package p022j$.util.stream;

import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.e2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2467e2 extends AbstractC2485h2 {
    @Override // p022j$.util.stream.AbstractC2485h2, p022j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (!this.f1296h.f1306r) {
            m977F0().forEachRemaining(consumer);
        } else {
            super.forEach(consumer);
        }
    }

    @Override // p022j$.util.stream.AbstractC2485h2, p022j$.util.stream.Stream
    public final void forEachOrdered(Consumer consumer) {
        if (!this.f1296h.f1306r) {
            m977F0().forEachRemaining(consumer);
        } else {
            super.forEachOrdered(consumer);
        }
    }

    @Override // p022j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC2462d3.ORDERED.m1001k(this.f1301m) ? this : new C2455c2(this, EnumC2462d3.f1348r);
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
