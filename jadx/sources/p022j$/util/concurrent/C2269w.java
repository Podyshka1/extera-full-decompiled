package p022j$.util.concurrent;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.concurrent.w */
/* JADX INFO: loaded from: classes2.dex */
public final class C2269w implements Spliterator.OfInt {

    /* JADX INFO: renamed from: a */
    public long f1003a;

    /* JADX INFO: renamed from: b */
    public final long f1004b;

    /* JADX INFO: renamed from: c */
    public final int f1005c;

    /* JADX INFO: renamed from: d */
    public final int f1006d;

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

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

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C2269w(long j, long j2, int i, int i2) {
        this.f1003a = j;
        this.f1004b = j2;
        this.f1005c = i;
        this.f1006d = i2;
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2269w trySplit() {
        long j = this.f1003a;
        long j2 = (this.f1004b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f1003a = j2;
        return new C2269w(j, j2, this.f1005c, this.f1006d);
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f1004b - this.f1003a;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j = this.f1003a;
        if (j >= this.f1004b) {
            return false;
        }
        intConsumer.accept(ThreadLocalRandom.current().m845b(this.f1005c, this.f1006d));
        this.f1003a = j + 1;
        return true;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j = this.f1003a;
        long j2 = this.f1004b;
        if (j < j2) {
            this.f1003a = j2;
            ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
            do {
                intConsumer.accept(threadLocalRandomCurrent.m845b(this.f1005c, this.f1006d));
                j++;
            } while (j < j2);
        }
    }
}
