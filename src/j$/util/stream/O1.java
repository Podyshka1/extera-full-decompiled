package j$.util.stream;

import java.util.function.IntBinaryOperator;

/* JADX INFO: loaded from: classes2.dex */
public final class O1 extends AbstractC6277y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ IntBinaryOperator f974h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ int f975i;

    @Override // j$.util.stream.AbstractC6277y1
    public final T1 r0() {
        return new N1(this.f975i, this.f974h);
    }

    public O1(EnumC6199e3 enumC6199e3, IntBinaryOperator intBinaryOperator, int i) {
        this.f974h = intBinaryOperator;
        this.f975i = i;
    }
}
