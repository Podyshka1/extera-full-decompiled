package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.N */
/* JADX INFO: loaded from: classes2.dex */
public final class C2166N extends AbstractC2170S implements InterfaceC6230m2 {

    /* JADX INFO: renamed from: b */
    public final DoubleConsumer f963b;

    @Override // j$.util.stream.InterfaceC6230m2
    /* JADX INFO: renamed from: A */
    public final /* synthetic */ void mo771A(Double d) {
        AbstractC6277y1.m882A(this, d);
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo771A((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return AbstractC1965a.m419b(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: f */
    public final Object mo733f(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        abstractC2179b.s0(spliterator, this);
        return null;
    }

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: i */
    public final /* bridge */ /* synthetic */ Object mo734i(AbstractC6277y1 abstractC6277y1, Spliterator spliterator) {
        m818a(abstractC6277y1, spliterator);
        return null;
    }

    public C2166N(DoubleConsumer doubleConsumer, boolean z) {
        super(z);
        this.f963b = doubleConsumer;
    }

    @Override // j$.util.stream.AbstractC2170S, j$.util.stream.InterfaceC6242p2
    public final void accept(double d) {
        this.f963b.accept(d);
    }
}
