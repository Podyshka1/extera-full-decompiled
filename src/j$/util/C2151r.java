package j$.util;

import j$.time.C2045s;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.r */
/* JADX INFO: loaded from: classes2.dex */
public final class C2151r implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final Spliterator f850a;

    public C2151r(Spliterator spliterator) {
        this.f850a = spliterator;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return this.f850a.tryAdvance(new C2045s(1, consumer));
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        this.f850a.forEachRemaining(new C2045s(1, consumer));
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f850a.trySplit();
        if (spliteratorTrySplit == null) {
            return null;
        }
        return new C2151r(spliteratorTrySplit);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f850a.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return this.f850a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f850a.characteristics();
    }

    @Override // j$.util.Spliterator
    public final boolean hasCharacteristics(int i) {
        return this.f850a.hasCharacteristics(i);
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        return this.f850a.getComparator();
    }
}
