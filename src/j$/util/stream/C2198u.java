package j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.u */
/* JADX INFO: loaded from: classes2.dex */
public final class C2198u extends AbstractC6184b0 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1246s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2198u(AbstractC2179b abstractC2179b, int i, int i2) {
        super(abstractC2179b, i);
        this.f1246s = i2;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        switch (this.f1246s) {
            case 0:
                return new C2195r(this, interfaceC6242p2, 2);
            case 1:
                return interfaceC6242p2;
            default:
                return new C6196e0(this, interfaceC6242p2, 2);
        }
    }
}
