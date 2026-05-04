package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.u */
/* JADX INFO: loaded from: classes2.dex */
public final class C2551u extends AbstractC2447b0 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1482s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2551u(AbstractC2446b abstractC2446b, int i, int i2) {
        super(abstractC2446b, i);
        this.f1482s = i2;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        switch (this.f1482s) {
            case 0:
                return new C2536r(this, interfaceC2529p2, 2);
            case 1:
                return interfaceC2529p2;
            default:
                return new C2465e0(this, interfaceC2529p2, 2);
        }
    }
}
