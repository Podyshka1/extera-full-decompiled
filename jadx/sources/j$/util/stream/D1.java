package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public final class D1 extends AbstractC6277y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int f878h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ Object f879i;

    /* JADX INFO: renamed from: j */
    public final /* synthetic */ Object f880j;

    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object f881k;

    public /* synthetic */ D1(EnumC6199e3 enumC6199e3, Object obj, Object obj2, Object obj3, int i) {
        this.f878h = i;
        this.f880j = obj;
        this.f881k = obj2;
        this.f879i = obj3;
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final T1 r0() {
        switch (this.f878h) {
            case 0:
                return new A1((Supplier) this.f879i, (ObjLongConsumer) this.f881k, (C2194q) this.f880j);
            case 1:
                return new G1((Supplier) this.f879i, (ObjDoubleConsumer) this.f881k, (C2194q) this.f880j);
            case 2:
                return new I1(this.f879i, (BiFunction) this.f881k, (BinaryOperator) this.f880j);
            case 3:
                return new M1((Supplier) this.f879i, (BiConsumer) this.f881k, (BiConsumer) this.f880j);
            default:
                return new Q1((Supplier) this.f879i, (ObjIntConsumer) this.f881k, (C2194q) this.f880j);
        }
    }
}
