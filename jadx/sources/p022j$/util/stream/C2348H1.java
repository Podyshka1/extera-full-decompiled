package p022j$.util.stream;

import java.util.function.DoubleBinaryOperator;

/* JADX INFO: renamed from: j$.util.stream.H1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2348H1 extends AbstractC2573y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ DoubleBinaryOperator f1147h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ double f1148i;

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: r0 */
    public final InterfaceC2407T1 mo905r0() {
        return new C2323C1(this.f1148i, this.f1147h);
    }

    public C2348H1(EnumC2468e3 enumC2468e3, DoubleBinaryOperator doubleBinaryOperator, double d) {
        this.f1147h = doubleBinaryOperator;
        this.f1148i = d;
    }
}
