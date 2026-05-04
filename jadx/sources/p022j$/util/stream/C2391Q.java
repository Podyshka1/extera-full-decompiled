package p022j$.util.stream;

import java.util.function.Consumer;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.Q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2391Q extends AbstractC2400S {

    /* JADX INFO: renamed from: b */
    public final Consumer f1222b;

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

    public C2391Q(Consumer consumer, boolean z) {
        super(z);
        this.f1222b = consumer;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m940v(Object obj) {
        this.f1222b.m940v(obj);
    }
}
