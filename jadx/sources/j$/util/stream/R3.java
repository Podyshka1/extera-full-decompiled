package j$.util.stream;

/* JADX INFO: loaded from: classes2.dex */
public final class R3 extends AbstractC6218j2 {

    /* JADX INFO: renamed from: b */
    public boolean f1006b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ S3 f1007c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public R3(S3 s3, InterfaceC6242p2 interfaceC6242p2) {
        super(interfaceC6242p2);
        this.f1007c = s3;
        this.f1006b = true;
    }

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        this.f1164a.mo744m(-1L);
    }

    @Override // j$.util.stream.InterfaceC6234n2, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        if (this.f1006b) {
            boolean zTest = this.f1007c.f1013s.test(i);
            this.f1006b = zTest;
            if (zTest) {
                this.f1164a.accept(i);
            }
        }
    }

    @Override // j$.util.stream.AbstractC6218j2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: p */
    public final boolean mo745p() {
        return !this.f1006b || this.f1164a.mo745p();
    }
}
