package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class L3 implements Spliterator.OfInt {

    /* JADX INFO: renamed from: a */
    public int f955a;

    /* JADX INFO: renamed from: b */
    public final int f956b;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17749;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m428k(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return null;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC1965a.m432o(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC1965a.m395A(this, consumer);
    }

    public L3(int i, int i2) {
        this.f955a = i;
        this.f956b = i2;
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        int i = this.f955a;
        if (i >= this.f956b) {
            return false;
        }
        this.f955a = i + 1;
        intConsumer.accept(i);
        return true;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        int i = this.f956b;
        this.f955a = i;
        for (int i2 = this.f955a; i2 < i; i2++) {
            intConsumer.accept(i2);
        }
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return (((long) this.f956b) - ((long) this.f955a)) + ((long) 0);
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        long jEstimateSize = estimateSize();
        if (jEstimateSize <= 1) {
            return null;
        }
        int i = this.f955a;
        int i2 = ((int) (jEstimateSize / ((long) (jEstimateSize < 16777216 ? 2 : 8)))) + i;
        this.f955a = i2;
        return new L3(i, i2);
    }
}
