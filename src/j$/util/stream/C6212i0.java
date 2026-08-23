package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6212i0 extends AbstractC6224l0 {
    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final LongStream sequential() {
        this.f1061h.f1071r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final LongStream parallel() {
        this.f1061h.f1071r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC6224l0, j$.util.stream.LongStream
    public final void forEach(LongConsumer longConsumer) {
        if (this.f1061h.f1071r) {
            super.forEach(longConsumer);
        } else {
            AbstractC6224l0.H0(F0()).forEachRemaining(longConsumer);
        }
    }

    @Override // j$.util.stream.AbstractC6224l0, j$.util.stream.LongStream
    public final void forEachOrdered(LongConsumer longConsumer) {
        if (this.f1061h.f1071r) {
            super.forEachOrdered(longConsumer);
        } else {
            AbstractC6224l0.H0(F0()).forEachRemaining(longConsumer);
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC6195d3.ORDERED.m850k(this.f1066m) ? this : new C2199v(this, EnumC6195d3.f1112r, 4);
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
