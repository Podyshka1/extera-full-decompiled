package p022j$.util.stream;

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
import p022j$.time.C2184s;
import p022j$.util.C2274e0;
import p022j$.util.Objects;
import p022j$.util.Optional;
import p022j$.util.Spliterator;
import p022j$.util.concurrent.C2265s;
import p022j$.util.function.C2277a;
import p022j$.util.stream.Collector;

/* JADX INFO: renamed from: j$.util.stream.h2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2485h2 extends AbstractC2446b implements Stream {
    @Override // p022j$.util.stream.Stream
    public final Stream sorted() {
        return new C2369L2(this);
    }

    @Override // p022j$.util.stream.Stream
    public final Stream distinct() {
        return new C2521o(this, EnumC2462d3.f1343m | EnumC2462d3.f1350t);
    }

    @Override // p022j$.util.stream.Stream
    public final Optional min(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new C2277a(comparator, 1));
    }

    @Override // p022j$.util.stream.Stream
    public final Optional findAny() {
        return (Optional) m985v0(C2356J.f1159d);
    }

    @Override // p022j$.util.stream.Stream
    public final Optional findFirst() {
        return (Optional) m985v0(C2356J.f1158c);
    }

    @Override // p022j$.util.stream.Stream
    public final Stream sorted(Comparator comparator) {
        return new C2369L2(this, comparator);
    }

    @Override // p022j$.util.stream.Stream
    public final Object reduce(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        Objects.requireNonNull(biFunction);
        Objects.requireNonNull(binaryOperator);
        return m985v0(new C2328D1(EnumC2468e3.REFERENCE, binaryOperator, biFunction, obj, 2));
    }

    @Override // p022j$.util.stream.Stream
    public final Object reduce(Object obj, BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        Objects.requireNonNull(binaryOperator);
        return m985v0(new C2328D1(EnumC2468e3.REFERENCE, binaryOperator, binaryOperator, obj, 2));
    }

    public void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m985v0(new C2391Q(consumer, false));
    }

    public void forEachOrdered(Consumer consumer) {
        Objects.requireNonNull(consumer);
        m985v0(new C2391Q(consumer, true));
    }

    @Override // p022j$.util.stream.Stream
    public final Optional max(Comparator comparator) {
        Objects.requireNonNull(comparator);
        return reduce(new C2277a(comparator, 0));
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: z0 */
    public final EnumC2468e3 mo903z0() {
        return EnumC2468e3.REFERENCE;
    }

    @Override // p022j$.util.stream.Stream
    public final Optional reduce(BinaryOperator binaryOperator) {
        Objects.requireNonNull(binaryOperator);
        return (Optional) m985v0(new C2318B1(EnumC2468e3.REFERENCE, binaryOperator, 2));
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: x0 */
    public final InterfaceC2352I0 mo900x0(AbstractC2446b abstractC2446b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC2573y1.m1056U(abstractC2446b, spliterator, z, intFunction);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: G0 */
    public final Spliterator mo889G0(AbstractC2446b abstractC2446b, Supplier supplier, boolean z) {
        return new C2350H3(abstractC2446b, supplier, z);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: y0 */
    public final boolean mo902y0(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2) {
        boolean zMo874p;
        do {
            zMo874p = interfaceC2529p2.mo874p();
            if (zMo874p) {
                break;
            }
        } while (spliterator.tryAdvance(interfaceC2529p2));
        return zMo874p;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: p0 */
    public final InterfaceC2312A0 mo896p0(long j, IntFunction intFunction) {
        return AbstractC2573y1.m1055T(j, intFunction);
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final Iterator iterator() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new C2274e0(spliterator);
    }

    @Override // p022j$.util.stream.Stream
    public final Stream filter(Predicate predicate) {
        Objects.requireNonNull(predicate);
        return new C2541s(this, EnumC2462d3.f1350t, predicate, 4);
    }

    @Override // p022j$.util.stream.Stream
    public final Stream map(Function function) {
        Objects.requireNonNull(function);
        return new C2541s(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, function, 5);
    }

    @Override // p022j$.util.stream.Stream
    public final IntStream mapToInt(ToIntFunction toIntFunction) {
        Objects.requireNonNull(toIntFunction);
        return new C2420W(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, toIntFunction, 4);
    }

    @Override // p022j$.util.stream.Stream
    public final Object collect(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(biConsumer);
        Objects.requireNonNull(biConsumer2);
        return m985v0(new C2328D1(EnumC2468e3.REFERENCE, biConsumer2, biConsumer, supplier, 3));
    }

    @Override // p022j$.util.stream.Stream
    public final LongStream mapToLong(ToLongFunction toLongFunction) {
        Objects.requireNonNull(toLongFunction);
        return new C2483h0(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, toLongFunction, 3);
    }

    @Override // p022j$.util.stream.Stream
    public final InterfaceC2331E mapToDouble(ToDoubleFunction toDoubleFunction) {
        Objects.requireNonNull(toDoubleFunction);
        return new C2566x(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, toDoubleFunction, 2);
    }

    @Override // p022j$.util.stream.Stream
    public final long count() {
        return ((Long) m985v0(new C2338F1(2))).longValue();
    }

    @Override // p022j$.util.stream.Stream
    /* JADX INFO: renamed from: a */
    public final Stream mo962a(C2184s c2184s) {
        Objects.requireNonNull(c2184s);
        return new C2541s(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n | EnumC2462d3.f1350t, c2184s, 6);
    }

    @Override // p022j$.util.stream.Stream
    /* JADX INFO: renamed from: s */
    public final IntStream mo964s(C2184s c2184s) {
        Objects.requireNonNull(c2184s);
        return new C2420W(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n | EnumC2462d3.f1350t, c2184s, 5);
    }

    @Override // p022j$.util.stream.Stream
    /* JADX INFO: renamed from: t */
    public final InterfaceC2331E mo965t(C2184s c2184s) {
        Objects.requireNonNull(c2184s);
        return new C2566x(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n | EnumC2462d3.f1350t, c2184s, 3);
    }

    @Override // p022j$.util.stream.Stream
    public final Object collect(Collector collector) {
        Collector collector2;
        Object objM985v0;
        if (!this.f1296h.f1306r || !collector.characteristics().contains(Collector.Characteristics.CONCURRENT) || (EnumC2462d3.ORDERED.m1001k(this.f1301m) && !collector.characteristics().contains(Collector.Characteristics.UNORDERED))) {
            Supplier supplier = ((Collector) Objects.requireNonNull(collector)).supplier();
            collector2 = collector;
            objM985v0 = m985v0(new C2363K1(EnumC2468e3.REFERENCE, collector.combiner(), collector.accumulator(), supplier, collector2));
        } else {
            objM985v0 = collector.supplier().get();
            forEach(new C2265s(6, collector.accumulator(), objM985v0));
            collector2 = collector;
        }
        return collector2.characteristics().contains(Collector.Characteristics.IDENTITY_FINISH) ? objM985v0 : collector2.finisher().apply(objM985v0);
    }

    @Override // p022j$.util.stream.Stream
    /* JADX INFO: renamed from: n */
    public final LongStream mo963n(C2184s c2184s) {
        Objects.requireNonNull(c2184s);
        return new C2483h0(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n | EnumC2462d3.f1350t, c2184s, 2);
    }

    @Override // p022j$.util.stream.Stream
    public final Stream peek(Consumer consumer) {
        Objects.requireNonNull(consumer);
        return new C2541s(this, consumer);
    }

    @Override // p022j$.util.stream.Stream
    public final Stream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC2314A2.m884h(this, 0L, j);
    }

    @Override // p022j$.util.stream.Stream
    public final Stream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC2314A2.m884h(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p022j$.util.stream.Stream
    public final Stream takeWhile(Predicate predicate) {
        int i = AbstractC2505k4.f1411a;
        Objects.requireNonNull(predicate);
        return new C2390P3(this, AbstractC2505k4.f1411a, predicate, 0);
    }

    @Override // p022j$.util.stream.Stream
    public final Stream dropWhile(Predicate predicate) {
        int i = AbstractC2505k4.f1411a;
        Objects.requireNonNull(predicate);
        return new C2390P3(this, AbstractC2505k4.f1412b, predicate, 1);
    }

    @Override // p022j$.util.stream.Stream
    public final Object[] toArray(IntFunction intFunction) {
        return AbstractC2573y1.m1063f0(m986w0(intFunction), intFunction).mo927g(intFunction);
    }

    @Override // p022j$.util.stream.Stream
    public final Object[] toArray() {
        return toArray(new C2459d0(10));
    }

    @Override // p022j$.util.stream.Stream
    public final boolean anyMatch(Predicate predicate) {
        return ((Boolean) m985v0(AbstractC2573y1.m1073q0(EnumC2557v0.ANY, predicate))).booleanValue();
    }

    @Override // p022j$.util.stream.Stream
    public final boolean allMatch(Predicate predicate) {
        return ((Boolean) m985v0(AbstractC2573y1.m1073q0(EnumC2557v0.ALL, predicate))).booleanValue();
    }

    @Override // p022j$.util.stream.Stream
    public final boolean noneMatch(Predicate predicate) {
        return ((Boolean) m985v0(AbstractC2573y1.m1073q0(EnumC2557v0.NONE, predicate))).booleanValue();
    }

    @Override // p022j$.util.stream.Stream
    public final List toList() {
        return Collections.unmodifiableList(new ArrayList(Arrays.asList(toArray())));
    }
}
