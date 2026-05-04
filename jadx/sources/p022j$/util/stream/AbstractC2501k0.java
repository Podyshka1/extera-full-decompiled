package p022j$.util.stream;

import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.k0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2501k0 extends AbstractC2507l0 {
    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: C0 */
    public final boolean mo872C0() {
        return false;
    }

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

    @Override // p022j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC2462d3.ORDERED.m1001k(this.f1301m) ? this : new C2556v(this, EnumC2462d3.f1348r, 4);
    }

    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }
}
