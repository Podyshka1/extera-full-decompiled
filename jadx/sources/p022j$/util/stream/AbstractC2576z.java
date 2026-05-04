package p022j$.util.stream;

import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.z */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2576z extends AbstractC2316B {
    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: C0 */
    public final boolean mo872C0() {
        return true;
    }

    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final InterfaceC2331E sequential() {
        this.f1296h.f1306r = false;
        return this;
    }

    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final InterfaceC2331E parallel() {
        this.f1296h.f1306r = true;
        return this;
    }

    @Override // p022j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC2462d3.ORDERED.m1001k(this.f1301m) ? this : new C2546t(this, EnumC2462d3.f1348r, 1);
    }

    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }
}
