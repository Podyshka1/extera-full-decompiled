package androidx.camera.core.impl;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ExtendedCameraConfigProviderStore {
    private static final Object LOCK = new Object();
    private static final Map CAMERA_CONFIG_PROVIDERS = new HashMap();

    public static CameraConfigProvider getConfigProvider(Object obj) {
        CameraConfigProvider cameraConfigProvider;
        synchronized (LOCK) {
            cameraConfigProvider = (CameraConfigProvider) CAMERA_CONFIG_PROVIDERS.get(obj);
        }
        return cameraConfigProvider == null ? CameraConfigProvider.EMPTY : cameraConfigProvider;
    }
}
