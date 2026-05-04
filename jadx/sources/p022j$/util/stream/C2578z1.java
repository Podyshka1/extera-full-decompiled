package p022j$.util.stream;

import java.util.function.LongBinaryOperator;

/* JADX INFO: renamed from: j$.util.stream.z1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2578z1 extends AbstractC2573y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ LongBinaryOperator f1522h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ long f1523i;

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: r0 */
    public final InterfaceC2407T1 mo905r0() {
        return new C2397R1(this.f1523i, this.f1522h);
    }

    public C2578z1(EnumC2468e3 enumC2468e3, LongBinaryOperator longBinaryOperator, long j) {
        this.f1522h = longBinaryOperator;
        this.f1523i = j;
    }
}
