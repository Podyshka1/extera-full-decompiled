package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.camera2.compat.workaround.TemplateParamsOverride;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.compat.workaround.TemplateParamsOverride_Bindings_Companion_ProvideTemplateParamsOverrideFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0121x6722606e implements Provider {
    public static TemplateParamsOverride provideTemplateParamsOverride(CameraQuirks cameraQuirks) {
        return (TemplateParamsOverride) Preconditions.checkNotNullFromProvides(TemplateParamsOverride.Bindings.Companion.provideTemplateParamsOverride(cameraQuirks));
    }
}
