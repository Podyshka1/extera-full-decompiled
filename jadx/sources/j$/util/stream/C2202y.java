package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.y */
/* JADX INFO: loaded from: classes2.dex */
public final class C2202y extends AbstractC2154B {
    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final InterfaceC2157E sequential() {
        this.f1061h.f1071r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final InterfaceC2157E parallel() {
        this.f1061h.f1071r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC2154B, j$.util.stream.InterfaceC2157E
    public final void forEach(DoubleConsumer doubleConsumer) {
        if (this.f1061h.f1071r) {
            super.forEach(doubleConsumer);
        } else {
            AbstractC2154B.H0(F0()).forEachRemaining(doubleConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC2154B, j$.util.stream.InterfaceC2157E
    public final void forEachOrdered(DoubleConsumer doubleConsumer) {
        if (this.f1061h.f1071r) {
            super.forEachOrdered(doubleConsumer);
        } else {
            AbstractC2154B.H0(F0()).forEachRemaining(doubleConsumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC6195d3.ORDERED.m850k(this.f1066m) ? this : new C2197t(this, EnumC6195d3.f1112r, 1);
    }

    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
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
