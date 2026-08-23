package p022j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;
import p022j$.util.Comparator;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.L2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2369L2 extends AbstractC2473f2 {

    /* JADX INFO: renamed from: s */
    public final boolean f1188s;

    /* JADX INFO: renamed from: t */
    public final Comparator f1189t;

    public C2369L2(AbstractC2485h2 abstractC2485h2) {
        super(abstractC2485h2, EnumC2462d3.f1347q | EnumC2462d3.f1345o);
        this.f1188s = true;
        this.f1189t = Comparator.CC.naturalOrder();
    }

    public C2369L2(AbstractC2485h2 abstractC2485h2, java.util.Comparator comparator) {
        super(abstractC2485h2, EnumC2462d3.f1347q | EnumC2462d3.f1346p);
        this.f1188s = false;
        this.f1189t = (java.util.Comparator) Objects.requireNonNull(comparator);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        Objects.requireNonNull(interfaceC2529p2);
        if (EnumC2462d3.SORTED.m1001k(i) && this.f1188s) {
            return interfaceC2529p2;
        }
        if (EnumC2462d3.SIZED.m1001k(i)) {
            return new C2394Q2(interfaceC2529p2, this.f1189t);
        }
        return new C2374M2(interfaceC2529p2, this.f1189t);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: A0 */
    public final InterfaceC2352I0 mo929A0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC2462d3.SORTED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m) && this.f1188s) {
            return abstractC2573y1.mo980d0(spliterator, false, intFunction);
        }
        Object[] objArrMo927g = abstractC2573y1.mo980d0(spliterator, true, intFunction).mo927g(intFunction);
        Arrays.sort(objArrMo927g, this.f1189t);
        return new C2367L0(objArrMo927g);
    }
}
