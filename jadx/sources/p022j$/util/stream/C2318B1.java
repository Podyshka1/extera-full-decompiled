package p022j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;

/* JADX INFO: renamed from: j$.util.stream.B1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2318B1 extends AbstractC2573y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int f1098h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ Object f1099i;

    public /* synthetic */ C2318B1(EnumC2468e3 enumC2468e3, Object obj, int i) {
        this.f1098h = i;
        this.f1099i = obj;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: r0 */
    public final InterfaceC2407T1 mo905r0() {
        switch (this.f1098h) {
            case 0:
                return new C2402S1((LongBinaryOperator) this.f1099i);
            case 1:
                return new C2333E1((DoubleBinaryOperator) this.f1099i);
            case 2:
                return new C2358J1((BinaryOperator) this.f1099i);
            default:
                return new C2388P1((IntBinaryOperator) this.f1099i);
        }
    }
}
