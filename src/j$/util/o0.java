package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class o0 implements Spliterator.OfInt {

    /* JADX INFO: renamed from: a */
    public final int[] f835a;

    /* JADX INFO: renamed from: b */
    public int f836b;

    /* JADX INFO: renamed from: c */
    public final int f837c;

    /* JADX INFO: renamed from: d */
    public final int f838d;

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m428k(this, consumer);
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
        return AbstractC1965a.m395A(this, consumer);
    }

    public o0(int[] iArr, int i, int i2, int i3) {
        this.f835a = iArr;
        this.f836b = i;
        this.f837c = i2;
        this.f838d = i3 | 16448;
    }

    @Override // j$.util.c0, j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        int i = this.f836b;
        int i2 = (this.f837c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f836b = i2;
        return new o0(this.f835a, i, i2, this.f838d);
    }

    @Override // j$.util.c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        int i;
        intConsumer.getClass();
        int[] iArr = this.f835a;
        int length = iArr.length;
        int i2 = this.f837c;
        if (length < i2 || (i = this.f836b) < 0) {
            return;
        }
        this.f836b = i2;
        if (i < i2) {
            do {
                intConsumer.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        int i = this.f836b;
        if (i < 0 || i >= this.f837c) {
            return false;
        }
        this.f836b = i + 1;
        intConsumer.accept(this.f835a[i]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f837c - this.f836b;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f838d;
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        if (AbstractC1965a.m434q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
