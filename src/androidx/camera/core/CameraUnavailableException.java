package androidx.camera.core;

/* JADX INFO: loaded from: classes3.dex */
public class CameraUnavailableException extends Exception {
    private final int mReason;

    public CameraUnavailableException(int i, String str) {
        super(str);
        this.mReason = i;
    }
}
