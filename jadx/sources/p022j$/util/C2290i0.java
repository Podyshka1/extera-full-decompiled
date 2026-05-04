package p022j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.i0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2290i0 implements Spliterator {

    /* JADX INFO: renamed from: a */
    public final Object[] f1053a;

    /* JADX INFO: renamed from: b */
    public int f1054b;

    /* JADX INFO: renamed from: c */
    public final int f1055c;

    /* JADX INFO: renamed from: d */
    public final int f1056d;

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2104a.m552o(this);
    }

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2104a.m554q(this, i);
    }

    public C2290i0(Object[] objArr, int i, int i2, int i3) {
        this.f1053a = objArr;
        this.f1054b = i;
        this.f1055c = i2;
        this.f1056d = i3 | 16448;
    }

    @Override // p022j$.util.Spliterator
    public final Spliterator trySplit() {
        int i = this.f1054b;
        int i2 = (this.f1055c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f1054b = i2;
        return new C2290i0(this.f1053a, i, i2, this.f1056d);
    }

    @Override // p022j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        int i;
        consumer.getClass();
        Object[] objArr = this.f1053a;
        int length = objArr.length;
        int i2 = this.f1055c;
        if (length < i2 || (i = this.f1054b) < 0) {
            return;
        }
        this.f1054b = i2;
        if (i < i2) {
            do {
                consumer.accept(objArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p022j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int i = this.f1054b;
        if (i < 0 || i >= this.f1055c) {
            return false;
        }
        this.f1054b = i + 1;
        consumer.accept(this.f1053a[i]);
        return true;
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f1055c - this.f1054b;
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return this.f1056d;
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        if (AbstractC2104a.m554q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
