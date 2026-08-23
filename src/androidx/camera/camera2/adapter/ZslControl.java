package androidx.camera.camera2.adapter;

import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;

/* JADX INFO: loaded from: classes3.dex */
public interface ZslControl {
    void addZslConfig(SessionConfig.Builder builder);

    void clearZslConfig();

    ImageProxy dequeueImageFromBuffer();

    boolean isZslDisabledByFlashMode();

    boolean isZslDisabledByUserCaseConfig();

    boolean isZslSurface(DeferrableSurface deferrableSurface, SessionConfig sessionConfig);

    void setZslDisabledByFlashMode(boolean z);

    void setZslDisabledByUserCaseConfig(boolean z);
}
