package androidx.camera.core;

import androidx.core.util.Pair;

/* JADX INFO: loaded from: classes3.dex */
public class CompositionSettings {
    public static final CompositionSettings DEFAULT = new Builder().setAlpha(1.0f).setOffset(0.0f, 0.0f).setScale(1.0f, 1.0f).build();
    private final float mAlpha;
    private final Pair mOffset;
    private final Pair mScale;

    private CompositionSettings(float f, Pair pair, Pair pair2) {
        this.mAlpha = f;
        this.mOffset = pair;
        this.mScale = pair2;
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public Pair getOffset() {
        return this.mOffset;
    }

    public Pair getScale() {
        return this.mScale;
    }

    public static final class Builder {
        private float mAlpha;
        private Pair mOffset;
        private Pair mScale;

        public Builder() {
            Float fValueOf = Float.valueOf(1.0f);
            this.mAlpha = 1.0f;
            Float fValueOf2 = Float.valueOf(0.0f);
            this.mOffset = Pair.create(fValueOf2, fValueOf2);
            this.mScale = Pair.create(fValueOf, fValueOf);
        }

        public Builder setAlpha(float f) {
            this.mAlpha = f;
            return this;
        }

        public Builder setOffset(float f, float f2) {
            this.mOffset = Pair.create(Float.valueOf(f), Float.valueOf(f2));
            return this;
        }

        public Builder setScale(float f, float f2) {
            this.mScale = Pair.create(Float.valueOf(f), Float.valueOf(f2));
            return this;
        }

        public CompositionSettings build() {
            return new CompositionSettings(this.mAlpha, this.mOffset, this.mScale);
        }
    }
}
