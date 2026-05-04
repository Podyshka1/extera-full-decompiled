package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2045s;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.stream.IntStream;
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
import java.util.stream.DoubleStream;

/* JADX INFO: loaded from: classes2.dex */
public interface Stream<T> extends BaseStream<T, Stream<T>> {

    public final /* synthetic */ class VivifiedWrapper implements Stream {

        /* JADX INFO: renamed from: a */
        public final /* synthetic */ java.util.stream.Stream f1014a;

        public /* synthetic */ VivifiedWrapper(java.util.stream.Stream stream) {
            this.f1014a = stream;
        }

        public static /* synthetic */ Stream convert(java.util.stream.Stream stream) {
            if (stream == null) {
                return null;
            }
            return stream instanceof Wrapper ? Stream.this : new VivifiedWrapper(stream);
        }

        @Override // j$.util.stream.Stream
        /* JADX INFO: renamed from: a */
        public final /* synthetic */ Stream mo822a(C2045s c2045s) {
            return convert(this.f1014a.flatMap(AbstractC6277y1.j0(c2045s)));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ boolean allMatch(Predicate predicate) {
            return this.f1014a.allMatch(predicate);
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ boolean anyMatch(Predicate predicate) {
            return this.f1014a.anyMatch(predicate);
        }

        @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            this.f1014a.close();
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Object collect(Collector collector) {
            return this.f1014a.collect(collector == null ? null : collector instanceof C2185h ? ((C2185h) collector).f1151a : new C2186i(collector));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
            return this.f1014a.collect(supplier, biConsumer, biConsumer2);
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ long count() {
            return this.f1014a.count();
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Stream distinct() {
            return convert(this.f1014a.distinct());
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Stream dropWhile(Predicate predicate) {
            return convert(this.f1014a.dropWhile(predicate));
        }

        public final /* synthetic */ boolean equals(Object obj) {
            java.util.stream.Stream stream = this.f1014a;
            if (obj instanceof VivifiedWrapper) {
                obj = ((VivifiedWrapper) obj).f1014a;
            }
            return stream.equals(obj);
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Stream filter(Predicate predicate) {
            return convert(this.f1014a.filter(predicate));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Optional findAny() {
            return AbstractC1965a.m399E(this.f1014a.findAny());
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Optional findFirst() {
            return AbstractC1965a.m399E(this.f1014a.findFirst());
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ void forEach(Consumer consumer) {
            this.f1014a.forEach(consumer);
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ void forEachOrdered(Consumer consumer) {
            this.f1014a.forEachOrdered(consumer);
        }

        public final /* synthetic */ int hashCode() {
            return this.f1014a.hashCode();
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ boolean isParallel() {
            return this.f1014a.isParallel();
        }

        @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
        public final /* synthetic */ Iterator iterator() {
            return this.f1014a.iterator();
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Stream limit(long j) {
            return convert(this.f1014a.limit(j));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Stream map(Function function) {
            return convert(this.f1014a.map(function));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ InterfaceC2157E mapToDouble(ToDoubleFunction toDoubleFunction) {
            return C2155C.m770f(this.f1014a.mapToDouble(toDoubleFunction));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ IntStream mapToInt(ToIntFunction toIntFunction) {
            return IntStream.VivifiedWrapper.convert(this.f1014a.mapToInt(toIntFunction));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ LongStream mapToLong(ToLongFunction toLongFunction) {
            return C6228m0.m864f(this.f1014a.mapToLong(toLongFunction));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Optional max(Comparator comparator) {
            return AbstractC1965a.m399E(this.f1014a.max(comparator));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Optional min(Comparator comparator) {
            return AbstractC1965a.m399E(this.f1014a.min(comparator));
        }

        @Override // j$.util.stream.Stream
        /* JADX INFO: renamed from: n */
        public final /* synthetic */ LongStream mo823n(C2045s c2045s) {
            return C6228m0.m864f(this.f1014a.flatMapToLong(AbstractC6277y1.j0(c2045s)));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ boolean noneMatch(Predicate predicate) {
            return this.f1014a.noneMatch(predicate);
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ BaseStream onClose(Runnable runnable) {
            return C2183f.m854f(this.f1014a.onClose(runnable));
        }

        @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
        public final /* synthetic */ BaseStream parallel() {
            return C2183f.m854f(this.f1014a.parallel());
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Stream peek(Consumer consumer) {
            return convert(this.f1014a.peek(consumer));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Optional reduce(BinaryOperator binaryOperator) {
            return AbstractC1965a.m399E(this.f1014a.reduce(binaryOperator));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
            return this.f1014a.reduce(obj, biFunction, binaryOperator);
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Object reduce(Object obj, BinaryOperator binaryOperator) {
            return this.f1014a.reduce(obj, binaryOperator);
        }

        @Override // j$.util.stream.Stream
        /* JADX INFO: renamed from: s */
        public final /* synthetic */ IntStream mo824s(C2045s c2045s) {
            return IntStream.VivifiedWrapper.convert(this.f1014a.flatMapToInt(AbstractC6277y1.j0(c2045s)));
        }

        @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
        public final /* synthetic */ BaseStream sequential() {
            return C2183f.m854f(this.f1014a.sequential());
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Stream skip(long j) {
            return convert(this.f1014a.skip(j));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Stream sorted() {
            return convert(this.f1014a.sorted());
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Stream sorted(Comparator comparator) {
            return convert(this.f1014a.sorted(comparator));
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ Spliterator spliterator() {
            return j$.util.d0.m739a(this.f1014a.spliterator());
        }

        @Override // j$.util.stream.Stream
        /* JADX INFO: renamed from: t */
        public final /* synthetic */ InterfaceC2157E mo825t(C2045s c2045s) {
            return C2155C.m770f(this.f1014a.flatMapToDouble(AbstractC6277y1.j0(c2045s)));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Stream takeWhile(Predicate predicate) {
            return convert(this.f1014a.takeWhile(predicate));
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Object[] toArray() {
            return this.f1014a.toArray();
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ Object[] toArray(IntFunction intFunction) {
            return this.f1014a.toArray(intFunction);
        }

        @Override // j$.util.stream.Stream
        public final /* synthetic */ List toList() {
            return this.f1014a.toList();
        }

        @Override // j$.util.stream.BaseStream
        public final /* synthetic */ BaseStream unordered() {
            return C2183f.m854f(this.f1014a.unordered());
        }
    }

    public final /* synthetic */ class Wrapper implements java.util.stream.Stream {
        public /* synthetic */ Wrapper() {
        }

        public static /* synthetic */ java.util.stream.Stream convert(Stream stream) {
            if (stream == null) {
                return null;
            }
            return stream instanceof VivifiedWrapper ? ((VivifiedWrapper) stream).f1014a : new Wrapper();
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
        public final /* synthetic */ Object collect(java.util.stream.Collector collector) {
            return Stream.this.collect(collector == null ? null : collector instanceof C2186i ? ((C2186i) collector).f1157a : new C2185h(collector));
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
            return AbstractC1965a.m403I(Stream.this.findAny());
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.Optional findFirst() {
            return AbstractC1965a.m403I(Stream.this.findFirst());
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.Stream flatMap(Function function) {
            return convert(Stream.this.mo822a(AbstractC6277y1.j0(function)));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ DoubleStream flatMapToDouble(Function function) {
            return C2156D.m773f(Stream.this.mo825t(AbstractC6277y1.j0(function)));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.IntStream flatMapToInt(Function function) {
            return IntStream.Wrapper.convert(Stream.this.mo824s(AbstractC6277y1.j0(function)));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.LongStream flatMapToLong(Function function) {
            return C6232n0.m865f(Stream.this.mo823n(AbstractC6277y1.j0(function)));
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
            return C2156D.m773f(Stream.this.mapToDouble(toDoubleFunction));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.IntStream mapToInt(ToIntFunction toIntFunction) {
            return IntStream.Wrapper.convert(Stream.this.mapToInt(toIntFunction));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.stream.LongStream mapToLong(ToLongFunction toLongFunction) {
            return C6232n0.m865f(Stream.this.mapToLong(toLongFunction));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.Optional max(Comparator comparator) {
            return AbstractC1965a.m403I(Stream.this.max(comparator));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ java.util.Optional min(Comparator comparator) {
            return AbstractC1965a.m403I(Stream.this.min(comparator));
        }

        @Override // java.util.stream.Stream
        public final /* synthetic */ boolean noneMatch(Predicate predicate) {
            return Stream.this.noneMatch(predicate);
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ java.util.stream.BaseStream onClose(Runnable runnable) {
            return C2184g.m858f(Stream.this.onClose(runnable));
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ java.util.stream.BaseStream parallel() {
            return C2184g.m858f(Stream.this.parallel());
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
            return AbstractC1965a.m403I(Stream.this.reduce(binaryOperator));
        }

        @Override // java.util.stream.BaseStream
        public final /* synthetic */ java.util.stream.BaseStream sequential() {
            return C2184g.m858f(Stream.this.sequential());
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
        public final /* synthetic */ java.util.stream.BaseStream unordered() {
            return C2184g.m858f(Stream.this.unordered());
        }
    }

    /* JADX INFO: renamed from: a */
    Stream mo822a(C2045s c2045s);

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

    InterfaceC2157E mapToDouble(ToDoubleFunction toDoubleFunction);

    IntStream mapToInt(ToIntFunction<? super T> toIntFunction);

    LongStream mapToLong(ToLongFunction<? super T> toLongFunction);

    Optional max(Comparator comparator);

    Optional min(Comparator comparator);

    /* JADX INFO: renamed from: n */
    LongStream mo823n(C2045s c2045s);

    boolean noneMatch(Predicate<? super T> predicate);

    Stream peek(Consumer consumer);

    Optional reduce(BinaryOperator binaryOperator);

    Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator);

    Object reduce(Object obj, BinaryOperator binaryOperator);

    /* JADX INFO: renamed from: s */
    IntStream mo824s(C2045s c2045s);

    Stream skip(long j);

    Stream sorted();

    Stream<T> sorted(Comparator<? super T> comparator);

    /* JADX INFO: renamed from: t */
    InterfaceC2157E mo825t(C2045s c2045s);

    Stream takeWhile(Predicate predicate);

    Object[] toArray();

    <A> A[] toArray(IntFunction<A[]> intFunction);

    List toList();

    /* JADX INFO: renamed from: j$.util.stream.Stream$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static <T> Stream<T> concat(Stream<? extends T> stream, Stream<? extends T> stream2) {
            Objects.requireNonNull(stream);
            Objects.requireNonNull(stream2);
            C6198e2 c6198e2M794b = I3.m794b(new K3(stream.spliterator(), stream2.spliterator()), stream.isParallel() || stream2.isParallel());
            c6198e2M794b.onClose(new J3(1, stream, stream2));
            return c6198e2M794b;
        }
    }
}
