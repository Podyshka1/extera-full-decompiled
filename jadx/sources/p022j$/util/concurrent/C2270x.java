package p022j$.util.concurrent;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.InterfaceC2240Z;

/* JADX INFO: renamed from: j$.util.concurrent.x */
/* JADX INFO: loaded from: classes2.dex */
public final class C2270x implements InterfaceC2240Z {

    /* JADX INFO: renamed from: a */
    public long f1007a;

    /* JADX INFO: renamed from: b */
    public final long f1008b;

    /* JADX INFO: renamed from: c */
    public final long f1009c;

    /* JADX INFO: renamed from: d */
    public final long f1010d;

    @Override // p022j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

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

    @Override // p022j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C2270x(long j, long j2, long j3, long j4) {
        this.f1007a = j;
        this.f1008b = j2;
        this.f1009c = j3;
        this.f1010d = j4;
    }

    @Override // p022j$.util.InterfaceC2246c0, p022j$.util.Spliterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2270x trySplit() {
        long j = this.f1007a;
        long j2 = (this.f1008b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f1007a = j2;
        return new C2270x(j, j2, this.f1009c, this.f1010d);
    }

    @Override // p022j$.util.Spliterator
    public final long estimateSize() {
        return this.f1008b - this.f1007a;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        longConsumer.getClass();
        long j = this.f1007a;
        if (j >= this.f1008b) {
            return false;
        }
        longConsumer.accept(ThreadLocalRandom.current().m846c(this.f1009c, this.f1010d));
        this.f1007a = j + 1;
        return true;
    }

    @Override // p022j$.util.InterfaceC2246c0
    public final void forEachRemaining(LongConsumer longConsumer) {
        longConsumer.getClass();
        long j = this.f1007a;
        long j2 = this.f1008b;
        if (j < j2) {
            this.f1007a = j2;
            ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
            do {
                longConsumer.accept(threadLocalRandomCurrent.m846c(this.f1009c, this.f1010d));
                j++;
            } while (j < j2);
        }
    }
}
