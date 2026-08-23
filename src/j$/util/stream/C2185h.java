package j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.h */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2185h implements Collector {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.util.stream.Collector f1151a;

    public /* synthetic */ C2185h(java.util.stream.Collector collector) {
        this.f1151a = collector;
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ BiConsumer accumulator() {
        return this.f1151a.accumulator();
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Set characteristics() {
        return AbstractC6187b3.m839a(this.f1151a.characteristics());
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ BinaryOperator combiner() {
        return this.f1151a.combiner();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.util.stream.Collector collector = this.f1151a;
        if (obj instanceof C2185h) {
            obj = ((C2185h) obj).f1151a;
        }
        return collector.equals(obj);
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Function finisher() {
        return this.f1151a.finisher();
    }

    public final /* synthetic */ int hashCode() {
        return this.f1151a.hashCode();
    }

    @Override // j$.util.stream.Collector
    public final /* synthetic */ Supplier supplier() {
        return this.f1151a.supplier();
    }
}
