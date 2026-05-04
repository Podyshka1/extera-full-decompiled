package p022j$.util;

import java.util.Collection;
import p022j$.util.Spliterator;

/* JADX INFO: loaded from: classes2.dex */
public final class Spliterators {

    /* JADX INFO: renamed from: a */
    public static final C2300n0 f919a = new C2300n0();

    /* JADX INFO: renamed from: b */
    public static final C2296l0 f920b = new C2296l0();

    /* JADX INFO: renamed from: c */
    public static final C2298m0 f921c = new C2298m0();

    /* JADX INFO: renamed from: d */
    public static final C2294k0 f922d = new C2294k0();

    public static Spliterator.OfInt spliterator(int[] iArr, int i, int i2, int i3) {
        m816a(((int[]) Objects.requireNonNull(iArr)).length, i, i2);
        return new C2302o0(iArr, i, i2, i3);
    }

    /* JADX INFO: renamed from: a */
    public static void m816a(int i, int i2, int i3) {
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

    public static <T> Spliterator<T> spliterator(Collection<? extends T> collection, int i) {
        return new C2304p0((Collection) Objects.requireNonNull(collection), i);
    }
}
