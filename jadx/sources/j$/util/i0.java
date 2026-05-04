package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final class i0 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final Object[] f818a;

    /* JADX INFO: renamed from: b */
    public int f819b;

    /* JADX INFO: renamed from: c */
    public final int f820c;

    /* JADX INFO: renamed from: d */
    public final int f821d;

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC1965a.m432o(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC1965a.m434q(this, i);
    }

    public i0(Object[] objArr, int i, int i2, int i3) {
        this.f818a = objArr;
        this.f819b = i;
        this.f820c = i2;
        this.f821d = i3 | 16448;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.f819b;
        int i2 = (this.f820c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f819b = i2;
        return new i0(this.f818a, i, i2, this.f821d);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        int i;
        consumer.getClass();
        Object[] objArr = this.f818a;
        int length = objArr.length;
        int i2 = this.f820c;
        if (length < i2 || (i = this.f819b) < 0) {
            return;
        }
        this.f819b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int i = this.f819b;
        if (i < 0 || i >= this.f820c) {
            return false;
        }
        this.f819b = i + 1;
        consumer.accept(this.f818a[i]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f820c - this.f819b;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f821d;
    }

    @Override // j$.util.Spliterator
    public final java.util.Comparator getComparator() {
        if (AbstractC1965a.m434q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
