package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.AutoFlashAEModeDisabler;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.compat.workaround.AutoFlashAEModeDisabler_Bindings_Companion_ProvideAEModeDisablerFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0118x44b94a6f implements Provider {
    public static AutoFlashAEModeDisabler provideAEModeDisabler(CameraQuirks cameraQuirks) {
        return (AutoFlashAEModeDisabler) Preconditions.checkNotNullFromProvides(AutoFlashAEModeDisabler.Bindings.Companion.provideAEModeDisabler(cameraQuirks));
    }
}
