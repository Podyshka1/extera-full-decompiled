package androidx.camera.camera2.compat;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Api34Compat {
    public static final Api34Compat INSTANCE = new Api34Compat();

    private Api34Compat() {
    }

    public static final void onReadoutStarted(CameraCaptureSession.CaptureCallback callback, CameraCaptureSession session, CaptureRequest request, long j, long j2) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(session, "session");
        Intrinsics.checkNotNullParameter(request, "request");
        callback.onReadoutStarted(session, request, j, j2);
    }

    public static final void setSettingsOverrideZoom(Map parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        parameters.put(CaptureRequest.CONTROL_SETTINGS_OVERRIDE, 1);
    }
}
