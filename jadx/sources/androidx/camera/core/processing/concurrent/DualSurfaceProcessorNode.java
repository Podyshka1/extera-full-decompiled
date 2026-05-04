package androidx.camera.core.processing.concurrent;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Size;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.camera.core.processing.TargetUtils;
import androidx.camera.core.processing.util.OutConfig;
import androidx.core.util.Preconditions;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public class DualSurfaceProcessorNode {
    private final String mDebugInfo;
    private AbstractC0300In mInput;
    private Out mOutput;
    final CameraInternal mPrimaryCameraInternal;
    final CameraInternal mSecondaryCameraInternal;
    final SurfaceProcessorInternal mSurfaceProcessor;

    public static class Out extends HashMap {
    }

    public DualSurfaceProcessorNode(CameraInternal cameraInternal, CameraInternal cameraInternal2, SurfaceProcessorInternal surfaceProcessorInternal, String str) {
        this.mPrimaryCameraInternal = cameraInternal;
        this.mSecondaryCameraInternal = cameraInternal2;
        this.mSurfaceProcessor = surfaceProcessorInternal;
        this.mDebugInfo = str;
    }

    public Out transform(AbstractC0300In abstractC0300In) {
        Threads.checkMainThread();
        Logger.m76d("DualSurfaceProcessorNode", (this.mDebugInfo == null ? _UrlKt.FRAGMENT_ENCODE_SET : "[" + this.mDebugInfo + "] ") + "DualSurfaceProcessorNode Transform Processor = " + this.mSurfaceProcessor + "\n   primary input = " + abstractC0300In.getPrimarySurfaceEdge() + "\n   secondary input = " + abstractC0300In.getSecondarySurfaceEdge());
        Iterator it = abstractC0300In.getOutConfigs().iterator();
        while (it.hasNext()) {
            Logger.m76d("SurfaceProcessorNode", "   outputConfig = " + ((DualOutConfig) it.next()));
        }
        this.mInput = abstractC0300In;
        this.mOutput = new Out();
        SurfaceEdge primarySurfaceEdge = this.mInput.getPrimarySurfaceEdge();
        SurfaceEdge secondarySurfaceEdge = this.mInput.getSecondarySurfaceEdge();
        for (DualOutConfig dualOutConfig : this.mInput.getOutConfigs()) {
            this.mOutput.put(dualOutConfig, transformSingleOutput(primarySurfaceEdge, dualOutConfig.getPrimaryOutConfig()));
        }
        sendSurfaceRequest(this.mPrimaryCameraInternal, primarySurfaceEdge, true);
        sendSurfaceRequest(this.mSecondaryCameraInternal, secondarySurfaceEdge, false);
        sendSurfaceOutputs(this.mPrimaryCameraInternal, this.mSecondaryCameraInternal, primarySurfaceEdge, secondarySurfaceEdge, this.mOutput);
        return this.mOutput;
    }

    private SurfaceEdge transformSingleOutput(SurfaceEdge surfaceEdge, OutConfig outConfig) {
        Rect cropRect = outConfig.getCropRect();
        int rotationDegrees = outConfig.getRotationDegrees();
        boolean zIsMirroring = outConfig.isMirroring();
        Matrix matrix = new Matrix(surfaceEdge.getSensorToBufferTransform());
        matrix.postConcat(TransformUtils.getRectToRect(new RectF(cropRect), TransformUtils.sizeToRectF(outConfig.getSize()), rotationDegrees, zIsMirroring));
        Preconditions.checkArgument(TransformUtils.isAspectRatioMatchingWithRoundingError(TransformUtils.getRotatedSize(cropRect, rotationDegrees), outConfig.getSize()));
        Rect rectSizeToRect = TransformUtils.sizeToRect(outConfig.getSize());
        return new SurfaceEdge(outConfig.getTargets(), outConfig.getFormat(), surfaceEdge.getStreamSpec().toBuilder().setResolution(outConfig.getSize()).build(), matrix, false, rectSizeToRect, surfaceEdge.getRotationDegrees() - rotationDegrees, -1, surfaceEdge.isMirroring() != zIsMirroring);
    }

    private void sendSurfaceRequest(CameraInternal cameraInternal, SurfaceEdge surfaceEdge, boolean z) {
        this.mSurfaceProcessor.onInputSurface(surfaceEdge.createSurfaceRequest(cameraInternal, z));
    }

    private void sendSurfaceOutputs(CameraInternal cameraInternal, CameraInternal cameraInternal2, SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, Map map) {
        for (final Map.Entry entry : map.entrySet()) {
            final CameraInternal cameraInternal3 = cameraInternal;
            final CameraInternal cameraInternal4 = cameraInternal2;
            final SurfaceEdge surfaceEdge3 = surfaceEdge;
            final SurfaceEdge surfaceEdge4 = surfaceEdge2;
            createAndSendSurfaceOutput(cameraInternal3, cameraInternal4, surfaceEdge3, surfaceEdge4, entry);
            ((SurfaceEdge) entry.getValue()).addOnInvalidatedListener(new Runnable() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.createAndSendSurfaceOutput(cameraInternal3, cameraInternal4, surfaceEdge3, surfaceEdge4, entry);
                }
            });
            cameraInternal = cameraInternal3;
            cameraInternal2 = cameraInternal4;
            surfaceEdge = surfaceEdge3;
            surfaceEdge2 = surfaceEdge4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createAndSendSurfaceOutput(CameraInternal cameraInternal, CameraInternal cameraInternal2, SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, Map.Entry entry) {
        final SurfaceEdge surfaceEdge3 = (SurfaceEdge) entry.getValue();
        Logger.m76d("DualSurfaceProcessorNode", "     -> outputEdge = " + surfaceEdge3);
        Size resolution = surfaceEdge.getStreamSpec().getResolution();
        Rect cropRect = ((DualOutConfig) entry.getKey()).getPrimaryOutConfig().getCropRect();
        if (!surfaceEdge.hasCameraTransform()) {
            cameraInternal = null;
        }
        SurfaceOutput.CameraInputInfo cameraInputInfoM83of = SurfaceOutput.CameraInputInfo.m83of(resolution, cropRect, cameraInternal, ((DualOutConfig) entry.getKey()).getPrimaryOutConfig().getRotationDegrees(), ((DualOutConfig) entry.getKey()).getPrimaryOutConfig().isMirroring());
        Size resolution2 = surfaceEdge2.getStreamSpec().getResolution();
        Rect cropRect2 = ((DualOutConfig) entry.getKey()).getSecondaryOutConfig().getCropRect();
        if (!surfaceEdge2.hasCameraTransform()) {
            cameraInternal2 = null;
        }
        Futures.addCallback(surfaceEdge3.createSurfaceOutputFuture(((DualOutConfig) entry.getKey()).getPrimaryOutConfig().getFormat(), cameraInputInfoM83of, SurfaceOutput.CameraInputInfo.m83of(resolution2, cropRect2, cameraInternal2, ((DualOutConfig) entry.getKey()).getSecondaryOutConfig().getRotationDegrees(), ((DualOutConfig) entry.getKey()).getSecondaryOutConfig().isMirroring())), new FutureCallback() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode.1
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(SurfaceOutput surfaceOutput) {
                Preconditions.checkNotNull(surfaceOutput);
                DualSurfaceProcessorNode.this.mSurfaceProcessor.onOutputSurface(surfaceOutput);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(Throwable th) {
                if (surfaceEdge3.getTargets() == 2 && (th instanceof CancellationException)) {
                    Logger.m76d("DualSurfaceProcessorNode", "Downstream VideoCapture failed to provide Surface.");
                    return;
                }
                Logger.m82w("DualSurfaceProcessorNode", "Downstream node failed to provide Surface. Target: " + TargetUtils.getHumanReadableName(surfaceEdge3.getTargets()), th);
            }
        }, CameraXExecutors.mainThreadExecutor());
    }

    public void release() {
        this.mSurfaceProcessor.release();
        Threads.runOnMain(new Runnable() { // from class: androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DualSurfaceProcessorNode.m2007$r8$lambda$CIgK46nPXeCm1Yzy9mUIJnLQU(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$-CIgK46nPXeCm1Yzy9mUIJ-nLQU, reason: not valid java name */
    public static /* synthetic */ void m2007$r8$lambda$CIgK46nPXeCm1Yzy9mUIJnLQU(DualSurfaceProcessorNode dualSurfaceProcessorNode) {
        Out out = dualSurfaceProcessorNode.mOutput;
        if (out != null) {
            Iterator it = out.values().iterator();
            while (it.hasNext()) {
                ((SurfaceEdge) it.next()).close();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode$In */
    public static abstract class AbstractC0300In {
        public abstract List getOutConfigs();

        public abstract SurfaceEdge getPrimarySurfaceEdge();

        public abstract SurfaceEdge getSecondarySurfaceEdge();

        /* JADX INFO: renamed from: of */
        public static AbstractC0300In m100of(SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, List list) {
            return new AutoValue_DualSurfaceProcessorNode_In(surfaceEdge, surfaceEdge2, list);
        }
    }
}
