package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.hardware.camera2.CameraCharacteristics;
import androidx.camera.core.CameraXTracer;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.imagecapture.Bitmap2JpegBytes;
import androidx.camera.core.imagecapture.Image2JpegBytes;
import androidx.camera.core.imagecapture.ProcessingNode;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.IncorrectJpegMetadataQuirk;
import androidx.camera.core.internal.compat.quirk.LowMemoryQuirk;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.camera.core.processing.Edge;
import androidx.camera.core.processing.InternalImageProcessor;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public class ProcessingNode {
    private Operation mBitmap2JpegBytes;
    private Operation mBitmapEffect;
    final Executor mBlockingExecutor;
    private final CameraCharacteristics mCameraCharacteristics;
    private final boolean mHasIncorrectJpegMetadataQuirk;
    private Operation mImage2Bitmap;
    private Operation mImage2JpegBytes;
    final InternalImageProcessor mImageProcessor;
    private Operation mInput2Packet;
    private AbstractC0265In mInputEdge;
    private Operation mJpegBytes2CroppedBitmap;
    private Operation mJpegBytes2Disk;
    private Operation mJpegBytes2Image;
    private Operation mJpegImage2Result;
    private final Quirks mQuirks;

    public void release() {
    }

    ProcessingNode(Executor executor, CameraCharacteristics cameraCharacteristics, InternalImageProcessor internalImageProcessor) {
        this(executor, cameraCharacteristics, internalImageProcessor, DeviceQuirks.getAll());
    }

    ProcessingNode(Executor executor, CameraCharacteristics cameraCharacteristics, InternalImageProcessor internalImageProcessor, Quirks quirks) {
        if (DeviceQuirks.get(LowMemoryQuirk.class) != null) {
            this.mBlockingExecutor = CameraXExecutors.newSequentialExecutor(executor);
        } else {
            this.mBlockingExecutor = executor;
        }
        this.mImageProcessor = internalImageProcessor;
        this.mCameraCharacteristics = cameraCharacteristics;
        this.mQuirks = quirks;
        this.mHasIncorrectJpegMetadataQuirk = quirks.contains(IncorrectJpegMetadataQuirk.class);
    }

    public Void transform(AbstractC0265In abstractC0265In) {
        this.mInputEdge = abstractC0265In;
        abstractC0265In.getEdge().setListener(new Consumer() { // from class: androidx.camera.core.imagecapture.ProcessingNode$$ExternalSyntheticLambda0
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                ProcessingNode.m1973$r8$lambda$6U13Zlx7P74SDaHwciYmFh6g8(this.f$0, (ProcessingNode.InputPacket) obj);
            }
        });
        abstractC0265In.getPostviewEdge().setListener(new Consumer() { // from class: androidx.camera.core.imagecapture.ProcessingNode$$ExternalSyntheticLambda1
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                ProcessingNode.m1975$r8$lambda$EI5MKd_NwbtkM8O4wtsjxa9o4(this.f$0, (ProcessingNode.InputPacket) obj);
            }
        });
        this.mInput2Packet = new ProcessingInput2Packet();
        this.mImage2JpegBytes = new Image2JpegBytes(this.mQuirks);
        this.mJpegBytes2CroppedBitmap = new JpegBytes2CroppedBitmap();
        this.mBitmap2JpegBytes = new Bitmap2JpegBytes();
        this.mJpegBytes2Disk = new JpegBytes2Disk();
        this.mJpegImage2Result = new JpegImage2Result();
        this.mImage2Bitmap = new Image2Bitmap();
        if (abstractC0265In.getInputFormat() != 35 && !this.mHasIncorrectJpegMetadataQuirk) {
            return null;
        }
        this.mJpegBytes2Image = new JpegBytes2Image();
        return null;
    }

    /* JADX INFO: renamed from: $r8$lambda$6U13Zlx7P74SDa-Hwc-iYmFh6g8, reason: not valid java name */
    public static /* synthetic */ void m1973$r8$lambda$6U13Zlx7P74SDaHwciYmFh6g8(final ProcessingNode processingNode, final InputPacket inputPacket) {
        processingNode.getClass();
        if (inputPacket.getProcessingRequest().isAborted()) {
            inputPacket.getImageProxy().close();
        } else {
            processingNode.mBlockingExecutor.execute(new Runnable() { // from class: androidx.camera.core.imagecapture.ProcessingNode$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.processInputPacket(inputPacket);
                }
            });
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$EI5MKd_Nwbt-kM8O4-wtsjxa9o4, reason: not valid java name */
    public static /* synthetic */ void m1975$r8$lambda$EI5MKd_NwbtkM8O4wtsjxa9o4(final ProcessingNode processingNode, final InputPacket inputPacket) {
        processingNode.getClass();
        if (inputPacket.getProcessingRequest().isAborted()) {
            Logger.m81w("ProcessingNode", "The postview image is closed due to request aborted");
            inputPacket.getImageProxy().close();
        } else {
            processingNode.mBlockingExecutor.execute(new Runnable() { // from class: androidx.camera.core.imagecapture.ProcessingNode$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.processPostviewInputPacket(inputPacket);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processInputPacket(final InputPacket inputPacket) {
        CameraXTracer.trace("processInputPacket", new Runnable() { // from class: androidx.camera.core.imagecapture.ProcessingNode$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ProcessingNode.m1976$r8$lambda$gHbFgZCj0Kb9M357jPQNmeH6s(this.f$0, inputPacket);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$gHbFgZCj0Kb9M357jP-QNmeH6-s, reason: not valid java name */
    public static /* synthetic */ void m1976$r8$lambda$gHbFgZCj0Kb9M357jPQNmeH6s(ProcessingNode processingNode, InputPacket inputPacket) {
        processingNode.getClass();
        final ProcessingRequest processingRequest = inputPacket.getProcessingRequest();
        try {
            try {
                boolean z = true;
                if (processingNode.mInputEdge.getOutputFormats().size() <= 1) {
                    z = false;
                }
                if (inputPacket.getProcessingRequest().isInMemoryCapture()) {
                    final ImageProxy imageProxyProcessInMemoryCapture = processingNode.processInMemoryCapture(inputPacket);
                    CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.ProcessingNode$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            processingRequest.onFinalResult(imageProxyProcessInMemoryCapture);
                        }
                    });
                    return;
                }
                final ImageCapture.OutputFileResults outputFileResultsProcessOnDiskCapture = processingNode.processOnDiskCapture(inputPacket);
                if (z) {
                    processingRequest.getTakePictureRequest();
                    throw null;
                }
                CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.ProcessingNode$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        processingRequest.onFinalResult(outputFileResultsProcessOnDiskCapture);
                    }
                });
            } catch (RuntimeException e) {
                processingNode.sendError(processingRequest, new ImageCaptureException(0, "Processing failed.", e));
            }
        } catch (ImageCaptureException e2) {
            processingNode.sendError(processingRequest, e2);
        } catch (OutOfMemoryError e3) {
            processingNode.sendError(processingRequest, new ImageCaptureException(0, "Processing failed due to low memory.", e3));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void processPostviewInputPacket(InputPacket inputPacket) {
        final ProcessingRequest processingRequest = inputPacket.getProcessingRequest();
        try {
            Packet packet = (Packet) this.mInput2Packet.apply(inputPacket);
            int format = packet.getFormat();
            Preconditions.checkArgument(format == 35 || format == 256 || format == 4101, String.format("Postview only supports to convert YUV, JPEG and JPEG_R format image to the postview output bitmap. Image format: %s", Integer.valueOf(format)));
            final Bitmap bitmap = (Bitmap) this.mImage2Bitmap.apply(packet);
            CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.ProcessingNode$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    processingRequest.onPostviewBitmapAvailable(bitmap);
                }
            });
        } catch (Exception e) {
            inputPacket.getImageProxy().close();
            Logger.m79e("ProcessingNode", "process postview input packet failed.", e);
        }
    }

    ImageCapture.OutputFileResults processOnDiskCapture(InputPacket inputPacket) {
        Logger.m76d("ProcessingNode", "processOnDiskCapture: request ID = " + inputPacket.getProcessingRequest().getRequestId());
        List outputFormats = this.mInputEdge.getOutputFormats();
        Preconditions.checkArgument(outputFormats.isEmpty() ^ true);
        Integer num = (Integer) outputFormats.get(0);
        int iIntValue = num.intValue();
        Preconditions.checkArgument(ImageUtil.isJpegFormats(iIntValue) || ImageUtil.isRawFormats(iIntValue), String.format("On-disk capture only support JPEG and JPEG/R and RAW output formats. Output format: %s", num));
        ProcessingRequest processingRequest = inputPacket.getProcessingRequest();
        processingRequest.getOutputFileOptions();
        Preconditions.checkArgument(false, "OutputFileOptions cannot be empty");
        Packet packet = (Packet) this.mInput2Packet.apply(inputPacket);
        if (outputFormats.size() <= 1) {
            if (iIntValue == 32) {
                processingRequest.getOutputFileOptions();
                throw null;
            }
            processingRequest.getOutputFileOptions();
            throw null;
        }
        processingRequest.getOutputFileOptions();
        Preconditions.checkArgument(false, "The number of OutputFileOptions for simultaneous capture should be at least two");
        if (packet.getFormat() == 32) {
            processingRequest.getOutputFileOptions();
            throw null;
        }
        processingRequest.getSecondaryOutputFileOptions();
        throw null;
    }

    ImageProxy processInMemoryCapture(InputPacket inputPacket) {
        Logger.m76d("ProcessingNode", "processInMemoryCapture: request ID = " + inputPacket.getProcessingRequest().getRequestId());
        ProcessingRequest processingRequest = inputPacket.getProcessingRequest();
        Packet packet = (Packet) this.mInput2Packet.apply(inputPacket);
        List outputFormats = this.mInputEdge.getOutputFormats();
        Preconditions.checkArgument(!outputFormats.isEmpty());
        int iIntValue = ((Integer) outputFormats.get(0)).intValue();
        if ((packet.getFormat() == 35 || this.mBitmapEffect != null || this.mHasIncorrectJpegMetadataQuirk) && iIntValue == 256) {
            Packet packetCropAndMaybeApplyEffect = (Packet) this.mImage2JpegBytes.apply(Image2JpegBytes.AbstractC0263In.m89of(packet, processingRequest.getJpegQuality()));
            if (this.mBitmapEffect != null) {
                packetCropAndMaybeApplyEffect = cropAndMaybeApplyEffect(packetCropAndMaybeApplyEffect, processingRequest.getJpegQuality());
            }
            packet = (Packet) this.mJpegBytes2Image.apply(packetCropAndMaybeApplyEffect);
        }
        ImageProxy imageProxy = (ImageProxy) this.mJpegImage2Result.apply(packet);
        if (outputFormats.size() <= 1) {
            return imageProxy;
        }
        processingRequest.getTakePictureRequest();
        imageProxy.getFormat();
        throw null;
    }

    private Packet cropAndMaybeApplyEffect(Packet packet, int i) {
        Preconditions.checkState(ImageUtil.isJpegFormats(packet.getFormat()));
        Packet packet2 = (Packet) this.mJpegBytes2CroppedBitmap.apply(packet);
        Operation operation = this.mBitmapEffect;
        if (operation != null) {
            packet2 = (Packet) operation.apply(packet2);
        }
        return (Packet) this.mBitmap2JpegBytes.apply(Bitmap2JpegBytes.AbstractC0259In.m87of(packet2, i));
    }

    private void sendError(final ProcessingRequest processingRequest, final ImageCaptureException imageCaptureException) {
        CameraXExecutors.mainThreadExecutor().execute(new Runnable() { // from class: androidx.camera.core.imagecapture.ProcessingNode$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                processingRequest.onProcessFailure(imageCaptureException);
            }
        });
    }

    static abstract class InputPacket {
        abstract ImageProxy getImageProxy();

        abstract ProcessingRequest getProcessingRequest();

        InputPacket() {
        }

        /* JADX INFO: renamed from: of */
        static InputPacket m91of(ProcessingRequest processingRequest, ImageProxy imageProxy) {
            return new AutoValue_ProcessingNode_InputPacket(processingRequest, imageProxy);
        }
    }

    /* JADX INFO: renamed from: androidx.camera.core.imagecapture.ProcessingNode$In */
    static abstract class AbstractC0265In {
        abstract Edge getEdge();

        abstract int getInputFormat();

        abstract List getOutputFormats();

        abstract Edge getPostviewEdge();

        AbstractC0265In() {
        }

        /* JADX INFO: renamed from: of */
        static AbstractC0265In m90of(int i, List list) {
            return new AutoValue_ProcessingNode_In(new Edge(), new Edge(), i, list);
        }
    }
}
