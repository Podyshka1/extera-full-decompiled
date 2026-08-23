package j$.util.stream;

import j$.time.C2045s;
import j$.time.format.C2009a;
import j$.util.C2078B;
import j$.util.C2080D;
import j$.util.C2207w;
import j$.util.InterfaceC2083G;
import j$.util.InterfaceC2096U;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.B */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2154B extends AbstractC2179b implements InterfaceC2157E {
    @Override // j$.util.stream.InterfaceC2157E
    public final C2078B findAny() {
        return (C2078B) v0(C2159G.f903d);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final C2078B findFirst() {
        return (C2078B) v0(C2159G.f902c);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final InterfaceC2157E sorted() {
        return new I2(this, EnumC6195d3.f1111q | EnumC6195d3.f1109o, 0);
    }

    public static InterfaceC2096U H0(Spliterator spliterator) {
        if (spliterator instanceof InterfaceC2096U) {
            return (InterfaceC2096U) spliterator;
        }
        if (O3.f978a) {
            O3.m816a(AbstractC2179b.class, "using DoubleStream.adapt(Spliterator<Double> s)");
            throw null;
        }
        throw new UnsupportedOperationException("DoubleStream.adapt(Spliterator<Double> s)");
    }

    @Override // j$.util.stream.InterfaceC2157E
    public void forEach(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        v0(new C2166N(doubleConsumer, false));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public void forEachOrdered(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        v0(new C2166N(doubleConsumer, true));
    }

    @Override // j$.util.stream.AbstractC2179b
    public final EnumC6199e3 z0() {
        return EnumC6199e3.DOUBLE_VALUE;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 x0(AbstractC2179b abstractC2179b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC6277y1.m903V(abstractC2179b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final Spliterator G0(AbstractC2179b abstractC2179b, Supplier supplier, boolean z) {
        return new C6239o3(abstractC2179b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final boolean y0(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2) {
        DoubleConsumer c2080d;
        boolean zMo745p;
        InterfaceC2096U interfaceC2096UH0 = H0(spliterator);
        if (interfaceC6242p2 instanceof DoubleConsumer) {
            c2080d = (DoubleConsumer) interfaceC6242p2;
        } else {
            if (O3.f978a) {
                O3.m816a(AbstractC2179b.class, "using DoubleStream.adapt(Sink<Double> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC6242p2);
            c2080d = new C2080D(interfaceC6242p2, 1);
        }
        do {
            zMo745p = interfaceC6242p2.mo745p();
            if (zMo745p) {
                break;
            }
        } while (interfaceC2096UH0.tryAdvance(c2080d));
        return zMo745p;
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final A0 p0(long j, IntFunction intFunction) {
        return AbstractC6277y1.b0(j);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final InterfaceC2083G iterator() {
        InterfaceC2096U interfaceC2096USpliterator = spliterator();
        Objects.requireNonNull(interfaceC2096USpliterator);
        return new j$.util.h0(interfaceC2096USpliterator);
    }

    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream
    public final InterfaceC2096U spliterator() {
        return H0(super.spliterator());
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final Stream boxed() {
        return new C2196s(this, 0, new C2193p(1), 0);
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: e */
    public final InterfaceC2157E mo763e() {
        Objects.requireNonNull(null);
        return new C2197t(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, 0);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final Stream mapToObj(DoubleFunction doubleFunction) {
        Objects.requireNonNull(doubleFunction);
        return new C2196s(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, doubleFunction, 0);
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: w */
    public final IntStream mo767w() {
        Objects.requireNonNull(null);
        return new C2198u(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, 0);
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: r */
    public final LongStream mo766r() {
        Objects.requireNonNull(null);
        return new C2199v(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, 0);
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: a */
    public final InterfaceC2157E mo759a(C2045s c2045s) {
        Objects.requireNonNull(c2045s);
        return new C2201x(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n | EnumC6195d3.f1114t, c2045s, 0);
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: c */
    public final InterfaceC2157E mo761c() {
        Objects.requireNonNull(null);
        return new C2197t(this, EnumC6195d3.f1114t, 2);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final InterfaceC2157E peek(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        return new C2201x(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final InterfaceC2157E limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return A2.m752e(this, 0L, j);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final InterfaceC2157E skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : A2.m752e(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: b */
    public final InterfaceC2157E mo760b() {
        int i = k4.f1175a;
        Objects.requireNonNull(null);
        return new I2(this, k4.f1175a, 1);
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: d */
    public final InterfaceC2157E mo762d() {
        int i = k4.f1175a;
        Objects.requireNonNull(null);
        return new I2(this, k4.f1176b, 2);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final InterfaceC2157E distinct() {
        return ((AbstractC6210h2) boxed()).distinct().mapToDouble(new C2193p(2));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final double sum() {
        double[] dArr = (double[]) collect(new C2187j(8), new C2193p(5), new C2009a(25));
        Set set = Collectors.f873a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        return (Double.isNaN(d) && Double.isInfinite(d2)) ? d2 : d;
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final C2078B min() {
        return reduce(new C2009a(26));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final C2078B max() {
        return reduce(new C2193p(4));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final C2078B average() {
        double[] dArr = (double[]) collect(new C2187j(7), new C2009a(27), new C2009a(28));
        if (dArr[2] <= 0.0d) {
            return C2078B.f656c;
        }
        Set set = Collectors.f873a;
        double d = dArr[0] + dArr[1];
        double d2 = dArr[dArr.length - 1];
        if (Double.isNaN(d) && Double.isInfinite(d2)) {
            d = d2;
        }
        return new C2078B(d / dArr[2]);
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final C2207w summaryStatistics() {
        return (C2207w) collect(new C2187j(0), new C2009a(29), new C2193p(0));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final Object collect(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2194q c2194q = new C2194q(biConsumer, 0);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objDoubleConsumer);
        Objects.requireNonNull(c2194q);
        return v0(new D1(EnumC6199e3.DOUBLE_VALUE, c2194q, objDoubleConsumer, supplier, 1));
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: l */
    public final boolean mo764l() {
        return ((Boolean) v0(AbstractC6277y1.m0(EnumC6264v0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: q */
    public final boolean mo765q() {
        return ((Boolean) v0(AbstractC6277y1.m0(EnumC6264v0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.InterfaceC2157E
    /* JADX INFO: renamed from: y */
    public final boolean mo768y() {
        return ((Boolean) v0(AbstractC6277y1.m0(EnumC6264v0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final double[] toArray() {
        return (double[]) AbstractC6277y1.g0((C0) w0(new C2193p(3))).mo783b();
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final double reduce(double d, DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return ((Double) v0(new H1(EnumC6199e3.DOUBLE_VALUE, doubleBinaryOperator, d))).doubleValue();
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final C2078B reduce(DoubleBinaryOperator doubleBinaryOperator) {
        Objects.requireNonNull(doubleBinaryOperator);
        return (C2078B) v0(new B1(EnumC6199e3.DOUBLE_VALUE, doubleBinaryOperator, 1));
    }

    @Override // j$.util.stream.InterfaceC2157E
    public final long count() {
        return ((Long) v0(new F1(1))).longValue();
    }
}
