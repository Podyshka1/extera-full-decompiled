package androidx.camera.camera2.adapter;

import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.SessionConfig;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ZslControlNoOpImpl implements ZslControl {
    @Override // androidx.camera.camera2.adapter.ZslControl
    public void addZslConfig(SessionConfig.Builder sessionConfigBuilder) {
        Intrinsics.checkNotNullParameter(sessionConfigBuilder, "sessionConfigBuilder");
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void clearZslConfig() {
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public ImageProxy dequeueImageFromBuffer() {
        return null;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslDisabledByFlashMode() {
        return false;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslDisabledByUserCaseConfig() {
        return false;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public boolean isZslSurface(DeferrableSurface surface, SessionConfig sessionConfig) {
        Intrinsics.checkNotNullParameter(surface, "surface");
        Intrinsics.checkNotNullParameter(sessionConfig, "sessionConfig");
        return false;
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void setZslDisabledByFlashMode(boolean z) {
    }

    @Override // androidx.camera.camera2.adapter.ZslControl
    public void setZslDisabledByUserCaseConfig(boolean z) {
    }
}
