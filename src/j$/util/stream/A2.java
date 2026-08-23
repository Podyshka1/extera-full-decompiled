package j$.util.stream;

import j$.util.InterfaceC2096U;
import j$.util.InterfaceC2101Z;
import j$.util.Spliterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class A2 {
    /* JADX INFO: renamed from: c */
    public static long m750c(long j, long j2) {
        long j3 = j2 >= 0 ? j + j2 : Long.MAX_VALUE;
        if (j3 >= 0) {
            return j3;
        }
        return Long.MAX_VALUE;
    }

    /* JADX INFO: renamed from: a */
    public static long m748a(long j, long j2, long j3) {
        if (j >= 0) {
            return Math.max(-1L, Math.min(j - j2, j3));
        }
        return -1L;
    }

    /* JADX INFO: renamed from: b */
    public static Spliterator m749b(EnumC6199e3 enumC6199e3, Spliterator spliterator, long j, long j2) {
        long jM750c = m750c(j, j2);
        int i = AbstractC6278y2.f1280a[enumC6199e3.ordinal()];
        if (i == 1) {
            return new C6275x3(spliterator, j, jM750c);
        }
        if (i == 2) {
            return new C6263u3((Spliterator.OfInt) spliterator, j, jM750c);
        }
        if (i == 3) {
            return new C6267v3((InterfaceC2101Z) spliterator, j, jM750c);
        }
        if (i != 4) {
            throw new IllegalStateException("Unknown shape " + enumC6199e3);
        }
        return new C6259t3((InterfaceC2096U) spliterator, j, jM750c);
    }

    /* JADX INFO: renamed from: h */
    public static C6250r2 m755h(AbstractC6210h2 abstractC6210h2, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C6250r2(abstractC6210h2, m751d(j2), j, j2);
    }

    /* JADX INFO: renamed from: f */
    public static C6258t2 m753f(AbstractC6188c0 abstractC6188c0, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C6258t2(abstractC6188c0, m751d(j2), j, j2);
    }

    /* JADX INFO: renamed from: g */
    public static C6266v2 m754g(AbstractC6224l0 abstractC6224l0, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C6266v2(abstractC6224l0, m751d(j2), j, j2);
    }

    /* JADX INFO: renamed from: e */
    public static C6274x2 m752e(AbstractC2154B abstractC2154B, long j, long j2) {
        if (j < 0) {
            throw new IllegalArgumentException("Skip must be non-negative: " + j);
        }
        return new C6274x2(abstractC2154B, m751d(j2), j, j2);
    }

    /* JADX INFO: renamed from: d */
    public static int m751d(long j) {
        return (j != -1 ? EnumC6195d3.f1115u : 0) | EnumC6195d3.f1114t;
    }
}
