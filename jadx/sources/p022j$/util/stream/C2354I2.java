package p022j$.util.stream;

import java.util.Arrays;
import java.util.function.IntFunction;
import p022j$.util.InterfaceC2235U;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.I2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2354I2 extends AbstractC2576z implements InterfaceC2439Z3 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1155s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2354I2(AbstractC2446b abstractC2446b, int i, int i2) {
        super(abstractC2446b, i);
        this.f1155s = i2;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: B0 */
    public Spliterator mo930B0(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        switch (this.f1155s) {
            case 1:
                return EnumC2462d3.ORDERED.m1001k(abstractC2446b.f1301m) ? mo929A0(abstractC2446b, spliterator, new C2459d0(20)).spliterator() : new C2463d4((InterfaceC2235U) abstractC2446b.mo984u0(spliterator), 1);
            case 2:
                return EnumC2462d3.ORDERED.m1001k(abstractC2446b.f1301m) ? mo929A0(abstractC2446b, spliterator, new C2459d0(21)).spliterator() : new C2463d4((InterfaceC2235U) abstractC2446b.mo984u0(spliterator), 0);
            default:
                return super.mo930B0(abstractC2446b, spliterator);
        }
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: A0 */
    public final InterfaceC2352I0 mo929A0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        switch (this.f1155s) {
            case 0:
                if (EnumC2462d3.SORTED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m)) {
                    return abstractC2573y1.mo980d0(spliterator, false, intFunction);
                }
                double[] dArr = (double[]) ((InterfaceC2322C0) abstractC2573y1.mo980d0(spliterator, true, intFunction)).mo920b();
                Arrays.sort(dArr);
                return new C2411U0(dArr);
            case 1:
                return (InterfaceC2352I0) new C2457c4(this, abstractC2573y1, spliterator, intFunction).invoke();
            default:
                return (InterfaceC2352I0) new C2451b4(this, abstractC2573y1, spliterator, intFunction).invoke();
        }
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        switch (this.f1155s) {
            case 0:
                Objects.requireNonNull(interfaceC2529p2);
                if (EnumC2462d3.SORTED.m1001k(i)) {
                    return interfaceC2529p2;
                }
                return EnumC2462d3.SIZED.m1001k(i) ? new C2379N2(interfaceC2529p2) : new C2339F2(interfaceC2529p2);
            case 1:
                return new C2429X3(this, interfaceC2529p2);
            default:
                return new C2434Y3(this, interfaceC2529p2, false);
        }
    }

    @Override // p022j$.util.stream.InterfaceC2439Z3
    /* JADX INFO: renamed from: h */
    public InterfaceC2445a4 mo932h(InterfaceC2312A0 interfaceC2312A0, boolean z) {
        return new C2434Y3(this, interfaceC2312A0, z);
    }
}
