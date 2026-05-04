package j$.util.concurrent;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.concurrent.w */
/* JADX INFO: loaded from: classes2.dex */
public final class C2127w implements Spliterator.OfInt {

    /* JADX INFO: renamed from: a */
    public long f768a;

    /* JADX INFO: renamed from: b */
    public final long f769b;

    /* JADX INFO: renamed from: c */
    public final int f770c;

    /* JADX INFO: renamed from: d */
    public final int f771d;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

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

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C2127w(long j, long j2, int i, int i2) {
        this.f768a = j;
        this.f769b = j2;
        this.f770c = i;
        this.f771d = i2;
    }

    @Override // j$.util.c0, j$.util.Spliterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2127w trySplit() {
        long j = this.f768a;
        long j2 = (this.f769b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f768a = j2;
        return new C2127w(j, j2, this.f770c, this.f771d);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f769b - this.f768a;
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j = this.f768a;
        if (j >= this.f769b) {
            return false;
        }
        intConsumer.accept(ThreadLocalRandom.current().m719b(this.f770c, this.f771d));
        this.f768a = j + 1;
        return true;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j = this.f768a;
        long j2 = this.f769b;
        if (j < j2) {
            this.f768a = j2;
            ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
            do {
                intConsumer.accept(threadLocalRandomCurrent.m719b(this.f770c, this.f771d));
                j++;
            } while (j < j2);
        }
    }
}
