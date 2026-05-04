package p022j$.util.stream;

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
import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.LongStream;
import java.util.stream.Stream;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.util.C2217B;
import p022j$.util.C2224I;
import p022j$.util.C2225J;
import p022j$.util.C2236V;
import p022j$.util.C2237W;
import p022j$.util.C2272d0;
import p022j$.util.C2586x;
import p022j$.util.InterfaceC2226K;
import p022j$.util.OptionalInt;
import p022j$.util.Spliterator;
import p022j$.util.Spliterators;
import p022j$.util.stream.Stream;

/* JADX INFO: loaded from: classes2.dex */
public interface IntStream extends BaseStream<Integer, IntStream> {
    boolean allMatch(IntPredicate intPredicate);

    boolean anyMatch(IntPredicate intPredicate);

    InterfaceC2331E asDoubleStream();

    LongStream asLongStream();

    C2217B average();

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
    InterfaceC2331E mo935g();

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    InterfaceC2226K iterator();

    /* JADX INFO: renamed from: k */
    LongStream mo936k();

    IntStream limit(long j);

    IntStream map(IntUnaryOperator intUnaryOperator);

    <U> Stream<U> mapToObj(IntFunction<? extends U> intFunction);

    OptionalInt max();

    OptionalInt min();

    boolean noneMatch(IntPredicate intPredicate);

    /* JADX INFO: renamed from: o */
    IntStream mo937o(C2371M c2371m);

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    IntStream parallel();

    IntStream peek(IntConsumer intConsumer);

    int reduce(int i, IntBinaryOperator intBinaryOperator);

    OptionalInt reduce(IntBinaryOperator intBinaryOperator);

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    IntStream sequential();

    IntStream skip(long j);

    IntStream sorted();

    @Override // p022j$.util.stream.BaseStream
    Spliterator.OfInt spliterator();

    int sum();

    C2586x summaryStatistics();

    IntStream takeWhile(IntPredicate intPredicate);

    int[] toArray();

