package j$.util.stream;

import j$.time.C2045s;
import j$.util.Objects;
import j$.util.Optional;
import j$.util.Spliterator;
import j$.util.concurrent.C2123s;
import j$.util.function.C2132a;
import j$.util.stream.Collector;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
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

/* JADX INFO: renamed from: j$.util.stream.h2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6210h2 extends AbstractC2179b implements Stream {
    @Override // j$.util.stream.Stream
    public final Stream sorted() {
        return new L2(this);
    }

    @Override // j$.util.stream.Stream
    public final Stream distinct() {
        return new C2192o(this, EnumC6195d3.f1107m | EnumC6195d3.f1114t);
    }

    @Override // j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new C2132a(comparator, 1));
    }

    @Override // j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) v0(C2162J.f924d);
    }

    @Override // j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) v0(C2162J.f923c);
    }

    @Override // j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new L2(this, comparator);
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(binaryOperator);
        return v0(new D1(EnumC6199e3.REFERENCE, binaryOperator, biFunction, obj, 2));
    }

    @Override // j$.util.stream.Stream
    public final Object reduce(Object obj, BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        Objects.requireNonNull(binaryOperator);
        return v0(new D1(EnumC6199e3.REFERENCE, binaryOperator, binaryOperator, obj, 2));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        v0(new C2169Q(consumer, false));
    }

    public void forEachOrdered(Consumer consumer) {
        Objects.requireNonNull(consumer);
        v0(new C2169Q(consumer, true));
    }

    @Override // j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new C2132a(comparator, 0));
    }

    @Override // j$.util.stream.AbstractC2179b
    public final EnumC6199e3 z0() {
        return EnumC6199e3.REFERENCE;
    }

    @Override // j$.util.stream.Stream
    public final Optional reduce(BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        return (Optional) v0(new B1(EnumC6199e3.REFERENCE, binaryOperator, 2));
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 x0(AbstractC2179b abstractC2179b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC6277y1.m902U(abstractC2179b, spliterator, z, intFunction);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final Spliterator G0(AbstractC2179b abstractC2179b, Supplier supplier, boolean z) {
        return new H3(abstractC2179b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final boolean y0(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2) {
        boolean zMo745p;
        do {
            zMo745p = interfaceC6242p2.mo745p();
            if (zMo745p) {
                break;
            }
        } while (spliterator.tryAdvance(interfaceC6242p2));
        return zMo745p;
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final A0 p0(long j, IntFunction intFunction) {
        return AbstractC6277y1.m901T(j, intFunction);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final Iterator iterator() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.e0(spliterator);
    }

    @Override // j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2196s(this, EnumC6195d3.f1114t, predicate, 4);
    }

    @Override // j$.util.stream.Stream
    public final Stream map(Function function) {
        Objects.requireNonNull(function);
        return new C2196s(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, function, 5);
    }

    @Override // j$.util.stream.Stream
    public final IntStream mapToInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2174W(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, toIntFunction, 4);
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return v0(new D1(EnumC6199e3.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }

    @Override // j$.util.stream.Stream
    public final LongStream mapToLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C6208h0(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, toLongFunction, 3);
    }

    @Override // j$.util.stream.Stream
    public final InterfaceC2157E mapToDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2201x(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, toDoubleFunction, 2);
    }

    @Override // j$.util.stream.Stream
    public final long count() {
        return ((Long) v0(new F1(2))).longValue();
    }

    @Override // j$.util.stream.Stream
    /* JADX INFO: renamed from: a */
    public final Stream mo822a(C2045s c2045s) {
        Objects.requireNonNull(c2045s);
        return new C2196s(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n | EnumC6195d3.f1114t, c2045s, 6);
    }

    @Override // j$.util.stream.Stream
    /* JADX INFO: renamed from: s */
    public final IntStream mo824s(C2045s c2045s) {
        Objects.requireNonNull(c2045s);
        return new C2174W(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n | EnumC6195d3.f1114t, c2045s, 5);
    }

    @Override // j$.util.stream.Stream
    /* JADX INFO: renamed from: t */
    public final InterfaceC2157E mo825t(C2045s c2045s) {
        Objects.requireNonNull(c2045s);
        return new C2201x(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n | EnumC6195d3.f1114t, c2045s, 3);
    }

    @Override // j$.util.stream.Stream
    public final Object collect(Collector collector) {
        Collector collector2;
        Object objV0;
        if (!this.f1061h.f1071r || !collector.characteristics().contains(Collector.Characteristics.CONCURRENT) || (EnumC6195d3.ORDERED.m850k(this.f1066m) && !collector.characteristics().contains(Collector.Characteristics.UNORDERED))) {
            Supplier supplier = ((Collector) Objects.requireNonNull(collector)).supplier();
            collector2 = collector;
            objV0 = v0(new K1(EnumC6199e3.REFERENCE, collector.combiner(), collector.accumulator(), supplier, collector2));
        } else {
            objV0 = collector.supplier().get();
            forEach(new C2123s(6, collector.accumulator(), objV0));
            collector2 = collector;
        }
        return collector2.characteristics().contains(Collector.Characteristics.IDENTITY_FINISH) ? objV0 : collector2.finisher().apply(objV0);
    }

    @Override // j$.util.stream.Stream
    /* JADX INFO: renamed from: n */
    public final LongStream mo823n(C2045s c2045s) {
        Objects.requireNonNull(c2045s);
        return new C6208h0(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n | EnumC6195d3.f1114t, c2045s, 2);
    }

    @Override // j$.util.stream.Stream
    public final Stream peek(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2196s(this, consumer);
    }

    @Override // j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return A2.m755h(this, 0L, j);
    }

    @Override // j$.util.stream.Stream
    public final Stream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : A2.m755h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.Stream
    public final Stream takeWhile(Predicate predicate) {
        int i = k4.f1175a;
        Objects.requireNonNull(predicate);
        return new P3(this, k4.f1175a, predicate, 0);
    }

    @Override // j$.util.stream.Stream
    public final Stream dropWhile(Predicate predicate) {
        int i = k4.f1175a;
        Objects.requireNonNull(predicate);
        return new P3(this, k4.f1176b, predicate, 1);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC6277y1.f0(w0(intFunction), intFunction).mo790g(intFunction);
    }

    @Override // j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new C6192d0(10));
    }

    @Override // j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) v0(AbstractC6277y1.q0(EnumC6264v0.ANY, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean allMatch(Predicate predicate) {
        return ((Boolean) v0(AbstractC6277y1.q0(EnumC6264v0.ALL, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final boolean noneMatch(Predicate predicate) {
        return ((Boolean) v0(AbstractC6277y1.q0(EnumC6264v0.NONE, predicate))).booleanValue();
    }

    @Override // j$.util.stream.Stream
    public final List toList() {
        return Collections.unmodifiableList(new ArrayList(Arrays.asList(toArray())));
    }
}
