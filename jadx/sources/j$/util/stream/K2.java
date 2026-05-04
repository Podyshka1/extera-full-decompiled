package j$.util.stream;

import j$.util.InterfaceC2101Z;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class K2 extends AbstractC6216j0 implements Z3 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f941s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ K2(AbstractC2179b abstractC2179b, int i, int i2) {
        super(abstractC2179b, i);
        this.f941s = i2;
    }

    @Override // j$.util.stream.AbstractC2179b
    public Spliterator B0(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        switch (this.f941s) {
            case 1:
                return EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m) ? A0(abstractC2179b, spliterator, new C6192d0(18)).spliterator() : new h4((InterfaceC2101Z) abstractC2179b.u0(spliterator), 1);
            case 2:
                return EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m) ? A0(abstractC2179b, spliterator, new C6192d0(19)).spliterator() : new h4((InterfaceC2101Z) abstractC2179b.u0(spliterator), 0);
            default:
                return super.B0(abstractC2179b, spliterator);
        }
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 A0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        switch (this.f941s) {
            case 0:
                if (EnumC6195d3.SORTED.m850k(((AbstractC2179b) abstractC6277y1).f1066m)) {
                    return abstractC6277y1.d0(spliterator, false, intFunction);
                }
                long[] jArr = (long[]) ((G0) abstractC6277y1.d0(spliterator, true, intFunction)).mo783b();
                Arrays.sort(jArr);
                return new C6229m1(jArr);
            case 1:
                return (I0) new c4(this, abstractC6277y1, spliterator, intFunction).invoke();
            default:
                return (I0) new b4(this, abstractC6277y1, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        switch (this.f941s) {
            case 0:
                Objects.requireNonNull(interfaceC6242p2);
                if (EnumC6195d3.SORTED.m850k(i)) {
                    return interfaceC6242p2;
                }
                return EnumC6195d3.SIZED.m850k(i) ? new P2(interfaceC6242p2) : new H2(interfaceC6242p2);
            case 1:
                return new V3(this, interfaceC6242p2);
            default:
                return new W3(this, interfaceC6242p2, false);
        }
    }

    @Override // j$.util.stream.Z3
    /* JADX INFO: renamed from: h */
    public a4 mo792h(A0 a0, boolean z) {
        return new W3(this, a0, z);
    }
}
