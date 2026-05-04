package androidx.camera.core.resolutionselector;

import android.util.Size;

/* JADX INFO: loaded from: classes4.dex */
public final class ResolutionStrategy {
    public static final ResolutionStrategy HIGHEST_AVAILABLE_STRATEGY = new ResolutionStrategy();
    private Size mBoundSize = null;
    private int mFallbackRule = 0;

    private ResolutionStrategy() {
    }

    public Size getBoundSize() {
        return this.mBoundSize;
    }

    public int getFallbackRule() {
        return this.mFallbackRule;
    }
}
