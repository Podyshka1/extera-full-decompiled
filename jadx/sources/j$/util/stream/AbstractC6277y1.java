package j$.util.stream;

import j$.time.C2045s;
import j$.util.InterfaceC2096U;
import j$.util.InterfaceC2101Z;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.C2123s;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.LongConsumer;
import java.util.function.Predicate;

/* JADX INFO: renamed from: j$.util.stream.y1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6277y1 implements M3 {

    /* JADX INFO: renamed from: a */
    public static final C6181a1 f1273a = new C6181a1();

    /* JADX INFO: renamed from: b */
    public static final Y0 f1274b = new Y0();

    /* JADX INFO: renamed from: c */
    public static final Z0 f1275c = new Z0();

    /* JADX INFO: renamed from: d */
    public static final X0 f1276d = new X0();

    /* JADX INFO: renamed from: e */
    public static final int[] f1277e = new int[0];

    /* JADX INFO: renamed from: f */
    public static final long[] f1278f = new long[0];

    /* JADX INFO: renamed from: g */
    public static final double[] f1279g = new double[0];

    /* JADX INFO: renamed from: Z */
    public abstract void mo836Z(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2);

    public abstract boolean a0(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2);

    public abstract I0 d0(Spliterator spliterator, boolean z, IntFunction intFunction);

    public abstract long e0(Spliterator spliterator);

    public abstract A0 p0(long j, IntFunction intFunction);

    public abstract T1 r0();

    public abstract InterfaceC6242p2 s0(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2);

    public abstract InterfaceC6242p2 t0(InterfaceC6242p2 interfaceC6242p2);

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: u */
    public /* synthetic */ int mo735u() {
        return 0;
    }

    public abstract Spliterator u0(Spliterator spliterator);

    public static C2045s j0(Function function) {
        C2045s c2045s = new C2045s(6);
        c2045s.f586b = function;
        return c2045s;
    }

    public static C2123s q0(EnumC6264v0 enumC6264v0, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC6264v0);
        return new C2123s(EnumC6199e3.REFERENCE, enumC6264v0, new C6240p0(enumC6264v0, predicate, 1));
    }

    public static AbstractC6185b1 c0(EnumC6199e3 enumC6199e3) {
        int i = J0.f925a[enumC6199e3.ordinal()];
        if (i == 1) {
            return f1273a;
        }
        if (i == 2) {
            return f1274b;
        }
        if (i == 3) {
            return f1275c;
        }
        if (i == 4) {
            return f1276d;
        }
        throw new IllegalStateException("Unknown shape " + enumC6199e3);
    }

    public static C2123s n0(EnumC6264v0 enumC6264v0, IntPredicate intPredicate) {
        Objects.requireNonNull(intPredicate);
        Objects.requireNonNull(enumC6264v0);
        return new C2123s(EnumC6199e3.INT_VALUE, enumC6264v0, new C6240p0(enumC6264v0, intPredicate, 0));
    }

    /* JADX INFO: renamed from: S */
    public static I0 m900S(I0 i0, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == i0.count()) {
            return i0;
        }
        Spliterator spliterator = i0.spliterator();
        long j3 = j2 - j;
        A0 a0M901T = m901T(j3, intFunction);
        a0M901T.mo744m(j3);
        for (int i = 0; i < j && spliterator.tryAdvance(new C6192d0(1)); i++) {
        }
        if (j2 == i0.count()) {
            spliterator.forEachRemaining(a0M901T);
        } else {
            for (int i2 = 0; i2 < j3 && spliterator.tryAdvance(a0M901T); i2++) {
            }
        }
        a0M901T.end();
        return a0M901T.build();
    }

    /* JADX INFO: renamed from: Y */
    public static K0 m906Y(EnumC6199e3 enumC6199e3, I0 i0, I0 i02) {
        int i = J0.f925a[enumC6199e3.ordinal()];
        if (i == 1) {
            return new T0(i0, i02);
        }
        if (i == 2) {
            return new Q0((E0) i0, (E0) i02);
        }
        if (i == 3) {
            return new R0((G0) i0, (G0) i02);
        }
        if (i != 4) {
            throw new IllegalStateException("Unknown shape " + enumC6199e3);
        }
        return new P0((C0) i0, (C0) i02);
    }

    public static C2123s o0(EnumC6264v0 enumC6264v0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC6264v0);
        return new C2123s(EnumC6199e3.LONG_VALUE, enumC6264v0, new C6236o0(enumC6264v0, 0));
    }

    /* JADX INFO: renamed from: G */
    public static void m888G() {
        throw new IllegalStateException("called wrong accept method");
    }

    public static C2123s m0(EnumC6264v0 enumC6264v0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC6264v0);
        return new C2123s(EnumC6199e3.DOUBLE_VALUE, enumC6264v0, new C6236o0(enumC6264v0, 1));
    }

    /* JADX INFO: renamed from: H */
    public static void m889H() {
        throw new IllegalStateException("called wrong accept method");
    }

    /* JADX INFO: renamed from: T */
    public static A0 m901T(long j, IntFunction intFunction) {
        if (j >= 0 && j < 2147483639) {
            return new C6189c1(j, intFunction);
        }
        return new C6261u1();
    }

    /* JADX INFO: renamed from: z */
    public static void m907z() {
        throw new IllegalStateException("called wrong accept method");
    }

    /* JADX INFO: renamed from: C */
    public static void m884C(InterfaceC6234n2 interfaceC6234n2, Integer num) {
        if (O3.f978a) {
            O3.m816a(interfaceC6234n2.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        interfaceC6234n2.accept(num.intValue());
    }

    /* JADX INFO: renamed from: E */
    public static void m886E(InterfaceC6238o2 interfaceC6238o2, Long l) {
        if (O3.f978a) {
            O3.m816a(interfaceC6238o2.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        interfaceC6238o2.accept(l.longValue());
    }

    public static InterfaceC6276y0 k0(long j) {
        if (j < 0 || j >= 2147483639) {
            return new C6201f1();
        }
        return new C6197e1(j);
    }

    /* JADX INFO: renamed from: A */
    public static void m882A(InterfaceC6230m2 interfaceC6230m2, Double d) {
        if (O3.f978a) {
            O3.m816a(interfaceC6230m2.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        interfaceC6230m2.accept(d.doubleValue());
    }

    public static InterfaceC6280z0 l0(long j) {
        if (j < 0 || j >= 2147483639) {
            return new C6237o1();
        }
        return new C6233n1(j);
    }

    /* JADX INFO: renamed from: I */
    public static Object[] m890I(H0 h0, IntFunction intFunction) {
        if (O3.f978a) {
            O3.m816a(h0.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (h0.count() >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) h0.count());
        h0.mo789f(objArr, 0);
        return objArr;
    }

    public static InterfaceC6272x0 b0(long j) {
        if (j < 0 || j >= 2147483639) {
            return new W0();
        }
        return new V0(j);
    }

    /* JADX INFO: renamed from: U */
    public static I0 m902U(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long jE0 = abstractC6277y1.e0(spliterator);
        if (jE0 < 0 || !spliterator.hasCharacteristics(16384)) {
            C2165M c2165m = new C2165M();
            c2165m.f957a = intFunction;
            I0 i0 = (I0) new N0(abstractC6277y1, spliterator, c2165m, new C6192d0(9), 3).invoke();
            return z ? f0(i0, intFunction) : i0;
        }
        if (jE0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jE0);
        new C6253s1(spliterator, abstractC6277y1, objArr).invoke();
        return new L0(objArr);
    }

    /* JADX INFO: renamed from: N */
    public static void m895N(E0 e0, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            e0.mo785d((IntConsumer) consumer);
        } else {
            if (O3.f978a) {
                O3.m816a(e0.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((Spliterator.OfInt) e0.spliterator()).forEachRemaining(consumer);
        }
    }

    /* JADX INFO: renamed from: K */
    public static void m892K(E0 e0, Integer[] numArr, int i) {
        if (O3.f978a) {
            O3.m816a(e0.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) e0.mo783b();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* JADX INFO: renamed from: Q */
    public static E0 m898Q(E0 e0, long j, long j2) {
        if (j == 0 && j2 == e0.count()) {
            return e0;
        }
        long j3 = j2 - j;
        Spliterator.OfInt ofInt = (Spliterator.OfInt) e0.spliterator();
        InterfaceC6276y0 interfaceC6276y0K0 = k0(j3);
        interfaceC6276y0K0.mo744m(j3);
        for (int i = 0; i < j && ofInt.tryAdvance((IntConsumer) new D0(0)); i++) {
        }
        if (j2 == e0.count()) {
            ofInt.forEachRemaining((IntConsumer) interfaceC6276y0K0);
        } else {
            for (int i2 = 0; i2 < j3 && ofInt.tryAdvance((IntConsumer) interfaceC6276y0K0); i2++) {
            }
        }
        interfaceC6276y0K0.end();
        return interfaceC6276y0K0.build();
    }

    /* JADX INFO: renamed from: W */
    public static E0 m904W(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, boolean z) {
        long jE0 = abstractC6277y1.e0(spliterator);
        if (jE0 < 0 || !spliterator.hasCharacteristics(16384)) {
            E0 e0 = (E0) new N0(abstractC6277y1, spliterator, new C6192d0(5), new C6192d0(6), 1).invoke();
            return z ? h0(e0) : e0;
        }
        if (jE0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) jE0];
        new C6245q1(spliterator, abstractC6277y1, iArr).invoke();
        return new C6193d1(iArr);
    }

    /* JADX INFO: renamed from: X */
    public static G0 m905X(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, boolean z) {
        long jE0 = abstractC6277y1.e0(spliterator);
        if (jE0 < 0 || !spliterator.hasCharacteristics(16384)) {
            G0 g0 = (G0) new N0(abstractC6277y1, spliterator, new C6192d0(7), new C6192d0(8), 2).invoke();
            return z ? i0(g0) : g0;
        }
        if (jE0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) jE0];
        new C6249r1(spliterator, abstractC6277y1, jArr).invoke();
        return new C6229m1(jArr);
    }

    /* JADX INFO: renamed from: O */
    public static void m896O(G0 g0, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            g0.mo785d((LongConsumer) consumer);
        } else {
            if (O3.f978a) {
                O3.m816a(g0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((InterfaceC2101Z) g0.spliterator()).forEachRemaining(consumer);
        }
    }

    /* JADX INFO: renamed from: L */
    public static void m893L(G0 g0, Long[] lArr, int i) {
        if (O3.f978a) {
            O3.m816a(g0.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) g0.mo783b();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* JADX INFO: renamed from: R */
    public static G0 m899R(G0 g0, long j, long j2) {
        if (j == 0 && j2 == g0.count()) {
            return g0;
        }
        long j3 = j2 - j;
        InterfaceC2101Z interfaceC2101Z = (InterfaceC2101Z) g0.spliterator();
        InterfaceC6280z0 interfaceC6280z0L0 = l0(j3);
        interfaceC6280z0L0.mo744m(j3);
        for (int i = 0; i < j && interfaceC2101Z.tryAdvance((LongConsumer) new F0(0)); i++) {
        }
        if (j2 == g0.count()) {
            interfaceC2101Z.forEachRemaining((LongConsumer) interfaceC6280z0L0);
        } else {
            for (int i2 = 0; i2 < j3 && interfaceC2101Z.tryAdvance((LongConsumer) interfaceC6280z0L0); i2++) {
            }
        }
        interfaceC6280z0L0.end();
        return interfaceC6280z0L0.build();
    }

    /* JADX INFO: renamed from: V */
    public static C0 m903V(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, boolean z) {
        long jE0 = abstractC6277y1.e0(spliterator);
        if (jE0 < 0 || !spliterator.hasCharacteristics(16384)) {
            C0 c0 = (C0) new N0(abstractC6277y1, spliterator, new C6192d0(3), new C6192d0(4), 0).invoke();
            return z ? g0(c0) : c0;
        }
        if (jE0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) jE0];
        new C6241p1(spliterator, abstractC6277y1, dArr).invoke();
        return new U0(dArr);
    }

    public static I0 f0(I0 i0, IntFunction intFunction) {
        if (i0.mo791h() <= 0) {
            return i0;
        }
        long jCount = i0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jCount);
        new C6273x1(i0, objArr, 1).invoke();
        return new L0(objArr);
    }

    /* JADX INFO: renamed from: M */
    public static void m894M(C0 c0, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            c0.mo785d((DoubleConsumer) consumer);
        } else {
            if (O3.f978a) {
                O3.m816a(c0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((InterfaceC2096U) c0.spliterator()).forEachRemaining(consumer);
        }
    }

    public static E0 h0(E0 e0) {
        if (e0.mo791h() <= 0) {
            return e0;
        }
        long jCount = e0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) jCount];
        new C6269w1(e0, iArr, 0).invoke();
        return new C6193d1(iArr);
    }

    /* JADX INFO: renamed from: J */
    public static void m891J(C0 c0, Double[] dArr, int i) {
        if (O3.f978a) {
            O3.m816a(c0.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) c0.mo783b();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* JADX INFO: renamed from: P */
    public static C0 m897P(C0 c0, long j, long j2) {
        if (j == 0 && j2 == c0.count()) {
            return c0;
        }
        long j3 = j2 - j;
        InterfaceC2096U interfaceC2096U = (InterfaceC2096U) c0.spliterator();
        InterfaceC6272x0 interfaceC6272x0B0 = b0(j3);
        interfaceC6272x0B0.mo744m(j3);
        for (int i = 0; i < j && interfaceC2096U.tryAdvance((DoubleConsumer) new B0(0)); i++) {
        }
        if (j2 == c0.count()) {
            interfaceC2096U.forEachRemaining((DoubleConsumer) interfaceC6272x0B0);
        } else {
            for (int i2 = 0; i2 < j3 && interfaceC2096U.tryAdvance((DoubleConsumer) interfaceC6272x0B0); i2++) {
            }
        }
        interfaceC6272x0B0.end();
        return interfaceC6272x0B0.build();
    }

    public static G0 i0(G0 g0) {
        if (g0.mo791h() <= 0) {
            return g0;
        }
        long jCount = g0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) jCount];
        new C6265v1(g0, jArr, 0).invoke();
        return new C6229m1(jArr);
    }

    public static C0 g0(C0 c0) {
        if (c0.mo791h() <= 0) {
            return c0;
        }
        long jCount = c0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) jCount];
        new C6265v1(c0, dArr, 0).invoke();
        return new U0(dArr);
    }

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: f */
    public Object mo733f(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        T1 t1R0 = r0();
        abstractC2179b.s0(spliterator, t1R0);
        return t1R0.get();
    }

    @Override // j$.util.stream.M3
    /* JADX INFO: renamed from: i */
    public Object mo734i(AbstractC6277y1 abstractC6277y1, Spliterator spliterator) {
        return ((T1) new C6182a2(this, abstractC6277y1, spliterator).invoke()).get();
    }
}
