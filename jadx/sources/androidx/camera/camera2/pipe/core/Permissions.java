package androidx.camera.camera2.pipe.core;

import android.content.Context;
import android.os.Build;
import android.os.Trace;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Permissions {
    private volatile boolean _hasCameraPermission;
    private final Context cameraPipeContext;

    public Permissions(Context cameraPipeContext) {
        Intrinsics.checkNotNullParameter(cameraPipeContext, "cameraPipeContext");
        this.cameraPipeContext = cameraPipeContext;
    }

    public final boolean getHasCameraPermission() {
        return checkCameraPermission();
    }

    private final boolean checkCameraPermission() {
        if (Intrinsics.areEqual(Build.FINGERPRINT, "robolectric")) {
            return true;
        }
        if (!this._hasCameraPermission) {
            Debug debug = Debug.INSTANCE;
            Trace.beginSection("CXCP#checkCameraPermission");
            if (this.cameraPipeContext.checkSelfPermission("android.permission.CAMERA") == 0) {
                this._hasCameraPermission = true;
            }
            Trace.endSection();
        }
        return this._hasCameraPermission;
    }
}
