package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ExtensionSessionState implements CameraExtensionSessionWrapper.StateCallback {
    private final CaptureSessionState captureSessionState;

    public ExtensionSessionState(CaptureSessionState captureSessionState) {
        Intrinsics.checkNotNullParameter(captureSessionState, "captureSessionState");
        this.captureSessionState = captureSessionState;
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper.StateCallback
    public void onConfigured(CameraExtensionSessionWrapper session) {
        Intrinsics.checkNotNullParameter(session, "session");
        this.captureSessionState.onConfigured(session);
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public void onSessionDisconnected() {
        this.captureSessionState.onSessionDisconnected();
    }

    @Override // androidx.camera.camera2.pipe.compat.SessionStateCallback
    public void onSessionFinalized() throws Exception {
        this.captureSessionState.onSessionFinalized();
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper.StateCallback
    public void onConfigureFailed(CameraExtensionSessionWrapper session) {
        Intrinsics.checkNotNullParameter(session, "session");
        this.captureSessionState.onConfigureFailed(session);
    }

    @Override // androidx.camera.camera2.pipe.compat.CameraExtensionSessionWrapper.StateCallback
    public void onClosed(CameraExtensionSessionWrapper session) {
        Intrinsics.checkNotNullParameter(session, "session");
        this.captureSessionState.onClosed(session);
    }
}
