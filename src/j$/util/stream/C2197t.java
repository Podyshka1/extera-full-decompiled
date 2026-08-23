package j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.t */
/* JADX INFO: loaded from: classes2.dex */
public final class C2197t extends AbstractC2153A {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1236s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2197t(AbstractC2179b abstractC2179b, int i, int i2) {
        super(abstractC2179b, i);
        this.f1236s = i2;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        switch (this.f1236s) {
            case 0:
                return new C2195r(this, interfaceC6242p2, 1);
            case 1:
                return interfaceC6242p2;
            case 2:
                return new C2195r(this, interfaceC6242p2, 4);
            case 3:
                return new C2175X(1, interfaceC6242p2);
            case 4:
                return new C2173V(this, interfaceC6242p2, 4);
            case 5:
                return new C6200f0(interfaceC6242p2);
            default:
                return new C6196e0(this, interfaceC6242p2, 3);
        }
    }
}
