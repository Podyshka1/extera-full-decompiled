package androidx.camera.camera2.compat.workaround;

/* JADX INFO: loaded from: classes3.dex */
public final class AutoFlashAEModeDisablerImpl implements AutoFlashAEModeDisabler {
    public static final AutoFlashAEModeDisablerImpl INSTANCE = new AutoFlashAEModeDisablerImpl();

    @Override // androidx.camera.camera2.compat.workaround.AutoFlashAEModeDisabler
    public int getCorrectedAeMode(int i) {
        if (i == 2) {
            return 1;
        }
        return i;
    }

    private AutoFlashAEModeDisablerImpl() {
    }
}
