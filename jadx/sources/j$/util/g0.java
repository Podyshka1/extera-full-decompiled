package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class g0 implements InterfaceC2091O, LongConsumer, InterfaceC2209y {

    /* JADX INFO: renamed from: a */
    public boolean f809a = false;

    /* JADX INFO: renamed from: b */
    public long f810b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2101Z f811c;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // j$.util.InterfaceC2092P
    public final void forEachRemaining(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        while (hasNext()) {
            longConsumer.accept(nextLong());
        }
    }

    @Override // java.util.Iterator
    public final Long next() {
        if (t0.f1299a) {
            t0.m909a(g0.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // j$.util.InterfaceC2091O, java.util.Iterator, j$.util.InterfaceC2209y
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            forEachRemaining((LongConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (t0.f1299a) {
            t0.m909a(g0.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((LongConsumer) new C2088L(consumer, 0));
    }

    public g0(InterfaceC2101Z interfaceC2101Z) {
        this.f811c = interfaceC2101Z;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f809a = true;
        this.f810b = j;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f809a) {
            this.f811c.tryAdvance((LongConsumer) this);
        }
        return this.f809a;
    }

    @Override // j$.util.InterfaceC2091O
    public final long nextLong() {
        if (!this.f809a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f809a = false;
        return this.f810b;
    }
}
