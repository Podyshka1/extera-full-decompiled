package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final class h0 implements InterfaceC2083G, DoubleConsumer, InterfaceC2209y {

    /* JADX INFO: renamed from: a */
    public boolean f814a = false;

    /* JADX INFO: renamed from: b */
    public double f815b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2096U f816c;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // j$.util.InterfaceC2092P
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        while (hasNext()) {
            doubleConsumer.accept(nextDouble());
        }
    }

    @Override // java.util.Iterator
    public final Double next() {
        if (t0.f1299a) {
            t0.m909a(h0.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // j$.util.InterfaceC2083G, java.util.Iterator, j$.util.InterfaceC2209y
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            forEachRemaining((DoubleConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (t0.f1299a) {
            t0.m909a(h0.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((DoubleConsumer) new C2080D(consumer, 0));
    }

    public h0(InterfaceC2096U interfaceC2096U) {
        this.f816c = interfaceC2096U;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f814a = true;
        this.f815b = d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f814a) {
            this.f816c.tryAdvance((DoubleConsumer) this);
        }
        return this.f814a;
    }

    @Override // j$.util.InterfaceC2083G
    public final double nextDouble() {
        if (!this.f814a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f814a = false;
        return this.f815b;
    }
}
