package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.q2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2534q2 extends AbstractC2509l2 {

    /* JADX INFO: renamed from: b */
    public long f1454b;

    /* JADX INFO: renamed from: c */
    public long f1455c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2539r2 f1456d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2534q2(C2539r2 c2539r2, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1456d = c2539r2;
        this.f1454b = c2539r2.f1462s;
        long j = c2539r2.f1463t;
        this.f1455c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1423a.mo873m(AbstractC2314A2.m877a(j, this.f1456d.f1462s, this.f1455c));
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        long j = this.f1454b;
        if (j == 0) {
            long j2 = this.f1455c;
            if (j2 > 0) {
                this.f1455c = j2 - 1;
                this.f1423a.accept(obj);
                return;
            }
            return;
        }
        this.f1454b = j - 1;
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        return this.f1455c == 0 || this.f1423a.mo874p();
    }
}
