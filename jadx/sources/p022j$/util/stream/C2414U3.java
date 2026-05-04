package p022j$.util.stream;

import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.U3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2414U3 extends AbstractC2441a0 implements InterfaceC2439Z3 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ IntPredicate f1270s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2414U3(AbstractC2453c0 abstractC2453c0, int i, IntPredicate intPredicate) {
        super(abstractC2453c0, i);
        this.f1270s = intPredicate;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: B0 */
    public final Spliterator mo930B0(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        return EnumC2462d3.ORDERED.m1001k(abstractC2446b.f1301m) ? mo929A0(abstractC2446b, spliterator, new C2459d0(17)).spliterator() : new C2469e4((Spliterator.OfInt) abstractC2446b.mo984u0(spliterator), this.f1270s);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: A0 */
    public final InterfaceC2352I0 mo929A0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        return (InterfaceC2352I0) new C2451b4(this, abstractC2573y1, spliterator, intFunction).invoke();
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        return new C2409T3(this, interfaceC2529p2, false);
    }

    @Override // p022j$.util.stream.InterfaceC2439Z3
    /* JADX INFO: renamed from: h */
    public final InterfaceC2445a4 mo932h(InterfaceC2312A0 interfaceC2312A0, boolean z) {
        return new C2409T3(this, interfaceC2312A0, z);
    }
}
