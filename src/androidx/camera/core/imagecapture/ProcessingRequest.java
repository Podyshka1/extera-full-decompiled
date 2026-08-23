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
    public abstract ListenableFuture<Void> getCaptureFuture();

    public abstract Rect getCropRect();

    public abstract int getJpegQuality();

    public abstract ImageCapture.OutputFileOptions getOutputFileOptions();

    public abstract int getRequestId();

    public abstract int getRotationDegrees();

    public abstract ImageCapture.OutputFileOptions getSecondaryOutputFileOptions();

    public abstract Matrix getSensorToBufferTransform();

    public abstract List<Integer> getStageIds();

    public abstract String getTagBundleKey();

    public abstract TakePictureRequest getTakePictureRequest();

    public abstract boolean isAborted();

    public abstract boolean isInMemoryCapture();

    public abstract void onCaptureFailure(ImageCaptureException imageCaptureException);

    public abstract void onCaptureProcessProgressed(int i);

    public abstract void onCaptureStarted();

    public abstract void onFinalResult(ImageCapture.OutputFileResults outputFileResults);

    public abstract void onFinalResult(ImageProxy imageProxy);

    public abstract void onImageCaptured();

    public abstract void onPostviewBitmapAvailable(Bitmap bitmap);

    public abstract void onProcessFailure(ImageCaptureException imageCaptureException);
}
