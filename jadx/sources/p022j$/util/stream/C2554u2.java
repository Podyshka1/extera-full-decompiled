package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.u2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2554u2 extends AbstractC2503k2 {

    /* JADX INFO: renamed from: b */
    public long f1485b;

    /* JADX INFO: renamed from: c */
    public long f1486c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2559v2 f1487d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2554u2(C2559v2 c2559v2, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1487d = c2559v2;
        this.f1485b = c2559v2.f1492s;
        long j = c2559v2.f1493t;
        this.f1486c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1409a.mo873m(AbstractC2314A2.m877a(j, this.f1487d.f1492s, this.f1486c));
    }

    @Override // p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        long j2 = this.f1485b;
        if (j2 == 0) {
            long j3 = this.f1486c;
            if (j3 > 0) {
                this.f1486c = j3 - 1;
                this.f1409a.accept(j);
                return;
            }
            return;
        }
        this.f1485b = j2 - 1;
    }

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        return this.f1486c == 0 || this.f1409a.mo874p();
    }
}
