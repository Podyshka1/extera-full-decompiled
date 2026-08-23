package p022j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import p022j$.time.C2184s;
import p022j$.util.C2217B;
import p022j$.util.C2218C;
import p022j$.util.C2588z;
import p022j$.util.InterfaceC2230O;
import p022j$.util.InterfaceC2240Z;

/* JADX INFO: loaded from: classes2.dex */
public interface LongStream extends BaseStream<Long, LongStream> {
    /* JADX INFO: renamed from: a */
    LongStream mo944a(C2184s c2184s);

    InterfaceC2331E asDoubleStream();

    C2217B average();

    /* JADX INFO: renamed from: b */
    LongStream mo945b();

    Stream boxed();

    /* JADX INFO: renamed from: c */
    LongStream mo946c();

    Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer);

    long count();

    /* JADX INFO: renamed from: d */
    LongStream mo947d();

    LongStream distinct();

    /* JADX INFO: renamed from: e */
    LongStream mo948e();

    C2218C findAny();

    C2218C findFirst();

    void forEach(LongConsumer longConsumer);

    void forEachOrdered(LongConsumer longConsumer);

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    InterfaceC2230O iterator();

    /* JADX INFO: renamed from: j */
    InterfaceC2331E mo949j();

    LongStream limit(long j);

    /* JADX INFO: renamed from: m */
    boolean mo950m();

    <U> Stream<U> mapToObj(LongFunction<? extends U> longFunction);

    C2218C max();

    C2218C min();

    /* JADX INFO: renamed from: p */
    boolean mo951p();

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    LongStream parallel();

    LongStream peek(LongConsumer longConsumer);

    long reduce(long j, LongBinaryOperator longBinaryOperator);

    C2218C reduce(LongBinaryOperator longBinaryOperator);

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    LongStream sequential();

    LongStream skip(long j);

    LongStream sorted();

    @Override // p022j$.util.stream.BaseStream
    InterfaceC2240Z spliterator();

    long sum();

    C2588z summaryStatistics();

    long[] toArray();

    /* JADX INFO: renamed from: v */
    boolean mo952v();

    /* JADX INFO: renamed from: x */
    IntStream mo953x();
}
