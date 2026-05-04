package p022j$.util.stream;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.L3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2370L3 implements Spliterator.OfInt {

    /* JADX INFO: renamed from: a */
    public int f1190a;

    /* JADX INFO: renamed from: b */
    public final int f1191b;

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return 17749;
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m548k(this, consumer);
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        return null;
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
        return AbstractC2104a.m515A(this, consumer);
    }

    public C2370L3(int i, int i2) {
        this.f1190a = i;
        this.f1191b = i2;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        int i = this.f1190a;
        if (i >= this.f1191b) {
            return false;
        }
        this.f1190a = i + 1;
        intConsumer.accept(i);
        return true;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        int i = this.f1191b;
        this.f1190a = i;
        for (int i2 = this.f1190a; i2 < i; i2++) {
            intConsumer.accept(i2);
        }
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return (((long) this.f1191b) - ((long) this.f1190a)) + ((long) 0);
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        long jEstimateSize = estimateSize();
        if (jEstimateSize <= 1) {
            return null;
        }
        int i = this.f1190a;
        int i2 = ((int) (jEstimateSize / ((long) (jEstimateSize < 16777216 ? 2 : 8)))) + i;
        this.f1190a = i2;
        return new C2370L3(i, i2);
    }
}
