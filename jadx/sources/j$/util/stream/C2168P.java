package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.P */
/* JADX INFO: loaded from: classes2.dex */
public final class C2168P extends AbstractC2170S implements InterfaceC6238o2 {

    /* JADX INFO: renamed from: b */
    public final LongConsumer f979b;

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public final /* bridge */ /* synthetic */ void m800v(Object obj) {
        mo747v((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return AbstractC1965a.m421d(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC6238o2
    /* JADX INFO: renamed from: v */
    public final /* synthetic */ void mo747v(Long l) {
        AbstractC6277y1.m886E(this, l);
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

    public C2168P(LongConsumer longConsumer, boolean z) {
        super(z);
        this.f979b = longConsumer;
    }

    @Override // j$.util.stream.AbstractC2170S, j$.util.stream.InterfaceC6242p2, j$.util.stream.InterfaceC6238o2, java.util.function.LongConsumer
    public final void accept(long j) {
        this.f979b.accept(j);
    }
}
