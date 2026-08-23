package j$.util.stream;

import j$.time.C2045s;
import j$.util.C2078B;
import j$.util.C2079C;
import j$.util.C2088L;
import j$.util.C2210z;
import j$.util.InterfaceC2091O;
import j$.util.InterfaceC2101Z;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6224l0 extends AbstractC2179b implements LongStream {
    @Override // j$.util.stream.LongStream
    public final C2079C findAny() {
        return (C2079C) v0(C2161I.f916d);
    }

    @Override // j$.util.stream.LongStream
    public final C2079C findFirst() {
        return (C2079C) v0(C2161I.f915c);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream sorted() {
        return new K2(this, EnumC6195d3.f1111q | EnumC6195d3.f1109o, 0);
    }

    public void forEach(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        v0(new C2168P(longConsumer, false));
    }

    public void forEachOrdered(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        v0(new C2168P(longConsumer, true));
    }

    public static InterfaceC2101Z H0(Spliterator spliterator) {
        if (spliterator instanceof InterfaceC2101Z) {
            return (InterfaceC2101Z) spliterator;
        }
        if (O3.f978a) {
            O3.m816a(AbstractC2179b.class, "using LongStream.adapt(Spliterator<Long> s)");
            throw null;
        }
        throw new UnsupportedOperationException("LongStream.adapt(Spliterator<Long> s)");
    }

    @Override // j$.util.stream.AbstractC2179b
    public final EnumC6199e3 z0() {
        return EnumC6199e3.LONG_VALUE;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 x0(AbstractC2179b abstractC2179b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC6277y1.m905X(abstractC2179b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final Spliterator G0(AbstractC2179b abstractC2179b, Supplier supplier, boolean z) {
        return new C6255s3(abstractC2179b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final boolean y0(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2) {
        LongConsumer c2088l;
        boolean zMo745p;
        InterfaceC2101Z interfaceC2101ZH0 = H0(spliterator);
        if (interfaceC6242p2 instanceof LongConsumer) {
            c2088l = (LongConsumer) interfaceC6242p2;
        } else {
            if (O3.f978a) {
                O3.m816a(AbstractC2179b.class, "using LongStream.adapt(Sink<Long> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC6242p2);
            c2088l = new C2088L(interfaceC6242p2, 1);
        }
        do {
            zMo745p = interfaceC6242p2.mo745p();
            if (zMo745p) {
                break;
            }
        } while (interfaceC2101ZH0.tryAdvance(c2088l));
        return zMo745p;
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final A0 p0(long j, IntFunction intFunction) {
        return AbstractC6277y1.l0(j);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final InterfaceC2091O iterator() {
        InterfaceC2101Z interfaceC2101ZSpliterator = spliterator();
        Objects.requireNonNull(interfaceC2101ZSpliterator);
        return new j$.util.g0(interfaceC2101ZSpliterator);
    }

    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream
    public final InterfaceC2101Z spliterator() {
        return H0(super.spliterator());
    }

    @Override // j$.util.stream.LongStream
    public final InterfaceC2157E asDoubleStream() {
        return new C2197t(this, EnumC6195d3.f1108n, 5);
    }

    @Override // j$.util.stream.LongStream
    public final Stream boxed() {
        return new C2196s(this, 0, new C2193p(26), 2);
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: e */
    public final LongStream mo808e() {
        Objects.requireNonNull(null);
        return new C2199v(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, 3);
    }

    @Override // j$.util.stream.LongStream
    public final Stream mapToObj(LongFunction longFunction) {
        Objects.requireNonNull(longFunction);
        return new C2196s(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, longFunction, 2);
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: x */
    public final IntStream mo813x() {
        Objects.requireNonNull(null);
        return new C2198u(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, 2);
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: j */
    public final InterfaceC2157E mo809j() {
        Objects.requireNonNull(null);
        return new C2197t(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, 6);
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: a */
    public final LongStream mo804a(C2045s c2045s) {
        Objects.requireNonNull(c2045s);
        return new C6208h0(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n | EnumC6195d3.f1114t, c2045s, 0);
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: c */
    public final LongStream mo806c() {
        Objects.requireNonNull(null);
        return new C2199v(this, EnumC6195d3.f1114t, 5);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream peek(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        return new C6208h0(this, longConsumer);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return A2.m754g(this, 0L, j);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : A2.m754g(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: b */
    public final LongStream mo805b() {
        int i = k4.f1175a;
        Objects.requireNonNull(null);
        return new K2(this, k4.f1175a, 1);
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: d */
    public final LongStream mo807d() {
        int i = k4.f1175a;
        Objects.requireNonNull(null);
        return new K2(this, k4.f1176b, 2);
    }

    @Override // j$.util.stream.LongStream
    public final LongStream distinct() {
        return ((AbstractC6210h2) boxed()).distinct().mapToLong(new C2193p(23));
    }

    @Override // j$.util.stream.LongStream
    public final long sum() {
        return reduce(0L, new C6192d0(0));
    }

    @Override // j$.util.stream.LongStream
    public final C2079C min() {
        return reduce(new C2193p(22));
    }

    @Override // j$.util.stream.LongStream
    public final C2079C max() {
        return reduce(new C2193p(29));
    }

    @Override // j$.util.stream.LongStream
    public final C2078B average() {
        long j = ((long[]) collect(new C2187j(14), new C2193p(27), new C2193p(28)))[0];
        return j > 0 ? new C2078B(r0[1] / j) : C2078B.f656c;
    }

    @Override // j$.util.stream.LongStream
    public final long reduce(long j, LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return ((Long) v0(new C6281z1(EnumC6199e3.LONG_VALUE, longBinaryOperator, j))).longValue();
    }

    @Override // j$.util.stream.LongStream
    public final C2210z summaryStatistics() {
        return (C2210z) collect(new C2187j(4), new C2193p(21), new C2193p(24));
    }

    @Override // j$.util.stream.LongStream
    public final Object collect(Supplier supplier, ObjLongConsumer objLongConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2194q c2194q = new C2194q(biConsumer, 2);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objLongConsumer);
        Objects.requireNonNull(c2194q);
        return v0(new D1(EnumC6199e3.LONG_VALUE, c2194q, objLongConsumer, supplier, 0));
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: v */
    public final boolean mo812v() {
        return ((Boolean) v0(AbstractC6277y1.o0(EnumC6264v0.ANY))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: m */
    public final boolean mo810m() {
        return ((Boolean) v0(AbstractC6277y1.o0(EnumC6264v0.ALL))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final C2079C reduce(LongBinaryOperator longBinaryOperator) {
        Objects.requireNonNull(longBinaryOperator);
        return (C2079C) v0(new B1(EnumC6199e3.LONG_VALUE, longBinaryOperator, 0));
    }

    @Override // j$.util.stream.LongStream
    /* JADX INFO: renamed from: p */
    public final boolean mo811p() {
        return ((Boolean) v0(AbstractC6277y1.o0(EnumC6264v0.NONE))).booleanValue();
    }

    @Override // j$.util.stream.LongStream
    public final long[] toArray() {
        return (long[]) AbstractC6277y1.i0((G0) w0(new C2193p(25))).mo783b();
    }

    @Override // j$.util.stream.LongStream
    public final long count() {
        return ((Long) v0(new F1(0))).longValue();
    }
}
