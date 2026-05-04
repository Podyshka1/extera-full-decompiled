package j$.util.stream;

import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6208h0 extends AbstractC6220k0 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1152s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ Object f1153t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C6208h0(AbstractC2179b abstractC2179b, int i, Object obj, int i2) {
        super(abstractC2179b, i);
        this.f1152s = i2;
        this.f1153t = obj;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        switch (this.f1152s) {
            case 0:
                return new C6204g0(this, interfaceC6242p2);
            case 1:
                return new C6196e0(this, interfaceC6242p2, 5);
            case 2:
                return new C6186b2(this, interfaceC6242p2);
            default:
                return new C2191n(this, interfaceC6242p2, 5);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6208h0(AbstractC6224l0 abstractC6224l0, LongConsumer longConsumer) {
        super(abstractC6224l0, 0);
        this.f1152s = 1;
        this.f1153t = longConsumer;
    }
}
