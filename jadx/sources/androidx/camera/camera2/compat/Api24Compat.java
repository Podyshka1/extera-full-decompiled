package androidx.camera.camera2.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.view.Surface;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api24Compat {
    public static final Api24Compat INSTANCE = new Api24Compat();

    private Api24Compat() {
    }

    public static final void onCaptureBufferLost(CameraCaptureSession.CaptureCallback callback, CameraCaptureSession session, CaptureRequest request, Surface surface, long j) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(surface, "surface");
        callback.onCaptureBufferLost(session, request, surface, j);
    }
}
