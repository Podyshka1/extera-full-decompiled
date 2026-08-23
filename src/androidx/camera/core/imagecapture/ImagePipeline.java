package androidx.camera.core.imagecapture;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Size;
import androidx.camera.core.CameraEffect;
import androidx.camera.core.ForwardingImageProxy;
import androidx.camera.core.imagecapture.CaptureNode;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageInputConfig;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.compat.workaround.ExifRotationAvailability;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class ImagePipeline {
    static final ExifRotationAvailability EXIF_ROTATION_AVAILABILITY = new ExifRotationAvailability();
    private final CaptureConfig mCaptureConfig;
    private final CaptureNode mCaptureNode;
    private final CaptureNode.AbstractC0262In mPipelineIn;
    private final ProcessingNode mProcessingNode;
    private final ImageCaptureConfig mUseCaseConfig;

    public ImagePipeline(ImageCaptureConfig imageCaptureConfig, Size size, CameraCharacteristics cameraCharacteristics, CameraEffect cameraEffect, boolean z, PostviewSettings postviewSettings) {
        Threads.checkMainThread();
        this.mUseCaseConfig = imageCaptureConfig;
        this.mCaptureConfig = CaptureConfig.Builder.createFrom(imageCaptureConfig).build();
        CaptureNode captureNode = new CaptureNode();
        this.mCaptureNode = captureNode;
        Executor ioExecutor = imageCaptureConfig.getIoExecutor(CameraXExecutors.ioExecutor());
        Objects.requireNonNull(ioExecutor);
        ProcessingNode processingNode = new ProcessingNode(ioExecutor, cameraCharacteristics, null);
        this.mProcessingNode = processingNode;
        ArrayList arrayList = new ArrayList();
        if (imageCaptureConfig.getSecondaryInputFormat() != 0) {
            arrayList.add(32);
            arrayList.add(256);
        } else {
            arrayList.add(Integer.valueOf(getOutputFormat()));
        }
        int inputFormat = imageCaptureConfig.getInputFormat();
        imageCaptureConfig.getImageReaderProxyProvider();
        CaptureNode.AbstractC0262In abstractC0262InM88of = CaptureNode.AbstractC0262In.m88of(size, inputFormat, arrayList, z, null, postviewSettings);
        this.mPipelineIn = abstractC0262InM88of;
        processingNode.transform(captureNode.transform(abstractC0262InM88of));
    }

    public SessionConfig.Builder createSessionConfigBuilder(Size size) {
        SessionConfig.Builder builderCreateFrom = SessionConfig.Builder.createFrom(this.mUseCaseConfig, size);
        builderCreateFrom.addNonRepeatingSurface(this.mPipelineIn.getSurface());
        if (this.mPipelineIn.getOutputFormats().size() > 1 && this.mPipelineIn.getSecondarySurface() != null) {
            builderCreateFrom.addNonRepeatingSurface(this.mPipelineIn.getSecondarySurface());
        }
        if (this.mPipelineIn.getPostviewSurface() != null) {
            builderCreateFrom.setPostviewSurface(this.mPipelineIn.getPostviewSurface());
        }
        return builderCreateFrom;
    }

    public void close() {
        Threads.checkMainThread();
        this.mCaptureNode.release();
        this.mProcessingNode.release();
    }

    public int getCapacity() {
        Threads.checkMainThread();
        return this.mCaptureNode.getCapacity();
    }

    public void setOnImageCloseListener(ForwardingImageProxy.OnImageCloseListener onImageCloseListener) {
        Threads.checkMainThread();
        this.mCaptureNode.setOnImageCloseListener(onImageCloseListener);
    }

    private int getOutputFormat() {
        Integer num = (Integer) this.mUseCaseConfig.retrieveOption(ImageCaptureConfig.OPTION_BUFFER_FORMAT, null);
        if (num != null) {
            return num.intValue();
        }
        Integer num2 = (Integer) this.mUseCaseConfig.retrieveOption(ImageInputConfig.OPTION_INPUT_FORMAT, null);
        if (num2 == null || num2.intValue() != 4101) {
            return (num2 == null || num2.intValue() != 32) ? 256 : 32;
        }
        return 4101;
    }
}
