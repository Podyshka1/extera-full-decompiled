package androidx.graphics.shapes;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class CornerRounding {
    public static final Companion Companion;
    public static final CornerRounding Unrounded;
    private final float radius;
    private final float smoothing;

    public CornerRounding(float f, float f2) {
        this.radius = f;
        this.smoothing = f2;
    }

    public /* synthetic */ CornerRounding(float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0f : f, (i & 2) != 0 ? 0.0f : f2);
    }

    public final float getRadius() {
        return this.radius;
    }

    public final float getSmoothing() {
        return this.smoothing;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        DefaultConstructorMarker defaultConstructorMarker = null;
        Companion = new Companion(defaultConstructorMarker);
        float f = 0.0f;
        Unrounded = new CornerRounding(f, f, 3, defaultConstructorMarker);
    }
}
