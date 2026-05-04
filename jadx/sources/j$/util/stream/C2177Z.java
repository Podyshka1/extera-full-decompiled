package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.Z */
/* JADX INFO: loaded from: classes2.dex */
public final class C2177Z extends AbstractC6188c0 {
    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final IntStream sequential() {
        this.f1061h.f1071r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final IntStream parallel() {
        this.f1061h.f1071r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC6188c0, j$.util.stream.IntStream
    public final void forEach(IntConsumer intConsumer) {
        if (this.f1061h.f1071r) {
            super.forEach(intConsumer);
        } else {
            AbstractC6188c0.H0(F0()).forEachRemaining(intConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC6188c0, j$.util.stream.IntStream
    public final void forEachOrdered(IntConsumer intConsumer) {
        if (this.f1061h.f1071r) {
            super.forEachOrdered(intConsumer);
        } else {
            AbstractC6188c0.H0(F0()).forEachRemaining(intConsumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC6195d3.ORDERED.m850k(this.f1066m) ? this : new C2198u(this, EnumC6195d3.f1112r, 1);
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
