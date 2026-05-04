package p022j$.util.stream;

import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.stream.x */
/* JADX INFO: loaded from: classes2.dex */
public final class C2566x extends AbstractC2311A {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1501s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ Object f1502t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2566x(AbstractC2446b abstractC2446b, int i, Object obj, int i2) {
        super(abstractC2446b, i);
        this.f1501s = i2;
        this.f1502t = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2566x(AbstractC2316B abstractC2316B, DoubleConsumer doubleConsumer) {
        super(abstractC2316B, 0);
        this.f1501s = 1;
        this.f1502t = doubleConsumer;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        switch (this.f1501s) {
            case 0:
                return new C2561w(this, interfaceC2529p2);
            case 1:
                return new C2536r(this, interfaceC2529p2, 5);
            case 2:
                return new C2516n(this, interfaceC2529p2, 6);
            default:
                return new C2449b2(this, interfaceC2529p2);
        }
    }
}
