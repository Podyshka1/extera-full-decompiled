package androidx.camera.camera2.config;

import androidx.camera.camera2.adapter.ZslControl;
import androidx.camera.camera2.impl.CameraProperties;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraModule_Companion_ProvideZslControlFactory implements Provider {
    public static ZslControl provideZslControl(CameraProperties cameraProperties) {
        return (ZslControl) Preconditions.checkNotNullFromProvides(CameraModule.Companion.provideZslControl(cameraProperties));
    }
}
