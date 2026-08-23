package p022j$.util;

import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;

/* JADX INFO: renamed from: j$.util.h0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2288h0 implements InterfaceC2222G, DoubleConsumer, InterfaceC2587y {

    /* JADX INFO: renamed from: a */
    public boolean f1049a = false;

    /* JADX INFO: renamed from: b */
    public double f1050b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ InterfaceC2235U f1051c;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // p022j$.util.InterfaceC2231P
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        while (hasNext()) {
            doubleConsumer.accept(nextDouble());
        }
    }

    @Override // java.util.Iterator
    public final Double next() {
        if (AbstractC2582t0.f1535a) {
            AbstractC2582t0.m1076a(C2288h0.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // p022j$.util.InterfaceC2222G, java.util.Iterator, p022j$.util.InterfaceC2587y
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            forEachRemaining((DoubleConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (AbstractC2582t0.f1535a) {
            AbstractC2582t0.m1076a(C2288h0.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((DoubleConsumer) new C2219D(consumer, 0));
    }

    public C2288h0(InterfaceC2235U interfaceC2235U) {
        this.f1051c = interfaceC2235U;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f1049a = true;
        this.f1050b = d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f1049a) {
            this.f1051c.tryAdvance((DoubleConsumer) this);
        }
        return this.f1049a;
    }

    @Override // p022j$.util.InterfaceC2222G
    public final double nextDouble() {
        if (!this.f1049a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f1049a = false;
        return this.f1050b;
    }
}
