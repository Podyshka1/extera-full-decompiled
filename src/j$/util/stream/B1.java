package j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;

/* JADX INFO: loaded from: classes2.dex */
public final class B1 extends AbstractC6277y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int f863h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ Object f864i;

    public /* synthetic */ B1(EnumC6199e3 enumC6199e3, Object obj, int i) {
        this.f863h = i;
        this.f864i = obj;
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final T1 r0() {
        switch (this.f863h) {
            case 0:
                return new S1((LongBinaryOperator) this.f864i);
            case 1:
                return new E1((DoubleBinaryOperator) this.f864i);
            case 2:
                return new J1((BinaryOperator) this.f864i);
            default:
                return new P1((IntBinaryOperator) this.f864i);
        }
    }
}
