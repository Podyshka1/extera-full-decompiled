package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.v */
/* JADX INFO: loaded from: classes2.dex */
public final class C2556v extends AbstractC2501k0 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1488s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2556v(AbstractC2446b abstractC2446b, int i, int i2) {
        super(abstractC2446b, i);
        this.f1488s = i2;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        switch (this.f1488s) {
            case 0:
                return new C2536r(this, interfaceC2529p2, 3);
            case 1:
                return new C2425X(0, interfaceC2529p2);
            case 2:
                return new C2415V(this, interfaceC2529p2, 3);
            case 3:
                return new C2465e0(this, interfaceC2529p2, 1);
            case 4:
                return interfaceC2529p2;
            default:
                return new C2465e0(this, interfaceC2529p2, 4);
        }
    }
}
