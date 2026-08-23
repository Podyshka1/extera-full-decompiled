package p022j$.util.stream;

import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.stream.h0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2483h0 extends AbstractC2501k0 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1388s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ Object f1389t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2483h0(AbstractC2446b abstractC2446b, int i, Object obj, int i2) {
        super(abstractC2446b, i);
        this.f1388s = i2;
        this.f1389t = obj;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        switch (this.f1388s) {
            case 0:
                return new C2477g0(this, interfaceC2529p2);
            case 1:
                return new C2465e0(this, interfaceC2529p2, 5);
            case 2:
                return new C2449b2(this, interfaceC2529p2);
            default:
                return new C2516n(this, interfaceC2529p2, 5);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2483h0(AbstractC2507l0 abstractC2507l0, LongConsumer longConsumer) {
        super(abstractC2507l0, 0);
        this.f1388s = 1;
        this.f1389t = longConsumer;
    }
}
