package p022j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

/* JADX INFO: renamed from: j$.util.stream.i */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2488i implements Collector {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Collector f1393a;

    public /* synthetic */ C2488i(Collector collector) {
        this.f1393a = collector;
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ BiConsumer accumulator() {
        return this.f1393a.accumulator();
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Set characteristics() {
        return AbstractC2450b3.m989a(this.f1393a.characteristics());
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ BinaryOperator combiner() {
        return this.f1393a.combiner();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Collector collector = this.f1393a;
        if (obj instanceof C2488i) {
            obj = ((C2488i) obj).f1393a;
        }
        return collector.equals(obj);
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Function finisher() {
        return this.f1393a.finisher();
    }

    public final /* synthetic */ int hashCode() {
        return this.f1393a.hashCode();
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Supplier supplier() {
        return this.f1393a.supplier();
    }
}
