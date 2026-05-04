package p022j$.util.stream;

import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import java.util.stream.BaseStream;
import java.util.stream.Collector;
import java.util.stream.DoubleStream;
import java.util.stream.LongStream;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2184s;
import p022j$.util.C2272d0;
import p022j$.util.Objects;
import p022j$.util.Optional;
import p022j$.util.Spliterator;
import p022j$.util.stream.IntStream;

/* JADX INFO: loaded from: classes2.dex */
public interface Stream<T> extends BaseStream<T, Stream<T>> {

    public final /* synthetic */ class VivifiedWrapper implements Stream {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ java.util.stream.Stream f1249a;

        public /* synthetic */ VivifiedWrapper(java.util.stream.Stream stream) {
            this.f1249a = stream;
        }

        public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
            if (stream == null) {
                return null;
            }
            return stream instanceof Wrapper ? Stream.this : new VivifiedWrapper(stream);
        }

        @Override // p022j$.util.stream.Stream
        /* JADX INFO: renamed from: a */
        public final /* synthetic */ Stream mo962a(C2184s c2184s) {
            return convert(this.f1249a.flatMap(AbstractC2573y1.m1067j0(c2184s)));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ boolean allMatch(Predicate predicate) {
            return this.f1249a.allMatch(predicate);
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ boolean anyMatch(Predicate predicate) {
            return this.f1249a.anyMatch(predicate);
        }

        @Override // p022j$.util.stream.BaseStream, java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            this.f1249a.close();
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Object collect(Collector collector) {
            return this.f1249a.collect(collector == null ? null : collector instanceof C2482h ? ((C2482h) collector).f1387a : new C2488i(collector));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
            return this.f1249a.collect(supplier, biConsumer, biConsumer2);
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ long count() {
            return this.f1249a.count();
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Stream distinct() {
            return convert(this.f1249a.distinct());
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Stream dropWhile(Predicate predicate) {
            return convert(this.f1249a.dropWhile(predicate));
        }

        public final /* synthetic */ boolean equals(Object obj) {
            java.util.stream.Stream stream = this.f1249a;
            if (obj instanceof VivifiedWrapper) {
                obj = ((VivifiedWrapper) obj).f1249a;
            }
            return stream.equals(obj);
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Stream filter(Predicate predicate) {
            return convert(this.f1249a.filter(predicate));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Optional findAny() {
            return AbstractC2104a.m519E(this.f1249a.findAny());
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Optional findFirst() {
            return AbstractC2104a.m519E(this.f1249a.findFirst());
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ void forEach(Consumer consumer) {
            this.f1249a.forEach(consumer);
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ void forEachOrdered(Consumer consumer) {
            this.f1249a.forEachOrdered(consumer);
        }

        public final /* synthetic */ int hashCode() {
            return this.f1249a.hashCode();
        }

        @Override // p022j$.util.stream.BaseStream
        public final /* synthetic */ boolean isParallel() {
            return this.f1249a.isParallel();
        }

        @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
        public final /* synthetic */ Iterator iterator() {
            return this.f1249a.iterator();
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Stream limit(long j) {
            return convert(this.f1249a.limit(j));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Stream map(Function function) {
            return convert(this.f1249a.map(function));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ InterfaceC2331E mapToDouble(ToDoubleFunction toDoubleFunction) {
            return C2321C.m906f(this.f1249a.mapToDouble(toDoubleFunction));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ IntStream mapToInt(ToIntFunction toIntFunction) {
            return IntStream.VivifiedWrapper.convert(this.f1249a.mapToInt(toIntFunction));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ LongStream mapToLong(ToLongFunction toLongFunction) {
            return C2512m0.m1016f(this.f1249a.mapToLong(toLongFunction));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Optional max(Comparator comparator) {
            return AbstractC2104a.m519E(this.f1249a.max(comparator));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Optional min(Comparator comparator) {
            return AbstractC2104a.m519E(this.f1249a.min(comparator));
        }

        @Override // p022j$.util.stream.Stream
        /* JADX INFO: renamed from: n */
        public final /* synthetic */ LongStream mo963n(C2184s c2184s) {
            return C2512m0.m1016f(this.f1249a.flatMapToLong(AbstractC2573y1.m1067j0(c2184s)));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ boolean noneMatch(Predicate predicate) {
            return this.f1249a.noneMatch(predicate);
        }

        @Override // p022j$.util.stream.BaseStream
        public final /* synthetic */ BaseStream onClose(Runnable runnable) {
            return C2470f.m1005f(this.f1249a.onClose(runnable));
        }

        @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
        public final /* synthetic */ BaseStream parallel() {
            return C2470f.m1005f(this.f1249a.parallel());
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Stream peek(Consumer consumer) {
            return convert(this.f1249a.peek(consumer));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Optional reduce(BinaryOperator binaryOperator) {
            return AbstractC2104a.m519E(this.f1249a.reduce(binaryOperator));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
            return this.f1249a.reduce(obj, biFunction, binaryOperator);
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Object reduce(Object obj, BinaryOperator binaryOperator) {
            return this.f1249a.reduce(obj, binaryOperator);
        }

        @Override // p022j$.util.stream.Stream
        /* JADX INFO: renamed from: s */
        public final /* synthetic */ IntStream mo964s(C2184s c2184s) {
            return IntStream.VivifiedWrapper.convert(this.f1249a.flatMapToInt(AbstractC2573y1.m1067j0(c2184s)));
        }

        @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
        public final /* synthetic */ BaseStream sequential() {
            return C2470f.m1005f(this.f1249a.sequential());
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Stream skip(long j) {
            return convert(this.f1249a.skip(j));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Stream sorted() {
            return convert(this.f1249a.sorted());
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Stream sorted(Comparator comparator) {
            return convert(this.f1249a.sorted(comparator));
        }

        @Override // p022j$.util.stream.BaseStream
        public final /* synthetic */ Spliterator spliterator() {
            return C2272d0.m865a(this.f1249a.spliterator());
        }

        @Override // p022j$.util.stream.Stream
        /* JADX INFO: renamed from: t */
        public final /* synthetic */ InterfaceC2331E mo965t(C2184s c2184s) {
            return C2321C.m906f(this.f1249a.flatMapToDouble(AbstractC2573y1.m1067j0(c2184s)));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Stream takeWhile(Predicate predicate) {
            return convert(this.f1249a.takeWhile(predicate));
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Object[] toArray() {
            return this.f1249a.toArray();
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
            return this.f1249a.toArray(intFunction);
        }

        @Override // p022j$.util.stream.Stream
        public final /* synthetic */ List toList() {
            return this.f1249a.toList();
        }

        @Override // p022j$.util.stream.BaseStream
        public final /* synthetic */ BaseStream unordered() {
            return C2470f.m1005f(this.f1249a.unordered());
        }
    }

    public final /* synthetic */ class Wrapper implements java.util.stream.Stream {
        public /* synthetic */ Wrapper() {
        }

        public static /* synthetic */ java.util.stream.Stream convert(Stream stream) {
            if (stream == null) {
                return null;
            }
            return stream instanceof VivifiedWrapper ? ((VivifiedWrapper) stream).f1249a : new Wrapper();
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ boolean allMatch(Predicate predicate) {
            return Stream.this.allMatch(predicate);
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ boolean anyMatch(Predicate predicate) {
            return Stream.this.anyMatch(predicate);
        }

        @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            Stream.this.close();
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
            return Stream.this.collect(supplier, biConsumer, biConsumer2);
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ Object collect(Collector collector) {
            return Stream.this.collect(collector == null ? null : collector instanceof C2488i ? ((C2488i) collector).f1393a : new C2482h(collector));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ long count() {
            return Stream.this.count();
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream distinct() {
            return convert(Stream.this.distinct());
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream dropWhile(Predicate predicate) {
            return convert(Stream.this.dropWhile(predicate));
        }

        public final /* synthetic */ boolean equals(Object obj) {
            Stream stream = Stream.this;
            if (obj instanceof Wrapper) {
                obj = Stream.this;
            }
            return stream.equals(obj);
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream filter(Predicate predicate) {
            return convert(Stream.this.filter(predicate));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.Optional findAny() {
            return AbstractC2104a.m523I(Stream.this.findAny());
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.Optional findFirst() {
            return AbstractC2104a.m523I(Stream.this.findFirst());
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream flatMap(Function function) {
            return convert(Stream.this.mo962a(AbstractC2573y1.m1067j0(function)));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ DoubleStream flatMapToDouble(Function function) {
            return C2326D.m910f(Stream.this.mo965t(AbstractC2573y1.m1067j0(function)));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.IntStream flatMapToInt(Function function) {
            return IntStream.Wrapper.convert(Stream.this.mo964s(AbstractC2573y1.m1067j0(function)));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ LongStream flatMapToLong(Function function) {
            return C2517n0.m1017f(Stream.this.mo963n(AbstractC2573y1.m1067j0(function)));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ void forEach(Consumer consumer) {
            Stream.this.forEach(consumer);
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ void forEachOrdered(Consumer consumer) {
            Stream.this.forEachOrdered(consumer);
        }

        public final /* synthetic */ int hashCode() {
            return Stream.this.hashCode();
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ boolean isParallel() {
            return Stream.this.isParallel();
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ Iterator iterator() {
            return Stream.this.iterator();
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream limit(long j) {
            return convert(Stream.this.limit(j));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream map(Function function) {
            return convert(Stream.this.map(function));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ DoubleStream mapToDouble(ToDoubleFunction toDoubleFunction) {
            return C2326D.m910f(Stream.this.mapToDouble(toDoubleFunction));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.IntStream mapToInt(ToIntFunction toIntFunction) {
            return IntStream.Wrapper.convert(Stream.this.mapToInt(toIntFunction));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ LongStream mapToLong(ToLongFunction toLongFunction) {
            return C2517n0.m1017f(Stream.this.mapToLong(toLongFunction));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.Optional max(Comparator comparator) {
            return AbstractC2104a.m523I(Stream.this.max(comparator));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.Optional min(Comparator comparator) {
            return AbstractC2104a.m523I(Stream.this.min(comparator));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ boolean noneMatch(Predicate predicate) {
            return Stream.this.noneMatch(predicate);
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ BaseStream onClose(Runnable runnable) {
            return C2476g.m1009f(Stream.this.onClose(runnable));
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ BaseStream parallel() {
            return C2476g.m1009f(Stream.this.parallel());
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream peek(Consumer consumer) {
            return convert(Stream.this.peek(consumer));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
            return Stream.this.reduce(obj, biFunction, binaryOperator);
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ Object reduce(Object obj, BinaryOperator binaryOperator) {
            return Stream.this.reduce(obj, binaryOperator);
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.Optional reduce(BinaryOperator binaryOperator) {
            return AbstractC2104a.m523I(Stream.this.reduce(binaryOperator));
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ BaseStream sequential() {
            return C2476g.m1009f(Stream.this.sequential());
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream skip(long j) {
            return convert(Stream.this.skip(j));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream sorted() {
            return convert(Stream.this.sorted());
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream sorted(Comparator comparator) {
            return convert(Stream.this.sorted(comparator));
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ java.util.Spliterator spliterator() {
            return Spliterator.Wrapper.convert(Stream.this.spliterator());
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream takeWhile(Predicate predicate) {
            return convert(Stream.this.takeWhile(predicate));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ Object[] toArray() {
            return Stream.this.toArray();
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
            return Stream.this.toArray(intFunction);
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ List toList() {
            return Stream.this.toList();
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ BaseStream unordered() {
            return C2476g.m1009f(Stream.this.unordered());
        }
    }

    /* JADX INFO: renamed from: a */
    Stream mo962a(C2184s c2184s);

    boolean allMatch(Predicate predicate);

    boolean anyMatch(Predicate<? super T> predicate);

    <R, A> R collect(Collector<? super T, A, R> collector);

    Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2);

    long count();

    Stream<T> distinct();

    Stream dropWhile(Predicate predicate);

    Stream<T> filter(Predicate<? super T> predicate);

    Optional findAny();

    Optional<T> findFirst();

    void forEach(Consumer<? super T> consumer);

    void forEachOrdered(Consumer consumer);

    Stream<T> limit(long j);

    <R> Stream<R> map(Function<? super T, ? extends R> function);

    InterfaceC2331E mapToDouble(ToDoubleFunction toDoubleFunction);

    IntStream mapToInt(ToIntFunction<? super T> toIntFunction);

    LongStream mapToLong(ToLongFunction<? super T> toLongFunction);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* JADX INFO: renamed from: n */
    LongStream mo963n(C2184s c2184s);

    boolean noneMatch(Predicate<? super T> predicate);

    Stream peek(Consumer consumer);

    Optional reduce(BinaryOperator binaryOperator);

    Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator);

    Object reduce(Object obj, BinaryOperator binaryOperator);

    /* JADX INFO: renamed from: s */
    IntStream mo964s(C2184s c2184s);

    Stream skip(long j);

    Stream sorted();

    Stream<T> sorted(Comparator<? super T> comparator);

    /* JADX INFO: renamed from: t */
    InterfaceC2331E mo965t(C2184s c2184s);

    Stream takeWhile(Predicate predicate);

    Object[] toArray();

    <A> A[] toArray(IntFunction<A[]> intFunction);

    List toList();

    /* JADX INFO: renamed from: j$.util.stream.Stream$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static <T> Stream<T> concat(Stream<? extends T> stream, Stream<? extends T> stream2) {
            Objects.requireNonNull(stream);
            Objects.requireNonNull(stream2);
            C2467e2 c2467e2M934b = AbstractC2355I3.m934b(new C2365K3(stream.spliterator(), stream2.spliterator()), stream.isParallel() || stream2.isParallel());
            c2467e2M934b.onClose(new RunnableC2360J3(1, stream, stream2));
            return c2467e2M934b;
        }
    }
}
