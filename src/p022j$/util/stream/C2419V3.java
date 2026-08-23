package p022j$.util.stream;

import java.util.function.LongPredicate;

/* JADX INFO: renamed from: j$.util.stream.V3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2419V3 extends AbstractC2503k2 {

    /* JADX INFO: renamed from: b */
    public final boolean f1273b;

    public C2419V3(C2364K2 c2364k2, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1273b = true;
    }

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1409a.mo873m(-1L);
    }

    @Override // p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        if (this.f1273b) {
            LongPredicate longPredicate = null;
            longPredicate.test(j);
            throw null;
        }
    }

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        return !this.f1273b || this.f1409a.mo874p();
    }
}
