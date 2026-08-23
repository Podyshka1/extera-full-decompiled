package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.t */
/* JADX INFO: loaded from: classes2.dex */
public final class C2546t extends AbstractC2311A {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1472s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2546t(AbstractC2446b abstractC2446b, int i, int i2) {
        super(abstractC2446b, i);
        this.f1472s = i2;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        switch (this.f1472s) {
            case 0:
                return new C2536r(this, interfaceC2529p2, 1);
            case 1:
                return interfaceC2529p2;
            case 2:
                return new C2536r(this, interfaceC2529p2, 4);
            case 3:
                return new C2425X(1, interfaceC2529p2);
            case 4:
                return new C2415V(this, interfaceC2529p2, 4);
            case 5:
                return new C2471f0(interfaceC2529p2);
            default:
                return new C2465e0(this, interfaceC2529p2, 3);
        }
    }
}
