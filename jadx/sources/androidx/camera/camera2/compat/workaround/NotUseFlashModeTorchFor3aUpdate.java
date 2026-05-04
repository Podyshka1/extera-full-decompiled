package androidx.camera.camera2.compat.workaround;

/* JADX INFO: loaded from: classes3.dex */
public final class NotUseFlashModeTorchFor3aUpdate implements UseFlashModeTorchFor3aUpdate {
    public static final NotUseFlashModeTorchFor3aUpdate INSTANCE = new NotUseFlashModeTorchFor3aUpdate();

    @Override // androidx.camera.camera2.compat.workaround.UseFlashModeTorchFor3aUpdate
    public boolean shouldUseFlashModeTorch() {
        return false;
    }

    private NotUseFlashModeTorchFor3aUpdate() {
    }
}
