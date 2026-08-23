package j$.util.concurrent;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.InterfaceC2096U;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.concurrent.v */
/* JADX INFO: loaded from: classes2.dex */
public final class C2126v implements InterfaceC2096U {

    /* JADX INFO: renamed from: a */
    public long f764a;

    /* JADX INFO: renamed from: b */
    public final long f765b;

    /* JADX INFO: renamed from: c */
    public final double f766c;

    /* JADX INFO: renamed from: d */
    public final double f767d;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC1965a.m427j(this, consumer);
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
        return AbstractC1965a.m443z(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    public C2126v(long j, long j2, double d, double d2) {
        this.f764a = j;
        this.f765b = j2;
        this.f766c = d;
        this.f767d = d2;
    }

    @Override // j$.util.c0, j$.util.Spliterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C2126v trySplit() {
        long j = this.f764a;
        long j2 = (this.f765b + j) >>> 1;
        if (j2 <= j) {
            return null;
        }
        this.f764a = j2;
        return new C2126v(j, j2, this.f766c, this.f767d);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f765b - this.f764a;
    }

    @Override // j$.util.c0
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        long j = this.f764a;
        if (j >= this.f765b) {
            return false;
        }
        doubleConsumer.accept(ThreadLocalRandom.current().m718a(this.f766c, this.f767d));
        this.f764a = j + 1;
        return true;
    }

    @Override // j$.util.c0
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        long j = this.f764a;
        long j2 = this.f765b;
        if (j < j2) {
            this.f764a = j2;
            ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
            do {
                doubleConsumer.accept(threadLocalRandomCurrent.m718a(this.f766c, this.f767d));
                j++;
            } while (j < j2);
        }
    }
}
