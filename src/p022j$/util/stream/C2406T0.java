package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.IntFunction;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.T0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2406T0 extends AbstractC2362K0 {
    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: e */
    public final InterfaceC2352I0 mo925e(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == this.f1171c) {
            return this;
        }
        long jCount = this.f1169a.count();
        if (j >= jCount) {
            return this.f1170b.mo925e(j - jCount, j2 - jCount, intFunction);
        }
        if (j2 > jCount) {
            return AbstractC2573y1.m1060Y(EnumC2468e3.REFERENCE, this.f1169a.mo925e(j, jCount, intFunction), this.f1170b.mo925e(0L, j2 - jCount, intFunction));
        }
        return this.f1169a.mo925e(j, j2, intFunction);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final Spliterator spliterator() {
        return new C2502k1(this);
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: f */
    public final void mo926f(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        InterfaceC2352I0 interfaceC2352I0 = this.f1169a;
        interfaceC2352I0.mo926f(objArr, i);
        this.f1170b.mo926f(objArr, i + ((int) interfaceC2352I0.count()));
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: g */
    public final Object[] mo927g(IntFunction intFunction) {
        long j = this.f1171c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) j);
        mo926f(objArr, 0);
        return objArr;
    }

    @Override // p022j$.util.stream.InterfaceC2352I0
    public final void forEach(Consumer consumer) {
        this.f1169a.forEach(consumer);
        this.f1170b.forEach(consumer);
    }

    public final String toString() {
        long j = this.f1171c;
        return j < 32 ? String.format("ConcNode[%s.%s]", this.f1169a, this.f1170b) : String.format("ConcNode[size=%d]", Long.valueOf(j));
    }
}
