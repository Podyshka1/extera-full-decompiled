package p022j$.util;

import p022j$.util.stream.AbstractC2355I3;
import p022j$.util.stream.C2489i0;
import p022j$.util.stream.EnumC2462d3;
import p022j$.util.stream.IntStream;
import p022j$.util.stream.LongStream;
import p022j$.util.stream.Stream;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class DesugarArrays {
    /* JADX INFO: renamed from: a */
    public static C2290i0 m811a(Object[] objArr, int i, int i2) {
        Spliterators.m816a(((Object[]) Objects.requireNonNull(objArr)).length, i, i2);
        return new C2290i0(objArr, i, i2, 1040);
    }

    /* JADX INFO: renamed from: b */
    public static C2306q0 m812b(long[] jArr, int i, int i2) {
        Spliterators.m816a(((long[]) Objects.requireNonNull(jArr)).length, i, i2);
        return new C2306q0(jArr, i, i2, 1040);
    }

    public static <T> Stream<T> stream(T[] tArr) {
        return AbstractC2355I3.m934b(m811a(tArr, 0, tArr.length), false);
    }

    public static IntStream stream(int[] iArr) {
        return AbstractC2355I3.m933a(Spliterators.spliterator(iArr, 0, iArr.length, 1040));
    }

    public static LongStream stream(long[] jArr) {
        C2306q0 c2306q0M812b = m812b(jArr, 0, jArr.length);
        return new C2489i0(c2306q0M812b, EnumC2462d3.m999j(c2306q0M812b), false);
    }
}
