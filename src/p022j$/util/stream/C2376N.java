package p022j$.util.stream;

import java.util.function.DoubleConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.N */
/* JADX INFO: loaded from: classes2.dex */
public final class C2376N extends AbstractC2400S implements InterfaceC2514m2 {

    /* JADX INFO: renamed from: b */
    public final DoubleConsumer f1198b;

    @Override // p022j$.util.stream.InterfaceC2514m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo907A(Double d) {
        AbstractC2573y1.m1036A(this, d);
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo907A((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC2104a.m539b(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: f */
    public final Object mo859f(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        abstractC2446b.mo982s0(spliterator, this);
        return null;
    }

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: i */
    public final /* bridge */ /* synthetic */ Object mo860i(AbstractC2573y1 abstractC2573y1, Spliterator spliterator) {
        m958a(abstractC2573y1, spliterator);
        return null;
    }

    public C2376N(DoubleConsumer doubleConsumer, boolean z) {
        super(z);
        this.f1198b = doubleConsumer;
    }

    @Override // p022j$.util.stream.AbstractC2400S, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        this.f1198b.accept(d);
    }
}
