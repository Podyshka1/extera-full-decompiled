package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.UseFlashModeTorchFor3aUpdate;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.compat.workaround.UseFlashModeTorchFor3aUpdate_Bindings_Companion_ProvideUseFlashModeTorchFor3aUpdateFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0122xe22154ee implements Provider {
    public static UseFlashModeTorchFor3aUpdate provideUseFlashModeTorchFor3aUpdate(CameraQuirks cameraQuirks) {
        return (UseFlashModeTorchFor3aUpdate) Preconditions.checkNotNullFromProvides(UseFlashModeTorchFor3aUpdate.Bindings.Companion.provideUseFlashModeTorchFor3aUpdate(cameraQuirks));
    }
}
