package androidx.camera.core.processing;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import android.view.Surface;
import androidx.arch.core.util.Function;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageProcessingUtil;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.MatrixExt;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.processing.util.GLUtils;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Triple;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class DefaultSurfaceProcessor implements SurfaceProcessorInternal, SurfaceTexture.OnFrameAvailableListener {
    private final Executor mGlExecutor;
    final Handler mGlHandler;
    private final OpenGlRenderer mGlRenderer;
    final HandlerThread mGlThread;
    private int mInputSurfaceCount;
    private final AtomicBoolean mIsReleaseRequested;
    private boolean mIsReleased;
    final Map mOutputSurfaces;
    private final List mPendingSnapshots;
    private final float[] mSurfaceOutputMatrix;
    private final float[] mTextureMatrix;

    static abstract class PendingSnapshot {
        abstract CallbackToFutureAdapter.Completer getCompleter();

        abstract int getJpegQuality();

        abstract int getRotationDegrees();
    }

    /* JADX INFO: renamed from: $r8$lambda$i022ReF-OMMyB0jSZtyCUD1hM14, reason: not valid java name */
    public static /* synthetic */ void m1991$r8$lambda$i022ReFOMMyB0jSZtyCUD1hM14() {
    }

    DefaultSurfaceProcessor(DynamicRange dynamicRange) {
        this(dynamicRange, Collections.EMPTY_MAP);
    }

    DefaultSurfaceProcessor(DynamicRange dynamicRange, Map map) {
        this.mIsReleaseRequested = new AtomicBoolean(false);
        this.mTextureMatrix = new float[16];
        this.mSurfaceOutputMatrix = new float[16];
        this.mOutputSurfaces = new LinkedHashMap();
        this.mInputSurfaceCount = 0;
        this.mIsReleased = false;
        this.mPendingSnapshots = new ArrayList();
        HandlerThread handlerThread = new HandlerThread("CameraX-GL Thread");
        this.mGlThread = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.mGlHandler = handler;
        this.mGlExecutor = CameraXExecutors.newHandlerExecutor(handler);
        this.mGlRenderer = new OpenGlRenderer();
        try {
            initGlRenderer(dynamicRange, map);
        } catch (RuntimeException e) {
            release();
            throw e;
        }
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public void onInputSurface(final SurfaceRequest surfaceRequest) {
        if (this.mIsReleaseRequested.get()) {
            surfaceRequest.willNotProvideSurface();
            return;
        }
        Runnable runnable = new Runnable() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                DefaultSurfaceProcessor.m1992$r8$lambda$ngfDf0hLfDAuzPNpoHXLrNZrXk(this.f$0, surfaceRequest);
            }
        };
        Objects.requireNonNull(surfaceRequest);
        executeSafely(runnable, new DefaultSurfaceProcessor$$ExternalSyntheticLambda4(surfaceRequest));
    }

    /* JADX INFO: renamed from: $r8$lambda$ng-fDf0hLfDAuzPNpoHXLrNZrXk, reason: not valid java name */
    public static /* synthetic */ void m1992$r8$lambda$ngfDf0hLfDAuzPNpoHXLrNZrXk(final DefaultSurfaceProcessor defaultSurfaceProcessor, final SurfaceRequest surfaceRequest) {
        defaultSurfaceProcessor.mInputSurfaceCount++;
        final SurfaceTexture surfaceTexture = new SurfaceTexture(defaultSurfaceProcessor.mGlRenderer.getTextureName());
        surfaceTexture.setDefaultBufferSize(surfaceRequest.getResolution().getWidth(), surfaceRequest.getResolution().getHeight());
        final Surface surface = new Surface(surfaceTexture);
        surfaceRequest.setTransformationInfoListener(defaultSurfaceProcessor.mGlExecutor, new SurfaceRequest.TransformationInfoListener() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda7
            @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
            public final void onTransformationInfoUpdate(SurfaceRequest.TransformationInfo transformationInfo) {
                DefaultSurfaceProcessor.$r8$lambda$Q1rrgC8aoiGLiHQv9mIX_otuWf4(this.f$0, surfaceRequest, transformationInfo);
            }
        });
        surfaceRequest.provideSurface(surface, defaultSurfaceProcessor.mGlExecutor, new Consumer() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda8
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                DefaultSurfaceProcessor.m1988$r8$lambda$6ehatn4QOFUxJsVy7XqEaXdA8(this.f$0, surfaceRequest, surfaceTexture, surface, (SurfaceRequest.Result) obj);
            }
        });
        surfaceTexture.setOnFrameAvailableListener(defaultSurfaceProcessor, defaultSurfaceProcessor.mGlHandler);
    }

    public static /* synthetic */ void $r8$lambda$Q1rrgC8aoiGLiHQv9mIX_otuWf4(DefaultSurfaceProcessor defaultSurfaceProcessor, SurfaceRequest surfaceRequest, SurfaceRequest.TransformationInfo transformationInfo) {
        defaultSurfaceProcessor.getClass();
        GLUtils.InputFormat inputFormat = GLUtils.InputFormat.DEFAULT;
        if (surfaceRequest.getDynamicRange().is10BitHdr() && transformationInfo.hasCameraTransform()) {
            inputFormat = GLUtils.InputFormat.YUV;
        }
        defaultSurfaceProcessor.mGlRenderer.setInputFormat(inputFormat);
    }

    /* JADX INFO: renamed from: $r8$lambda$6ehatn4QOFUxJsVy7XqEaXd--A8, reason: not valid java name */
    public static /* synthetic */ void m1988$r8$lambda$6ehatn4QOFUxJsVy7XqEaXdA8(DefaultSurfaceProcessor defaultSurfaceProcessor, SurfaceRequest surfaceRequest, SurfaceTexture surfaceTexture, Surface surface, SurfaceRequest.Result result) {
        defaultSurfaceProcessor.getClass();
        surfaceRequest.clearTransformationInfoListener();
        surfaceTexture.setOnFrameAvailableListener(null);
        surfaceTexture.release();
        surface.release();
        defaultSurfaceProcessor.mInputSurfaceCount--;
        defaultSurfaceProcessor.checkReadyToRelease();
    }

    @Override // androidx.camera.core.SurfaceProcessor
    public void onOutputSurface(final SurfaceOutput surfaceOutput) {
        if (this.mIsReleaseRequested.get()) {
            surfaceOutput.close();
            return;
        }
        Runnable runnable = new Runnable() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DefaultSurfaceProcessor.m1990$r8$lambda$WkmvDX1VoxVksXmre1pdTM7PX8(this.f$0, surfaceOutput);
            }
        };
        Objects.requireNonNull(surfaceOutput);
        executeSafely(runnable, new DefaultSurfaceProcessor$$ExternalSyntheticLambda2(surfaceOutput));
    }

    /* JADX INFO: renamed from: $r8$lambda$WkmvDX1VoxVksXmre1pdTM-7PX8, reason: not valid java name */
    public static /* synthetic */ void m1990$r8$lambda$WkmvDX1VoxVksXmre1pdTM7PX8(final DefaultSurfaceProcessor defaultSurfaceProcessor, final SurfaceOutput surfaceOutput) {
        Surface surface = surfaceOutput.getSurface(defaultSurfaceProcessor.mGlExecutor, new Consumer() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda6
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                DefaultSurfaceProcessor.$r8$lambda$Yh367u_2KFarOwBqtvsSpeftiww(this.f$0, surfaceOutput, (SurfaceOutput.Event) obj);
            }
        });
        defaultSurfaceProcessor.mGlRenderer.registerOutputSurface(surface);
        defaultSurfaceProcessor.mOutputSurfaces.put(surfaceOutput, surface);
    }

    public static /* synthetic */ void $r8$lambda$Yh367u_2KFarOwBqtvsSpeftiww(DefaultSurfaceProcessor defaultSurfaceProcessor, SurfaceOutput surfaceOutput, SurfaceOutput.Event event) {
        defaultSurfaceProcessor.getClass();
        surfaceOutput.close();
        Surface surface = (Surface) defaultSurfaceProcessor.mOutputSurfaces.remove(surfaceOutput);
        if (surface != null) {
            defaultSurfaceProcessor.mGlRenderer.unregisterOutputSurface(surface);
        }
    }

    @Override // androidx.camera.core.processing.SurfaceProcessorInternal
    public void release() {
        if (this.mIsReleaseRequested.getAndSet(true)) {
            return;
        }
        executeSafely(new Runnable() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                DefaultSurfaceProcessor.m1989$r8$lambda$8VpokqnQVg450zGfiUT6CjueOY(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$8VpokqnQ-Vg450zGfiUT6CjueOY, reason: not valid java name */
    public static /* synthetic */ void m1989$r8$lambda$8VpokqnQVg450zGfiUT6CjueOY(DefaultSurfaceProcessor defaultSurfaceProcessor) {
        defaultSurfaceProcessor.mIsReleased = true;
        defaultSurfaceProcessor.checkReadyToRelease();
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        if (this.mIsReleaseRequested.get()) {
            return;
        }
        surfaceTexture.updateTexImage();
        surfaceTexture.getTransformMatrix(this.mTextureMatrix);
        Triple triple = null;
        for (Map.Entry entry : this.mOutputSurfaces.entrySet()) {
            Surface surface = (Surface) entry.getValue();
            SurfaceOutput surfaceOutput = (SurfaceOutput) entry.getKey();
            surfaceOutput.updateTransformMatrix(this.mSurfaceOutputMatrix, this.mTextureMatrix);
            if (surfaceOutput.getFormat() == 34) {
                try {
                    this.mGlRenderer.render(surfaceTexture.getTimestamp(), this.mSurfaceOutputMatrix, surface);
                } catch (RuntimeException e) {
                    Logger.m79e("DefaultSurfaceProcessor", "Failed to render with OpenGL.", e);
                }
            } else {
                Preconditions.checkState(surfaceOutput.getFormat() == 256, "Unsupported format: " + surfaceOutput.getFormat());
                Preconditions.checkState(triple == null, "Only one JPEG output is supported.");
                triple = new Triple(surface, surfaceOutput.getSize(), (float[]) this.mSurfaceOutputMatrix.clone());
            }
        }
        try {
            takeSnapshotAndDrawJpeg(triple);
        } catch (RuntimeException e2) {
            failAllPendingSnapshots(e2);
        }
    }

    private void takeSnapshotAndDrawJpeg(Triple triple) {
        if (this.mPendingSnapshots.isEmpty()) {
            return;
        }
        if (triple == null) {
            failAllPendingSnapshots(new Exception("Failed to snapshot: no JPEG Surface."));
            return;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                Iterator it = this.mPendingSnapshots.iterator();
                int rotationDegrees = -1;
                int jpegQuality = -1;
                Bitmap bitmap = null;
                byte[] byteArray = null;
                while (it.hasNext()) {
                    PendingSnapshot pendingSnapshot = (PendingSnapshot) it.next();
                    if (rotationDegrees != pendingSnapshot.getRotationDegrees() || bitmap == null) {
                        rotationDegrees = pendingSnapshot.getRotationDegrees();
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                        bitmap = getBitmap((Size) triple.getSecond(), (float[]) triple.getThird(), rotationDegrees);
                        jpegQuality = -1;
                    }
                    if (jpegQuality != pendingSnapshot.getJpegQuality()) {
                        byteArrayOutputStream.reset();
                        jpegQuality = pendingSnapshot.getJpegQuality();
                        bitmap.compress(Bitmap.CompressFormat.JPEG, jpegQuality, byteArrayOutputStream);
                        byteArray = byteArrayOutputStream.toByteArray();
                    }
                    Surface surface = (Surface) triple.getFirst();
                    Objects.requireNonNull(byteArray);
                    ImageProcessingUtil.writeJpegBytesToSurface(surface, byteArray);
                    pendingSnapshot.getCompleter().set(null);
                    it.remove();
                }
                byteArrayOutputStream.close();
            } finally {
            }
        } catch (IOException e) {
            failAllPendingSnapshots(e);
        }
    }

    private void failAllPendingSnapshots(Throwable th) {
        Iterator it = this.mPendingSnapshots.iterator();
        while (it.hasNext()) {
            ((PendingSnapshot) it.next()).getCompleter().setException(th);
        }
        this.mPendingSnapshots.clear();
    }

    private Bitmap getBitmap(Size size, float[] fArr, int i) {
        float[] fArr2 = (float[]) fArr.clone();
        MatrixExt.preRotate(fArr2, i, 0.5f, 0.5f);
        MatrixExt.preVerticalFlip(fArr2, 0.5f);
        return this.mGlRenderer.snapshot(TransformUtils.rotateSize(size, i), fArr2);
    }

    private void checkReadyToRelease() {
        if (this.mIsReleased && this.mInputSurfaceCount == 0) {
            Iterator it = this.mOutputSurfaces.keySet().iterator();
            while (it.hasNext()) {
                ((SurfaceOutput) it.next()).close();
            }
            Iterator it2 = this.mPendingSnapshots.iterator();
            while (it2.hasNext()) {
                ((PendingSnapshot) it2.next()).getCompleter().setException(new Exception("Failed to snapshot: DefaultSurfaceProcessor is released."));
            }
            this.mOutputSurfaces.clear();
            this.mGlRenderer.release();
            this.mGlThread.quit();
        }
    }

    private void initGlRenderer(final DynamicRange dynamicRange, final Map map) {
        try {
            CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda0
                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                    return DefaultSurfaceProcessor.$r8$lambda$eZcZsxjTSPFb419HaHACXsjhtYA(this.f$0, dynamicRange, map, completer);
                }
            }).get();
        } catch (InterruptedException | ExecutionException e) {
            e = e;
            if (e instanceof ExecutionException) {
                e = e.getCause();
            }
            if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            }
            throw new IllegalStateException("Failed to create DefaultSurfaceProcessor", e);
        }
    }

    public static /* synthetic */ Object $r8$lambda$eZcZsxjTSPFb419HaHACXsjhtYA(final DefaultSurfaceProcessor defaultSurfaceProcessor, final DynamicRange dynamicRange, final Map map, final CallbackToFutureAdapter.Completer completer) {
        defaultSurfaceProcessor.getClass();
        defaultSurfaceProcessor.executeSafely(new Runnable() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                DefaultSurfaceProcessor.$r8$lambda$P3oBxHyw9llKTXX07rPqw1VHBwA(this.f$0, dynamicRange, map, completer);
            }
        });
        return "Init GlRenderer";
    }

    public static /* synthetic */ void $r8$lambda$P3oBxHyw9llKTXX07rPqw1VHBwA(DefaultSurfaceProcessor defaultSurfaceProcessor, DynamicRange dynamicRange, Map map, CallbackToFutureAdapter.Completer completer) throws Throwable {
        defaultSurfaceProcessor.getClass();
        try {
            defaultSurfaceProcessor.mGlRenderer.init(dynamicRange, map);
            completer.set(null);
        } catch (RuntimeException e) {
            completer.setException(e);
        }
    }

    private void executeSafely(Runnable runnable) {
        executeSafely(runnable, new Runnable() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                DefaultSurfaceProcessor.m1991$r8$lambda$i022ReFOMMyB0jSZtyCUD1hM14();
            }
        });
    }

    private void executeSafely(final Runnable runnable, final Runnable runnable2) {
        try {
            this.mGlExecutor.execute(new Runnable() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSurfaceProcessor.m1993$r8$lambda$ryx4Xt9NnExVDrMO9XaGJjOnM(this.f$0, runnable2, runnable);
                }
            });
        } catch (RejectedExecutionException e) {
            Logger.m82w("DefaultSurfaceProcessor", "Unable to executor runnable", e);
            runnable2.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ryx4Xt9N-nExVDrMO9XaGJjO-nM, reason: not valid java name */
    public static /* synthetic */ void m1993$r8$lambda$ryx4Xt9NnExVDrMO9XaGJjOnM(DefaultSurfaceProcessor defaultSurfaceProcessor, Runnable runnable, Runnable runnable2) {
        if (defaultSurfaceProcessor.mIsReleased) {
            runnable.run();
        } else {
            runnable2.run();
        }
    }

    public static class Factory {
        private static Function sSupplier = new Function() { // from class: androidx.camera.core.processing.DefaultSurfaceProcessor$Factory$$ExternalSyntheticLambda0
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return new DefaultSurfaceProcessor((DynamicRange) obj);
            }
        };

        public static SurfaceProcessorInternal newInstance(DynamicRange dynamicRange) {
            return (SurfaceProcessorInternal) sSupplier.apply(dynamicRange);
        }
    }
}
