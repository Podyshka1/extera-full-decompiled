package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.w2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2564w2 extends AbstractC2491i2 {

    /* JADX INFO: renamed from: b */
    public long f1498b;

    /* JADX INFO: renamed from: c */
    public long f1499c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2569x2 f1500d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2564w2(C2569x2 c2569x2, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1500d = c2569x2;
        this.f1498b = c2569x2.f1507s;
        long j = c2569x2.f1508t;
        this.f1499c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1394a.mo873m(AbstractC2314A2.m877a(j, this.f1500d.f1507s, this.f1499c));
    }

    @Override // p022j$.util.stream.InterfaceC2514m2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        long j = this.f1498b;
        if (j == 0) {
            long j2 = this.f1499c;
            if (j2 > 0) {
                this.f1499c = j2 - 1;
                this.f1394a.accept(d);
                return;
            }
            return;
        }
        this.f1498b = j - 1;
    }

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        return this.f1499c == 0 || this.f1394a.mo874p();
    }
}
