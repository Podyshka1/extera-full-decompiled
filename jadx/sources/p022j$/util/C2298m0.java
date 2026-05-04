package p022j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.m0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2298m0 extends AbstractC2104a implements InterfaceC2240Z {
    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m549l(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2104a.m552o(this);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2104a.m554q(this, i);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return AbstractC2104a.m516B(this, consumer);
    }

    @Override // p022j$.com.android.tools.p023r8.AbstractC2104a, p022j$.util.InterfaceC2235U, p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final /* bridge */ /* synthetic */ InterfaceC2240Z trySplit() {
        return null;
    }

    @Override // p022j$.com.android.tools.p023r8.AbstractC2104a, p022j$.util.InterfaceC2235U, p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final /* bridge */ /* synthetic */ InterfaceC2246c0 trySplit() {
        return null;
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p022j$.util.InterfaceC2240Z
    public final boolean tryAdvance(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return false;
    }

    @Override // p022j$.util.InterfaceC2240Z
    public final void forEachRemaining(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
    }
}
