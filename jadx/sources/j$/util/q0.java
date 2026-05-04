package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class q0 implements InterfaceC2101Z {

    /* JADX INFO: renamed from: a */
    public final long[] f846a;

    /* JADX INFO: renamed from: b */
    public int f847b;

    /* JADX INFO: renamed from: c */
    public final int f848c;

    /* JADX INFO: renamed from: d */
    public final int f849d;

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

    public q0(long[] jArr, int i, int i2, int i3) {
        this.f846a = jArr;
        this.f847b = i;
        this.f848c = i2;
        this.f849d = i3 | 16448;
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public final InterfaceC2101Z trySplit() {
        int i = this.f847b;
        int i2 = (this.f848c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f847b = i2;
        return new q0(this.f846a, i, i2, this.f849d);
    }

    @Override // j$.util.c0
    public final void forEachRemaining(LongConsumer longConsumer) {
        int i;
        longConsumer.getClass();
        long[] jArr = this.f846a;
        int length = jArr.length;
        int i2 = this.f848c;
        if (length < i2 || (i = this.f847b) < 0) {
            return;
        }
        this.f847b = i2;
        if (i < i2) {
            do {
                longConsumer.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        longConsumer.getClass();
        int i = this.f847b;
        if (i < 0 || i >= this.f848c) {
            return false;
        }
        this.f847b = i + 1;
        longConsumer.accept(this.f846a[i]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f848c - this.f847b;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f849d;
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        if (AbstractC1965a.m434q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
