package p022j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.q0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2306q0 implements InterfaceC2240Z {

    /* JADX INFO: renamed from: a */
    public final long[] f1081a;

    /* JADX INFO: renamed from: b */
    public int f1082b;

    /* JADX INFO: renamed from: c */
    public final int f1083c;

    /* JADX INFO: renamed from: d */
    public final int f1084d;

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

    public C2306q0(long[] jArr, int i, int i2, int i3) {
        this.f1081a = jArr;
        this.f1082b = i;
        this.f1083c = i2;
        this.f1084d = i3 | 16448;
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final InterfaceC2240Z trySplit() {
        int i = this.f1082b;
        int i2 = (this.f1083c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f1082b = i2;
        return new C2306q0(this.f1081a, i, i2, this.f1084d);
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(LongConsumer longConsumer) {
        int i;
        longConsumer.getClass();
        long[] jArr = this.f1081a;
        int length = jArr.length;
        int i2 = this.f1083c;
        if (length < i2 || (i = this.f1082b) < 0) {
            return;
        }
        this.f1082b = i2;
        if (i < i2) {
            do {
                longConsumer.accept(jArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        longConsumer.getClass();
        int i = this.f1082b;
        if (i < 0 || i >= this.f1083c) {
            return false;
        }
        this.f1082b = i + 1;
        longConsumer.accept(this.f1081a[i]);
        return true;
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f1083c - this.f1082b;
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return this.f1084d;
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        if (AbstractC2104a.m554q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
