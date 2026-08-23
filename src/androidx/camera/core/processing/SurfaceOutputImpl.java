package androidx.camera.core.processing;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.utils.MatrixExt;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
final class SurfaceOutputImpl implements SurfaceOutput {
    private final float[] mAdditionalTransform;
    private final SurfaceOutput.CameraInputInfo mCameraInputInfo;
    private final ListenableFuture mCloseFuture;
    private CallbackToFutureAdapter.Completer mCloseFutureCompleter;
    private Consumer mEventListener;
    private Executor mExecutor;
    private final int mFormat;
    private final float[] mInvertedTextureTransform;
    private final float[] mSecondaryAdditionalTransform;
    private final SurfaceOutput.CameraInputInfo mSecondaryCameraInputInfo;
    private final float[] mSecondaryInvertedTextureTransform;
    private Matrix mSensorToBufferTransform;
    private final Size mSize;
    private final Surface mSurface;
    private final int mTargets;
    private final Object mLock = new Object();
    private boolean mHasPendingCloseRequest = false;
    private boolean mIsClosed = false;

    SurfaceOutputImpl(Surface surface, int i, int i2, Size size, SurfaceOutput.CameraInputInfo cameraInputInfo, SurfaceOutput.CameraInputInfo cameraInputInfo2, Matrix matrix) {
        float[] fArr = new float[16];
        this.mAdditionalTransform = fArr;
        float[] fArr2 = new float[16];
        this.mSecondaryAdditionalTransform = fArr2;
        float[] fArr3 = new float[16];
        this.mInvertedTextureTransform = fArr3;
        float[] fArr4 = new float[16];
        this.mSecondaryInvertedTextureTransform = fArr4;
        this.mSurface = surface;
        this.mTargets = i;
        this.mFormat = i2;
        this.mSize = size;
        this.mCameraInputInfo = cameraInputInfo;
        this.mSecondaryCameraInputInfo = cameraInputInfo2;
        this.mSensorToBufferTransform = matrix;
        calculateAdditionalTransform(fArr, fArr3, cameraInputInfo);
        calculateAdditionalTransform(fArr2, fArr4, cameraInputInfo2);
        this.mCloseFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.core.processing.SurfaceOutputImpl$$ExternalSyntheticLambda0
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return SurfaceOutputImpl.m1998$r8$lambda$BPwK3dRtWFOkowL69hb8JIT2RI(this.f$0, completer);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$BPwK3dRtWFOkowL69-hb8JIT2RI, reason: not valid java name */
    public static /* synthetic */ Object m1998$r8$lambda$BPwK3dRtWFOkowL69hb8JIT2RI(SurfaceOutputImpl surfaceOutputImpl, CallbackToFutureAdapter.Completer completer) {
        surfaceOutputImpl.mCloseFutureCompleter = completer;
        return "SurfaceOutputImpl close future complete";
    }

    @Override // androidx.camera.core.SurfaceOutput
    public Surface getSurface(Executor executor, Consumer consumer) {
        boolean z;
        synchronized (this.mLock) {
            this.mExecutor = executor;
            this.mEventListener = consumer;
            z = this.mHasPendingCloseRequest;
        }
        if (z) {
            requestClose();
        }
        return this.mSurface;
    }

    public void requestClose() {
        Executor executor;
        Consumer consumer;
        final AtomicReference atomicReference = new AtomicReference();
        synchronized (this.mLock) {
            try {
                if (this.mExecutor == null || (consumer = this.mEventListener) == null) {
                    this.mHasPendingCloseRequest = true;
                } else if (!this.mIsClosed) {
                    atomicReference.set(consumer);
                    executor = this.mExecutor;
                    this.mHasPendingCloseRequest = false;
                }
                executor = null;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (executor != null) {
            try {
                executor.execute(new Runnable() { // from class: androidx.camera.core.processing.SurfaceOutputImpl$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SurfaceOutputImpl.$r8$lambda$tN7PQI3jxt3m69zesHNhPckAd28(this.f$0, atomicReference);
                    }
                });
            } catch (RejectedExecutionException e) {
                Logger.m77d("SurfaceOutputImpl", "Processor executor closed. Close request not posted.", e);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$tN7PQI3jxt3m69zesHNhPckAd28(SurfaceOutputImpl surfaceOutputImpl, AtomicReference atomicReference) {
        surfaceOutputImpl.getClass();
        ((Consumer) atomicReference.get()).accept(SurfaceOutput.Event.m84of(0, surfaceOutputImpl));
    }

    @Override // androidx.camera.core.SurfaceOutput
    public int getFormat() {
        return this.mFormat;
    }

    @Override // androidx.camera.core.SurfaceOutput
    public Size getSize() {
        return this.mSize;
    }

    @Override // androidx.camera.core.SurfaceOutput, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mLock) {
            try {
                if (!this.mIsClosed) {
                    this.mIsClosed = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.mCloseFutureCompleter.set(null);
    }

    public ListenableFuture getCloseFuture() {
        return this.mCloseFuture;
    }

    @Override // androidx.camera.core.SurfaceOutput
    public void updateTransformMatrix(float[] fArr, float[] fArr2) {
        updateTransformMatrix(fArr, fArr2, true);
    }

    @Override // androidx.camera.core.SurfaceOutput
    public void updateTransformMatrix(float[] fArr, float[] fArr2, boolean z) {
        android.opengl.Matrix.multiplyMM(fArr, 0, fArr2, 0, z ? this.mAdditionalTransform : this.mSecondaryAdditionalTransform, 0);
    }

    private static void calculateAdditionalTransform(float[] fArr, float[] fArr2, SurfaceOutput.CameraInputInfo cameraInputInfo) {
        android.opengl.Matrix.setIdentityM(fArr, 0);
        if (cameraInputInfo == null) {
            return;
        }
        MatrixExt.preVerticalFlip(fArr, 0.5f);
        MatrixExt.preRotate(fArr, cameraInputInfo.getRotationDegrees(), 0.5f, 0.5f);
        if (cameraInputInfo.getMirroring()) {
            android.opengl.Matrix.translateM(fArr, 0, 1.0f, 0.0f, 0.0f);
            android.opengl.Matrix.scaleM(fArr, 0, -1.0f, 1.0f, 1.0f);
        }
        Matrix rectToRect = TransformUtils.getRectToRect(TransformUtils.sizeToRectF(cameraInputInfo.getInputSize()), TransformUtils.sizeToRectF(TransformUtils.rotateSize(cameraInputInfo.getInputSize(), cameraInputInfo.getRotationDegrees())), cameraInputInfo.getRotationDegrees(), cameraInputInfo.getMirroring());
        RectF rectF = new RectF(cameraInputInfo.getInputCropRect());
        rectToRect.mapRect(rectF);
        float width = rectF.left / r1.getWidth();
        float height = ((r1.getHeight() - rectF.height()) - rectF.top) / r1.getHeight();
        float fWidth = rectF.width() / r1.getWidth();
        float fHeight = rectF.height() / r1.getHeight();
        android.opengl.Matrix.translateM(fArr, 0, width, height, 0.0f);
        android.opengl.Matrix.scaleM(fArr, 0, fWidth, fHeight, 1.0f);
        calculateInvertedTextureTransform(fArr2, cameraInputInfo.getCameraInternal());
        android.opengl.Matrix.multiplyMM(fArr, 0, fArr2, 0, fArr, 0);
    }

    private static void calculateInvertedTextureTransform(float[] fArr, CameraInternal cameraInternal) {
        android.opengl.Matrix.setIdentityM(fArr, 0);
        MatrixExt.preVerticalFlip(fArr, 0.5f);
        if (cameraInternal != null) {
            Preconditions.checkState(cameraInternal.getHasTransform(), "Camera has no transform.");
            MatrixExt.preRotate(fArr, cameraInternal.getCameraInfo().getSensorRotationDegrees(), 0.5f, 0.5f);
            if (cameraInternal.isFrontFacing()) {
                android.opengl.Matrix.translateM(fArr, 0, 1.0f, 0.0f, 0.0f);
                android.opengl.Matrix.scaleM(fArr, 0, -1.0f, 1.0f, 1.0f);
            }
        }
        android.opengl.Matrix.invertM(fArr, 0, fArr, 0);
    }
}
