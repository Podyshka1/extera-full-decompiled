package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.i */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2186i implements java.util.stream.Collector {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Collector f1157a;

    public /* synthetic */ C2186i(Collector collector) {
        this.f1157a = collector;
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ BiConsumer accumulator() {
        return this.f1157a.accumulator();
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Set characteristics() {
        return AbstractC6187b3.m839a(this.f1157a.characteristics());
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ BinaryOperator combiner() {
        return this.f1157a.combiner();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Collector collector = this.f1157a;
        if (obj instanceof C2186i) {
            obj = ((C2186i) obj).f1157a;
        }
        return collector.equals(obj);
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Function finisher() {
        return this.f1157a.finisher();
    }

    public final /* synthetic */ int hashCode() {
        return this.f1157a.hashCode();
    }

    @Override // java.util.stream.Collector
    public final /* synthetic */ Supplier supplier() {
        return this.f1157a.supplier();
    }
}
