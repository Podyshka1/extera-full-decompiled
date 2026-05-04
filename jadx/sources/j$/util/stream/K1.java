package j$.util.stream;

import j$.util.stream.Collector;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public final class K1 extends AbstractC6277y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ BinaryOperator f937h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ BiConsumer f938i;

    /* JADX INFO: renamed from: j */
    public final /* synthetic */ Supplier f939j;

    /* JADX INFO: renamed from: k */
    public final /* synthetic */ Collector f940k;

    @Override // j$.util.stream.AbstractC6277y1
    public final T1 r0() {
        return new L1(this.f939j, this.f938i, this.f937h);
    }

    @Override // j$.util.stream.AbstractC6277y1, j$.util.stream.M3
    /* JADX INFO: renamed from: u */
    public final int mo735u() {
        if (this.f940k.characteristics().contains(Collector.Characteristics.UNORDERED)) {
            return EnumC6195d3.f1112r;
        }
        return 0;
    }

    public K1(EnumC6199e3 enumC6199e3, BinaryOperator binaryOperator, BiConsumer biConsumer, Supplier supplier, Collector collector) {
        this.f937h = binaryOperator;
        this.f938i = biConsumer;
        this.f939j = supplier;
        this.f940k = collector;
    }
}
