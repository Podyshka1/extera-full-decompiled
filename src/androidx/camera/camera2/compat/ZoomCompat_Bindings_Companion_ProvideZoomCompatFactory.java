package androidx.camera.camera2.compat;

import androidx.camera.camera2.compat.ZoomCompat;
import androidx.camera.camera2.impl.CameraProperties;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ZoomCompat_Bindings_Companion_ProvideZoomCompatFactory implements Provider {
    public static ZoomCompat provideZoomCompat(CameraProperties cameraProperties) {
        return (ZoomCompat) Preconditions.checkNotNullFromProvides(ZoomCompat.Bindings.INSTANCE.provideZoomCompat(cameraProperties));
    }
}
