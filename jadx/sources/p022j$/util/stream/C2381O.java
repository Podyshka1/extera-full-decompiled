package p022j$.util.stream;

import java.util.function.IntConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.O */
/* JADX INFO: loaded from: classes2.dex */
public final class C2381O extends AbstractC2400S implements InterfaceC2519n2 {

    /* JADX INFO: renamed from: b */
    public final IntConsumer f1205b;

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo954n((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC2104a.m540c(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p022j$.util.stream.InterfaceC2519n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo954n(Integer num) {
        AbstractC2573y1.m1038C(this, num);
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

    public C2381O(IntConsumer intConsumer, boolean z) {
        super(z);
        this.f1205b = intConsumer;
    }

    @Override // p022j$.util.stream.AbstractC2400S, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        this.f1205b.accept(i);
    }
}
