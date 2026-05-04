package j$.util.stream;

import j$.util.Comparator;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class L2 extends AbstractC6202f2 {

    /* JADX INFO: renamed from: s */
    public final boolean f953s;

    /* JADX INFO: renamed from: t */
    public final Comparator f954t;

    public L2(AbstractC6210h2 abstractC6210h2) {
        super(abstractC6210h2, EnumC6195d3.f1111q | EnumC6195d3.f1109o);
        this.f953s = true;
        this.f954t = Comparator.CC.naturalOrder();
    }

    public L2(AbstractC6210h2 abstractC6210h2, java.util.Comparator comparator) {
        super(abstractC6210h2, EnumC6195d3.f1111q | EnumC6195d3.f1110p);
        this.f953s = false;
        this.f954t = (java.util.Comparator) Objects.requireNonNull(comparator);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        Objects.requireNonNull(interfaceC6242p2);
        if (EnumC6195d3.SORTED.m850k(i) && this.f953s) {
            return interfaceC6242p2;
        }
        if (EnumC6195d3.SIZED.m850k(i)) {
            return new Q2(interfaceC6242p2, this.f954t);
        }
        return new M2(interfaceC6242p2, this.f954t);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 A0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        if (EnumC6195d3.SORTED.m850k(((AbstractC2179b) abstractC6277y1).f1066m) && this.f953s) {
            return abstractC6277y1.d0(spliterator, false, intFunction);
        }
        Object[] objArrMo790g = abstractC6277y1.d0(spliterator, true, intFunction).mo790g(intFunction);
        Arrays.sort(objArrMo790g, this.f954t);
        return new L0(objArrMo790g);
    }
}
