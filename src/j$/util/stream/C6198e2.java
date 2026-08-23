package j$.util.stream;

import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.e2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6198e2 extends AbstractC6210h2 {
    @Override // j$.util.stream.AbstractC6210h2, j$.util.stream.Stream
    public final void forEach(Consumer consumer) {
        if (!this.f1061h.f1071r) {
            F0().forEachRemaining(consumer);
        } else {
            super.forEach(consumer);
        }
    }

    @Override // j$.util.stream.AbstractC6210h2, j$.util.stream.Stream
    public final void forEachOrdered(Consumer consumer) {
        if (!this.f1061h.f1071r) {
            F0().forEachRemaining(consumer);
        } else {
            super.forEachOrdered(consumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC6195d3.ORDERED.m850k(this.f1066m) ? this : new C6190c2(this, EnumC6195d3.f1112r);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final boolean C0() {
        throw new UnsupportedOperationException();
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        throw new UnsupportedOperationException();
    }
}
