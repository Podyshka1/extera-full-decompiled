package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ProcessingRequest {
    abstract ListenableFuture getCaptureFuture();

    abstract Rect getCropRect();

    abstract int getJpegQuality();

    abstract ImageCapture.OutputFileOptions getOutputFileOptions();

    public abstract int getRequestId();

    abstract int getRotationDegrees();

    abstract ImageCapture.OutputFileOptions getSecondaryOutputFileOptions();

    abstract Matrix getSensorToBufferTransform();

    abstract List getStageIds();

    abstract String getTagBundleKey();

    abstract TakePictureRequest getTakePictureRequest();

    abstract boolean isAborted();

    abstract boolean isInMemoryCapture();

    abstract void onCaptureFailure(ImageCaptureException imageCaptureException);

    abstract void onCaptureProcessProgressed(int i);

    abstract void onCaptureStarted();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onFinalResult(ImageCapture.OutputFileResults outputFileResults);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onFinalResult(ImageProxy imageProxy);

    abstract void onImageCaptured();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onPostviewBitmapAvailable(Bitmap bitmap);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void onProcessFailure(ImageCaptureException imageCaptureException);
}
