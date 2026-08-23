package j$.util;

import j$.util.stream.C6212i0;
import j$.util.stream.EnumC6195d3;
import j$.util.stream.I3;
import j$.util.stream.IntStream;
import j$.util.stream.LongStream;
import j$.util.stream.Stream;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class DesugarArrays {
    /* JADX INFO: renamed from: a */
    public static i0 m686a(Object[] objArr, int i, int i2) {
        Spliterators.m690a(((Object[]) Objects.requireNonNull(objArr)).length, i, i2);
        return new i0(objArr, i, i2, 1040);
    }

    /* JADX INFO: renamed from: b */
    public static q0 m687b(long[] jArr, int i, int i2) {
        Spliterators.m690a(((long[]) Objects.requireNonNull(jArr)).length, i, i2);
        return new q0(jArr, i, i2, 1040);
    }

    public static <T> Stream<T> stream(T[] tArr) {
        return I3.m794b(m686a(tArr, 0, tArr.length), false);
    }

    public static IntStream stream(int[] iArr) {
        return I3.m793a(Spliterators.spliterator(iArr, 0, iArr.length, 1040));
    }

    public static LongStream stream(long[] jArr) {
        q0 q0VarM687b = m687b(jArr, 0, jArr.length);
        return new C6212i0(q0VarM687b, EnumC6195d3.m848j(q0VarM687b), false);
    }
}
