package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;

/* JADX INFO: loaded from: classes2.dex */
public final class U3 extends AbstractC6180a0 implements Z3 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ IntPredicate f1035s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U3(AbstractC6188c0 abstractC6188c0, int i, IntPredicate intPredicate) {
        super(abstractC6188c0, i);
        this.f1035s = intPredicate;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final Spliterator B0(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        return EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m) ? A0(abstractC2179b, spliterator, new C6192d0(17)).spliterator() : new e4((Spliterator.OfInt) abstractC2179b.u0(spliterator), this.f1035s);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 A0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        return (I0) new b4(this, abstractC6277y1, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        return new T3(this, interfaceC6242p2, false);
    }

    @Override // j$.util.stream.Z3
    /* JADX INFO: renamed from: h */
    public final a4 mo792h(A0 a0, boolean z) {
        return new T3(this, a0, z);
    }
}
