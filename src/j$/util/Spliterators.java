package j$.util;

import j$.util.Spliterator;

/* JADX INFO: loaded from: classes2.dex */
public final class Spliterators {

    /* JADX INFO: renamed from: a */
    public static final n0 f684a = new n0();

    /* JADX INFO: renamed from: b */
    public static final l0 f685b = new l0();

    /* JADX INFO: renamed from: c */
    public static final m0 f686c = new m0();

    /* JADX INFO: renamed from: d */
    public static final k0 f687d = new k0();

    public static Spliterator.OfInt spliterator(int[] iArr, int i, int i2, int i3) {
        m690a(((int[]) Objects.requireNonNull(iArr)).length, i, i2);
        return new o0(iArr, i, i2, i3);
    }

    /* JADX INFO: renamed from: a */
    public static void m690a(int i, int i2, int i3) {
        if (i2 <= i3) {
            if (i2 < 0) {
                throw new ArrayIndexOutOfBoundsException(i2);
            }
            if (i3 > i) {
                throw new ArrayIndexOutOfBoundsException(i3);
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException("origin(" + i2 + ") > fence(" + i3 + ")");
    }

    public static <T> Spliterator<T> spliterator(java.util.Collection<? extends T> collection, int i) {
        return new p0((java.util.Collection) Objects.requireNonNull(collection), i);
    }
}
