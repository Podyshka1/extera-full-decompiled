package p022j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.k0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2294k0 extends AbstractC2104a implements InterfaceC2235U {
    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m547j(this, consumer);
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
        return AbstractC2104a.m563z(this, consumer);
    }

    @Override // p022j$.com.android.tools.p023r8.AbstractC2104a, p022j$.util.InterfaceC2235U, p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final /* bridge */ /* synthetic */ InterfaceC2235U trySplit() {
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

    @Override // p022j$.util.InterfaceC2235U
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return false;
    }

    @Override // p022j$.util.InterfaceC2235U
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
    }
}
