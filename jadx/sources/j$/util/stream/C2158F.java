package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.F */
/* JADX INFO: loaded from: classes2.dex */
public final class C2158F implements M3 {

    /* JADX INFO: renamed from: a */
    public final int f890a;

    /* JADX INFO: renamed from: b */
    public final Object f891b;

    /* JADX INFO: renamed from: c */
    public final Predicate f892c;

    /* JADX INFO: renamed from: d */
    public final Supplier f893d;

    public C2158F(boolean z, EnumC6199e3 enumC6199e3, Object obj, Predicate predicate, Supplier supplier) {
        this.f890a = (z ? 0 : EnumC6195d3.f1112r) | EnumC6195d3.f1115u;
        this.f891b = obj;
        this.f892c = predicate;
        this.f893d = supplier;
    }

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: u */
    public final int mo735u() {
        return this.f890a;
    }

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: f */
    public final Object mo733f(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        N3 n3 = (N3) this.f893d.get();
        abstractC2179b.s0(spliterator, n3);
        Object obj = n3.get();
        return obj != null ? obj : this.f891b;
    }

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: i */
    public final Object mo734i(AbstractC6277y1 abstractC6277y1, Spliterator spliterator) {
        AbstractC2179b abstractC2179b = (AbstractC2179b) abstractC6277y1;
        return new C2164L(this, EnumC6195d3.ORDERED.m850k(abstractC2179b.f1066m), abstractC2179b, spliterator).invoke();
    }
}
