package androidx.camera.core;

/* JADX INFO: loaded from: classes3.dex */
public class ImageCaptureException extends Exception {
    private final int mImageCaptureError;

    public ImageCaptureException(int i, String str, Throwable th) {
        super(str, th);
        this.mImageCaptureError = i;
    }

    public int getImageCaptureError() {
        return this.mImageCaptureError;
    }
}
