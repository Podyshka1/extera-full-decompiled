package p022j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.D1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2328D1 extends AbstractC2573y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int f1113h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ Object f1114i;

    /* JADX INFO: renamed from: j */
    public final /* synthetic */ Object f1115j;

    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Object f1116k;

    public /* synthetic */ C2328D1(EnumC2468e3 enumC2468e3, Object obj, Object obj2, Object obj3, int i) {
        this.f1113h = i;
        this.f1115j = obj;
        this.f1116k = obj2;
        this.f1114i = obj3;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: r0 */
    public final InterfaceC2407T1 mo905r0() {
        switch (this.f1113h) {
            case 0:
                return new C2313A1((Supplier) this.f1114i, (ObjLongConsumer) this.f1116k, (C2531q) this.f1115j);
            case 1:
                return new C2343G1((Supplier) this.f1114i, (ObjDoubleConsumer) this.f1116k, (C2531q) this.f1115j);
            case 2:
                return new C2353I1(this.f1114i, (BiFunction) this.f1116k, (BinaryOperator) this.f1115j);
            case 3:
                return new C2373M1((Supplier) this.f1114i, (BiConsumer) this.f1116k, (BiConsumer) this.f1115j);
            default:
                return new C2393Q1((Supplier) this.f1114i, (ObjIntConsumer) this.f1116k, (C2531q) this.f1115j);
        }
    }
}
