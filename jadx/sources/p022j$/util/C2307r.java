package p022j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import p022j$.time.C2184s;

/* JADX INFO: renamed from: j$.util.r */
/* JADX INFO: loaded from: classes2.dex */
public final class C2307r implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final Spliterator f1085a;

    public C2307r(Spliterator spliterator) {
        this.f1085a = spliterator;
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return this.f1085a.tryAdvance(new C2184s(1, consumer));
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        this.f1085a.forEachRemaining(new C2184s(1, consumer));
    }

    @Override // p022j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f1085a.trySplit();
        if (spliteratorTrySplit == null) {
            return null;
        }
        return new C2307r(spliteratorTrySplit);
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f1085a.estimateSize();
    }

    @Override // p022j$.util.Spliterator
    public final long getExactSizeIfKnown() {
        return this.f1085a.getExactSizeIfKnown();
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return this.f1085a.characteristics();
    }

    @Override // p022j$.util.Spliterator
    public final boolean hasCharacteristics(int i) {
        return this.f1085a.hasCharacteristics(i);
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        return this.f1085a.getComparator();
    }
}
