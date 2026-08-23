package androidx.camera.core.featuregroup.impl.feature;

import android.util.Range;
import androidx.camera.core.featuregroup.GroupableFeature;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class FpsRangeFeature extends GroupableFeature {
    public static final Companion Companion = new Companion(null);
    public static final Range DEFAULT_FPS_RANGE = new Range(30, 30);
    private final FeatureTypeInternal featureTypeInternal = FeatureTypeInternal.FPS_RANGE;
    private final int maxFps;
    private final int minFps;

    public FpsRangeFeature(int i, int i2) {
        this.minFps = i;
        this.maxFps = i2;
    }

    public final int getMaxFps() {
        return this.maxFps;
    }

    public final int getMinFps() {
        return this.minFps;
    }

    @Override // androidx.camera.core.featuregroup.GroupableFeature
    public FeatureTypeInternal getFeatureTypeInternal() {
        return this.featureTypeInternal;
    }

    public String toString() {
        return "FpsRangeFeature(minFps=" + this.minFps + ", maxFps=" + this.maxFps + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
