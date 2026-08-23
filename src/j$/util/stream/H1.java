package j$.util.stream;

import java.util.function.DoubleBinaryOperator;

/* JADX INFO: loaded from: classes2.dex */
public final class H1 extends AbstractC6277y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ DoubleBinaryOperator f912h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ double f913i;

    @Override // j$.util.stream.AbstractC6277y1
    public final T1 r0() {
        return new C1(this.f913i, this.f912h);
    }

    public H1(EnumC6199e3 enumC6199e3, DoubleBinaryOperator doubleBinaryOperator, double d) {
        this.f912h = doubleBinaryOperator;
        this.f913i = d;
    }
}
