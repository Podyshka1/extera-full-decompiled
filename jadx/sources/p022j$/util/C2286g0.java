package p022j$.util;

import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.g0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2286g0 implements InterfaceC2230O, LongConsumer, InterfaceC2587y {

    /* JADX INFO: renamed from: a */
    public boolean f1044a = false;

    /* JADX INFO: renamed from: b */
    public long f1045b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2240Z f1046c;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // p022j$.util.InterfaceC2231P
    public final void forEachRemaining(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        while (hasNext()) {
            longConsumer.accept(nextLong());
        }
    }

    @Override // java.util.Iterator
    public final Long next() {
        if (AbstractC2582t0.f1535a) {
            AbstractC2582t0.m1076a(C2286g0.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p022j$.util.InterfaceC2230O, java.util.Iterator, p022j$.util.InterfaceC2587y
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            forEachRemaining((LongConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (AbstractC2582t0.f1535a) {
            AbstractC2582t0.m1076a(C2286g0.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((LongConsumer) new C2227L(consumer, 0));
    }

    public C2286g0(InterfaceC2240Z interfaceC2240Z) {
        this.f1046c = interfaceC2240Z;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        this.f1044a = true;
        this.f1045b = j;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f1044a) {
            this.f1046c.tryAdvance((LongConsumer) this);
        }
        return this.f1044a;
    }

    @Override // p022j$.util.InterfaceC2230O
    public final long nextLong() {
        if (!this.f1044a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f1044a = false;
        return this.f1045b;
    }
}
