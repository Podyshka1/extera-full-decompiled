package p022j$.util.concurrent;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2235U;

/* JADX INFO: renamed from: j$.util.concurrent.v */
/* JADX INFO: loaded from: classes2.dex */
public final class C2268v implements InterfaceC2235U {

    /* JADX INFO: renamed from: a */
    public long f999a;

    /* JADX INFO: renamed from: b */
    public final long f1000b;

    /* JADX INFO: renamed from: c */
    public final double f1001c;

    /* JADX INFO: renamed from: d */
    public final double f1002d;

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

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

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C2268v(long j, long j2, double d, double d2) {
        this.f999a = j;
        this.f1000b = j2;
        this.f1001c = d;
        this.f1002d = d2;
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2268v trySplit() {
        long j = this.f999a;
        long j2 = (this.f1000b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f999a = j2;
        return new C2268v(j, j2, this.f1001c, this.f1002d);
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f1000b - this.f999a;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        long j = this.f999a;
        if (j >= this.f1000b) {
            return false;
        }
        doubleConsumer.accept(ThreadLocalRandom.current().m844a(this.f1001c, this.f1002d));
        this.f999a = j + 1;
        return true;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        long j = this.f999a;
        long j2 = this.f1000b;
        if (j < j2) {
            this.f999a = j2;
            ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
            do {
                doubleConsumer.accept(threadLocalRandomCurrent.m844a(this.f1001c, this.f1002d));
                j++;
            } while (j < j2);
        }
    }
}
