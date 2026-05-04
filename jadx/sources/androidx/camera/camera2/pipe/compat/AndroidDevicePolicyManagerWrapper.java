package androidx.camera.camera2.pipe.compat;

import android.app.admin.DevicePolicyManager;
import android.os.Trace;
import androidx.camera.camera2.pipe.core.Debug;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidDevicePolicyManagerWrapper implements DevicePolicyManagerWrapper {
    private final DevicePolicyManager devicePolicyManager;

    public AndroidDevicePolicyManagerWrapper(DevicePolicyManager devicePolicyManager) {
        Intrinsics.checkNotNullParameter(devicePolicyManager, "devicePolicyManager");
        this.devicePolicyManager = devicePolicyManager;
    }

    @Override // androidx.camera.camera2.pipe.compat.DevicePolicyManagerWrapper
    public boolean getCamerasDisabled() {
        Debug debug = Debug.INSTANCE;
        try {
            Trace.beginSection("DevicePolicyManager#getCameraDisabled");
            return this.devicePolicyManager.getCameraDisabled(null);
        } finally {
            Trace.endSection();
        }
    }
}
