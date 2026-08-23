package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.imagecapture.TakePictureManager;

/* JADX INFO: loaded from: classes3.dex */
final class AutoValue_TakePictureManager_CaptureError extends TakePictureManager.CaptureError {
    private final ImageCaptureException imageCaptureException;
    private final int requestId;

    AutoValue_TakePictureManager_CaptureError(int i, ImageCaptureException imageCaptureException) {
        this.requestId = i;
        if (imageCaptureException == null) {
            throw new NullPointerException("Null imageCaptureException");
        }
        this.imageCaptureException = imageCaptureException;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager.CaptureError
    int getRequestId() {
        return this.requestId;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureManager.CaptureError
    ImageCaptureException getImageCaptureException() {
        return this.imageCaptureException;
    }

    public String toString() {
        return "CaptureError{requestId=" + this.requestId + ", imageCaptureException=" + this.imageCaptureException + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TakePictureManager.CaptureError) {
            TakePictureManager.CaptureError captureError = (TakePictureManager.CaptureError) obj;
            if (this.requestId == captureError.getRequestId() && this.imageCaptureException.equals(captureError.getImageCaptureException())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.requestId ^ 1000003) * 1000003) ^ this.imageCaptureException.hashCode();
    }
}
