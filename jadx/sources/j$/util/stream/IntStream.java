package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.util.C2078B;
import j$.util.C2085I;
import j$.util.C2086J;
import j$.util.C2097V;
import j$.util.C2098W;
import j$.util.C2208x;
import j$.util.InterfaceC2087K;
import j$.util.OptionalInt;
import j$.util.Spliterator;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import java.util.IntSummaryStatistics;
import java.util.Iterator;
import java.util.OptionalDouble;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;
import java.util.stream.DoubleStream;

/* JADX INFO: loaded from: classes2.dex */
public interface IntStream extends BaseStream<Integer, IntStream> {
    boolean allMatch(IntPredicate intPredicate);

    boolean anyMatch(IntPredicate intPredicate);

    InterfaceC2157E asDoubleStream();

    LongStream asLongStream();

    C2078B average();

    Stream boxed();

    Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer);

    long count();

    IntStream distinct();

    IntStream dropWhile(IntPredicate intPredicate);

    IntStream filter(IntPredicate intPredicate);

    OptionalInt findAny();

    OptionalInt findFirst();

    void forEach(IntConsumer intConsumer);

    void forEachOrdered(IntConsumer intConsumer);

    /* JADX INFO: renamed from: g */
    InterfaceC2157E mo795g();

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    InterfaceC2087K iterator();

    /* JADX INFO: renamed from: k */
    LongStream mo796k();

    IntStream limit(long j);

    IntStream map(IntUnaryOperator intUnaryOperator);

    <U> Stream<U> mapToObj(IntFunction<? extends U> intFunction);

    OptionalInt max();

    OptionalInt min();

    boolean noneMatch(IntPredicate intPredicate);

    /* JADX INFO: renamed from: o */
    IntStream mo797o(C2165M c2165m);

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    IntStream parallel();

    IntStream peek(IntConsumer intConsumer);

    int reduce(int i, IntBinaryOperator intBinaryOperator);

    OptionalInt reduce(IntBinaryOperator intBinaryOperator);

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // j$.util.stream.BaseStream
    Spliterator.OfInt spliterator();

    int sum();

    C2208x summaryStatistics();

    IntStream takeWhile(IntPredicate intPredicate);

    int[] toArray();

    public final /* synthetic */ class Wrapper implements java.util.stream.IntStream {
        public /* synthetic */ Wrapper() {
        }

        public static /* synthetic */ java.util.stream.IntStream convert(IntStream intStream) {
            if (intStream == null) {
                return null;
            }
            return intStream instanceof VivifiedWrapper ? ((VivifiedWrapper) intStream).f921a : intStream.new Wrapper();
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ boolean allMatch(IntPredicate intPredicate) {
            return IntStream.this.allMatch(intPredicate);
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ boolean anyMatch(IntPredicate intPredicate) {
            return IntStream.this.anyMatch(intPredicate);
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ DoubleStream asDoubleStream() {
            return C2156D.m773f(IntStream.this.asDoubleStream());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.LongStream asLongStream() {
            return C6232n0.m865f(IntStream.this.asLongStream());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ OptionalDouble average() {
            return AbstractC1965a.m404J(IntStream.this.average());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.Stream boxed() {
            return Stream.Wrapper.convert(IntStream.this.boxed());
        }

        @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            IntStream.this.close();
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
            return IntStream.this.collect(supplier, objIntConsumer, biConsumer);
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ long count() {
            return IntStream.this.count();
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.IntStream distinct() {
            return convert(IntStream.this.distinct());
        }

        public final /* synthetic */ java.util.stream.IntStream dropWhile(IntPredicate intPredicate) {
            return convert(IntStream.this.dropWhile(intPredicate));
        }

        public final /* synthetic */ boolean equals(Object obj) {
            IntStream intStream = IntStream.this;
            if (obj instanceof Wrapper) {
                obj = IntStream.this;
            }
            return intStream.equals(obj);
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.IntStream filter(IntPredicate intPredicate) {
            return convert(IntStream.this.filter(intPredicate));
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.OptionalInt findAny() {
            return AbstractC1965a.m405K(IntStream.this.findAny());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.OptionalInt findFirst() {
            return AbstractC1965a.m405K(IntStream.this.findFirst());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ void forEach(IntConsumer intConsumer) {
            IntStream.this.forEach(intConsumer);
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ void forEachOrdered(IntConsumer intConsumer) {
            IntStream.this.forEachOrdered(intConsumer);
        }

        public final /* synthetic */ int hashCode() {
            return IntStream.this.hashCode();
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ boolean isParallel() {
            return IntStream.this.isParallel();
        }

        @Override // java.util.stream.IntStream, java.util.stream.BaseStream
        public final /* synthetic */ Iterator<Integer> iterator() {
            return IntStream.this.iterator();
        }

        @Override // java.util.stream.IntStream, java.util.stream.BaseStream
        /* JADX INFO: renamed from: iterator, reason: avoid collision after fix types in other method */
        public final /* synthetic */ Iterator<Integer> iterator2() {
            InterfaceC2087K it = IntStream.this.iterator();
            if (it == null) {
                return null;
            }
            return it instanceof C2085I ? ((C2085I) it).f670a : new C2086J(it);
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.IntStream limit(long j) {
            return convert(IntStream.this.limit(j));
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.IntStream map(IntUnaryOperator intUnaryOperator) {
            return convert(IntStream.this.map(intUnaryOperator));
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ DoubleStream mapToDouble(IntToDoubleFunction intToDoubleFunction) {
            return C2156D.m773f(IntStream.this.mo795g());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.LongStream mapToLong(IntToLongFunction intToLongFunction) {
            return C6232n0.m865f(IntStream.this.mo796k());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.Stream mapToObj(IntFunction intFunction) {
            return Stream.Wrapper.convert(IntStream.this.mapToObj(intFunction));
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.OptionalInt max() {
            return AbstractC1965a.m405K(IntStream.this.max());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.OptionalInt min() {
            return AbstractC1965a.m405K(IntStream.this.min());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ boolean noneMatch(IntPredicate intPredicate) {
            return IntStream.this.noneMatch(intPredicate);
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ java.util.stream.BaseStream onClose(Runnable runnable) {
            return C2184g.m858f(IntStream.this.onClose(runnable));
        }

        @Override // java.util.stream.IntStream, java.util.stream.BaseStream
        public final /* synthetic */ java.util.stream.BaseStream parallel() {
            return C2184g.m858f(IntStream.this.parallel());
        }

        @Override // java.util.stream.IntStream, java.util.stream.BaseStream
        public final /* synthetic */ java.util.stream.IntStream parallel() {
            return convert(IntStream.this.parallel());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.IntStream peek(IntConsumer intConsumer) {
            return convert(IntStream.this.peek(intConsumer));
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ int reduce(int i, IntBinaryOperator intBinaryOperator) {
            return IntStream.this.reduce(i, intBinaryOperator);
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
            return AbstractC1965a.m405K(IntStream.this.reduce(intBinaryOperator));
        }

        @Override // java.util.stream.IntStream, java.util.stream.BaseStream
        public final /* synthetic */ java.util.stream.BaseStream sequential() {
            return C2184g.m858f(IntStream.this.sequential());
        }

        @Override // java.util.stream.IntStream, java.util.stream.BaseStream
        public final /* synthetic */ java.util.stream.IntStream sequential() {
            return convert(IntStream.this.sequential());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.IntStream skip(long j) {
            return convert(IntStream.this.skip(j));
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.IntStream sorted() {
            return convert(IntStream.this.sorted());
        }

        @Override // java.util.stream.IntStream, java.util.stream.BaseStream
        public final /* synthetic */ java.util.Spliterator<Integer> spliterator() {
            return C2098W.m693a(IntStream.this.spliterator());
        }

        @Override // java.util.stream.IntStream, java.util.stream.BaseStream
        /* JADX INFO: renamed from: spliterator, reason: avoid collision after fix types in other method */
        public final /* synthetic */ java.util.Spliterator<Integer> spliterator2() {
            return Spliterator.Wrapper.convert(IntStream.this.spliterator());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ int sum() {
            return IntStream.this.sum();
        }

        public final /* synthetic */ java.util.stream.IntStream takeWhile(IntPredicate intPredicate) {
            return convert(IntStream.this.takeWhile(intPredicate));
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ int[] toArray() {
            return IntStream.this.toArray();
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ java.util.stream.BaseStream unordered() {
            return C2184g.m858f(IntStream.this.unordered());
        }

        @Override // java.util.stream.IntStream
        public final IntSummaryStatistics summaryStatistics() {
            IntStream.this.summaryStatistics();
            throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.IntSummaryStatistics");
        }

        @Override // java.util.stream.IntStream
        public final java.util.stream.IntStream flatMap(IntFunction intFunction) {
            IntStream intStream = IntStream.this;
            C2165M c2165m = new C2165M();
            c2165m.f957a = intFunction;
            return convert(intStream.mo797o(c2165m));
        }
    }

    public final /* synthetic */ class VivifiedWrapper implements IntStream {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ java.util.stream.IntStream f921a;

        public /* synthetic */ VivifiedWrapper(java.util.stream.IntStream intStream) {
            this.f921a = intStream;
        }

        public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
            if (intStream == null) {
                return null;
            }
            return intStream instanceof Wrapper ? IntStream.this : new VivifiedWrapper(intStream);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ boolean allMatch(IntPredicate intPredicate) {
            return this.f921a.allMatch(intPredicate);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ boolean anyMatch(IntPredicate intPredicate) {
            return this.f921a.anyMatch(intPredicate);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ InterfaceC2157E asDoubleStream() {
            return C2155C.m770f(this.f921a.asDoubleStream());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ LongStream asLongStream() {
            return C6228m0.m864f(this.f921a.asLongStream());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ C2078B average() {
            return AbstractC1965a.m400F(this.f921a.average());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ Stream boxed() {
            return Stream.VivifiedWrapper.convert(this.f921a.boxed());
        }

        @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            this.f921a.close();
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
            return this.f921a.collect(supplier, objIntConsumer, biConsumer);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ long count() {
            return this.f921a.count();
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream distinct() {
            return convert(this.f921a.distinct());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream dropWhile(IntPredicate intPredicate) {
            return convert(this.f921a.dropWhile(intPredicate));
        }

        public final /* synthetic */ boolean equals(Object obj) {
            java.util.stream.IntStream intStream = this.f921a;
            if (obj instanceof VivifiedWrapper) {
                obj = ((VivifiedWrapper) obj).f921a;
            }
            return intStream.equals(obj);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream filter(IntPredicate intPredicate) {
            return convert(this.f921a.filter(intPredicate));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt findAny() {
            return AbstractC1965a.m401G(this.f921a.findAny());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt findFirst() {
            return AbstractC1965a.m401G(this.f921a.findFirst());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ void forEach(IntConsumer intConsumer) {
            this.f921a.forEach(intConsumer);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ void forEachOrdered(IntConsumer intConsumer) {
            this.f921a.forEachOrdered(intConsumer);
        }

        @Override // j$.util.stream.IntStream
        /* JADX INFO: renamed from: g */
        public final /* synthetic */ InterfaceC2157E mo795g() {
            return C2155C.m770f(this.f921a.mapToDouble(null));
        }

        public final /* synthetic */ int hashCode() {
            return this.f921a.hashCode();
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ boolean isParallel() {
            return this.f921a.isParallel();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfInt] */
        @Override // j$.util.stream.IntStream, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
        public final /* synthetic */ InterfaceC2087K iterator() {
            ?? it = this.f921a.iterator();
            if (it == 0) {
                return null;
            }
            return it instanceof C2086J ? ((C2086J) it).f671a : new C2085I(it);
        }

        @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
        public final /* synthetic */ Iterator iterator() {
            return this.f921a.iterator();
        }

        @Override // j$.util.stream.IntStream
        /* JADX INFO: renamed from: k */
        public final /* synthetic */ LongStream mo796k() {
            return C6228m0.m864f(this.f921a.mapToLong(null));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream limit(long j) {
            return convert(this.f921a.limit(j));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream map(IntUnaryOperator intUnaryOperator) {
            return convert(this.f921a.map(intUnaryOperator));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ Stream mapToObj(IntFunction intFunction) {
            return Stream.VivifiedWrapper.convert(this.f921a.mapToObj(intFunction));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt max() {
            return AbstractC1965a.m401G(this.f921a.max());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt min() {
            return AbstractC1965a.m401G(this.f921a.min());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ boolean noneMatch(IntPredicate intPredicate) {
            return this.f921a.noneMatch(intPredicate);
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ BaseStream onClose(Runnable runnable) {
            return C2183f.m854f(this.f921a.onClose(runnable));
        }

        @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
        public final /* synthetic */ BaseStream parallel() {
            return C2183f.m854f(this.f921a.parallel());
        }

        @Override // j$.util.stream.IntStream, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
        public final /* synthetic */ IntStream parallel() {
            return convert(this.f921a.parallel());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream peek(IntConsumer intConsumer) {
            return convert(this.f921a.peek(intConsumer));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ int reduce(int i, IntBinaryOperator intBinaryOperator) {
            return this.f921a.reduce(i, intBinaryOperator);
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
            return AbstractC1965a.m401G(this.f921a.reduce(intBinaryOperator));
        }

        @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
        public final /* synthetic */ BaseStream sequential() {
            return C2183f.m854f(this.f921a.sequential());
        }

        @Override // j$.util.stream.IntStream, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
        public final /* synthetic */ IntStream sequential() {
            return convert(this.f921a.sequential());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream skip(long j) {
            return convert(this.f921a.skip(j));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream sorted() {
            return convert(this.f921a.sorted());
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfInt] */
        @Override // j$.util.stream.IntStream, j$.util.stream.BaseStream
        public final /* synthetic */ Spliterator.OfInt spliterator() {
            return C2097V.m692a(this.f921a.spliterator());
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ Spliterator spliterator() {
            return j$.util.d0.m739a(this.f921a.spliterator());
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ int sum() {
            return this.f921a.sum();
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ IntStream takeWhile(IntPredicate intPredicate) {
            return convert(this.f921a.takeWhile(intPredicate));
        }

        @Override // j$.util.stream.IntStream
        public final /* synthetic */ int[] toArray() {
            return this.f921a.toArray();
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ BaseStream unordered() {
            return C2183f.m854f(this.f921a.unordered());
        }

        @Override // j$.util.stream.IntStream
        public final C2208x summaryStatistics() {
            this.f921a.summaryStatistics();
            throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
        }

        @Override // j$.util.stream.IntStream
        /* JADX INFO: renamed from: o */
        public final IntStream mo797o(C2165M c2165m) {
            java.util.stream.IntStream intStream = this.f921a;
            C2165M c2165m2 = new C2165M();
            c2165m2.f957a = c2165m;
            return convert(intStream.flatMap(c2165m2));
        }
    }

    /* JADX INFO: renamed from: j$.util.stream.IntStream$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static IntStream range(int i, int i2) {
            if (i >= i2) {
                return I3.m793a(Spliterators.f685b);
            }
            return I3.m793a(new L3(i, i2));
        }
    }
}
