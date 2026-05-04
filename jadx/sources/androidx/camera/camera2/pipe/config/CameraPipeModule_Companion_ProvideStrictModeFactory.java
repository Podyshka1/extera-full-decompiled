package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.CameraPipe;
import androidx.camera.camera2.pipe.StrictMode;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPipeModule_Companion_ProvideStrictModeFactory implements Provider {
    public static StrictMode provideStrictMode(CameraPipe.Flags flags) {
        return (StrictMode) Preconditions.checkNotNullFromProvides(CameraPipeModule.Companion.provideStrictMode(flags));
    }
}
