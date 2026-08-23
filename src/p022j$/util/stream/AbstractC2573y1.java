package p022j$.util.stream;

import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.LongConsumer;
import java.util.function.Predicate;
import p022j$.time.C2184s;
import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.Objects;
import p022j$.util.Spliterator;
import p022j$.util.concurrent.C2265s;

/* JADX INFO: renamed from: j$.util.stream.y1 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2573y1 implements InterfaceC2375M3 {

    /* JADX INFO: renamed from: a */
    public static final C2442a1 f1509a = new C2442a1();

    /* JADX INFO: renamed from: b */
    public static final C2431Y0 f1510b = new C2431Y0();

    /* JADX INFO: renamed from: c */
    public static final C2436Z0 f1511c = new C2436Z0();

    /* JADX INFO: renamed from: d */
    public static final C2426X0 f1512d = new C2426X0();

    /* JADX INFO: renamed from: e */
    public static final int[] f1513e = new int[0];

    /* JADX INFO: renamed from: f */
    public static final long[] f1514f = new long[0];

    /* JADX INFO: renamed from: g */
    public static final double[] f1515g = new double[0];

    /* JADX INFO: renamed from: Z */
    public abstract void mo978Z(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2);

    /* JADX INFO: renamed from: a0 */
    public abstract boolean mo979a0(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2);

    /* JADX INFO: renamed from: d0 */
    public abstract InterfaceC2352I0 mo980d0(Spliterator spliterator, boolean z, IntFunction intFunction);

    /* JADX INFO: renamed from: e0 */
    public abstract long mo981e0(Spliterator spliterator);

    /* JADX INFO: renamed from: p0 */
    public abstract InterfaceC2312A0 mo896p0(long j, IntFunction intFunction);

    /* JADX INFO: renamed from: r0 */
    public abstract InterfaceC2407T1 mo905r0();

    /* JADX INFO: renamed from: s0 */
    public abstract InterfaceC2529p2 mo982s0(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2);

    /* JADX INFO: renamed from: t0 */
    public abstract InterfaceC2529p2 mo983t0(InterfaceC2529p2 interfaceC2529p2);

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: u */
    public /* synthetic */ int mo861u() {
        return 0;
    }

    /* JADX INFO: renamed from: u0 */
    public abstract Spliterator mo984u0(Spliterator spliterator);

    /* JADX INFO: renamed from: j0 */
    public static C2184s m1067j0(Function function) {
        C2184s c2184s = new C2184s(6);
        c2184s.f821b = function;
        return c2184s;
    }

    /* JADX INFO: renamed from: q0 */
    public static C2265s m1073q0(EnumC2557v0 enumC2557v0, Predicate predicate) {
        Objects.requireNonNull(predicate);
        Objects.requireNonNull(enumC2557v0);
        return new C2265s(EnumC2468e3.REFERENCE, enumC2557v0, new C2527p0(enumC2557v0, predicate, 1));
    }

    /* JADX INFO: renamed from: c0 */
    public static AbstractC2448b1 m1062c0(EnumC2468e3 enumC2468e3) {
        int i = AbstractC2357J0.f1160a[enumC2468e3.ordinal()];
        if (i == 1) {
            return f1509a;
        }
        if (i == 2) {
            return f1510b;
        }
        if (i == 3) {
            return f1511c;
        }
        if (i == 4) {
            return f1512d;
        }
        throw new IllegalStateException("Unknown shape " + enumC2468e3);
    }

    /* JADX INFO: renamed from: n0 */
    public static C2265s m1071n0(EnumC2557v0 enumC2557v0, IntPredicate intPredicate) {
        Objects.requireNonNull(intPredicate);
        Objects.requireNonNull(enumC2557v0);
        return new C2265s(EnumC2468e3.INT_VALUE, enumC2557v0, new C2527p0(enumC2557v0, intPredicate, 0));
    }

    /* JADX INFO: renamed from: S */
    public static InterfaceC2352I0 m1054S(InterfaceC2352I0 interfaceC2352I0, long j, long j2, IntFunction intFunction) {
        if (j == 0 && j2 == interfaceC2352I0.count()) {
            return interfaceC2352I0;
        }
        Spliterator spliterator = interfaceC2352I0.spliterator();
        long j3 = j2 - j;
        InterfaceC2312A0 interfaceC2312A0M1055T = m1055T(j3, intFunction);
        interfaceC2312A0M1055T.mo873m(j3);
        for (int i = 0; i < j && spliterator.tryAdvance(new C2459d0(1)); i++) {
        }
        if (j2 == interfaceC2352I0.count()) {
            spliterator.forEachRemaining(interfaceC2312A0M1055T);
        } else {
            for (int i2 = 0; i2 < j3 && spliterator.tryAdvance(interfaceC2312A0M1055T); i2++) {
            }
        }
        interfaceC2312A0M1055T.end();
        return interfaceC2312A0M1055T.build();
    }

    /* JADX INFO: renamed from: Y */
    public static AbstractC2362K0 m1060Y(EnumC2468e3 enumC2468e3, InterfaceC2352I0 interfaceC2352I0, InterfaceC2352I0 interfaceC2352I02) {
        int i = AbstractC2357J0.f1160a[enumC2468e3.ordinal()];
        if (i == 1) {
            return new C2406T0(interfaceC2352I0, interfaceC2352I02);
        }
        if (i == 2) {
            return new C2392Q0((InterfaceC2332E0) interfaceC2352I0, (InterfaceC2332E0) interfaceC2352I02);
        }
        if (i == 3) {
            return new C2396R0((InterfaceC2342G0) interfaceC2352I0, (InterfaceC2342G0) interfaceC2352I02);
        }
        if (i != 4) {
            throw new IllegalStateException("Unknown shape " + enumC2468e3);
        }
        return new C2387P0((InterfaceC2322C0) interfaceC2352I0, (InterfaceC2322C0) interfaceC2352I02);
    }

    /* JADX INFO: renamed from: o0 */
    public static C2265s m1072o0(EnumC2557v0 enumC2557v0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC2557v0);
        return new C2265s(EnumC2468e3.LONG_VALUE, enumC2557v0, new C2522o0(enumC2557v0, 0));
    }

    /* JADX INFO: renamed from: G */
    public static void m1042G() {
        throw new IllegalStateException("called wrong accept method");
    }

    /* JADX INFO: renamed from: m0 */
    public static C2265s m1070m0(EnumC2557v0 enumC2557v0) {
        Objects.requireNonNull(null);
        Objects.requireNonNull(enumC2557v0);
        return new C2265s(EnumC2468e3.DOUBLE_VALUE, enumC2557v0, new C2522o0(enumC2557v0, 1));
    }

    /* JADX INFO: renamed from: H */
    public static void m1043H() {
        throw new IllegalStateException("called wrong accept method");
    }

    /* JADX INFO: renamed from: T */
    public static InterfaceC2312A0 m1055T(long j, IntFunction intFunction) {
        if (j >= 0 && j < 2147483639) {
            return new C2454c1(j, intFunction);
        }
        return new C2553u1();
    }

    /* JADX INFO: renamed from: z */
    public static void m1074z() {
        throw new IllegalStateException("called wrong accept method");
    }

    /* JADX INFO: renamed from: C */
    public static void m1038C(InterfaceC2519n2 interfaceC2519n2, Integer num) {
        if (AbstractC2385O3.f1213a) {
            AbstractC2385O3.m956a(interfaceC2519n2.getClass(), "{0} calling Sink.OfInt.accept(Integer)");
            throw null;
        }
        interfaceC2519n2.accept(num.intValue());
    }

    /* JADX INFO: renamed from: E */
    public static void m1040E(InterfaceC2524o2 interfaceC2524o2, Long l) {
        if (AbstractC2385O3.f1213a) {
            AbstractC2385O3.m956a(interfaceC2524o2.getClass(), "{0} calling Sink.OfLong.accept(Long)");
            throw null;
        }
        interfaceC2524o2.accept(l.longValue());
    }

    /* JADX INFO: renamed from: k0 */
    public static InterfaceC2572y0 m1068k0(long j) {
        if (j < 0 || j >= 2147483639) {
            return new C2472f1();
        }
        return new C2466e1(j);
    }

    /* JADX INFO: renamed from: A */
    public static void m1036A(InterfaceC2514m2 interfaceC2514m2, Double d) {
        if (AbstractC2385O3.f1213a) {
            AbstractC2385O3.m956a(interfaceC2514m2.getClass(), "{0} calling Sink.OfDouble.accept(Double)");
            throw null;
        }
        interfaceC2514m2.accept(d.doubleValue());
    }

    /* JADX INFO: renamed from: l0 */
    public static InterfaceC2577z0 m1069l0(long j) {
        if (j < 0 || j >= 2147483639) {
            return new C2523o1();
        }
        return new C2518n1(j);
    }

    /* JADX INFO: renamed from: I */
    public static Object[] m1044I(InterfaceC2347H0 interfaceC2347H0, IntFunction intFunction) {
        if (AbstractC2385O3.f1213a) {
            AbstractC2385O3.m956a(interfaceC2347H0.getClass(), "{0} calling Node.OfPrimitive.asArray");
            throw null;
        }
        if (interfaceC2347H0.count() >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) interfaceC2347H0.count());
        interfaceC2347H0.mo926f(objArr, 0);
        return objArr;
    }

    /* JADX INFO: renamed from: b0 */
    public static InterfaceC2567x0 m1061b0(long j) {
        if (j < 0 || j >= 2147483639) {
            return new C2421W0();
        }
        return new C2416V0(j);
    }

    /* JADX INFO: renamed from: U */
    public static InterfaceC2352I0 m1056U(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, boolean z, IntFunction intFunction) {
        long jMo981e0 = abstractC2573y1.mo981e0(spliterator);
        if (jMo981e0 < 0 || !spliterator.hasCharacteristics(16384)) {
            C2371M c2371m = new C2371M();
            c2371m.f1192a = intFunction;
            InterfaceC2352I0 interfaceC2352I0 = (InterfaceC2352I0) new C2377N0(abstractC2573y1, spliterator, c2371m, new C2459d0(9), 3).invoke();
            return z ? m1063f0(interfaceC2352I0, intFunction) : interfaceC2352I0;
        }
        if (jMo981e0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jMo981e0);
        new C2543s1(spliterator, abstractC2573y1, objArr).invoke();
        return new C2367L0(objArr);
    }

    /* JADX INFO: renamed from: N */
    public static void m1049N(InterfaceC2332E0 interfaceC2332E0, Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            interfaceC2332E0.mo922d((IntConsumer) consumer);
        } else {
            if (AbstractC2385O3.f1213a) {
                AbstractC2385O3.m956a(interfaceC2332E0.getClass(), "{0} calling Node.OfInt.forEachRemaining(Consumer)");
                throw null;
            }
            ((Spliterator.OfInt) interfaceC2332E0.spliterator()).forEachRemaining(consumer);
        }
    }

    /* JADX INFO: renamed from: K */
    public static void m1046K(InterfaceC2332E0 interfaceC2332E0, Integer[] numArr, int i) {
        if (AbstractC2385O3.f1213a) {
            AbstractC2385O3.m956a(interfaceC2332E0.getClass(), "{0} calling Node.OfInt.copyInto(Integer[], int)");
            throw null;
        }
        int[] iArr = (int[]) interfaceC2332E0.mo920b();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            numArr[i + i2] = Integer.valueOf(iArr[i2]);
        }
    }

    /* JADX INFO: renamed from: Q */
    public static InterfaceC2332E0 m1052Q(InterfaceC2332E0 interfaceC2332E0, long j, long j2) {
        if (j == 0 && j2 == interfaceC2332E0.count()) {
            return interfaceC2332E0;
        }
        long j3 = j2 - j;
        Spliterator.OfInt ofInt = (Spliterator.OfInt) interfaceC2332E0.spliterator();
        InterfaceC2572y0 interfaceC2572y0M1068k0 = m1068k0(j3);
        interfaceC2572y0M1068k0.mo873m(j3);
        for (int i = 0; i < j && ofInt.tryAdvance((IntConsumer) new C2327D0(0)); i++) {
        }
        if (j2 == interfaceC2332E0.count()) {
            ofInt.forEachRemaining((IntConsumer) interfaceC2572y0M1068k0);
        } else {
            for (int i2 = 0; i2 < j3 && ofInt.tryAdvance((IntConsumer) interfaceC2572y0M1068k0); i2++) {
            }
        }
        interfaceC2572y0M1068k0.end();
        return interfaceC2572y0M1068k0.build();
    }

    /* JADX INFO: renamed from: W */
    public static InterfaceC2332E0 m1058W(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, boolean z) {
        long jMo981e0 = abstractC2573y1.mo981e0(spliterator);
        if (jMo981e0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC2332E0 interfaceC2332E0 = (InterfaceC2332E0) new C2377N0(abstractC2573y1, spliterator, new C2459d0(5), new C2459d0(6), 1).invoke();
            return z ? m1065h0(interfaceC2332E0) : interfaceC2332E0;
        }
        if (jMo981e0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) jMo981e0];
        new C2533q1(spliterator, abstractC2573y1, iArr).invoke();
        return new C2460d1(iArr);
    }

    /* JADX INFO: renamed from: X */
    public static InterfaceC2342G0 m1059X(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, boolean z) {
        long jMo981e0 = abstractC2573y1.mo981e0(spliterator);
        if (jMo981e0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC2342G0 interfaceC2342G0 = (InterfaceC2342G0) new C2377N0(abstractC2573y1, spliterator, new C2459d0(7), new C2459d0(8), 2).invoke();
            return z ? m1066i0(interfaceC2342G0) : interfaceC2342G0;
        }
        if (jMo981e0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) jMo981e0];
        new C2538r1(spliterator, abstractC2573y1, jArr).invoke();
        return new C2513m1(jArr);
    }

    /* JADX INFO: renamed from: O */
    public static void m1050O(InterfaceC2342G0 interfaceC2342G0, Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            interfaceC2342G0.mo922d((LongConsumer) consumer);
        } else {
            if (AbstractC2385O3.f1213a) {
                AbstractC2385O3.m956a(interfaceC2342G0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((InterfaceC2240Z) interfaceC2342G0.spliterator()).forEachRemaining(consumer);
        }
    }

    /* JADX INFO: renamed from: L */
    public static void m1047L(InterfaceC2342G0 interfaceC2342G0, Long[] lArr, int i) {
        if (AbstractC2385O3.f1213a) {
            AbstractC2385O3.m956a(interfaceC2342G0.getClass(), "{0} calling Node.OfInt.copyInto(Long[], int)");
            throw null;
        }
        long[] jArr = (long[]) interfaceC2342G0.mo920b();
        for (int i2 = 0; i2 < jArr.length; i2++) {
            lArr[i + i2] = Long.valueOf(jArr[i2]);
        }
    }

    /* JADX INFO: renamed from: R */
    public static InterfaceC2342G0 m1053R(InterfaceC2342G0 interfaceC2342G0, long j, long j2) {
        if (j == 0 && j2 == interfaceC2342G0.count()) {
            return interfaceC2342G0;
        }
        long j3 = j2 - j;
        InterfaceC2240Z interfaceC2240Z = (InterfaceC2240Z) interfaceC2342G0.spliterator();
        InterfaceC2577z0 interfaceC2577z0M1069l0 = m1069l0(j3);
        interfaceC2577z0M1069l0.mo873m(j3);
        for (int i = 0; i < j && interfaceC2240Z.tryAdvance((LongConsumer) new C2337F0(0)); i++) {
        }
        if (j2 == interfaceC2342G0.count()) {
            interfaceC2240Z.forEachRemaining((LongConsumer) interfaceC2577z0M1069l0);
        } else {
            for (int i2 = 0; i2 < j3 && interfaceC2240Z.tryAdvance((LongConsumer) interfaceC2577z0M1069l0); i2++) {
            }
        }
        interfaceC2577z0M1069l0.end();
        return interfaceC2577z0M1069l0.build();
    }

    /* JADX INFO: renamed from: V */
    public static InterfaceC2322C0 m1057V(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, boolean z) {
        long jMo981e0 = abstractC2573y1.mo981e0(spliterator);
        if (jMo981e0 < 0 || !spliterator.hasCharacteristics(16384)) {
            InterfaceC2322C0 interfaceC2322C0 = (InterfaceC2322C0) new C2377N0(abstractC2573y1, spliterator, new C2459d0(3), new C2459d0(4), 0).invoke();
            return z ? m1064g0(interfaceC2322C0) : interfaceC2322C0;
        }
        if (jMo981e0 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) jMo981e0];
        new C2528p1(spliterator, abstractC2573y1, dArr).invoke();
        return new C2411U0(dArr);
    }

    /* JADX INFO: renamed from: f0 */
    public static InterfaceC2352I0 m1063f0(InterfaceC2352I0 interfaceC2352I0, IntFunction intFunction) {
        if (interfaceC2352I0.mo928h() <= 0) {
            return interfaceC2352I0;
        }
        long jCount = interfaceC2352I0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jCount);
        new C2568x1(interfaceC2352I0, objArr, 1).invoke();
        return new C2367L0(objArr);
    }

    /* JADX INFO: renamed from: M */
    public static void m1048M(InterfaceC2322C0 interfaceC2322C0, Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            interfaceC2322C0.mo922d((DoubleConsumer) consumer);
        } else {
            if (AbstractC2385O3.f1213a) {
                AbstractC2385O3.m956a(interfaceC2322C0.getClass(), "{0} calling Node.OfLong.forEachRemaining(Consumer)");
                throw null;
            }
            ((InterfaceC2235U) interfaceC2322C0.spliterator()).forEachRemaining(consumer);
        }
    }

    /* JADX INFO: renamed from: h0 */
    public static InterfaceC2332E0 m1065h0(InterfaceC2332E0 interfaceC2332E0) {
        if (interfaceC2332E0.mo928h() <= 0) {
            return interfaceC2332E0;
        }
        long jCount = interfaceC2332E0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        int[] iArr = new int[(int) jCount];
        new C2563w1(interfaceC2332E0, iArr, 0).invoke();
        return new C2460d1(iArr);
    }

    /* JADX INFO: renamed from: J */
    public static void m1045J(InterfaceC2322C0 interfaceC2322C0, Double[] dArr, int i) {
        if (AbstractC2385O3.f1213a) {
            AbstractC2385O3.m956a(interfaceC2322C0.getClass(), "{0} calling Node.OfDouble.copyInto(Double[], int)");
            throw null;
        }
        double[] dArr2 = (double[]) interfaceC2322C0.mo920b();
        for (int i2 = 0; i2 < dArr2.length; i2++) {
            dArr[i + i2] = Double.valueOf(dArr2[i2]);
        }
    }

    /* JADX INFO: renamed from: P */
    public static InterfaceC2322C0 m1051P(InterfaceC2322C0 interfaceC2322C0, long j, long j2) {
        if (j == 0 && j2 == interfaceC2322C0.count()) {
            return interfaceC2322C0;
        }
        long j3 = j2 - j;
        InterfaceC2235U interfaceC2235U = (InterfaceC2235U) interfaceC2322C0.spliterator();
        InterfaceC2567x0 interfaceC2567x0M1061b0 = m1061b0(j3);
        interfaceC2567x0M1061b0.mo873m(j3);
        for (int i = 0; i < j && interfaceC2235U.tryAdvance((DoubleConsumer) new C2317B0(0)); i++) {
        }
        if (j2 == interfaceC2322C0.count()) {
            interfaceC2235U.forEachRemaining((DoubleConsumer) interfaceC2567x0M1061b0);
        } else {
            for (int i2 = 0; i2 < j3 && interfaceC2235U.tryAdvance((DoubleConsumer) interfaceC2567x0M1061b0); i2++) {
            }
        }
        interfaceC2567x0M1061b0.end();
        return interfaceC2567x0M1061b0.build();
    }

    /* JADX INFO: renamed from: i0 */
    public static InterfaceC2342G0 m1066i0(InterfaceC2342G0 interfaceC2342G0) {
        if (interfaceC2342G0.mo928h() <= 0) {
            return interfaceC2342G0;
        }
        long jCount = interfaceC2342G0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        long[] jArr = new long[(int) jCount];
        new C2558v1(interfaceC2342G0, jArr, 0).invoke();
        return new C2513m1(jArr);
    }

    /* JADX INFO: renamed from: g0 */
    public static InterfaceC2322C0 m1064g0(InterfaceC2322C0 interfaceC2322C0) {
        if (interfaceC2322C0.mo928h() <= 0) {
            return interfaceC2322C0;
        }
        long jCount = interfaceC2322C0.count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        double[] dArr = new double[(int) jCount];
        new C2558v1(interfaceC2322C0, dArr, 0).invoke();
        return new C2411U0(dArr);
    }

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: f */
    public Object mo859f(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        InterfaceC2407T1 interfaceC2407T1Mo905r0 = mo905r0();
        abstractC2446b.mo982s0(spliterator, interfaceC2407T1Mo905r0);
        return interfaceC2407T1Mo905r0.get();
    }

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: i */
    public Object mo860i(AbstractC2573y1 abstractC2573y1, Spliterator spliterator) {
        return ((InterfaceC2407T1) new C2443a2(this, abstractC2573y1, spliterator).invoke()).get();
    }
}
