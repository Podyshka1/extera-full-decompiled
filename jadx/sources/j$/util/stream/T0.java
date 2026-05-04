package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class T0 extends K0 {
    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: e */
    public final I0 mo788e(long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == this.f936c) {
            return this;
        }
        long jCount = this.f934a.count();
        if (j >= jCount) {
            return this.f935b.mo788e(j - jCount, j2 - jCount, intFunction);
        }
        if (j2 > jCount) {
            return AbstractC6277y1.m906Y(EnumC6199e3.REFERENCE, this.f934a.mo788e(j, jCount, intFunction), this.f935b.mo788e(0L, j2 - jCount, intFunction));
        }
        return this.f934a.mo788e(j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    public final Spliterator spliterator() {
        return new C6221k1(this);
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: f */
    public final void mo789f(Object[] objArr, int i) {
        Objects.requireNonNull(objArr);
        I0 i0 = this.f934a;
        i0.mo789f(objArr, i);
        this.f935b.mo789f(objArr, i + ((int) i0.count()));
    }

    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: g */
    public final Object[] mo790g(IntFunction intFunction) {
        long j = this.f936c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) j);
        mo789f(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.I0
    public final void forEach(Consumer consumer) {
        this.f934a.forEach(consumer);
        this.f935b.forEach(consumer);
    }

    public final String toString() {
        long j = this.f936c;
        return j < 32 ? String.format("ConcNode[%s.%s]", this.f934a, this.f935b) : String.format("ConcNode[size=%d]", Long.valueOf(j));
    }
}
