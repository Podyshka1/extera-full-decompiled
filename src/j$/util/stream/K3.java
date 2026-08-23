package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class K3 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final Spliterator f942a;

    /* JADX INFO: renamed from: b */
    public final Spliterator f943b;

    /* JADX INFO: renamed from: c */
    public boolean f944c = true;

    /* JADX INFO: renamed from: d */
    public final boolean f945d;

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC1965a.m432o(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    public K3(Spliterator spliterator, Spliterator spliterator2) {
        this.f942a = spliterator;
        this.f943b = spliterator2;
        this.f945d = spliterator2.estimateSize() + spliterator.estimateSize() < 0;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f944c ? this.f942a : this.f943b.trySplit();
        this.f944c = false;
        return spliteratorTrySplit;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        boolean z = this.f944c;
        Spliterator spliterator = this.f943b;
        if (z) {
            boolean zTryAdvance = this.f942a.tryAdvance(consumer);
            if (zTryAdvance) {
                return zTryAdvance;
            }
            this.f944c = false;
            return spliterator.tryAdvance(consumer);
        }
        return spliterator.tryAdvance(consumer);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f944c) {
            this.f942a.forEachRemaining(consumer);
        }
        this.f943b.forEachRemaining(consumer);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        boolean z = this.f944c;
        Spliterator spliterator = this.f943b;
        if (z) {
            long jEstimateSize = spliterator.estimateSize() + this.f942a.estimateSize();
            if (jEstimateSize >= 0) {
                return jEstimateSize;
            }
            return Long.MAX_VALUE;
        }
        return spliterator.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        boolean z = this.f944c;
        Spliterator spliterator = this.f943b;
        if (z) {
            return this.f942a.characteristics() & spliterator.characteristics() & (~((this.f945d ? 16448 : 0) | 5));
        }
        return spliterator.characteristics();
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (this.f944c) {
            throw new IllegalStateException();
        }
        return this.f943b.getComparator();
    }
}
