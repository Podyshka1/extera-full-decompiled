package p022j$.util.stream;

import java.util.function.IntBinaryOperator;

/* JADX INFO: renamed from: j$.util.stream.O1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2383O1 extends AbstractC2573y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ IntBinaryOperator f1209h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ int f1210i;

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: r0 */
    public final InterfaceC2407T1 mo905r0() {
        return new C2378N1(this.f1210i, this.f1209h);
    }

    public C2383O1(EnumC2468e3 enumC2468e3, IntBinaryOperator intBinaryOperator, int i) {
        this.f1209h = intBinaryOperator;
        this.f1210i = i;
    }
}
