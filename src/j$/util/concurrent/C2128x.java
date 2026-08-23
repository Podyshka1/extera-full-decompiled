package j$.util.concurrent;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2101Z;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.concurrent.x */
/* JADX INFO: loaded from: classes2.dex */
public final class C2128x implements InterfaceC2101Z {

    /* JADX INFO: renamed from: a */
    public long f772a;

    /* JADX INFO: renamed from: b */
    public final long f773b;

    /* JADX INFO: renamed from: c */
    public final long f774c;

    /* JADX INFO: renamed from: d */
    public final long f775d;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m429l(this, consumer);
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
        return AbstractC1965a.m396B(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C2128x(long j, long j2, long j3, long j4) {
        this.f772a = j;
        this.f773b = j2;
        this.f774c = j3;
        this.f775d = j4;
    }

    @Override // j$.util.c0, j$.util.Spliterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2128x trySplit() {
        long j = this.f772a;
        long j2 = (this.f773b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f772a = j2;
        return new C2128x(j, j2, this.f774c, this.f775d);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f773b - this.f772a;
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(LongConsumer longConsumer) {
        longConsumer.getClass();
        long j = this.f772a;
        if (j >= this.f773b) {
            return false;
        }
        longConsumer.accept(ThreadLocalRandom.current().m720c(this.f774c, this.f775d));
        this.f772a = j + 1;
        return true;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(LongConsumer longConsumer) {
        longConsumer.getClass();
        long j = this.f772a;
        long j2 = this.f773b;
        if (j < j2) {
            this.f772a = j2;
            ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
            do {
                longConsumer.accept(threadLocalRandomCurrent.m720c(this.f774c, this.f775d));
                j++;
            } while (j < j2);
        }
    }
}
