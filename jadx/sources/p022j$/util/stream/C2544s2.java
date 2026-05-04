package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.s2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2544s2 extends AbstractC2497j2 {

    /* JADX INFO: renamed from: b */
    public long f1469b;

    /* JADX INFO: renamed from: c */
    public long f1470c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2549t2 f1471d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2544s2(C2549t2 c2549t2, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1471d = c2549t2;
        this.f1469b = c2549t2.f1480s;
        long j = c2549t2.f1481t;
        this.f1470c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1400a.mo873m(AbstractC2314A2.m877a(j, this.f1471d.f1480s, this.f1470c));
    }

    @Override // p022j$.util.stream.InterfaceC2519n2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        long j = this.f1469b;
        if (j == 0) {
            long j2 = this.f1470c;
            if (j2 > 0) {
                this.f1470c = j2 - 1;
                this.f1400a.accept(i);
                return;
            }
            return;
        }
        this.f1469b = j - 1;
    }

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        return this.f1470c == 0 || this.f1400a.mo874p();
    }
}
