package androidx.camera.camera2.pipe.config;

import android.content.Context;
import androidx.camera.featurecombinationquery.CameraDeviceSetupCompatFactory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.config.CameraPipeModule_Companion_ProvideCameraDeviceSetupCompatFactoryFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0223xd2e60b16 implements Provider {
    public static CameraDeviceSetupCompatFactory provideCameraDeviceSetupCompatFactory(Context context) {
        return (CameraDeviceSetupCompatFactory) Preconditions.checkNotNullFromProvides(CameraPipeModule.Companion.provideCameraDeviceSetupCompatFactory(context));
    }
}
