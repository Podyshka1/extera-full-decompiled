package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.O */
/* JADX INFO: loaded from: classes2.dex */
public final class C2167O extends AbstractC2170S implements InterfaceC6234n2 {

    /* JADX INFO: renamed from: b */
    public final IntConsumer f970b;

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo814n((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC6234n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo814n(Integer num) {
        AbstractC6277y1.m884C(this, num);
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

    public C2167O(IntConsumer intConsumer, boolean z) {
        super(z);
        this.f970b = intConsumer;
    }

    @Override // j$.util.stream.AbstractC2170S, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        this.f970b.accept(i);
    }
}
