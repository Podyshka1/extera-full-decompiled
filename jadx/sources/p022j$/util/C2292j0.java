package p022j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.j0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2292j0 implements InterfaceC2235U {

    /* JADX INFO: renamed from: a */
    public final double[] f1062a;

    /* JADX INFO: renamed from: b */
    public int f1063b;

    /* JADX INFO: renamed from: c */
    public final int f1064c;

    /* JADX INFO: renamed from: d */
    public final int f1065d;

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

    public C2292j0(double[] dArr, int i, int i2, int i3) {
        this.f1062a = dArr;
        this.f1063b = i;
        this.f1064c = i2;
        this.f1065d = i3 | 16448;
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final InterfaceC2235U trySplit() {
        int i = this.f1063b;
        int i2 = (this.f1064c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f1063b = i2;
        return new C2292j0(this.f1062a, i, i2, this.f1065d);
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        int i;
        doubleConsumer.getClass();
        double[] dArr = this.f1062a;
        int length = dArr.length;
        int i2 = this.f1064c;
        if (length < i2 || (i = this.f1063b) < 0) {
            return;
        }
        this.f1063b = i2;
        if (i < i2) {
            do {
                doubleConsumer.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        int i = this.f1063b;
        if (i < 0 || i >= this.f1064c) {
            return false;
        }
        this.f1063b = i + 1;
        doubleConsumer.accept(this.f1062a[i]);
        return true;
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f1064c - this.f1063b;
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return this.f1065d;
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        if (AbstractC2104a.m554q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
