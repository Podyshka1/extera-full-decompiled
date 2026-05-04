package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.Q */
/* JADX INFO: loaded from: classes2.dex */
public final class C2169Q extends AbstractC2170S {

    /* JADX INFO: renamed from: b */
    public final Consumer f987b;

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

    public C2169Q(Consumer consumer, boolean z) {
        super(z);
        this.f987b = consumer;
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final void m800v(Object obj) {
        this.f987b.m800v(obj);
    }
}
