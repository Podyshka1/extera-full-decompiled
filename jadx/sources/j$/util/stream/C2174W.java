package j$.util.stream;

import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.W */
/* JADX INFO: loaded from: classes2.dex */
public final class C2174W extends AbstractC6184b0 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1039s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ Object f1040t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2174W(AbstractC2179b abstractC2179b, int i, Object obj, int i2) {
        super(abstractC2179b, i);
        this.f1039s = i2;
        this.f1040t = obj;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        switch (this.f1039s) {
            case 0:
                return new C2173V(this, interfaceC6242p2, 1);
            case 1:
                return new C2173V(this, interfaceC6242p2, 2);
            case 2:
                return new C2176Y(this, interfaceC6242p2);
            case 3:
                return new C2173V(this, interfaceC6242p2, 5);
            case 4:
                return new C2191n(this, interfaceC6242p2, 4);
            default:
                return new C6194d2(this, interfaceC6242p2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2174W(AbstractC6188c0 abstractC6188c0, IntConsumer intConsumer) {
        super(abstractC6188c0, 0);
        this.f1039s = 0;
        this.f1040t = intConsumer;
    }
}
