package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class f0 implements InterfaceC2087K, IntConsumer, InterfaceC2209y {

    /* JADX INFO: renamed from: a */
    public boolean f786a = false;

    /* JADX INFO: renamed from: b */
    public int f787b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Spliterator.OfInt f788c;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.InterfaceC2092P
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        while (hasNext()) {
            intConsumer.accept(nextInt());
        }
    }

    @Override // java.util.Iterator
    public final Integer next() {
        if (t0.f1299a) {
            t0.m909a(f0.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // j$.util.InterfaceC2087K, java.util.Iterator, j$.util.InterfaceC2209y
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            forEachRemaining((IntConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (t0.f1299a) {
            t0.m909a(f0.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((IntConsumer) new C2084H(consumer, 0));
    }

    public f0(Spliterator.OfInt ofInt) {
        this.f788c = ofInt;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.f786a = true;
        this.f787b = i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f786a) {
            this.f788c.tryAdvance((IntConsumer) this);
        }
        return this.f786a;
    }

    @Override // j$.util.InterfaceC2087K
    public final int nextInt() {
        if (!this.f786a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f786a = false;
        return this.f787b;
    }
}
