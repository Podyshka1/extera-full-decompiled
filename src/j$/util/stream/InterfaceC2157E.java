package j$.util.stream;

import j$.time.C2045s;
import j$.util.C2078B;
import j$.util.C2207w;
import j$.util.InterfaceC2083G;
import j$.util.InterfaceC2096U;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.E */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2157E extends BaseStream {
    /* JADX INFO: renamed from: a */
    InterfaceC2157E mo759a(C2045s c2045s);

    C2078B average();

    /* JADX INFO: renamed from: b */
    InterfaceC2157E mo760b();

    Stream boxed();

    /* JADX INFO: renamed from: c */
    InterfaceC2157E mo761c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    /* JADX INFO: renamed from: d */
    InterfaceC2157E mo762d();

    InterfaceC2157E distinct();

    /* JADX INFO: renamed from: e */
    InterfaceC2157E mo763e();

    C2078B findAny();

    C2078B findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    InterfaceC2083G iterator();

    /* JADX INFO: renamed from: l */
    boolean mo764l();

    InterfaceC2157E limit(long j);

    Stream mapToObj(DoubleFunction doubleFunction);

    C2078B max();

    C2078B min();

    InterfaceC2157E parallel();

    InterfaceC2157E peek(DoubleConsumer doubleConsumer);

    /* JADX INFO: renamed from: q */
    boolean mo765q();

    /* JADX INFO: renamed from: r */
    LongStream mo766r();

    double reduce(double d, DoubleBinaryOperator doubleBinaryOperator);

    C2078B reduce(DoubleBinaryOperator doubleBinaryOperator);

    InterfaceC2157E sequential();

    InterfaceC2157E skip(long j);

    InterfaceC2157E sorted();

    @Override // j$.util.stream.BaseStream
    InterfaceC2096U spliterator();

    double sum();

    C2207w summaryStatistics();

    double[] toArray();

    /* JADX INFO: renamed from: w */
    IntStream mo767w();

    /* JADX INFO: renamed from: y */
    boolean mo768y();
}
