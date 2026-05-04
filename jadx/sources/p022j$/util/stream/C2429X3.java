package p022j$.util.stream;

import java.util.function.DoublePredicate;

/* JADX INFO: renamed from: j$.util.stream.X3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2429X3 extends AbstractC2491i2 {

    /* JADX INFO: renamed from: b */
    public final boolean f1278b;

    public C2429X3(C2354I2 c2354i2, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1278b = true;
    }

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1394a.mo873m(-1L);
    }

    @Override // p022j$.util.stream.InterfaceC2514m2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        if (this.f1278b) {
            DoublePredicate doublePredicate = null;
            doublePredicate.test(d);
            throw null;
        }
    }

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        return !this.f1278b || this.f1394a.mo874p();
    }
}
