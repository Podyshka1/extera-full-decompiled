package j$.util.stream;

import j$.time.C2045s;
import j$.util.C2078B;
import j$.util.C2079C;
import j$.util.C2210z;
import j$.util.InterfaceC2091O;
import j$.util.InterfaceC2101Z;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public interface LongStream extends BaseStream<Long, LongStream> {
    /* JADX INFO: renamed from: a */
    LongStream mo804a(C2045s c2045s);

    InterfaceC2157E asDoubleStream();

    C2078B average();

    /* JADX INFO: renamed from: b */
    LongStream mo805b();

    Stream boxed();

    /* JADX INFO: renamed from: c */
    LongStream mo806c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    /* JADX INFO: renamed from: d */
    LongStream mo807d();

    LongStream distinct();

    /* JADX INFO: renamed from: e */
    LongStream mo808e();

    C2079C findAny();

    C2079C findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    InterfaceC2091O iterator();

    /* JADX INFO: renamed from: j */
    InterfaceC2157E mo809j();

    LongStream limit(long j);

    /* JADX INFO: renamed from: m */
    boolean mo810m();

    <U> Stream<U> mapToObj(LongFunction<? extends U> longFunction);

    C2079C max();

    C2079C min();

    /* JADX INFO: renamed from: p */
    boolean mo811p();

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    LongStream parallel();

    LongStream peek(LongConsumer longConsumer);

    long reduce(long j, LongBinaryOperator longBinaryOperator);

    C2079C reduce(LongBinaryOperator longBinaryOperator);

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    LongStream sequential();

    LongStream skip(long j);

    LongStream sorted();

    @Override // j$.util.stream.BaseStream
    InterfaceC2101Z spliterator();

    long sum();

    C2210z summaryStatistics();

    long[] toArray();

    /* JADX INFO: renamed from: v */
    boolean mo812v();

    /* JADX INFO: renamed from: x */
    IntStream mo813x();
}
