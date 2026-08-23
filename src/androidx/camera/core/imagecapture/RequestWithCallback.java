package androidx.camera.core.imagecapture;

import androidx.camera.core.ImageCaptureException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RequestWithCallback {
    abstract void abortAndSendErrorToApp(ImageCaptureException imageCaptureException);

    abstract void abortSilentlyAndRetry();
}
