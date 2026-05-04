package p022j$.util.stream;

import java.util.function.Predicate;
import java.util.function.Supplier;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.F */
/* JADX INFO: loaded from: classes2.dex */
public final class C2336F implements InterfaceC2375M3 {

    /* JADX INFO: renamed from: a */
    public final int f1125a;

    /* JADX INFO: renamed from: b */
    public final Object f1126b;

    /* JADX INFO: renamed from: c */
    public final Predicate f1127c;

    /* JADX INFO: renamed from: d */
    public final Supplier f1128d;

    public C2336F(boolean z, EnumC2468e3 enumC2468e3, Object obj, Predicate predicate, Supplier supplier) {
        this.f1125a = (z ? 0 : EnumC2462d3.f1348r) | EnumC2462d3.f1351u;
        this.f1126b = obj;
        this.f1127c = predicate;
        this.f1128d = supplier;
    }

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: u */
    public final int mo861u() {
        return this.f1125a;
    }

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: f */
    public final Object mo859f(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        InterfaceC2380N3 interfaceC2380N3 = (InterfaceC2380N3) this.f1128d.get();
        abstractC2446b.mo982s0(spliterator, interfaceC2380N3);
        Object obj = interfaceC2380N3.get();
        return obj != null ? obj : this.f1126b;
    }

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: i */
    public final Object mo860i(AbstractC2573y1 abstractC2573y1, Spliterator spliterator) {
        AbstractC2446b abstractC2446b = (AbstractC2446b) abstractC2573y1;
        return new C2366L(this, EnumC2462d3.ORDERED.m1001k(abstractC2446b.f1301m), abstractC2446b, spliterator).invoke();
    }
}
