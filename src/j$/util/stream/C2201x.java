package j$.util.stream;

import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.x */
/* JADX INFO: loaded from: classes2.dex */
public final class C2201x extends AbstractC2153A {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1265s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ Object f1266t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2201x(AbstractC2179b abstractC2179b, int i, Object obj, int i2) {
        super(abstractC2179b, i);
        this.f1265s = i2;
        this.f1266t = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2201x(AbstractC2154B abstractC2154B, DoubleConsumer doubleConsumer) {
        super(abstractC2154B, 0);
        this.f1265s = 1;
        this.f1266t = doubleConsumer;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        switch (this.f1265s) {
            case 0:
                return new C2200w(this, interfaceC6242p2);
            case 1:
                return new C2195r(this, interfaceC6242p2, 5);
            case 2:
                return new C2191n(this, interfaceC6242p2, 6);
            default:
                return new C6186b2(this, interfaceC6242p2);
        }
    }
}
