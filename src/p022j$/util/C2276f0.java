package p022j$.util;

import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.f0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2276f0 implements InterfaceC2226K, IntConsumer, InterfaceC2587y {

    /* JADX INFO: renamed from: a */
    public boolean f1021a = false;

    /* JADX INFO: renamed from: b */
    public int f1022b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Spliterator.OfInt f1023c;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // p022j$.util.InterfaceC2231P
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        while (hasNext()) {
            intConsumer.accept(nextInt());
        }
    }

    @Override // java.util.Iterator
    public final Integer next() {
        if (AbstractC2582t0.f1535a) {
            AbstractC2582t0.m1076a(C2276f0.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // p022j$.util.InterfaceC2226K, java.util.Iterator, p022j$.util.InterfaceC2587y
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            forEachRemaining((IntConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (AbstractC2582t0.f1535a) {
            AbstractC2582t0.m1076a(C2276f0.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((IntConsumer) new C2223H(consumer, 0));
    }

    public C2276f0(Spliterator.OfInt ofInt) {
        this.f1023c = ofInt;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f1021a = true;
        this.f1022b = i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f1021a) {
            this.f1023c.tryAdvance((IntConsumer) this);
        }
        return this.f1021a;
    }

    @Override // p022j$.util.InterfaceC2226K
    public final int nextInt() {
        if (!this.f1021a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f1021a = false;
        return this.f1022b;
    }
}
