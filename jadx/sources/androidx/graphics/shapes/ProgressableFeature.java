package androidx.graphics.shapes;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ProgressableFeature {
    private final Feature feature;
    private final float progress;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProgressableFeature)) {
            return false;
        }
        ProgressableFeature progressableFeature = (ProgressableFeature) obj;
        return Float.compare(this.progress, progressableFeature.progress) == 0 && Intrinsics.areEqual(this.feature, progressableFeature.feature);
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.progress) * 31) + this.feature.hashCode();
    }

    public String toString() {
        return "ProgressableFeature(progress=" + this.progress + ", feature=" + this.feature + ')';
    }

    public ProgressableFeature(float f, Feature feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        this.progress = f;
        this.feature = feature;
    }

    public final Feature getFeature() {
        return this.feature;
    }

    public final float getProgress() {
        return this.progress;
    }
}
