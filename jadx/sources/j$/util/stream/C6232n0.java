package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2045s;
import j$.util.C2089M;
import j$.util.C2090N;
import j$.util.C2100Y;
import j$.util.InterfaceC2091O;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
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
import java.util.stream.DoubleStream;

/* JADX INFO: renamed from: j$.util.stream.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C6232n0 implements java.util.stream.LongStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ LongStream f1201a;

    public /* synthetic */ C6232n0(LongStream longStream) {
        this.f1201a = longStream;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ java.util.stream.LongStream m865f(LongStream longStream) {
        if (longStream == null) {
            return null;
        }
        return longStream instanceof C6228m0 ? ((C6228m0) longStream).f1192a : new C6232n0(longStream);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ boolean allMatch(LongPredicate longPredicate) {
        return this.f1201a.mo810m();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ boolean anyMatch(LongPredicate longPredicate) {
        return this.f1201a.mo812v();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ DoubleStream asDoubleStream() {
        return C2156D.m773f(this.f1201a.asDoubleStream());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalDouble average() {
        return AbstractC1965a.m404J(this.f1201a.average());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.Stream boxed() {
        return Stream.Wrapper.convert(this.f1201a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f1201a.close();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        return this.f1201a.collect(supplier, objLongConsumer, biConsumer);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long count() {
        return this.f1201a.count();
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream distinct() {
        return m865f(this.f1201a.distinct());
    }

    public final /* synthetic */ java.util.stream.LongStream dropWhile(LongPredicate longPredicate) {
        return m865f(this.f1201a.mo807d());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        LongStream longStream = this.f1201a;
        if (obj instanceof C6232n0) {
            obj = ((C6232n0) obj).f1201a;
        }
        return longStream.equals(obj);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream filter(LongPredicate longPredicate) {
        return m865f(this.f1201a.mo806c());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong findAny() {
        return AbstractC1965a.m406L(this.f1201a.findAny());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong findFirst() {
        return AbstractC1965a.m406L(this.f1201a.findFirst());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ void forEach(LongConsumer longConsumer) {
        this.f1201a.forEach(longConsumer);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ void forEachOrdered(LongConsumer longConsumer) {
        this.f1201a.forEachOrdered(longConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1201a.hashCode();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f1201a.isParallel();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ Iterator<Long> iterator() {
        return this.f1201a.iterator();
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* JADX INFO: renamed from: iterator, reason: avoid collision after fix types in other method */
    public final /* synthetic */ Iterator<Long> iterator2() {
        InterfaceC2091O it = this.f1201a.iterator();
        if (it == null) {
            return null;
        }
        return it instanceof C2089M ? ((C2089M) it).f674a : new C2090N(it);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream limit(long j) {
        return m865f(this.f1201a.limit(j));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream map(LongUnaryOperator longUnaryOperator) {
        return m865f(this.f1201a.mo808e());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ DoubleStream mapToDouble(LongToDoubleFunction longToDoubleFunction) {
        return C2156D.m773f(this.f1201a.mo809j());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.IntStream mapToInt(LongToIntFunction longToIntFunction) {
        return IntStream.Wrapper.convert(this.f1201a.mo813x());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.Stream mapToObj(LongFunction longFunction) {
        return Stream.Wrapper.convert(this.f1201a.mapToObj(longFunction));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong max() {
        return AbstractC1965a.m406L(this.f1201a.max());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong min() {
        return AbstractC1965a.m406L(this.f1201a.min());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ boolean noneMatch(LongPredicate longPredicate) {
        return this.f1201a.mo811p();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream onClose(Runnable runnable) {
        return C2184g.m858f(this.f1201a.onClose(runnable));
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream parallel() {
        return C2184g.m858f(this.f1201a.parallel());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.LongStream parallel() {
        return m865f(this.f1201a.parallel());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream peek(LongConsumer longConsumer) {
        return m865f(this.f1201a.peek(longConsumer));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long reduce(long j, LongBinaryOperator longBinaryOperator) {
        return this.f1201a.reduce(j, longBinaryOperator);
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ OptionalLong reduce(LongBinaryOperator longBinaryOperator) {
        return AbstractC1965a.m406L(this.f1201a.reduce(longBinaryOperator));
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream sequential() {
        return C2184g.m858f(this.f1201a.sequential());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.LongStream sequential() {
        return m865f(this.f1201a.sequential());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream skip(long j) {
        return m865f(this.f1201a.skip(j));
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ java.util.stream.LongStream sorted() {
        return m865f(this.f1201a.sorted());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    public final /* synthetic */ Spliterator<Long> spliterator() {
        return C2100Y.m695a(this.f1201a.spliterator());
    }

    @Override // java.util.stream.LongStream, java.util.stream.BaseStream
    /* JADX INFO: renamed from: spliterator, reason: avoid collision after fix types in other method */
    public final /* synthetic */ Spliterator<Long> spliterator2() {
        return Spliterator.Wrapper.convert(this.f1201a.spliterator());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long sum() {
        return this.f1201a.sum();
    }

    public final /* synthetic */ java.util.stream.LongStream takeWhile(LongPredicate longPredicate) {
        return m865f(this.f1201a.mo805b());
    }

    @Override // java.util.stream.LongStream
    public final /* synthetic */ long[] toArray() {
        return this.f1201a.toArray();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ java.util.stream.BaseStream unordered() {
        return C2184g.m858f(this.f1201a.unordered());
    }

    @Override // java.util.stream.LongStream
    public final LongSummaryStatistics summaryStatistics() {
        this.f1201a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.LongSummaryStatistics");
    }

    @Override // java.util.stream.LongStream
    public final java.util.stream.LongStream flatMap(LongFunction longFunction) {
        LongStream longStream = this.f1201a;
        C2045s c2045s = new C2045s(7);
        c2045s.f586b = longFunction;
        return m865f(longStream.mo804a(c2045s));
    }
}
