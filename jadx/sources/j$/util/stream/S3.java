package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;

/* JADX INFO: loaded from: classes2.dex */
public final class S3 extends AbstractC6180a0 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ IntPredicate f1013s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S3(AbstractC6188c0 abstractC6188c0, int i, IntPredicate intPredicate) {
        super(abstractC6188c0, i);
        this.f1013s = intPredicate;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final Spliterator B0(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        return EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m) ? A0(abstractC2179b, spliterator, new C6192d0(16)).spliterator() : new f4((Spliterator.OfInt) abstractC2179b.u0(spliterator), this.f1013s);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 A0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        return (I0) new c4(this, abstractC6277y1, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        return new R3(this, interfaceC6242p2);
    }
}
