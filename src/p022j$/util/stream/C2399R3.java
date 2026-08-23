package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.R3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2399R3 extends AbstractC2497j2 {

    /* JADX INFO: renamed from: b */
    public boolean f1241b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ C2404S3 f1242c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2399R3(C2404S3 c2404s3, InterfaceC2529p2 interfaceC2529p2) {
        super(interfaceC2529p2);
        this.f1242c = c2404s3;
        this.f1241b = true;
    }

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        this.f1400a.mo873m(-1L);
    }

    @Override // p022j$.util.stream.InterfaceC2519n2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        if (this.f1241b) {
            boolean zTest = this.f1242c.f1248s.test(i);
            this.f1241b = zTest;
            if (zTest) {
                this.f1400a.accept(i);
            }
        }
    }

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: p */
    public final boolean mo874p() {
        return !this.f1241b || this.f1400a.mo874p();
    }
}
