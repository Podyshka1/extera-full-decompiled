package androidx.camera.core;

import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.internal.CameraUseCaseAdapter;

/* JADX INFO: loaded from: classes3.dex */
public interface CameraUseCaseAdapterProvider {
    CameraUseCaseAdapter provide(CameraInternal cameraInternal, CameraInternal cameraInternal2, AdapterCameraInfo adapterCameraInfo, AdapterCameraInfo adapterCameraInfo2, CompositionSettings compositionSettings, CompositionSettings compositionSettings2);

    CameraUseCaseAdapter provide(String str);
}
