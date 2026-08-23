package p022j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;
import p022j$.time.C2184s;
import p022j$.util.C2217B;
import p022j$.util.C2218C;
import p022j$.util.C2227L;
import p022j$.util.C2286g0;
import p022j$.util.C2588z;
import p022j$.util.InterfaceC2230O;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.l0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2507l0 extends AbstractC2446b implements LongStream {
    @Override // p022j$.util.stream.LongStream
    public final C2218C findAny() {
        return (C2218C) m985v0(C2351I.f1151d);
    }

    @Override // p022j$.util.stream.LongStream
    public final C2218C findFirst() {
        return (C2218C) m985v0(C2351I.f1150c);
    }

    @Override // p022j$.util.stream.LongStream
    public final LongStream sorted() {
        return new C2364K2(this, EnumC2462d3.f1347q | EnumC2462d3.f1345o, 0);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        m985v0(new C2386P(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        m985v0(new C2386P(longConsumer, true));
    }

    /* JADX INFO: renamed from: H0 */
    public static InterfaceC2240Z m1012H0(Spliterator spliterator) {
        if (spliterator instanceof InterfaceC2240Z) {
            return (InterfaceC2240Z) spliterator;
        }
        if (AbstractC2385O3.f1213a) {
            AbstractC2385O3.m956a(AbstractC2446b.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: z0 */
    public final EnumC2468e3 mo903z0() {
        return EnumC2468e3.LONG_VALUE;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: x0 */
    public final InterfaceC2352I0 mo900x0(AbstractC2446b abstractC2446b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC2573y1.m1059X(abstractC2446b, spliterator, z);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: G0 */
    public final Spliterator mo889G0(AbstractC2446b abstractC2446b, Supplier supplier, boolean z) {
        return new C2545s3(abstractC2446b, supplier, z);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: y0 */
    public final boolean mo902y0(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2) {
        LongConsumer c2227l;
        boolean zMo874p;
        InterfaceC2240Z interfaceC2240ZM1012H0 = m1012H0(spliterator);
        if (interfaceC2529p2 instanceof LongConsumer) {
            c2227l = (LongConsumer) interfaceC2529p2;
        } else {
            if (AbstractC2385O3.f1213a) {
                AbstractC2385O3.m956a(AbstractC2446b.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC2529p2);
            c2227l = new C2227L(interfaceC2529p2, 1);
        }
        do {
            zMo874p = interfaceC2529p2.mo874p();
            if (zMo874p) {
                break;
            }
        } while (interfaceC2240ZM1012H0.tryAdvance(c2227l));
        return zMo874p;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: p0 */
    public final InterfaceC2312A0 mo896p0(long j, IntFunction intFunction) {
        return AbstractC2573y1.m1069l0(j);
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final InterfaceC2230O iterator() {
        InterfaceC2240Z interfaceC2240ZSpliterator = spliterator();
        Objects.requireNonNull(interfaceC2240ZSpliterator);
        return new C2286g0(interfaceC2240ZSpliterator);
    }

    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream
    public final InterfaceC2240Z spliterator() {
        return m1012H0(super.spliterator());
    }

    @Override // p022j$.util.stream.LongStream
    public final InterfaceC2331E asDoubleStream() {
        return new C2546t(this, EnumC2462d3.f1344n, 5);
    }

    @Override // p022j$.util.stream.LongStream
    public final Stream boxed() {
        return new C2541s(this, 0, new C2526p(26), 2);
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: e */
    public final LongStream mo948e() {
        Objects.requireNonNull(null);
        return new C2556v(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, 3);
    }

    @Override // p022j$.util.stream.LongStream
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new C2541s(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, longFunction, 2);
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: x */
    public final IntStream mo953x() {
        Objects.requireNonNull(null);
        return new C2551u(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, 2);
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: j */
    public final InterfaceC2331E mo949j() {
        Objects.requireNonNull(null);
        return new C2546t(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, 6);
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: a */
    public final LongStream mo944a(C2184s c2184s) {
        Objects.requireNonNull(c2184s);
        return new C2483h0(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n | EnumC2462d3.f1350t, c2184s, 0);
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: c */
    public final LongStream mo946c() {
        Objects.requireNonNull(null);
        return new C2556v(this, EnumC2462d3.f1350t, 5);
    }

    @Override // p022j$.util.stream.LongStream
    public final LongStream peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new C2483h0(this, longConsumer);
    }

    @Override // p022j$.util.stream.LongStream
    public final LongStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC2314A2.m883g(this, 0L, j);
    }

    @Override // p022j$.util.stream.LongStream
    public final LongStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC2314A2.m883g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: b */
    public final LongStream mo945b() {
        int i = AbstractC2505k4.f1411a;
        Objects.requireNonNull(null);
        return new C2364K2(this, AbstractC2505k4.f1411a, 1);
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: d */
    public final LongStream mo947d() {
        int i = AbstractC2505k4.f1411a;
        Objects.requireNonNull(null);
        return new C2364K2(this, AbstractC2505k4.f1412b, 2);
    }

    @Override // p022j$.util.stream.LongStream
    public final LongStream distinct() {
        return ((AbstractC2485h2) boxed()).distinct().mapToLong(new C2526p(23));
    }

    @Override // p022j$.util.stream.LongStream
    public final long sum() {
        return reduce(0L, new C2459d0(0));
    }

    @Override // p022j$.util.stream.LongStream
    public final C2218C min() {
        return reduce(new C2526p(22));
    }

    @Override // p022j$.util.stream.LongStream
    public final C2218C max() {
        return reduce(new C2526p(29));
    }

    @Override // p022j$.util.stream.LongStream
    public final C2217B average() {
        long j = ((long[]) collect(new C2494j(14), new C2526p(27), new C2526p(28)))[0];
        return j > 0 ? new C2217B(r0[1] / j) : C2217B.f891c;
    }

    @Override // p022j$.util.stream.LongStream
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) m985v0(new C2578z1(EnumC2468e3.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // p022j$.util.stream.LongStream
    public final C2588z summaryStatistics() {
        return (C2588z) collect(new C2494j(4), new C2526p(21), new C2526p(24));
    }

    @Override // p022j$.util.stream.LongStream
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2531q c2531q = new C2531q(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(c2531q);
        return m985v0(new C2328D1(EnumC2468e3.LONG_VALUE, c2531q, objLongConsumer, supplier, 0));
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: v */
    public final boolean mo952v() {
        return ((Boolean) m985v0(AbstractC2573y1.m1072o0(EnumC2557v0.ANY))).booleanValue();
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: m */
    public final boolean mo950m() {
        return ((Boolean) m985v0(AbstractC2573y1.m1072o0(EnumC2557v0.ALL))).booleanValue();
    }

    @Override // p022j$.util.stream.LongStream
    public final C2218C reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (C2218C) m985v0(new C2318B1(EnumC2468e3.LONG_VALUE, longBinaryOperator, 0));
    }

    @Override // p022j$.util.stream.LongStream
    /* JADX INFO: renamed from: p */
    public final boolean mo951p() {
        return ((Boolean) m985v0(AbstractC2573y1.m1072o0(EnumC2557v0.NONE))).booleanValue();
    }

    @Override // p022j$.util.stream.LongStream
    public final long[] toArray() {
        return (long[]) AbstractC2573y1.m1066i0((InterfaceC2342G0) m986w0(new C2526p(25))).mo920b();
    }

    @Override // p022j$.util.stream.LongStream
    public final long count() {
        return ((Long) m985v0(new C2338F1(0))).longValue();
    }
}
