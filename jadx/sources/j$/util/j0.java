package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class j0 implements InterfaceC2096U {

    /* JADX INFO: renamed from: a */
    public final double[] f827a;

    /* JADX INFO: renamed from: b */
    public int f828b;

    /* JADX INFO: renamed from: c */
    public final int f829c;

    /* JADX INFO: renamed from: d */
    public final int f830d;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m427j(this, consumer);
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
        return AbstractC1965a.m443z(this, consumer);
    }

    public j0(double[] dArr, int i, int i2, int i3) {
        this.f827a = dArr;
        this.f828b = i;
        this.f829c = i2;
        this.f830d = i3 | 16448;
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public final InterfaceC2096U trySplit() {
        int i = this.f828b;
        int i2 = (this.f829c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f828b = i2;
        return new j0(this.f827a, i, i2, this.f830d);
    }

    @Override // j$.util.c0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        int i;
        doubleConsumer.getClass();
        double[] dArr = this.f827a;
        int length = dArr.length;
        int i2 = this.f829c;
        if (length < i2 || (i = this.f828b) < 0) {
            return;
        }
        this.f828b = i2;
        if (i < i2) {
            do {
                doubleConsumer.accept(dArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        int i = this.f828b;
        if (i < 0 || i >= this.f829c) {
            return false;
        }
        this.f828b = i + 1;
        doubleConsumer.accept(this.f827a[i]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f829c - this.f828b;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f830d;
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        if (AbstractC1965a.m434q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
