package p022j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntUnaryOperator;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;
import p022j$.util.C2217B;
import p022j$.util.C2223H;
import p022j$.util.C2276f0;
import p022j$.util.C2586x;
import p022j$.util.InterfaceC2226K;
import p022j$.util.Objects;
import p022j$.util.OptionalInt;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2453c0 extends AbstractC2446b implements IntStream {
    @Override // p022j$.util.stream.IntStream
    public final OptionalInt findAny() {
        return (OptionalInt) m985v0(C2346H.f1146d);
    }

    @Override // p022j$.util.stream.IntStream
    public final OptionalInt findFirst() {
        return (OptionalInt) m985v0(C2346H.f1145c);
    }

    @Override // p022j$.util.stream.IntStream
    public final IntStream sorted() {
        return new C2359J2(this, EnumC2462d3.f1347q | EnumC2462d3.f1345o);
    }

    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        m985v0(new C2381O(intConsumer, false));
    }

    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        m985v0(new C2381O(intConsumer, true));
    }

    /* JADX INFO: renamed from: H0 */
    public static Spliterator.OfInt m994H0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.OfInt) {
            return (Spliterator.OfInt) spliterator;
        }
        if (AbstractC2385O3.f1213a) {
            AbstractC2385O3.m956a(AbstractC2446b.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: z0 */
    public final EnumC2468e3 mo903z0() {
        return EnumC2468e3.INT_VALUE;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: x0 */
    public final InterfaceC2352I0 mo900x0(AbstractC2446b abstractC2446b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC2573y1.m1058W(abstractC2446b, spliterator, z);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: G0 */
    public final Spliterator mo889G0(AbstractC2446b abstractC2446b, Supplier supplier, boolean z) {
        return new C2535q3(abstractC2446b, supplier, z);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: y0 */
    public final boolean mo902y0(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2) {
        IntConsumer c2223h;
        boolean zMo874p;
        Spliterator.OfInt ofIntM994H0 = m994H0(spliterator);
        if (interfaceC2529p2 instanceof IntConsumer) {
            c2223h = (IntConsumer) interfaceC2529p2;
        } else {
            if (AbstractC2385O3.f1213a) {
                AbstractC2385O3.m956a(AbstractC2446b.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC2529p2);
            c2223h = new C2223H(interfaceC2529p2, 1);
        }
        do {
            zMo874p = interfaceC2529p2.mo874p();
            if (zMo874p) {
                break;
            }
        } while (ofIntM994H0.tryAdvance(c2223h));
        return zMo874p;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: p0 */
    public final InterfaceC2312A0 mo896p0(long j, IntFunction intFunction) {
        return AbstractC2573y1.m1068k0(j);
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final InterfaceC2226K iterator() {
        Spliterator.OfInt ofIntSpliterator = spliterator();
        Objects.requireNonNull(ofIntSpliterator);
        return new C2276f0(ofIntSpliterator);
    }

    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream
    public final Spliterator.OfInt spliterator() {
        return m994H0(super.spliterator());
    }

    @Override // p022j$.util.stream.IntStream
    public final LongStream asLongStream() {
        return new C2556v(this, 0, 1);
    }

    @Override // p022j$.util.stream.IntStream
    public final InterfaceC2331E asDoubleStream() {
        return new C2546t(this, 0, 3);
    }

    @Override // p022j$.util.stream.IntStream
    public final Stream boxed() {
        return new C2541s(this, 0, new C2526p(13), 1);
    }

    @Override // p022j$.util.stream.IntStream
    public final IntStream map(IntUnaryOperator intUnaryOperator) {
        Objects.requireNonNull(intUnaryOperator);
        return new C2420W(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, intUnaryOperator, 1);
    }

    @Override // p022j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C2541s(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, intFunction, 1);
    }

    @Override // p022j$.util.stream.IntStream
    /* JADX INFO: renamed from: k */
    public final LongStream mo936k() {
        Objects.requireNonNull(null);
        return new C2556v(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, 2);
    }

    @Override // p022j$.util.stream.IntStream
    /* JADX INFO: renamed from: g */
    public final InterfaceC2331E mo935g() {
        Objects.requireNonNull(null);
        return new C2546t(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, 4);
    }

    @Override // p022j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) m985v0(new C2383O1(EnumC2468e3.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // p022j$.util.stream.IntStream
    /* JADX INFO: renamed from: o */
    public final IntStream mo937o(C2371M c2371m) {
        Objects.requireNonNull(c2371m);
        return new C2420W(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n | EnumC2462d3.f1350t, c2371m, 2);
    }

    @Override // p022j$.util.stream.IntStream
    public final OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (OptionalInt) m985v0(new C2318B1(EnumC2468e3.INT_VALUE, intBinaryOperator, 3));
    }

    @Override // p022j$.util.stream.IntStream
    public final IntStream filter(IntPredicate intPredicate) {
        Objects.requireNonNull(intPredicate);
        return new C2420W(this, EnumC2462d3.f1350t, intPredicate, 3);
    }

    @Override // p022j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new C2420W(this, intConsumer);
    }

    @Override // p022j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC2314A2.m882f(this, 0L, j);
    }

    @Override // p022j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC2314A2.m882f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p022j$.util.stream.IntStream
    public final IntStream takeWhile(IntPredicate intPredicate) {
        int i = AbstractC2505k4.f1411a;
        Objects.requireNonNull(intPredicate);
        return new C2404S3(this, AbstractC2505k4.f1411a, intPredicate);
    }

    @Override // p022j$.util.stream.IntStream
    public final IntStream dropWhile(IntPredicate intPredicate) {
        int i = AbstractC2505k4.f1411a;
        Objects.requireNonNull(intPredicate);
        return new C2414U3(this, AbstractC2505k4.f1412b, intPredicate);
    }

    @Override // p022j$.util.stream.IntStream
    public final long count() {
        return ((Long) m985v0(new C2338F1(3))).longValue();
    }

    @Override // p022j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC2485h2) boxed()).distinct().mapToInt(new C2526p(12));
    }

    @Override // p022j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new C2526p(17));
    }

    @Override // p022j$.util.stream.IntStream
    public final OptionalInt min() {
        return reduce(new C2526p(14));
    }

    @Override // p022j$.util.stream.IntStream
    public final OptionalInt max() {
        return reduce(new C2526p(18));
    }

    @Override // p022j$.util.stream.IntStream
    public final C2217B average() {
        long j = ((long[]) collect(new C2494j(13), new C2526p(19), new C2526p(20)))[0];
        return j > 0 ? new C2217B(r0[1] / j) : C2217B.f891c;
    }

    @Override // p022j$.util.stream.IntStream
    public final C2586x summaryStatistics() {
        return (C2586x) collect(new C2494j(2), new C2526p(15), new C2526p(16));
    }

    @Override // p022j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2531q c2531q = new C2531q(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(c2531q);
        return m985v0(new C2328D1(EnumC2468e3.INT_VALUE, c2531q, objIntConsumer, supplier, 4));
    }

    @Override // p022j$.util.stream.IntStream
    public final boolean anyMatch(IntPredicate intPredicate) {
        return ((Boolean) m985v0(AbstractC2573y1.m1071n0(EnumC2557v0.ANY, intPredicate))).booleanValue();
    }

    @Override // p022j$.util.stream.IntStream
    public final boolean allMatch(IntPredicate intPredicate) {
        return ((Boolean) m985v0(AbstractC2573y1.m1071n0(EnumC2557v0.ALL, intPredicate))).booleanValue();
    }

    @Override // p022j$.util.stream.IntStream
    public final boolean noneMatch(IntPredicate intPredicate) {
        return ((Boolean) m985v0(AbstractC2573y1.m1071n0(EnumC2557v0.NONE, intPredicate))).booleanValue();
    }

    @Override // p022j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC2573y1.m1065h0((InterfaceC2332E0) m986w0(new C2526p(11))).mo920b();
    }
}
