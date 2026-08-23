package j$.util.stream;

import j$.time.format.C2009a;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.l */
/* JADX INFO: loaded from: classes2.dex */
public final class C2189l implements Collector {

    /* JADX INFO: renamed from: a */
    public final Supplier f1177a;

    /* JADX INFO: renamed from: b */
    public final BiConsumer f1178b;

    /* JADX INFO: renamed from: c */
    public final BinaryOperator f1179c;

    /* JADX INFO: renamed from: d */
    public final Function f1180d;

    /* JADX INFO: renamed from: e */
    public final Set f1181e;

    public C2189l(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator, Function function, Set set) {
        this.f1177a = supplier;
        this.f1178b = biConsumer;
        this.f1179c = binaryOperator;
        this.f1180d = function;
        this.f1181e = set;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C2189l(Supplier supplier, BiConsumer biConsumer, BinaryOperator binaryOperator, Set set) {
        this(supplier, biConsumer, binaryOperator, new C2009a(15), set);
        Set set2 = Collectors.f873a;
    }

    @Override // j$.util.stream.Collector
    public final BiConsumer accumulator() {
        return this.f1178b;
    }

    @Override // j$.util.stream.Collector
    public final Supplier supplier() {
        return this.f1177a;
    }

    @Override // j$.util.stream.Collector
    public final BinaryOperator combiner() {
        return this.f1179c;
    }

    @Override // j$.util.stream.Collector
    public final Function finisher() {
        return this.f1180d;
    }

    @Override // j$.util.stream.Collector
    public final Set characteristics() {
        return this.f1181e;
    }
}
