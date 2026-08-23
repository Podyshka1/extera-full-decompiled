package p022j$.util.stream;

import java.util.function.LongConsumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.P */
/* JADX INFO: loaded from: classes2.dex */
public final class C2386P extends AbstractC2400S implements InterfaceC2524o2 {

    /* JADX INFO: renamed from: b */
    public final LongConsumer f1214b;

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m940v(Object obj) {
        mo876v((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC2104a.m541d(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // p022j$.util.stream.InterfaceC2524o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo876v(Long l) {
        AbstractC2573y1.m1040E(this, l);
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

    public C2386P(LongConsumer longConsumer, boolean z) {
        super(z);
        this.f1214b = longConsumer;
    }

    @Override // p022j$.util.stream.AbstractC2400S, p022j$.util.stream.InterfaceC2529p2, p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        this.f1214b.accept(j);
    }
}
