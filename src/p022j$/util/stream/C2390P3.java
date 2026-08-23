package p022j$.util.stream;

import java.util.function.IntFunction;
import java.util.function.Predicate;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.P3 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2390P3 extends AbstractC2473f2 implements InterfaceC2439Z3 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1220s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ Predicate f1221t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2390P3(AbstractC2485h2 abstractC2485h2, int i, Predicate predicate, int i2) {
        super(abstractC2485h2, i);
        this.f1220s = i2;
        this.f1221t = predicate;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: B0 */
    public final Spliterator mo930B0(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        switch (this.f1220s) {
            case 0:
                return EnumC2462d3.ORDERED.m1001k(abstractC2446b.f1301m) ? mo929A0(abstractC2446b, spliterator, new C2459d0(2)).spliterator() : new C2493i4(abstractC2446b.mo984u0(spliterator), this.f1221t, 1);
            default:
                return EnumC2462d3.ORDERED.m1001k(abstractC2446b.f1301m) ? mo929A0(abstractC2446b, spliterator, new C2459d0(2)).spliterator() : new C2493i4(abstractC2446b.mo984u0(spliterator), this.f1221t, 0);
        }
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: A0 */
    public final InterfaceC2352I0 mo929A0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        switch (this.f1220s) {
            case 0:
                return (InterfaceC2352I0) new C2457c4(this, abstractC2573y1, spliterator, intFunction).invoke();
            default:
                return (InterfaceC2352I0) new C2451b4(this, abstractC2573y1, spliterator, intFunction).invoke();
        }
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        switch (this.f1220s) {
            case 0:
                return new C2511m(this, interfaceC2529p2);
            default:
                return new C2395Q3(this, interfaceC2529p2, false);
        }
    }

    @Override // p022j$.util.stream.InterfaceC2439Z3
    /* JADX INFO: renamed from: h */
    public InterfaceC2445a4 mo932h(InterfaceC2312A0 interfaceC2312A0, boolean z) {
        return new C2395Q3(this, interfaceC2312A0, z);
    }
}
