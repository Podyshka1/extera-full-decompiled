package androidx.camera.core.processing;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.util.OutConfig;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public class SurfaceProcessorNode {
    final CameraInternal mCameraInternal;
    private final String mDebugInfo;
    private In mInput;
    private Out mOutput;
    final SurfaceProcessorInternal mSurfaceProcessor;

    public static class Out extends HashMap<OutConfig, SurfaceEdge> {
    }

    @SuppressLint({"LambdaLast"})
    public SurfaceProcessorNode(CameraInternal cameraInternal, SurfaceProcessorInternal surfaceProcessorInternal, String str) {
        this.mCameraInternal = cameraInternal;
        this.mSurfaceProcessor = surfaceProcessorInternal;
        this.mDebugInfo = str;
    }

    public Out transform(In in) {
        Threads.checkMainThread();
        Logger.m75d("SurfaceProcessorNode", (this.mDebugInfo == null ? _UrlKt.FRAGMENT_ENCODE_SET : "[" + this.mDebugInfo + "] ") + "SurfaceProcessorNode Transform (Processor=" + this.mSurfaceProcessor + "\n   inputEdge = " + in.getSurfaceEdge());
        Iterator<OutConfig> it = in.getOutConfigs().iterator();
        while (it.hasNext()) {
            Logger.m75d("SurfaceProcessorNode", "   outputConfig = " + it.next());
        }
        this.mInput = in;
        this.mOutput = new Out();
        SurfaceEdge surfaceEdge = in.getSurfaceEdge();
        for (OutConfig outConfig : in.getOutConfigs()) {
            this.mOutput.put(outConfig, transformSingleOutput(surfaceEdge, outConfig));
        }
        sendSurfaceRequest(surfaceEdge);
        sendSurfaceOutputs(surfaceEdge, this.mOutput);
        setUpRotationUpdates(surfaceEdge, this.mOutput);
        return this.mOutput;
    }

    private SurfaceEdge transformSingleOutput(SurfaceEdge surfaceEdge, OutConfig outConfig) {
        Rect rectSizeToRect;
        Rect cropRect = outConfig.getCropRect();
        int rotationDegrees = outConfig.getRotationDegrees();
        boolean zIsMirroring = outConfig.isMirroring();
        Matrix matrix = new Matrix(surfaceEdge.getSensorToBufferTransform());
        Matrix rectToRect = TransformUtils.getRectToRect(new RectF(cropRect), TransformUtils.sizeToRectF(outConfig.getSize()), rotationDegrees, zIsMirroring);
        matrix.postConcat(rectToRect);
        Preconditions.checkArgument(TransformUtils.isAspectRatioMatchingWithRoundingError(TransformUtils.getRotatedSize(cropRect, rotationDegrees), outConfig.getSize()));
        if (outConfig.shouldRespectInputCropRect()) {
            Preconditions.checkArgument(outConfig.getCropRect().contains(surfaceEdge.getCropRect()), String.format("Output crop rect %s must contain input crop rect %s", outConfig.getCropRect(), surfaceEdge.getCropRect()));
            rectSizeToRect = new Rect();
            RectF rectF = new RectF(surfaceEdge.getCropRect());
            rectToRect.mapRect(rectF);
            rectF.round(rectSizeToRect);
        } else {
            rectSizeToRect = TransformUtils.sizeToRect(outConfig.getSize());
        }
        Rect rect = rectSizeToRect;
        return new SurfaceEdge(outConfig.getTargets(), outConfig.getFormat(), surfaceEdge.getStreamSpec().toBuilder().setResolution(outConfig.getSize()).build(), matrix, false, rect, surfaceEdge.getRotationDegrees() - rotationDegrees, -1, surfaceEdge.isMirroring() != zIsMirroring);
    }

    private void sendSurfaceRequest(SurfaceEdge surfaceEdge) {
        this.mSurfaceProcessor.onInputSurface(surfaceEdge.createSurfaceRequest(this.mCameraInternal));
    }

    private void sendSurfaceOutputs(final SurfaceEdge surfaceEdge, Map<OutConfig, SurfaceEdge> map) {
        for (final Map.Entry<OutConfig, SurfaceEdge> entry : map.entrySet()) {
            createAndSendSurfaceOutput(surfaceEdge, entry);
            entry.getValue().addOnInvalidatedListener(new Runnable() { // from class: androidx.camera.core.processing.SurfaceProcessorNode$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.createAndSendSurfaceOutput(surfaceEdge, entry);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createAndSendSurfaceOutput(SurfaceEdge surfaceEdge, Map.Entry<OutConfig, SurfaceEdge> entry) {
        final SurfaceEdge value = entry.getValue();
        Logger.m75d("SurfaceProcessorNode", "     -> outputEdge = " + value);
        Futures.addCallback(value.createSurfaceOutputFuture(entry.getKey().getFormat(), SurfaceOutput.CameraInputInfo.of(surfaceEdge.getStreamSpec().getResolution(), entry.getKey().getCropRect(), surfaceEdge.hasCameraTransform() ? this.mCameraInternal : null, entry.getKey().getRotationDegrees(), entry.getKey().isMirroring()), null), new FutureCallback<SurfaceOutput>() { // from class: androidx.camera.core.processing.SurfaceProcessorNode.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(SurfaceOutput surfaceOutput) {
                Preconditions.checkNotNull(surfaceOutput);
                SurfaceProcessorNode.this.mSurfaceProcessor.onOutputSurface(surfaceOutput);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                if (value.getTargets() == 2 && (th instanceof CancellationException)) {
                    Logger.m75d("SurfaceProcessorNode", "Downstream VideoCapture failed to provide Surface.");
                    return;
                }
                Logger.m81w("SurfaceProcessorNode", "Downstream node failed to provide Surface. Target: " + TargetUtils.getHumanReadableName(value.getTargets()), th);
            }
        }, CameraXExecutors.mainThreadExecutor());
    }

    public void setUpRotationUpdates(SurfaceEdge surfaceEdge, final Map<OutConfig, SurfaceEdge> map) {
        surfaceEdge.addTransformationUpdateListener(new Consumer() { // from class: androidx.camera.core.processing.SurfaceProcessorNode$$ExternalSyntheticLambda1
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                SurfaceProcessorNode.$r8$lambda$T0sBPWZuFEggCvdrrj2wks9PtNc(map, (SurfaceRequest.TransformationInfo) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$T0sBPWZuFEggCvdrrj2wks9PtNc(Map map, SurfaceRequest.TransformationInfo transformationInfo) {
        for (Map.Entry entry : map.entrySet()) {
            int rotationDegrees = transformationInfo.getRotationDegrees() - ((OutConfig) entry.getKey()).getRotationDegrees();
            if (((OutConfig) entry.getKey()).isMirroring()) {
                rotationDegrees = -rotationDegrees;
            }
            ((SurfaceEdge) entry.getValue()).updateTransformation(TransformUtils.within360(rotationDegrees), -1);
        }
    }

    public void release() {
        this.mSurfaceProcessor.release();
        Threads.runOnMain(new Runnable() { // from class: androidx.camera.core.processing.SurfaceProcessorNode$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                SurfaceProcessorNode.m1596$r8$lambda$k6CWcefLe9tXuLSlGJo2BURuBM(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$k6CWcef-Le9tXuLSlGJo2BURuBM, reason: not valid java name */
    public static /* synthetic */ void m1596$r8$lambda$k6CWcefLe9tXuLSlGJo2BURuBM(SurfaceProcessorNode surfaceProcessorNode) {
        Out out = surfaceProcessorNode.mOutput;
        if (out != null) {
            Iterator<SurfaceEdge> it = out.values().iterator();
            while (it.hasNext()) {
                it.next().close();
            }
        }
    }

    public static abstract class In {
        public abstract List<OutConfig> getOutConfigs();

        public abstract SurfaceEdge getSurfaceEdge();

        public static In of(SurfaceEdge surfaceEdge, List<OutConfig> list) {
            return new AutoValue_SurfaceProcessorNode_In(surfaceEdge, list);
        }
    }
}