    public final /* synthetic */ class Wrapper implements java.util.stream.IntStream {
        public /* synthetic */ Wrapper() {
        }

        public static /* synthetic */ java.util.stream.IntStream convert(IntStream intStream) {
            if (intStream == null) {
                return null;
            }
            return intStream instanceof VivifiedWrapper ? ((VivifiedWrapper) intStream).f1156a : intStream.new Wrapper();
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
            return C2326D.m910f(IntStream.this.asDoubleStream());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ LongStream asLongStream() {
            return C2517n0.m1017f(IntStream.this.asLongStream());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ OptionalDouble average() {
            return AbstractC2104a.m524J(IntStream.this.average());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ Stream boxed() {
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
            return AbstractC2104a.m525K(IntStream.this.findAny());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.OptionalInt findFirst() {
            return AbstractC2104a.m525K(IntStream.this.findFirst());
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
            InterfaceC2226K it = IntStream.this.iterator();
            if (it == null) {
                return null;
            }
            return it instanceof C2224I ? ((C2224I) it).f905a : new C2225J(it);
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
            return C2326D.m910f(IntStream.this.mo935g());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ LongStream mapToLong(IntToLongFunction intToLongFunction) {
            return C2517n0.m1017f(IntStream.this.mo936k());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.stream.Stream mapToObj(IntFunction intFunction) {
            return Stream.Wrapper.convert(IntStream.this.mapToObj(intFunction));
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.OptionalInt max() {
            return AbstractC2104a.m525K(IntStream.this.max());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ java.util.OptionalInt min() {
            return AbstractC2104a.m525K(IntStream.this.min());
        }

        @Override // java.util.stream.IntStream
        public final /* synthetic */ boolean noneMatch(IntPredicate intPredicate) {
            return IntStream.this.noneMatch(intPredicate);
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ BaseStream onClose(Runnable runnable) {
            return C2476g.m1009f(IntStream.this.onClose(runnable));
        }

        @Override // java.util.stream.IntStream, java.util.stream.BaseStream
        public final /* synthetic */ BaseStream parallel() {
            return C2476g.m1009f(IntStream.this.parallel());
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
            return AbstractC2104a.m525K(IntStream.this.reduce(intBinaryOperator));
        }

        @Override // java.util.stream.IntStream, java.util.stream.BaseStream
        public final /* synthetic */ BaseStream sequential() {
            return C2476g.m1009f(IntStream.this.sequential());
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
            return C2237W.m819a(IntStream.this.spliterator());
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
        public final /* synthetic */ BaseStream unordered() {
            return C2476g.m1009f(IntStream.this.unordered());
        }

        @Override // java.util.stream.IntStream
        public final IntSummaryStatistics summaryStatistics() {
            IntStream.this.summaryStatistics();
            throw new Error("Java 8+ API desugaring (library desugaring) cannot convert to java.util.IntSummaryStatistics");
        }

        @Override // java.util.stream.IntStream
        public final java.util.stream.IntStream flatMap(IntFunction intFunction) {
            IntStream intStream = IntStream.this;
            C2371M c2371m = new C2371M();
            c2371m.f1192a = intFunction;
            return convert(intStream.mo937o(c2371m));
        }
    }

    public final /* synthetic */ class VivifiedWrapper implements IntStream {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ java.util.stream.IntStream f1156a;

        public /* synthetic */ VivifiedWrapper(java.util.stream.IntStream intStream) {
            this.f1156a = intStream;
        }

        public static /* synthetic */ IntStream convert(java.util.stream.IntStream intStream) {
            if (intStream == null) {
                return null;
            }
            return intStream instanceof Wrapper ? IntStream.this : new VivifiedWrapper(intStream);
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ boolean allMatch(IntPredicate intPredicate) {
            return this.f1156a.allMatch(intPredicate);
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ boolean anyMatch(IntPredicate intPredicate) {
            return this.f1156a.anyMatch(intPredicate);
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ InterfaceC2331E asDoubleStream() {
            return C2321C.m906f(this.f1156a.asDoubleStream());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ LongStream asLongStream() {
            return C2512m0.m1016f(this.f1156a.asLongStream());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ C2217B average() {
            return AbstractC2104a.m520F(this.f1156a.average());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ Stream boxed() {
            return Stream.VivifiedWrapper.convert(this.f1156a.boxed());
        }

        @Override // p022j$.util.stream.BaseStream, java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            this.f1156a.close();
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
            return this.f1156a.collect(supplier, objIntConsumer, biConsumer);
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ long count() {
            return this.f1156a.count();
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ IntStream distinct() {
            return convert(this.f1156a.distinct());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ IntStream dropWhile(IntPredicate intPredicate) {
            return convert(this.f1156a.dropWhile(intPredicate));
        }

        public final /* synthetic */ boolean equals(Object obj) {
            java.util.stream.IntStream intStream = this.f1156a;
            if (obj instanceof VivifiedWrapper) {
                obj = ((VivifiedWrapper) obj).f1156a;
            }
            return intStream.equals(obj);
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ IntStream filter(IntPredicate intPredicate) {
            return convert(this.f1156a.filter(intPredicate));
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt findAny() {
            return AbstractC2104a.m521G(this.f1156a.findAny());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt findFirst() {
            return AbstractC2104a.m521G(this.f1156a.findFirst());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ void forEach(IntConsumer intConsumer) {
            this.f1156a.forEach(intConsumer);
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ void forEachOrdered(IntConsumer intConsumer) {
            this.f1156a.forEachOrdered(intConsumer);
        }

        @Override // p022j$.util.stream.IntStream
        /* JADX INFO: renamed from: g */
        public final /* synthetic */ InterfaceC2331E mo935g() {
            return C2321C.m906f(this.f1156a.mapToDouble(null));
        }

        public final /* synthetic */ int hashCode() {
            return this.f1156a.hashCode();
        }

        @Override // p022j$.util.stream.BaseStream
        public final /* synthetic */ boolean isParallel() {
            return this.f1156a.isParallel();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.PrimitiveIterator$OfInt] */
        @Override // p022j$.util.stream.IntStream, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
        public final /* synthetic */ InterfaceC2226K iterator() {
            ?? it = this.f1156a.iterator();
            if (it == 0) {
                return null;
            }
            return it instanceof C2225J ? ((C2225J) it).f906a : new C2224I(it);
        }

        @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
        public final /* synthetic */ Iterator iterator() {
            return this.f1156a.iterator();
        }

        @Override // p022j$.util.stream.IntStream
        /* JADX INFO: renamed from: k */
        public final /* synthetic */ LongStream mo936k() {
            return C2512m0.m1016f(this.f1156a.mapToLong(null));
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ IntStream limit(long j) {
            return convert(this.f1156a.limit(j));
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ IntStream map(IntUnaryOperator intUnaryOperator) {
            return convert(this.f1156a.map(intUnaryOperator));
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ Stream mapToObj(IntFunction intFunction) {
            return Stream.VivifiedWrapper.convert(this.f1156a.mapToObj(intFunction));
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt max() {
            return AbstractC2104a.m521G(this.f1156a.max());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt min() {
            return AbstractC2104a.m521G(this.f1156a.min());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ boolean noneMatch(IntPredicate intPredicate) {
            return this.f1156a.noneMatch(intPredicate);
        }

        @Override // p022j$.util.stream.BaseStream
        public final /* synthetic */ BaseStream onClose(Runnable runnable) {
            return C2470f.m1005f(this.f1156a.onClose(runnable));
        }

        @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
        public final /* synthetic */ BaseStream parallel() {
            return C2470f.m1005f(this.f1156a.parallel());
        }

        @Override // p022j$.util.stream.IntStream, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
        public final /* synthetic */ IntStream parallel() {
            return convert(this.f1156a.parallel());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ IntStream peek(IntConsumer intConsumer) {
            return convert(this.f1156a.peek(intConsumer));
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ int reduce(int i, IntBinaryOperator intBinaryOperator) {
            return this.f1156a.reduce(i, intBinaryOperator);
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
            return AbstractC2104a.m521G(this.f1156a.reduce(intBinaryOperator));
        }

        @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
        public final /* synthetic */ BaseStream sequential() {
            return C2470f.m1005f(this.f1156a.sequential());
        }

        @Override // p022j$.util.stream.IntStream, p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
        public final /* synthetic */ IntStream sequential() {
            return convert(this.f1156a.sequential());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ IntStream skip(long j) {
            return convert(this.f1156a.skip(j));
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ IntStream sorted() {
            return convert(this.f1156a.sorted());
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Spliterator$OfInt] */
        @Override // p022j$.util.stream.IntStream, p022j$.util.stream.BaseStream
        public final /* synthetic */ Spliterator.OfInt spliterator() {
            return C2236V.m818a(this.f1156a.spliterator());
        }

        @Override // p022j$.util.stream.BaseStream
        public final /* synthetic */ Spliterator spliterator() {
            return C2272d0.m865a(this.f1156a.spliterator());
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ int sum() {
            return this.f1156a.sum();
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ IntStream takeWhile(IntPredicate intPredicate) {
            return convert(this.f1156a.takeWhile(intPredicate));
        }

        @Override // p022j$.util.stream.IntStream
        public final /* synthetic */ int[] toArray() {
            return this.f1156a.toArray();
        }

        @Override // p022j$.util.stream.BaseStream
        public final /* synthetic */ BaseStream unordered() {
            return C2470f.m1005f(this.f1156a.unordered());
        }

        @Override // p022j$.util.stream.IntStream
        public final C2586x summaryStatistics() {
            this.f1156a.summaryStatistics();
            throw new Error("Java 8+ API desugaring (library desugaring) cannot convert from java.util.IntSummaryStatistics");
        }

        @Override // p022j$.util.stream.IntStream
        /* JADX INFO: renamed from: o */
        public final IntStream mo937o(C2371M c2371m) {
            java.util.stream.IntStream intStream = this.f1156a;
            C2371M c2371m2 = new C2371M();
            c2371m2.f1192a = c2371m;
            return convert(intStream.flatMap(c2371m2));
        }
    }

    /* JADX INFO: renamed from: j$.util.stream.IntStream$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static IntStream range(int i, int i2) {
            if (i >= i2) {
                return AbstractC2355I3.m933a(Spliterators.f920b);
            }
            return AbstractC2355I3.m933a(new C2370L3(i, i2));
        }
    }
}
