package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes3.dex */
public class CameraCaptureFailure {
    private final Reason mReason;

    public enum Reason {
        ERROR
    }

    public CameraCaptureFailure(Reason reason) {
        this.mReason = reason;
    }
}
