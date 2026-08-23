package androidx.camera.camera2.pipe.config;

import android.content.Context;
import android.content.pm.PackageManager;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPipeModule_Companion_ProvidePackageManagerFactory implements Provider {
    public static PackageManager providePackageManager(Context context) {
        return (PackageManager) Preconditions.checkNotNullFromProvides(CameraPipeModule.Companion.providePackageManager(context));
    }
}
