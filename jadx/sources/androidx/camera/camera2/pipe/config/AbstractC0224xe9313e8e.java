package androidx.camera.camera2.pipe.config;

import android.content.Context;
import androidx.camera.camera2.pipe.compat.DevicePolicyManagerWrapper;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.config.CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0224xe9313e8e implements Provider {
    public static DevicePolicyManagerWrapper provideDevicePolicyManagerWrapper(Context context) {
        return (DevicePolicyManagerWrapper) Preconditions.checkNotNullFromProvides(CameraPipeModule.Companion.provideDevicePolicyManagerWrapper(context));
    }
}
