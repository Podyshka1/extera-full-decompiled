package p022j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;
import p022j$.util.stream.Collector;

/* JADX INFO: renamed from: j$.util.stream.K1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2363K1 extends AbstractC2573y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ BinaryOperator f1172h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ BiConsumer f1173i;

    /* JADX INFO: renamed from: j */
    public final /* synthetic */ Supplier f1174j;

    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Collector f1175k;

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: r0 */
    public final InterfaceC2407T1 mo905r0() {
        return new C2368L1(this.f1174j, this.f1173i, this.f1172h);
    }

    @Override // p022j$.util.stream.AbstractC2573y1, p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: u */
    public final int mo861u() {
        if (this.f1175k.characteristics().contains(Collector.Characteristics.UNORDERED)) {
            return EnumC2462d3.f1348r;
        }
        return 0;
    }

    public C2363K1(EnumC2468e3 enumC2468e3, BinaryOperator binaryOperator, BiConsumer biConsumer, Supplier supplier, Collector collector) {
        this.f1172h = binaryOperator;
        this.f1173i = biConsumer;
        this.f1174j = supplier;
        this.f1175k = collector;
    }
}
