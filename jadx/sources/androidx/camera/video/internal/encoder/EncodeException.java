package androidx.camera.video.internal.encoder;

/* JADX INFO: loaded from: classes4.dex */
public class EncodeException extends Exception {
    private final int mErrorType;

    public EncodeException(int i, String str, Throwable th) {
        super(str, th);
        this.mErrorType = i;
    }
}
