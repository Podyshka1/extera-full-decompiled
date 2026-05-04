package androidx.camera.camera2.pipe.config;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraPipe;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPipeModule_Companion_ProvideContextFactory implements Provider {
    public static Context provideContext(CameraPipe.Config config) {
        return (Context) Preconditions.checkNotNullFromProvides(CameraPipeModule.Companion.provideContext(config));
    }
}
