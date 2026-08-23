package androidx.camera.camera2.config;

import androidx.camera.camera2.compat.quirk.CameraQuirks;
import androidx.camera.core.impl.EncoderProfilesProvider;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraModule_Companion_ProvideEncoderProfilesProviderFactory implements Provider {
    public static EncoderProfilesProvider provideEncoderProfilesProvider(String str, CameraQuirks cameraQuirks) {
        return (EncoderProfilesProvider) Preconditions.checkNotNullFromProvides(CameraModule.Companion.provideEncoderProfilesProvider(str, cameraQuirks));
    }
}
