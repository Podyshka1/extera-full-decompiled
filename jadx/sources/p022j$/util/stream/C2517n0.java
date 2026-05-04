package p022j$.util.stream;

import java.util.Iterator;
import java.util.LongSummaryStatistics;
import java.util.OptionalDouble;
import java.util.OptionalLong;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2184s;
import p022j$.util.C2228M;
import p022j$.util.C2229N;
import p022j$.util.C2239Y;
import p022j$.util.InterfaceC2230O;
import p022j$.util.Spliterator;
import p022j$.util.stream.IntStream;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.stream.n0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2517n0 implements LongStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ LongStream f1437a;

    public /* synthetic */ C2517n0(LongStream longStream) {
        this.f1437a = longStream;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ LongStream m1017f(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C2512m0 ? ((C2512m0) longStream).f1428a : new C2517n0(longStream);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ boolean allMatch(LongPredicate longPredicate) {
        return this.f1437a.mo950m();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ boolean anyMatch(LongPredicate longPredicate) {
        return this.f1437a.mo952v();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ DoubleStream asDoubleStream() {
        return C2326D.m910f(this.f1437a.asDoubleStream());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalDouble average() {
        return AbstractC2104a.m524J(this.f1437a.average());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ Stream boxed() {
        return Stream.Wrapper.convert(this.f1437a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f1437a.close();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f1437a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long count() {
        return this.f1437a.count();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ LongStream distinct() {
        return m1017f(this.f1437a.distinct());
    }

    public final /* synthetic */ LongStream dropWhile(LongPredicate longPredicate) {
        return m1017f(this.f1437a.mo947d());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        LongStream longStream = this.f1437a;
        if (obj instanceof C2517n0) {
            obj = ((C2517n0) obj).f1437a;
        }
        return longStream.equals(obj);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ LongStream filter(LongPredicate longPredicate) {
        return m1017f(this.f1437a.mo946c());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong findAny() {
        return AbstractC2104a.m526L(this.f1437a.findAny());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong findFirst() {
        return AbstractC2104a.m526L(this.f1437a.findFirst());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f1437a.forEach(longConsumer);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f1437a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1437a.hashCode();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f1437a.isParallel();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ Iterator<Long> iterator() {
        return this.f1437a.iterator();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* JADX INFO: renamed from: iterator, reason: avoid collision after fix types in other method */
    public final /* synthetic */ Iterator<Long> iterator2() {
        InterfaceC2230O it = this.f1437a.iterator();
        if (it == null) {
            return null;
        }
        return it instanceof C2228M ? ((C2228M) it).f909a : new C2229N(it);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ LongStream limit(long j) {
        return m1017f(this.f1437a.limit(j));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ LongStream map(LongUnaryOperator longUnaryOperator) {
        return m1017f(this.f1437a.mo948e());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ DoubleStream mapToDouble(LongToDoubleFunction longToDoubleFunction) {
        return C2326D.m910f(this.f1437a.mo949j());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ IntStream mapToInt(LongToIntFunction longToIntFunction) {
        return IntStream.Wrapper.convert(this.f1437a.mo953x());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.Stream mapToObj(LongFunction longFunction) {
        return Stream.Wrapper.convert(this.f1437a.mapToObj(longFunction));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong max() {
        return AbstractC2104a.m526L(this.f1437a.max());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong min() {
        return AbstractC2104a.m526L(this.f1437a.min());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ boolean noneMatch(LongPredicate longPredicate) {
        return this.f1437a.mo951p();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C2476g.m1009f(this.f1437a.onClose(runnable));
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return C2476g.m1009f(this.f1437a.parallel());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ LongStream parallel() {
        return m1017f(this.f1437a.parallel());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ LongStream peek(LongConsumer longConsumer) {
        return m1017f(this.f1437a.peek(longConsumer));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.f1437a.reduce(j, longBinaryOperator);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong reduce(LongBinaryOperator longBinaryOperator) {
        return AbstractC2104a.m526L(this.f1437a.reduce(longBinaryOperator));
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return C2476g.m1009f(this.f1437a.sequential());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ LongStream sequential() {
        return m1017f(this.f1437a.sequential());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ LongStream skip(long j) {
        return m1017f(this.f1437a.skip(j));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ LongStream sorted() {
        return m1017f(this.f1437a.sorted());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ Spliterator<Long> spliterator() {
        return C2239Y.m821a(this.f1437a.spliterator());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* JADX INFO: renamed from: spliterator, reason: avoid collision after fix types in other method */
    public final /* synthetic */ Spliterator<Long> spliterator2() {
        return Spliterator.Wrapper.convert(this.f1437a.spliterator());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long sum() {
        return this.f1437a.sum();
    }

    public final /* synthetic */ LongStream takeWhile(LongPredicate longPredicate) {
        return m1017f(this.f1437a.mo945b());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long[] toArray() {
        return this.f1437a.toArray();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C2476g.m1009f(this.f1437a.unordered());
    }

    @Override // java.util.stream.LongStream
    public final LongSummaryStatistics summaryStatistics() {
        this.f1437a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.LongSummaryStatistics");
    }

    @Override // java.util.stream.LongStream
    public final LongStream flatMap(LongFunction longFunction) {
        LongStream longStream = this.f1437a;
        C2184s c2184s = new C2184s(7);
        c2184s.f821b = longFunction;
        return m1017f(longStream.mo944a(c2184s));
    }
}
