package p022j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import p022j$.time.C2184s;
import p022j$.util.C2217B;
import p022j$.util.C2585w;
import p022j$.util.InterfaceC2222G;
import p022j$.util.InterfaceC2235U;

/* JADX INFO: renamed from: j$.util.stream.E */
/* JADX INFO: loaded from: classes2.dex */
public interface InterfaceC2331E extends BaseStream {
    /* JADX INFO: renamed from: a */
    InterfaceC2331E mo890a(C2184s c2184s);

    C2217B average();

    /* JADX INFO: renamed from: b */
    InterfaceC2331E mo891b();

    Stream boxed();

    /* JADX INFO: renamed from: c */
    InterfaceC2331E mo892c();

    Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer);

    long count();

    /* JADX INFO: renamed from: d */
    InterfaceC2331E mo893d();

    InterfaceC2331E distinct();

    /* JADX INFO: renamed from: e */
    InterfaceC2331E mo894e();

    C2217B findAny();

    C2217B findFirst();

    void forEach(DoubleConsumer doubleConsumer);

    void forEachOrdered(DoubleConsumer doubleConsumer);

    InterfaceC2222G iterator();

    /* JADX INFO: renamed from: l */
    boolean mo895l();

    InterfaceC2331E limit(long j);

    Stream mapToObj(DoubleFunction doubleFunction);

    C2217B max();

    C2217B min();

    InterfaceC2331E parallel();

    InterfaceC2331E peek(DoubleConsumer doubleConsumer);

    /* JADX INFO: renamed from: q */
    boolean mo897q();

    /* JADX INFO: renamed from: r */
    LongStream mo898r();

    double reduce(double d, DoubleBinaryOperator doubleBinaryOperator);

    C2217B reduce(DoubleBinaryOperator doubleBinaryOperator);

    InterfaceC2331E sequential();

    InterfaceC2331E skip(long j);

    InterfaceC2331E sorted();

    @Override // p022j$.util.stream.BaseStream
    InterfaceC2235U spliterator();

    double sum();

    C2585w summaryStatistics();

    double[] toArray();

    /* JADX INFO: renamed from: w */
    IntStream mo899w();

    /* JADX INFO: renamed from: y */
    boolean mo901y();
}
