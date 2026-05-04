package p022j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.o0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2302o0 implements Spliterator.OfInt {

    /* JADX INFO: renamed from: a */
    public final int[] f1070a;

    /* JADX INFO: renamed from: b */
    public int f1071b;

    /* JADX INFO: renamed from: c */
    public final int f1072c;

    /* JADX INFO: renamed from: d */
    public final int f1073d;

    @Override // p022j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2104a.m548k(this, consumer);
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

    public C2302o0(int[] iArr, int i, int i2, int i3) {
        this.f1070a = iArr;
        this.f1071b = i;
        this.f1072c = i2;
        this.f1073d = i3 | 16448;
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    public final Spliterator.OfInt trySplit() {
        int i = this.f1071b;
        int i2 = (this.f1072c + i) >>> 1;
        if (i >= i2) {
            return null;
        }
        this.f1071b = i2;
        return new C2302o0(this.f1070a, i, i2, this.f1073d);
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        int i;
        intConsumer.getClass();
        int[] iArr = this.f1070a;
        int length = iArr.length;
        int i2 = this.f1072c;
        if (length < i2 || (i = this.f1071b) < 0) {
            return;
        }
        this.f1071b = i2;
        if (i < i2) {
            do {
                intConsumer.accept(iArr[i]);
                i++;
            } while (i < i2);
        }
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        int i = this.f1071b;
        if (i < 0 || i >= this.f1072c) {
            return false;
        }
        this.f1071b = i + 1;
        intConsumer.accept(this.f1070a[i]);
        return true;
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f1072c - this.f1071b;
    }

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return this.f1073d;
    }

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        if (AbstractC2104a.m554q(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}
