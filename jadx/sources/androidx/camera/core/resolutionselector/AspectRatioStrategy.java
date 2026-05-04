package androidx.camera.core.resolutionselector;

/* JADX INFO: loaded from: classes4.dex */
public final class AspectRatioStrategy {
    private final int mFallbackRule;
    private final int mPreferredAspectRatio;
    public static final AspectRatioStrategy RATIO_4_3_FALLBACK_AUTO_STRATEGY = new AspectRatioStrategy(0, 1);
    public static final AspectRatioStrategy RATIO_16_9_FALLBACK_AUTO_STRATEGY = new AspectRatioStrategy(1, 1);

    public AspectRatioStrategy(int i, int i2) {
        this.mPreferredAspectRatio = i;
        this.mFallbackRule = i2;
    }

    public int getPreferredAspectRatio() {
        return this.mPreferredAspectRatio;
    }

    public int getFallbackRule() {
        return this.mFallbackRule;
    }
}
