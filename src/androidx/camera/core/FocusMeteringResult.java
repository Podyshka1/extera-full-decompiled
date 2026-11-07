package androidx.camera.core;

/* JADX INFO: loaded from: classes3.dex */
public final class FocusMeteringResult {
    private boolean mIsFocusSuccessful;

    public static FocusMeteringResult emptyInstance() {
        return new FocusMeteringResult(false);
    }

    public static FocusMeteringResult create(boolean z) {
        return new FocusMeteringResult(z);
    }

    private FocusMeteringResult(boolean z) {
        this.mIsFocusSuccessful = z;
    }
}
