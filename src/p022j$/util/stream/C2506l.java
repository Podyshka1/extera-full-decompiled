package p022j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import p022j$.time.format.C2148a;

/* JADX INFO: renamed from: j$.util.stream.l */
/* JADX INFO: loaded from: classes2.dex */
public final class C2506l implements Collector {

    /* JADX INFO: renamed from: a */
    public final Supplier f1413a;

    /* JADX INFO: renamed from: b */
    public final BiConsumer f1414b;

    /* JADX INFO: renamed from: c */
    public final BinaryOperator f1415c;

    /* JADX INFO: renamed from: d */
    public final Function f1416d;

    /* JADX INFO: renamed from: e */
    public final Set f1417e;

    public C2506l(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator, Function function, Set set) {
        this.f1413a = supplier;
        this.f1414b = biConsumer;
        this.f1415c = binaryOperator;
        this.f1416d = function;
        this.f1417e = set;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C2506l(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator, Set set) {
        this(supplier, biConsumer, binaryOperator, new C2148a(15), set);
        Set set2 = Collectors.f1108a;
    }

    @Override // p022j$.util.stream.Collector
    public final BiConsumer accumulator() {
        return this.f1414b;
    }

    @Override // p022j$.util.stream.Collector
    public final Supplier supplier() {
        return this.f1413a;
    }

    @Override // p022j$.util.stream.Collector
    public final BinaryOperator combiner() {
        return this.f1415c;
    }

    @Override // p022j$.util.stream.Collector
    public final Function finisher() {
        return this.f1416d;
    }

    @Override // p022j$.util.stream.Collector
    public final Set characteristics() {
        return this.f1417e;
    }
}
