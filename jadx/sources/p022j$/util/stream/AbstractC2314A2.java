package p022j$.util.stream;

import p022j$.util.InterfaceC2235U;
import p022j$.util.InterfaceC2240Z;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.A2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2314A2 {
    /* JADX INFO: renamed from: c */
    public static long m879c(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* JADX INFO: renamed from: a */
    public static long m877a(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: renamed from: b */
    public static Spliterator m878b(EnumC2468e3 enumC2468e3, Spliterator spliterator, long j, long j2) {
        long jM879c = m879c(j, j2);
        int i = AbstractC2574y2.f1516a[enumC2468e3.ordinal()];
        if (i == 1) {
            return new C2570x3(spliterator, j, jM879c);
        }
        if (i == 2) {
            return new C2555u3((Spliterator.OfInt) spliterator, j, jM879c);
        }
        if (i == 3) {
            return new C2560v3((InterfaceC2240Z) spliterator, j, jM879c);
        }
        if (i != 4) {
            throw new IllegalStateException("Unknown shape " + enumC2468e3);
        }
        return new C2550t3((InterfaceC2235U) spliterator, j, jM879c);
    }

    /* JADX INFO: renamed from: h */
    public static C2539r2 m884h(AbstractC2485h2 abstractC2485h2, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C2539r2(abstractC2485h2, m880d(j2), j, j2);
    }

    /* JADX INFO: renamed from: f */
    public static C2549t2 m882f(AbstractC2453c0 abstractC2453c0, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C2549t2(abstractC2453c0, m880d(j2), j, j2);
    }

    /* JADX INFO: renamed from: g */
    public static C2559v2 m883g(AbstractC2507l0 abstractC2507l0, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C2559v2(abstractC2507l0, m880d(j2), j, j2);
    }

    /* JADX INFO: renamed from: e */
    public static C2569x2 m881e(AbstractC2316B abstractC2316B, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C2569x2(abstractC2316B, m880d(j2), j, j2);
    }

    /* JADX INFO: renamed from: d */
    public static int m880d(long j) {
        return (j != -1 ? EnumC2462d3.f1351u : 0) | EnumC2462d3.f1350t;
    }
}
