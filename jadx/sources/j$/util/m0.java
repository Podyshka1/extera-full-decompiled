package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class m0 extends AbstractC1965a implements InterfaceC2101Z {
    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m429l(this, consumer);
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
        return AbstractC1965a.m396B(this, consumer);
    }

    @Override // j$.com.android.tools.r8.AbstractC1965a, j$.util.InterfaceC2096U, j$.util.c0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ InterfaceC2101Z trySplit() {
        return null;
    }

    @Override // j$.com.android.tools.r8.AbstractC1965a, j$.util.InterfaceC2096U, j$.util.c0, j$.util.Spliterator
    public final /* bridge */ /* synthetic */ c0 trySplit() {
        return null;
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // j$.util.InterfaceC2101Z
    public final boolean tryAdvance(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return false;
    }

    @Override // j$.util.InterfaceC2101Z
    public final void forEachRemaining(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
    }
}
