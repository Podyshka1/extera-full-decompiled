package j$.util.stream;

import j$.util.C2078B;
import j$.util.C2084H;
import j$.util.C2208x;
import j$.util.InterfaceC2087K;
import j$.util.Objects;
import j$.util.OptionalInt;
import j$.util.Spliterator;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntUnaryOperator;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6188c0 extends AbstractC2179b implements IntStream {
    @Override // j$.util.stream.IntStream
    public final OptionalInt findAny() {
        return (OptionalInt) v0(C2160H.f911d);
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt findFirst() {
        return (OptionalInt) v0(C2160H.f910c);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream sorted() {
        return new J2(this, EnumC6195d3.f1111q | EnumC6195d3.f1109o);
    }

    public void forEach(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        v0(new C2167O(intConsumer, false));
    }

    public void forEachOrdered(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        v0(new C2167O(intConsumer, true));
    }

    public static Spliterator.OfInt H0(Spliterator spliterator) {
        if (spliterator instanceof Spliterator.OfInt) {
            return (Spliterator.OfInt) spliterator;
        }
        if (O3.f978a) {
            O3.m816a(AbstractC2179b.class, "using IntStream.adapt(Spliterator<Integer> s)");
            throw null;
        }
        throw new UnsupportedOperationException("IntStream.adapt(Spliterator<Integer> s)");
    }

    @Override // j$.util.stream.AbstractC2179b
    public final EnumC6199e3 z0() {
        return EnumC6199e3.INT_VALUE;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final I0 x0(AbstractC2179b abstractC2179b, Spliterator spliterator, boolean z, IntFunction intFunction) {
        return AbstractC6277y1.m904W(abstractC2179b, spliterator, z);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final Spliterator G0(AbstractC2179b abstractC2179b, Supplier supplier, boolean z) {
        return new C6247q3(abstractC2179b, supplier, z);
    }

    @Override // j$.util.stream.AbstractC2179b
    public final boolean y0(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2) {
        IntConsumer c2084h;
        boolean zMo745p;
        Spliterator.OfInt ofIntH0 = H0(spliterator);
        if (interfaceC6242p2 instanceof IntConsumer) {
            c2084h = (IntConsumer) interfaceC6242p2;
        } else {
            if (O3.f978a) {
                O3.m816a(AbstractC2179b.class, "using IntStream.adapt(Sink<Integer> s)");
                throw null;
            }
            Objects.requireNonNull(interfaceC6242p2);
            c2084h = new C2084H(interfaceC6242p2, 1);
        }
        do {
            zMo745p = interfaceC6242p2.mo745p();
            if (zMo745p) {
                break;
            }
        } while (ofIntH0.tryAdvance(c2084h));
        return zMo745p;
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final A0 p0(long j, IntFunction intFunction) {
        return AbstractC6277y1.k0(j);
    }

    @Override // j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final InterfaceC2087K iterator() {
        Spliterator.OfInt ofIntSpliterator = spliterator();
        Objects.requireNonNull(ofIntSpliterator);
        return new j$.util.f0(ofIntSpliterator);
    }

    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream
    public final Spliterator.OfInt spliterator() {
        return H0(super.spliterator());
    }

    @Override // j$.util.stream.IntStream
    public final LongStream asLongStream() {
        return new C2199v(this, 0, 1);
    }

    @Override // j$.util.stream.IntStream
    public final InterfaceC2157E asDoubleStream() {
        return new C2197t(this, 0, 3);
    }

    @Override // j$.util.stream.IntStream
    public final Stream boxed() {
        return new C2196s(this, 0, new C2193p(13), 1);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream map(IntUnaryOperator intUnaryOperator) {
        Objects.requireNonNull(intUnaryOperator);
        return new C2174W(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, intUnaryOperator, 1);
    }

    @Override // j$.util.stream.IntStream
    public final Stream mapToObj(IntFunction intFunction) {
        Objects.requireNonNull(intFunction);
        return new C2196s(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, intFunction, 1);
    }

    @Override // j$.util.stream.IntStream
    /* JADX INFO: renamed from: k */
    public final LongStream mo796k() {
        Objects.requireNonNull(null);
        return new C2199v(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, 2);
    }

    @Override // j$.util.stream.IntStream
    /* JADX INFO: renamed from: g */
    public final InterfaceC2157E mo795g() {
        Objects.requireNonNull(null);
        return new C2197t(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n, 4);
    }

    @Override // j$.util.stream.IntStream
    public final int reduce(int i, IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return ((Integer) v0(new O1(EnumC6199e3.INT_VALUE, intBinaryOperator, i))).intValue();
    }

    @Override // j$.util.stream.IntStream
    /* JADX INFO: renamed from: o */
    public final IntStream mo797o(C2165M c2165m) {
        Objects.requireNonNull(c2165m);
        return new C2174W(this, EnumC6195d3.f1110p | EnumC6195d3.f1108n | EnumC6195d3.f1114t, c2165m, 2);
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt reduce(IntBinaryOperator intBinaryOperator) {
        Objects.requireNonNull(intBinaryOperator);
        return (OptionalInt) v0(new B1(EnumC6199e3.INT_VALUE, intBinaryOperator, 3));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream filter(IntPredicate intPredicate) {
        Objects.requireNonNull(intPredicate);
        return new C2174W(this, EnumC6195d3.f1114t, intPredicate, 3);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream peek(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        return new C2174W(this, intConsumer);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream limit(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(Long.toString(j));
        }
        return A2.m753f(this, 0L, j);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream skip(long j) {
        if (j >= 0) {
            return j == 0 ? this : A2.m753f(this, j, -1L);
        }
        throw new IllegalArgumentException(Long.toString(j));
    }

    @Override // j$.util.stream.IntStream
    public final IntStream takeWhile(IntPredicate intPredicate) {
        int i = k4.f1175a;
        Objects.requireNonNull(intPredicate);
        return new S3(this, k4.f1175a, intPredicate);
    }

    @Override // j$.util.stream.IntStream
    public final IntStream dropWhile(IntPredicate intPredicate) {
        int i = k4.f1175a;
        Objects.requireNonNull(intPredicate);
        return new U3(this, k4.f1176b, intPredicate);
    }

    @Override // j$.util.stream.IntStream
    public final long count() {
        return ((Long) v0(new F1(3))).longValue();
    }

    @Override // j$.util.stream.IntStream
    public final IntStream distinct() {
        return ((AbstractC6210h2) boxed()).distinct().mapToInt(new C2193p(12));
    }

    @Override // j$.util.stream.IntStream
    public final int sum() {
        return reduce(0, new C2193p(17));
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt min() {
        return reduce(new C2193p(14));
    }

    @Override // j$.util.stream.IntStream
    public final OptionalInt max() {
        return reduce(new C2193p(18));
    }

    @Override // j$.util.stream.IntStream
    public final C2078B average() {
        long j = ((long[]) collect(new C2187j(13), new C2193p(19), new C2193p(20)))[0];
        return j > 0 ? new C2078B(r0[1] / j) : C2078B.f656c;
    }

    @Override // j$.util.stream.IntStream
    public final C2208x summaryStatistics() {
        return (C2208x) collect(new C2187j(2), new C2193p(15), new C2193p(16));
    }

    @Override // j$.util.stream.IntStream
    public final Object collect(Supplier supplier, ObjIntConsumer objIntConsumer, BiConsumer biConsumer) {
        Objects.requireNonNull(biConsumer);
        C2194q c2194q = new C2194q(biConsumer, 1);
        Objects.requireNonNull(supplier);
        Objects.requireNonNull(objIntConsumer);
        Objects.requireNonNull(c2194q);
        return v0(new D1(EnumC6199e3.INT_VALUE, c2194q, objIntConsumer, supplier, 4));
    }

    @Override // j$.util.stream.IntStream
    public final boolean anyMatch(IntPredicate intPredicate) {
        return ((Boolean) v0(AbstractC6277y1.n0(EnumC6264v0.ANY, intPredicate))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean allMatch(IntPredicate intPredicate) {
        return ((Boolean) v0(AbstractC6277y1.n0(EnumC6264v0.ALL, intPredicate))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final boolean noneMatch(IntPredicate intPredicate) {
        return ((Boolean) v0(AbstractC6277y1.n0(EnumC6264v0.NONE, intPredicate))).booleanValue();
    }

    @Override // j$.util.stream.IntStream
    public final int[] toArray() {
        return (int[]) AbstractC6277y1.h0((E0) w0(new C2193p(11))).mo783b();
    }
}
