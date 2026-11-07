package androidx.camera.core.impl;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ExtendedCameraConfigProviderStore {
    private static final Object LOCK = new Object();
    private static final Map<Object, CameraConfigProvider> CAMERA_CONFIG_PROVIDERS = new HashMap();

    public static CameraConfigProvider getConfigProvider(Object obj) {
        CameraConfigProvider cameraConfigProvider;
        synchronized (LOCK) {
            cameraConfigProvider = CAMERA_CONFIG_PROVIDERS.get(obj);
        }
        return cameraConfigProvider == null ? CameraConfigProvider.EMPTY : cameraConfigProvider;
    }
}
