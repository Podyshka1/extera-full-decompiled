package p022j$.util.stream;

import java.util.Comparator;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.K3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2365K3 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final Spliterator f1177a;

    /* JADX INFO: renamed from: b */
    public final Spliterator f1178b;

    /* JADX INFO: renamed from: c */
    public boolean f1179c = true;

    /* JADX INFO: renamed from: d */
    public final boolean f1180d;

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2104a.m552o(this);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2104a.m554q(this, i);
    }

    public C2365K3(Spliterator spliterator, Spliterator spliterator2) {
        this.f1177a = spliterator;
        this.f1178b = spliterator2;
        this.f1180d = spliterator2.estimateSize() + spliterator.estimateSize() < 0;
    }

    @Override // p022j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f1179c ? this.f1177a : this.f1178b.trySplit();
        this.f1179c = false;
        return spliteratorTrySplit;
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        boolean z = this.f1179c;
        Spliterator spliterator = this.f1178b;
        if (z) {
            boolean zTryAdvance = this.f1177a.tryAdvance(consumer);
            if (zTryAdvance) {
                return zTryAdvance;
            }
            this.f1179c = false;
            return spliterator.tryAdvance(consumer);
        }
        return spliterator.tryAdvance(consumer);
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f1179c) {
            this.f1177a.forEachRemaining(consumer);
        }
        this.f1178b.forEachRemaining(consumer);
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        boolean z = this.f1179c;
        Spliterator spliterator = this.f1178b;
        if (z) {
            long jEstimateSize = spliterator.estimateSize() + this.f1177a.estimateSize();
            if (jEstimateSize >= 0) {
                return jEstimateSize;
            }
            return Long.MAX_VALUE;
        }
        return spliterator.estimateSize();
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        boolean z = this.f1179c;
        Spliterator spliterator = this.f1178b;
        if (z) {
            return this.f1177a.characteristics() & spliterator.characteristics() & (~((this.f1180d ? 16448 : 0) | 5));
        }
        return spliterator.characteristics();
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        if (this.f1179c) {
            throw new IllegalStateException();
        }
        return this.f1178b.getComparator();
    }
}
