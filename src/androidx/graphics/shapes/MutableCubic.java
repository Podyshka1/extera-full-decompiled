package androidx.graphics.shapes;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class MutableCubic extends Cubic {
    public MutableCubic() {
        super(null, 1, null);
    }

    private final void transformOnePoint(PointTransformer pointTransformer, int i) {
        int i2 = i + 1;
        long jMo2125transformXgqJiTY = pointTransformer.mo2125transformXgqJiTY(getPoints$graphics_shapes_release()[i], getPoints$graphics_shapes_release()[i2]);
        getPoints$graphics_shapes_release()[i] = Float.intBitsToFloat((int) (jMo2125transformXgqJiTY >> 32));
        getPoints$graphics_shapes_release()[i2] = Float.intBitsToFloat((int) (jMo2125transformXgqJiTY & 4294967295L));
    }

    public final void transform(PointTransformer f) {
        Intrinsics.checkNotNullParameter(f, "f");
        transformOnePoint(f, 0);
        transformOnePoint(f, 2);
        transformOnePoint(f, 4);
        transformOnePoint(f, 6);
    }
}
