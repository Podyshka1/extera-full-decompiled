package p022j$.util.stream;

import java.util.DoubleSummaryStatistics;
import java.util.Iterator;
import java.util.OptionalDouble;
import java.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2184s;
import p022j$.util.C2220E;
import p022j$.util.C2221F;
import p022j$.util.C2234T;
import p022j$.util.InterfaceC2222G;
import p022j$.util.Spliterator;
import p022j$.util.stream.IntStream;
import p022j$.util.stream.Stream;

/* JADX INFO: renamed from: j$.util.stream.D */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2326D implements DoubleStream {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2331E f1111a;

    public /* synthetic */ C2326D(InterfaceC2331E interfaceC2331E) {
        this.f1111a = interfaceC2331E;
    }

    /* JADX INFO: renamed from: f */
    public static /* synthetic */ DoubleStream m910f(InterfaceC2331E interfaceC2331E) {
        if (interfaceC2331E == null) {
            return null;
        }
        return interfaceC2331E instanceof C2321C ? ((C2321C) interfaceC2331E).f1102a : new C2326D(interfaceC2331E);
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ boolean allMatch(DoublePredicate doublePredicate) {
        return this.f1111a.mo897q();
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ boolean anyMatch(DoublePredicate doublePredicate) {
        return this.f1111a.mo895l();
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ OptionalDouble average() {
        return AbstractC2104a.m524J(this.f1111a.average());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ Stream boxed() {
        return Stream.Wrapper.convert(this.f1111a.boxed());
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.f1111a.close();
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        return this.f1111a.collect(supplier, objDoubleConsumer, biConsumer);
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ long count() {
        return this.f1111a.count();
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream distinct() {
        return m910f(this.f1111a.distinct());
    }

    public final /* synthetic */ DoubleStream dropWhile(DoublePredicate doublePredicate) {
        return m910f(this.f1111a.mo893d());
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2331E interfaceC2331E = this.f1111a;
        if (obj instanceof C2326D) {
            obj = ((C2326D) obj).f1111a;
        }
        return interfaceC2331E.equals(obj);
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream filter(DoublePredicate doublePredicate) {
        return m910f(this.f1111a.mo892c());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ OptionalDouble findAny() {
        return AbstractC2104a.m524J(this.f1111a.findAny());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ OptionalDouble findFirst() {
        return AbstractC2104a.m524J(this.f1111a.findFirst());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ void forEach(DoubleConsumer doubleConsumer) {
        this.f1111a.forEach(doubleConsumer);
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ void forEachOrdered(DoubleConsumer doubleConsumer) {
        this.f1111a.forEachOrdered(doubleConsumer);
    }

    public final /* synthetic */ int hashCode() {
        return this.f1111a.hashCode();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.f1111a.isParallel();
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public final /* synthetic */ Iterator<Double> iterator() {
        return this.f1111a.iterator();
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* JADX INFO: renamed from: iterator, reason: avoid collision after fix types in other method */
    public final /* synthetic */ Iterator<Double> iterator2() {
        InterfaceC2222G it = this.f1111a.iterator();
        if (it == null) {
            return null;
        }
        return it instanceof C2220E ? ((C2220E) it).f901a : new C2221F(it);
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream limit(long j) {
        return m910f(this.f1111a.limit(j));
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream map(DoubleUnaryOperator doubleUnaryOperator) {
        return m910f(this.f1111a.mo894e());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ IntStream mapToInt(DoubleToIntFunction doubleToIntFunction) {
        return IntStream.Wrapper.convert(this.f1111a.mo899w());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ LongStream mapToLong(DoubleToLongFunction doubleToLongFunction) {
        return C2517n0.m1017f(this.f1111a.mo898r());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ java.util.stream.Stream mapToObj(DoubleFunction doubleFunction) {
        return Stream.Wrapper.convert(this.f1111a.mapToObj(doubleFunction));
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ OptionalDouble max() {
        return AbstractC2104a.m524J(this.f1111a.max());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ OptionalDouble min() {
        return AbstractC2104a.m524J(this.f1111a.min());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ boolean noneMatch(DoublePredicate doublePredicate) {
        return this.f1111a.mo901y();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return C2476g.m1009f(this.f1111a.onClose(runnable));
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return C2476g.m1009f(this.f1111a.parallel());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public final /* synthetic */ DoubleStream parallel() {
        return m910f(this.f1111a.parallel());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream peek(DoubleConsumer doubleConsumer) {
        return m910f(this.f1111a.peek(doubleConsumer));
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        return this.f1111a.reduce(d, doubleBinaryOperator);
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ OptionalDouble reduce(DoubleBinaryOperator doubleBinaryOperator) {
        return AbstractC2104a.m524J(this.f1111a.reduce(doubleBinaryOperator));
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return C2476g.m1009f(this.f1111a.sequential());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public final /* synthetic */ DoubleStream sequential() {
        return m910f(this.f1111a.sequential());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream skip(long j) {
        return m910f(this.f1111a.skip(j));
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ DoubleStream sorted() {
        return m910f(this.f1111a.sorted());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    public final /* synthetic */ Spliterator<Double> spliterator() {
        return C2234T.m817a(this.f1111a.spliterator());
    }

    @Override // java.util.stream.DoubleStream, java.util.stream.BaseStream
    /* JADX INFO: renamed from: spliterator, reason: avoid collision after fix types in other method */
    public final /* synthetic */ Spliterator<Double> spliterator2() {
        return Spliterator.Wrapper.convert(this.f1111a.spliterator());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ double sum() {
        return this.f1111a.sum();
    }

    public final /* synthetic */ DoubleStream takeWhile(DoublePredicate doublePredicate) {
        return m910f(this.f1111a.mo891b());
    }

    @Override // java.util.stream.DoubleStream
    public final /* synthetic */ double[] toArray() {
        return this.f1111a.toArray();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return C2476g.m1009f(this.f1111a.unordered());
    }

    @Override // java.util.stream.DoubleStream
    public final DoubleSummaryStatistics summaryStatistics() {
        this.f1111a.summaryStatistics();
        throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.DoubleSummaryStatistics");
    }

    @Override // java.util.stream.DoubleStream
    public final DoubleStream flatMap(DoubleFunction doubleFunction) {
        InterfaceC2331E interfaceC2331E = this.f1111a;
        C2184s c2184s = new C2184s(5);
        c2184s.f821b = doubleFunction;
        return m910f(interfaceC2331E.mo890a(c2184s));
    }
}
