package p022j$.util.stream;

import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import p022j$.time.C2184s;
import p022j$.time.format.C2148a;
import p022j$.util.C2217B;
import p022j$.util.C2219D;
import p022j$.util.C2288h0;
import p022j$.util.C2585w;
import p022j$.util.InterfaceC2222G;
import p022j$.util.InterfaceC2235U;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.B */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2316B extends AbstractC2446b implements InterfaceC2331E {
    @Override // p022j$.util.stream.InterfaceC2331E
    public final C2217B findAny() {
        return (C2217B) m985v0(C2341G.f1138d);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final C2217B findFirst() {
        return (C2217B) m985v0(C2341G.f1137c);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final InterfaceC2331E sorted() {
        return new C2354I2(this, EnumC2462d3.f1347q | EnumC2462d3.f1345o, 0);
    }

    /* JADX INFO: renamed from: H0 */
    public static InterfaceC2235U m888H0(Spliterator spliterator) {
        if (spliterator instanceof InterfaceC2235U) {
            return (InterfaceC2235U) spliterator;
        }
        if (AbstractC2385O3.f1213a) {
            AbstractC2385O3.m956a(AbstractC2446b.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        m985v0(new C2376N(doubleConsumer, false));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        m985v0(new C2376N(doubleConsumer, true));
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: z0 */
    public final EnumC2468e3 mo903z0() {
        return EnumC2468e3.DOUBLE_VALUE;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: x0 */
    public final InterfaceC2352I0 mo900x0(AbstractC2446b abstractC2446b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC2573y1.m1057V(abstractC2446b, spliterator, z);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: G0 */
    public final Spliterator mo889G0(AbstractC2446b abstractC2446b, Supplier supplier, boolean z) {
        return new C2525o3(abstractC2446b, supplier, z);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: y0 */
    public final boolean mo902y0(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2) {
        DoubleConsumer c2219d;
        boolean zMo874p;
        InterfaceC2235U interfaceC2235UM888H0 = m888H0(spliterator);
        if (interfaceC2529p2 instanceof DoubleConsumer) {
            c2219d = (DoubleConsumer) interfaceC2529p2;
        } else {
            if (AbstractC2385O3.f1213a) {
                AbstractC2385O3.m956a(AbstractC2446b.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC2529p2);
            c2219d = new C2219D(interfaceC2529p2, 1);
        }
        do {
            zMo874p = interfaceC2529p2.mo874p();
            if (zMo874p) {
                break;
            }
        } while (interfaceC2235UM888H0.tryAdvance(c2219d));
        return zMo874p;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: p0 */
    public final InterfaceC2312A0 mo896p0(long j, IntFunction intFunction) {
        return AbstractC2573y1.m1061b0(j);
    }

    @Override // p022j$.util.stream.BaseStream, p022j$.util.stream.InterfaceC2331E
    public final InterfaceC2222G iterator() {
        InterfaceC2235U interfaceC2235USpliterator = spliterator();
        Objects.requireNonNull(interfaceC2235USpliterator);
        return new C2288h0(interfaceC2235USpliterator);
    }

    @Override // p022j$.util.stream.AbstractC2446b, p022j$.util.stream.BaseStream
    public final InterfaceC2235U spliterator() {
        return m888H0(super.spliterator());
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final Stream boxed() {
        return new C2541s(this, 0, new C2526p(1), 0);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: e */
    public final InterfaceC2331E mo894e() {
        Objects.requireNonNull(null);
        return new C2546t(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, 0);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new C2541s(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, doubleFunction, 0);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: w */
    public final IntStream mo899w() {
        Objects.requireNonNull(null);
        return new C2551u(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, 0);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: r */
    public final LongStream mo898r() {
        Objects.requireNonNull(null);
        return new C2556v(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n, 0);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: a */
    public final InterfaceC2331E mo890a(C2184s c2184s) {
        Objects.requireNonNull(c2184s);
        return new C2566x(this, EnumC2462d3.f1346p | EnumC2462d3.f1344n | EnumC2462d3.f1350t, c2184s, 0);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: c */
    public final InterfaceC2331E mo892c() {
        Objects.requireNonNull(null);
        return new C2546t(this, EnumC2462d3.f1350t, 2);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final InterfaceC2331E peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new C2566x(this, doubleConsumer);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final InterfaceC2331E limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return AbstractC2314A2.m881e(this, 0L, j);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final InterfaceC2331E skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : AbstractC2314A2.m881e(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: b */
    public final InterfaceC2331E mo891b() {
        int i = AbstractC2505k4.f1411a;
        Objects.requireNonNull(null);
        return new C2354I2(this, AbstractC2505k4.f1411a, 1);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: d */
    public final InterfaceC2331E mo893d() {
        int i = AbstractC2505k4.f1411a;
        Objects.requireNonNull(null);
        return new C2354I2(this, AbstractC2505k4.f1412b, 2);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final InterfaceC2331E distinct() {
        return ((AbstractC2485h2) boxed()).distinct().mapToDouble(new C2526p(2));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final double sum() {
        double[] dArr = (double[]) collect(new C2494j(8), new C2526p(5), new C2148a(25));
        Set set = Collectors.f1108a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final C2217B min() {
        return reduce(new C2148a(26));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final C2217B max() {
        return reduce(new C2526p(4));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final C2217B average() {
        double[] dArr = (double[]) collect(new C2494j(7), new C2148a(27), new C2148a(28));
        if (dArr[2] <= 0.0d) {
            return C2217B.f891c;
        }
        Set set = Collectors.f1108a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        if (Double.isNaN(d) && Double.isInfinite(d2)) {
            d = d2;
        }
        return new C2217B(d / dArr[2]);
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final C2585w summaryStatistics() {
        return (C2585w) collect(new C2494j(0), new C2148a(29), new C2526p(0));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2531q c2531q = new C2531q(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(c2531q);
        return m985v0(new C2328D1(EnumC2468e3.DOUBLE_VALUE, c2531q, objDoubleConsumer, supplier, 1));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: l */
    public final boolean mo895l() {
        return ((Boolean) m985v0(AbstractC2573y1.m1070m0(EnumC2557v0.ANY))).booleanValue();
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: q */
    public final boolean mo897q() {
        return ((Boolean) m985v0(AbstractC2573y1.m1070m0(EnumC2557v0.ALL))).booleanValue();
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    /* JADX INFO: renamed from: y */
    public final boolean mo901y() {
        return ((Boolean) m985v0(AbstractC2573y1.m1070m0(EnumC2557v0.NONE))).booleanValue();
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final double[] toArray() {
        return (double[]) AbstractC2573y1.m1064g0((InterfaceC2322C0) m986w0(new C2526p(3))).mo920b();
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) m985v0(new C2348H1(EnumC2468e3.DOUBLE_VALUE, doubleBinaryOperator, d))).doubleValue();
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final C2217B reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (C2217B) m985v0(new C2318B1(EnumC2468e3.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }

    @Override // p022j$.util.stream.InterfaceC2331E
    public final long count() {
        return ((Long) m985v0(new C2338F1(1))).longValue();
    }
}
