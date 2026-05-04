package p022j$.util.stream;

import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.stream.W */
/* JADX INFO: loaded from: classes2.dex */
public final class C2420W extends AbstractC2447b0 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1274s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ Object f1275t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2420W(AbstractC2446b abstractC2446b, int i, Object obj, int i2) {
        super(abstractC2446b, i);
        this.f1274s = i2;
        this.f1275t = obj;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        switch (this.f1274s) {
            case 0:
                return new C2415V(this, interfaceC2529p2, 1);
            case 1:
                return new C2415V(this, interfaceC2529p2, 2);
            case 2:
                return new C2430Y(this, interfaceC2529p2);
            case 3:
                return new C2415V(this, interfaceC2529p2, 5);
            case 4:
                return new C2516n(this, interfaceC2529p2, 4);
            default:
                return new C2461d2(this, interfaceC2529p2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2420W(AbstractC2453c0 abstractC2453c0, IntConsumer intConsumer) {
        super(abstractC2453c0, 0);
        this.f1274s = 0;
        this.f1275t = intConsumer;
    }
}
