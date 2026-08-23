package p022j$.util.stream;

import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.s */
/* JADX INFO: loaded from: classes2.dex */
public final class C2541s extends AbstractC2479g2 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1466s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ Object f1467t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2541s(AbstractC2446b abstractC2446b, int i, Object obj, int i2) {
        super(abstractC2446b, i);
        this.f1466s = i2;
        this.f1467t = obj;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        switch (this.f1466s) {
            case 0:
                return new C2536r(this, interfaceC2529p2, 0);
            case 1:
                return new C2415V(this, interfaceC2529p2, 0);
            case 2:
                return new C2465e0(this, interfaceC2529p2, 0);
            case 3:
                return new C2516n(this, interfaceC2529p2, 1);
            case 4:
                return new C2516n(this, interfaceC2529p2, 2);
            case 5:
                return new C2516n(this, interfaceC2529p2, 3);
            default:
                return new C2511m(this, interfaceC2529p2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2541s(AbstractC2485h2 abstractC2485h2, Consumer consumer) {
        super(abstractC2485h2, 0);
        this.f1466s = 3;
        this.f1467t = consumer;
    }
}
