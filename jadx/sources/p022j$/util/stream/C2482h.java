package p022j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

/* JADX INFO: renamed from: j$.util.stream.h */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2482h implements Collector {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Collector f1387a;

    public /* synthetic */ C2482h(Collector collector) {
        this.f1387a = collector;
    }

    @Override // p022j$.util.stream.Collector
    public final /* synthetic */ BiConsumer accumulator() {
        return this.f1387a.accumulator();
    }

    @Override // p022j$.util.stream.Collector
    public final /* synthetic */ Set characteristics() {
        return AbstractC2450b3.m989a(this.f1387a.characteristics());
    }

    @Override // p022j$.util.stream.Collector
    public final /* synthetic */ BinaryOperator combiner() {
        return this.f1387a.combiner();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Collector collector = this.f1387a;
        if (obj instanceof C2482h) {
            obj = ((C2482h) obj).f1387a;
        }
        return collector.equals(obj);
    }

    @Override // p022j$.util.stream.Collector
    public final /* synthetic */ Function finisher() {
        return this.f1387a.finisher();
    }

    public final /* synthetic */ int hashCode() {
        return this.f1387a.hashCode();
    }

    @Override // p022j$.util.stream.Collector
    public final /* synthetic */ Supplier supplier() {
        return this.f1387a.supplier();
    }
}
