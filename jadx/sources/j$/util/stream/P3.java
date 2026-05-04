package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public final class P3 extends AbstractC6202f2 implements Z3 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f985s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ Predicate f986t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ P3(AbstractC6210h2 abstractC6210h2, int i, Predicate predicate, int i2) {
        super(abstractC6210h2, i);
        this.f985s = i2;
        this.f986t = predicate;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final Spliterator B0(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        switch (this.f985s) {
            case 0:
                return EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m) ? A0(abstractC2179b, spliterator, new C6192d0(2)).spliterator() : new i4(abstractC2179b.u0(spliterator), this.f986t, 1);
            default:
                return EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m) ? A0(abstractC2179b, spliterator, new C6192d0(2)).spliterator() : new i4(abstractC2179b.u0(spliterator), this.f986t, 0);
        }
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 A0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        switch (this.f985s) {
            case 0:
                return (I0) new c4(this, abstractC6277y1, spliterator, intFunction).invoke();
            default:
                return (I0) new b4(this, abstractC6277y1, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        switch (this.f985s) {
            case 0:
                return new C2190m(this, interfaceC6242p2);
            default:
                return new Q3(this, interfaceC6242p2, false);
        }
    }

    @Override // j$.util.stream.Z3
    /* JADX INFO: renamed from: h */
    public a4 mo792h(A0 a0, boolean z) {
        return new Q3(this, a0, z);
    }
}
