package org.telegram.utils.camera.roundvideo;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.processing.util.GLUtils$$ExternalSyntheticBUOutline0;
import com.android.dx.dex.code.CstInsn$$ExternalSyntheticBUOutline0;
import com.android.dx.io.Opcodes;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.LongCompanionObject;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.mvel2.asm.Constants$$ExternalSyntheticBUOutline0;
import org.telegram.utils.camera.roundvideo.RoundVideoSession;
import org.webrtc.EglBase;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes6.dex */
final class RoundVideoGlProcessor {
    private Surface cameraSurface;
    private long cameraSwitchStartNs;
    private boolean cameraTimestampRealtime;
    private final boolean compositionEnabled;
    private final RoundVideoDiagnostics diagnostics;
    private final ErrorListener errorListener;
    private volatile Runnable firstFrameListener;
    private boolean firstFrameReported;
    private long firstPresentationTime;
    private final FrameTimingListener frameTimingListener;
    private long glStartedNs;
    private long gpuTimingMaxNs;
    private int gpuTimingSamples;
    private long gpuTimingTotalNs;
    private Handler handler;
    private boolean hasCameraFrame;
    private boolean hasNewCameraFrame;
    private volatile RuntimeException initializationError;
    private long inputFrames;
    private Size inputSize;
    private SurfaceTexture inputSurfaceTexture;
    private int largeFrameGaps;
    private long lastFrameTime;
    private long maximumFrameGapNs;
    private boolean newCameraSessionReady;
    private int outputHeight;
    private final int outputSize;
    private int outputSizeCheckFrame;
    private final Surface outputSurface;
    private int outputWidth;
    private RoundVideoOverlayRenderer overlayRenderer;
    private long preOriginFrames;
    private volatile long presentationTimeOriginNs;
    private volatile boolean recordingStarted;
    private int sourceCropSize;
    private volatile boolean started;
    private long submittedFrames;
    private int swapTimingFrames;
    private long swapTimingMaxNs;
    private long swapTimingTotalNs;
    private long switchCrossfadeDurationNs;
    private int switchExpectedWaitMs;
    private RoundVideoSession.CameraFacing switchFromFacing;
    private float switchOldBlurRadiusPx;
    private long switchStageStartNs;
    private int switchState;
    private RoundVideoSession.CameraFacing switchToFacing;
    private long switchUnblurDurationNs;
    private int syntheticFrames;
    private int textureId;
    private HandlerThread thread;
    private volatile long presentationTimeLimitNs = LongCompanionObject.MAX_VALUE;
    private EGLDisplay eglDisplay = EGL14.EGL_NO_DISPLAY;
    private EGLContext eglContext = EGL14.EGL_NO_CONTEXT;
    private EGLSurface eglSurface = EGL14.EGL_NO_SURFACE;
    private final int[] eglSurfaceValue = new int[1];
    private final float[] textureMatrix = new float[16];
    private long firstCameraTimestamp = -1;
    private long lastPresentationTime = -1;
    private final Runnable switchFrameRunnable = new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.drawSwitchFrame();
        }
    };

    public interface ErrorListener {
        void onError(Exception exc);
    }

    public interface FrameTimingListener {
        void onFrameSubmitted(long j, long j2);
    }

    public RoundVideoGlProcessor(Size size, Surface surface, int i, int i2, boolean z, boolean z2, RoundVideoDiagnostics roundVideoDiagnostics, long j, FrameTimingListener frameTimingListener, ErrorListener errorListener) {
        this.inputSize = size;
        this.outputSurface = surface;
        this.outputSize = i;
        this.sourceCropSize = i2;
        this.cameraTimestampRealtime = z;
        this.compositionEnabled = z2;
        this.diagnostics = roundVideoDiagnostics;
        this.outputWidth = i;
        this.outputHeight = i;
        this.presentationTimeOriginNs = j;
        this.recordingStarted = j != 0;
        this.frameTimingListener = frameTimingListener;
        this.errorListener = errorListener;
    }

    public Surface start() {
        if (this.started) {
            return this.cameraSurface;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        HandlerThread handlerThread = new HandlerThread("RoundVideoGlProcessor");
        this.thread = handlerThread;
        handlerThread.start();
        this.glStartedNs = System.nanoTime();
        this.diagnostics.log("GL processor start requested: input=" + this.inputSize + ", crop=" + this.sourceCropSize + ", output=" + this.outputSize + "x" + this.outputSize + ", filter=" + inputFilterName() + ", composition=" + this.compositionEnabled);
        Handler handler = new Handler(this.thread.getLooper());
        this.handler = handler;
        handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$start$0(countDownLatch);
            }
        });
        try {
            countDownLatch.await();
            if (this.initializationError != null) {
                RuntimeException runtimeException = this.initializationError;
                this.initializationError = null;
                stop();
                throw runtimeException;
            }
            return this.cameraSurface;
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            stop();
            Constants$$ExternalSyntheticBUOutline0.m958m("GL initialization was interrupted", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$0(CountDownLatch countDownLatch) {
        try {
            initializeGl();
            this.started = true;
        } catch (RuntimeException e) {
            this.initializationError = e;
            releaseGl();
        } finally {
            countDownLatch.countDown();
        }
    }

    public void stop() {
        Handler handler = this.handler;
        final HandlerThread handlerThread = this.thread;
        if (handler != null) {
            handler.removeCallbacks(this.switchFrameRunnable);
        }
        this.handler = null;
        this.thread = null;
        this.started = false;
        if (handler == null || handlerThread == null) {
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stop$1(handlerThread, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stop$1(HandlerThread handlerThread, CountDownLatch countDownLatch) {
        try {
            releaseGl();
        } finally {
            handlerThread.quitSafely();
            countDownLatch.countDown();
        }
    }

    public Surface getCameraSurface() {
        Surface surface = this.cameraSurface;
        if (surface != null) {
            return surface;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("GL processor is not started");
        return null;
    }

    public void beginCameraSwitch(final RoundVideoSession.CameraFacing cameraFacing, final RoundVideoSession.CameraFacing cameraFacing2) {
        final Handler handler = this.handler;
        if (!this.started || handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$beginCameraSwitch$2(cameraFacing, cameraFacing2, handler);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$beginCameraSwitch$2(RoundVideoSession.CameraFacing cameraFacing, RoundVideoSession.CameraFacing cameraFacing2, Handler handler) {
        if (this.started && this.switchState == 0 && this.hasCameraFrame) {
            this.overlayRenderer.captureSwitchFrame(this.textureId, this.textureMatrix, false);
            this.hasNewCameraFrame = false;
            this.newCameraSessionReady = false;
            this.switchOldBlurRadiusPx = 0.0f;
            this.switchState = 1;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            this.switchStageStartNs = jElapsedRealtimeNanos;
            this.cameraSwitchStartNs = jElapsedRealtimeNanos;
            this.switchFromFacing = cameraFacing;
            this.switchToFacing = cameraFacing2;
            configureSwitchTiming(RoundVideoSwitchTimingStore.getAverageMs(cameraFacing, cameraFacing2));
            this.diagnostics.log("synthetic camera switch started: from=" + cameraFacing + ", to=" + cameraFacing2 + ", expectedWaitMs=" + this.switchExpectedWaitMs + ", targetBlurRadiusPx=" + this.overlayRenderer.getSwitchTargetBlurRadiusPx() + ", overdueBlurGrowth=0.35, revealMs=" + ((this.switchCrossfadeDurationNs + this.switchUnblurDurationNs) / 1000000));
            this.firstCameraTimestamp = -1L;
            handler.removeCallbacks(this.switchFrameRunnable);
            handler.post(this.switchFrameRunnable);
        }
    }

    public void setFirstFrameListener(Runnable runnable) {
        this.firstFrameListener = runnable;
    }

    public void onCameraSessionConfigured() {
        Handler handler = this.handler;
        if (!this.started || handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onCameraSessionConfigured$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCameraSessionConfigured$3() {
        if (this.switchState != 0) {
            this.newCameraSessionReady = true;
        }
    }

    public void startRecording(long j) {
        if (j <= 0) {
            f$$ExternalSyntheticBUOutline1.m212m("Invalid recording time origin");
            return;
        }
        this.presentationTimeOriginNs = j;
        this.firstCameraTimestamp = -1L;
        this.firstPresentationTime = 0L;
        this.lastPresentationTime = -1L;
        this.presentationTimeLimitNs = LongCompanionObject.MAX_VALUE;
        this.recordingStarted = true;
    }

    public void stopRecordingAt(long j) {
        this.presentationTimeLimitNs = Math.max(0L, j) * 1000;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacks(this.switchFrameRunnable);
        }
    }

    public void updateInputConfiguration(final Size size, final int i, final boolean z) {
        Handler handler = this.handler;
        if (!this.started || handler == null) {
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final RuntimeException[] runtimeExceptionArr = new RuntimeException[1];
        handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$updateInputConfiguration$4(size, i, z, runtimeExceptionArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
            RuntimeException runtimeException = runtimeExceptionArr[0];
            if (runtimeException != null) {
                throw runtimeException;
            }
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            Constants$$ExternalSyntheticBUOutline0.m958m("Input size update was interrupted", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateInputConfiguration$4(Size size, int i, boolean z, RuntimeException[] runtimeExceptionArr, CountDownLatch countDownLatch) {
        try {
            try {
                this.inputSize = size;
                this.sourceCropSize = i;
                this.cameraTimestampRealtime = z;
                SurfaceTexture surfaceTexture = this.inputSurfaceTexture;
                if (surfaceTexture != null) {
                    surfaceTexture.setDefaultBufferSize(size.getWidth(), size.getHeight());
                }
                setInputTextureFilter();
                RoundVideoOverlayRenderer roundVideoOverlayRenderer = this.overlayRenderer;
                if (roundVideoOverlayRenderer != null) {
                    roundVideoOverlayRenderer.updateInputConfiguration(size, i);
                }
                this.diagnostics.log("GL input updated: input=" + size + ", crop=" + i + ", filter=" + inputFilterName());
                countDownLatch.countDown();
            } catch (RuntimeException e) {
                runtimeExceptionArr[0] = e;
                countDownLatch.countDown();
            }
        } catch (Throwable th) {
            countDownLatch.countDown();
            throw th;
        }
    }

    private void initializeGl() {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        this.eglDisplay = eGLDisplayEglGetDisplay;
        if (eGLDisplayEglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Unable to get EGL display");
            return;
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Unable to initialize EGL");
            return;
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr2 = new int[1];
        if (!EGL14.eglChooseConfig(this.eglDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, EglBase.EGL_RECORDABLE_ANDROID, 1, 12344}, 0, eGLConfigArr, 0, 1, iArr2, 0) || iArr2[0] == 0) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Unable to choose EGL config");
            return;
        }
        EGLContext eGLContextEglCreateContext = EGL14.eglCreateContext(this.eglDisplay, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
        this.eglContext = eGLContextEglCreateContext;
        checkEglObject(eGLContextEglCreateContext != EGL14.EGL_NO_CONTEXT, "Unable to create EGL context");
        EGLSurface eGLSurfaceEglCreateWindowSurface = EGL14.eglCreateWindowSurface(this.eglDisplay, eGLConfigArr[0], this.outputSurface, new int[]{12344}, 0);
        this.eglSurface = eGLSurfaceEglCreateWindowSurface;
        checkEglObject(eGLSurfaceEglCreateWindowSurface != EGL14.EGL_NO_SURFACE, "Unable to create EGL surface");
        makeCurrent();
        this.diagnostics.log("GL initialized: egl=" + iArr[0] + "." + iArr[1] + ", vendor=" + GLES20.glGetString(7936) + ", renderer=" + GLES20.glGetString(7937) + ", version=" + GLES20.glGetString(7938) + ", elapsedMs=" + elapsedMs(this.glStartedNs));
        createInputSurface();
        this.overlayRenderer = new RoundVideoOverlayRenderer(this.outputSize, this.inputSize, this.sourceCropSize, this.compositionEnabled);
        int i = this.outputSize;
        GLES20.glViewport(0, 0, i, i);
    }

    private void createInputSurface() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i = iArr[0];
        this.textureId = i;
        GLES20.glBindTexture(36197, i);
        setInputTextureFilter();
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.textureId);
        this.inputSurfaceTexture = surfaceTexture;
        surfaceTexture.setDefaultBufferSize(this.inputSize.getWidth(), this.inputSize.getHeight());
        this.inputSurfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor$$ExternalSyntheticLambda0
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f$0.lambda$createInputSurface$5(surfaceTexture2);
            }
        }, this.handler);
        this.cameraSurface = new Surface(this.inputSurfaceTexture);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createInputSurface$5(SurfaceTexture surfaceTexture) {
        drawFrame();
    }

    private void setInputTextureFilter() {
        GLES20.glBindTexture(36197, this.textureId);
        int i = this.sourceCropSize == this.outputSize ? 9728 : 9729;
        GLES20.glTexParameteri(36197, 10241, i);
        GLES20.glTexParameteri(36197, 10240, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c4 A[Catch: RuntimeException -> 0x004b, TryCatch #0 {RuntimeException -> 0x004b, blocks: (B:7:0x0010, B:9:0x002b, B:12:0x004e, B:14:0x0053, B:17:0x005b, B:19:0x0061, B:21:0x0065, B:23:0x006b, B:25:0x0074, B:27:0x008c, B:29:0x009b, B:31:0x00a9, B:32:0x00ae, B:34:0x00b4, B:36:0x00ba, B:39:0x00c7, B:41:0x00cd, B:44:0x00d3, B:46:0x00e3, B:47:0x0119, B:51:0x0120, B:53:0x0124, B:54:0x0129, B:56:0x012d, B:58:0x0146, B:38:0x00c4), top: B:62:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawFrame() {
        SurfaceTexture surfaceTexture;
        if (!this.started || (surfaceTexture = this.inputSurfaceTexture) == null) {
            return;
        }
        try {
            surfaceTexture.updateTexImage();
            this.inputSurfaceTexture.getTransformMatrix(this.textureMatrix);
            long timestamp = this.inputSurfaceTexture.getTimestamp();
            long j = this.inputFrames + 1;
            this.inputFrames = j;
            if (j == 1) {
                this.diagnostics.log("first GL input frame: cameraTimestampNs=" + timestamp + ", elapsedMs=" + elapsedMs(this.glStartedNs));
            }
            if (!this.recordingStarted) {
                Runnable runnable = this.firstFrameListener;
                if (this.firstFrameReported || runnable == null) {
                    return;
                }
                this.firstFrameReported = true;
                runnable.run();
                return;
            }
            if (this.cameraTimestampRealtime && timestamp < this.presentationTimeOriginNs) {
                long j2 = this.preOriginFrames + 1;
                this.preOriginFrames = j2;
                if (j2 == 1) {
                    this.diagnostics.log("dropping pre-origin camera frame: deltaUs=" + ((timestamp - this.presentationTimeOriginNs) / 1000));
                    return;
                }
                return;
            }
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            long j3 = this.lastFrameTime;
            if (j3 != 0) {
                long j4 = jElapsedRealtimeNanos - j3;
                this.maximumFrameGapNs = Math.max(this.maximumFrameGapNs, j4);
                if (j4 > 50000000) {
                    this.largeFrameGaps++;
                }
            }
            long j5 = this.lastFrameTime;
            if (j5 == 0 || jElapsedRealtimeNanos - j5 > 50000000) {
                updateOutputSize();
            } else {
                int i = this.outputSizeCheckFrame;
                this.outputSizeCheckFrame = i + 1;
                if (i % 60 == 0) {
                }
            }
            this.lastFrameTime = jElapsedRealtimeNanos;
            if (this.switchState != 0) {
                if (this.newCameraSessionReady) {
                    boolean z = this.hasNewCameraFrame;
                    this.overlayRenderer.captureSwitchFrame(this.textureId, this.textureMatrix, true);
                    this.hasNewCameraFrame = true;
                    if (!z) {
                        long jElapsedRealtimeNanos2 = SystemClock.elapsedRealtimeNanos();
                        float f = (jElapsedRealtimeNanos2 - this.cameraSwitchStartNs) / 1000000.0f;
                        int iRecordAndGetAverageMs = RoundVideoSwitchTimingStore.recordAndGetAverageMs(this.switchFromFacing, this.switchToFacing, Math.round(f));
                        this.diagnostics.log("camera switch first new frame: waitMs=" + f + ", rollingAverageMs=" + iRecordAndGetAverageMs);
                        this.switchState = 3;
                        this.switchStageStartNs = jElapsedRealtimeNanos2;
                    }
                    int i2 = this.switchState;
                    if (i2 == 3 || i2 == 4) {
                        Handler handler = this.handler;
                        if (handler != null) {
                            handler.removeCallbacks(this.switchFrameRunnable);
                        }
                        drawSwitchFrame();
                        return;
                    }
                    return;
                }
                return;
            }
            this.hasCameraFrame = true;
            this.overlayRenderer.render(this.textureId, this.textureMatrix, jElapsedRealtimeNanos, this.outputWidth, this.outputHeight);
            long cameraPresentationTime = getCameraPresentationTime(timestamp);
            if (cameraPresentationTime < this.presentationTimeLimitNs) {
                submitFrame(cameraPresentationTime);
            }
        } catch (RuntimeException e) {
            reportError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0090 A[Catch: RuntimeException -> 0x003b, TRY_ENTER, TRY_LEAVE, TryCatch #1 {RuntimeException -> 0x003b, blocks: (B:11:0x0021, B:13:0x002f, B:17:0x0036, B:38:0x0090, B:21:0x0041, B:32:0x005b), top: B:73:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d5 A[Catch: RuntimeException -> 0x00ce, TryCatch #0 {RuntimeException -> 0x00ce, blocks: (B:8:0x000f, B:35:0x0072, B:39:0x0093, B:43:0x00a0, B:46:0x00d1, B:48:0x00d5, B:50:0x00d9, B:57:0x00e6, B:63:0x00f6, B:67:0x0109, B:66:0x00fb, B:58:0x00e8, B:28:0x0052, B:34:0x0060), top: B:71:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void drawSwitchFrame() {
        int i;
        long jElapsedRealtimeNanos;
        long j;
        int i2;
        float fSmoothStep;
        float f;
        float fSmoothStep2;
        long realtimePresentationTime;
        int i3;
        if (!this.started || this.switchState == 0) {
            return;
        }
        try {
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            j = jElapsedRealtimeNanos - this.switchStageStartNs;
            i2 = this.switchState;
            try {
            } catch (RuntimeException e) {
                e = e;
                i = 0;
            }
        } catch (RuntimeException e2) {
            e = e2;
            i = 0;
        }
        if (i2 == 1) {
            this.switchOldBlurRadiusPx = getSwitchOldBlurRadiusPx(jElapsedRealtimeNanos);
            if (j >= getExpectedSwitchWaitNs()) {
                this.switchState = this.hasNewCameraFrame ? 3 : 2;
                this.switchStageStartNs = jElapsedRealtimeNanos;
            }
        } else if (i2 == 2) {
            this.switchOldBlurRadiusPx = getSwitchOldBlurRadiusPx(jElapsedRealtimeNanos);
        } else {
            if (i2 == 3 || i2 == 4) {
                long j2 = this.switchCrossfadeDurationNs;
                if (j < j2) {
                    fSmoothStep2 = smoothStep(j / j2);
                } else {
                    this.switchState = 4;
                    fSmoothStep = 1.0f - smoothStep((j - j2) / this.switchUnblurDurationNs);
                    f = 1.0f;
                    this.overlayRenderer.renderSwitch(this.switchOldBlurRadiusPx, fSmoothStep, f, this.outputWidth, this.outputHeight);
                    this.syntheticFrames++;
                    realtimePresentationTime = getRealtimePresentationTime();
                    if (realtimePresentationTime < this.presentationTimeLimitNs) {
                        submitFrame(realtimePresentationTime);
                    }
                    long j3 = this.switchCrossfadeDurationNs + this.switchUnblurDurationNs;
                    if (this.switchState == 4 && j >= j3) {
                        this.overlayRenderer.finishCameraSwitch(jElapsedRealtimeNanos);
                        this.switchState = 0;
                        this.diagnostics.log("synthetic camera switch completed: elapsedMs=" + ((jElapsedRealtimeNanos - this.cameraSwitchStartNs) / 1000000.0f) + ", syntheticFrames=" + this.syntheticFrames);
                    }
                    i3 = this.switchState;
                    if (i3 == 0 || this.handler == null) {
                        return;
                    }
                    boolean z = this.hasNewCameraFrame && (i3 == 3 || i3 == 4);
                    long expectedSwitchWaitNs = z ? j3 - j : getExpectedSwitchWaitNs() - j;
                    long jMax = 33;
                    long j4 = z ? 70L : 33L;
                    if (this.switchState != 2) {
                        jMax = Math.max(1L, (expectedSwitchWaitNs + 999999) / 1000000);
                    }
                    this.handler.postDelayed(this.switchFrameRunnable, Math.min(j4, jMax));
                    return;
                    this.switchState = i;
                    reportError(e);
                }
            }
            f = fSmoothStep2;
            fSmoothStep = 1.0f;
            this.overlayRenderer.renderSwitch(this.switchOldBlurRadiusPx, fSmoothStep, f, this.outputWidth, this.outputHeight);
            this.syntheticFrames++;
            realtimePresentationTime = getRealtimePresentationTime();
            if (realtimePresentationTime < this.presentationTimeLimitNs) {
            }
            long j32 = this.switchCrossfadeDurationNs + this.switchUnblurDurationNs;
            if (this.switchState == 4) {
                this.overlayRenderer.finishCameraSwitch(jElapsedRealtimeNanos);
                this.switchState = 0;
                this.diagnostics.log("synthetic camera switch completed: elapsedMs=" + ((jElapsedRealtimeNanos - this.cameraSwitchStartNs) / 1000000.0f) + ", syntheticFrames=" + this.syntheticFrames);
            }
            i3 = this.switchState;
            if (i3 == 0) {
                return;
            } else {
                return;
            }
            this.switchState = i;
            reportError(e);
        }
        fSmoothStep2 = 0.0f;
        f = fSmoothStep2;
        fSmoothStep = 1.0f;
        this.overlayRenderer.renderSwitch(this.switchOldBlurRadiusPx, fSmoothStep, f, this.outputWidth, this.outputHeight);
        this.syntheticFrames++;
        realtimePresentationTime = getRealtimePresentationTime();
        if (realtimePresentationTime < this.presentationTimeLimitNs) {
        }
        long j322 = this.switchCrossfadeDurationNs + this.switchUnblurDurationNs;
        if (this.switchState == 4) {
        }
        i3 = this.switchState;
        if (i3 == 0) {
        }
        this.switchState = i;
        reportError(e);
    }

    private void reportError(RuntimeException runtimeException) {
        this.diagnostics.error("GL error", runtimeException);
        ErrorListener errorListener = this.errorListener;
        if (errorListener != null) {
            errorListener.onError(runtimeException);
        }
    }

    private long getCameraPresentationTime(long j) {
        if (this.presentationTimeOriginNs != 0) {
            if (this.cameraTimestampRealtime) {
                j = Math.max(0L, j - this.presentationTimeOriginNs);
            } else {
                if (this.firstCameraTimestamp < 0) {
                    this.firstCameraTimestamp = j;
                    this.firstPresentationTime = getRealtimePresentationTime();
                }
                j = Math.max(0L, j - this.firstCameraTimestamp) + this.firstPresentationTime;
            }
        }
        return Math.max(j, this.lastPresentationTime + 1);
    }

    private long getRealtimePresentationTime() {
        long jMax;
        if (this.presentationTimeOriginNs == 0) {
            jMax = this.lastPresentationTime + 33333333;
        } else {
            jMax = Math.max(0L, SystemClock.elapsedRealtimeNanos() - this.presentationTimeOriginNs);
        }
        return Math.max(jMax, this.lastPresentationTime + 1);
    }

    private void submitFrame(long j) {
        this.lastPresentationTime = j;
        EGLExt.eglPresentationTimeANDROID(this.eglDisplay, this.eglSurface, j);
        long jNanoTime = System.nanoTime();
        if (!EGL14.eglSwapBuffers(this.eglDisplay, this.eglSurface)) {
            CstInsn$$ExternalSyntheticBUOutline0.m222m("Unable to swap EGL buffers: 0x", Integer.toHexString(EGL14.eglGetError()));
            return;
        }
        long jNanoTime2 = System.nanoTime();
        this.submittedFrames++;
        recordSwapTiming(jNanoTime2 - jNanoTime);
        FrameTimingListener frameTimingListener = this.frameTimingListener;
        if (frameTimingListener != null) {
            frameTimingListener.onFrameSubmitted(j / 1000, jNanoTime2);
        }
    }

    private static float clamp01(float f) {
        return Math.max(0.0f, Math.min(1.0f, f));
    }

    private static float smoothStep(float f) {
        float fClamp01 = clamp01(f);
        return fClamp01 * fClamp01 * (3.0f - (fClamp01 * 2.0f));
    }

    private static float easeOutQuart(float f) {
        float fClamp01 = 1.0f - clamp01(f);
        return 1.0f - (((fClamp01 * fClamp01) * fClamp01) * fClamp01);
    }

    private float getSwitchOldBlurRadiusPx(long j) {
        float fSqrt;
        long jMax = Math.max(0L, j - this.cameraSwitchStartNs);
        long expectedSwitchWaitNs = getExpectedSwitchWaitNs();
        float switchTargetBlurRadiusPx = this.overlayRenderer.getSwitchTargetBlurRadiusPx();
        if (jMax <= expectedSwitchWaitNs) {
            fSqrt = easeOutQuart(jMax / expectedSwitchWaitNs);
        } else {
            fSqrt = (float) Math.sqrt((Math.log1p((jMax - expectedSwitchWaitNs) / expectedSwitchWaitNs) * 0.3499999940395355d) + 1.0d);
        }
        return switchTargetBlurRadiusPx * fSqrt;
    }

    private long getExpectedSwitchWaitNs() {
        return Math.max(33L, this.switchExpectedWaitMs) * 1000000;
    }

    private void configureSwitchTiming(int i) {
        this.switchExpectedWaitMs = i;
        int iClamp = clamp(300 - ((Math.max(0, i - 400) * 3) / 20), Opcodes.MUL_INT_LIT16, 300);
        int i2 = (iClamp * 45) / 100;
        this.switchCrossfadeDurationNs = ((long) i2) * 1000000;
        this.switchUnblurDurationNs = ((long) (iClamp - i2)) * 1000000;
    }

    private static int clamp(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    private String inputFilterName() {
        return this.sourceCropSize == this.outputSize ? "NEAREST" : "LINEAR";
    }

    private static long elapsedMs(long j) {
        return (System.nanoTime() - j) / 1000000;
    }

    private void recordSwapTiming(long j) {
        this.swapTimingFrames++;
        this.swapTimingTotalNs += j;
        this.swapTimingMaxNs = Math.max(this.swapTimingMaxNs, j);
        if (this.swapTimingFrames % 30 == 0) {
            this.diagnostics.log("encoder swap: average=" + ((this.swapTimingTotalNs / this.swapTimingFrames) / 1000000.0f) + " ms, max=" + (this.swapTimingMaxNs / 1000000.0f) + " ms");
        }
    }

    private void makeCurrent() {
        EGLDisplay eGLDisplay = this.eglDisplay;
        EGLSurface eGLSurface = this.eglSurface;
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.eglContext)) {
            return;
        }
        CstInsn$$ExternalSyntheticBUOutline0.m222m("Unable to make EGL context current: 0x", Integer.toHexString(EGL14.eglGetError()));
    }

    private void updateOutputSize() {
        if (EGL14.eglQuerySurface(this.eglDisplay, this.eglSurface, 12375, this.eglSurfaceValue, 0)) {
            int[] iArr = this.eglSurfaceValue;
            int i = iArr[0];
            if (EGL14.eglQuerySurface(this.eglDisplay, this.eglSurface, 12374, iArr, 0)) {
                int i2 = this.eglSurfaceValue[0];
                if (i <= 0 || i2 <= 0) {
                    return;
                }
                if (i == this.outputWidth && i2 == this.outputHeight) {
                    return;
                }
                this.outputWidth = i;
                this.outputHeight = i2;
                this.diagnostics.log("EGL output size changed: " + i + "x" + i2);
            }
        }
    }

    private void releaseGl() {
        EGLSurface eGLSurface;
        EGLContext eGLContext;
        long jNanoTime = this.glStartedNs != 0 ? System.nanoTime() - this.glStartedNs : 0L;
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        StringBuilder sb = new StringBuilder("GL summary: inputFrames=");
        sb.append(this.inputFrames);
        sb.append(", inputFps=");
        sb.append(frameRate(this.inputFrames, jNanoTime));
        sb.append(", preOriginFrames=");
        sb.append(this.preOriginFrames);
        sb.append(", submittedFrames=");
        sb.append(this.submittedFrames);
        sb.append(", submittedFps=");
        sb.append(frameRate(this.submittedFrames, jNanoTime));
        sb.append(", syntheticFrames=");
        sb.append(this.syntheticFrames);
        sb.append(", largeFrameGaps=");
        sb.append(this.largeFrameGaps);
        sb.append(", maxFrameGapMs=");
        sb.append(this.maximumFrameGapNs / 1000000.0f);
        sb.append(", gpuSamples=");
        sb.append(this.gpuTimingSamples);
        sb.append(", gpuAverageMs=");
        int i = this.gpuTimingSamples;
        sb.append(i == 0 ? "n/a" : Float.valueOf((this.gpuTimingTotalNs / i) / 1000000.0f));
        sb.append(", gpuMaxMs=");
        sb.append(this.gpuTimingMaxNs / 1000000.0f);
        sb.append(", swapAverageMs=");
        int i2 = this.swapTimingFrames;
        sb.append(i2 != 0 ? Float.valueOf((this.swapTimingTotalNs / i2) / 1000000.0f) : "n/a");
        sb.append(", swapMaxMs=");
        sb.append(this.swapTimingMaxNs / 1000000.0f);
        roundVideoDiagnostics.log(sb.toString());
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacks(this.switchFrameRunnable);
        }
        EGLDisplay eGLDisplay = this.eglDisplay;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY && (eGLSurface = this.eglSurface) != EGL14.EGL_NO_SURFACE && (eGLContext = this.eglContext) != EGL14.EGL_NO_CONTEXT) {
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
        }
        SurfaceTexture surfaceTexture = this.inputSurfaceTexture;
        if (surfaceTexture != null) {
            surfaceTexture.setOnFrameAvailableListener(null);
        }
        Surface surface = this.cameraSurface;
        if (surface != null) {
            surface.release();
            this.cameraSurface = null;
        }
        SurfaceTexture surfaceTexture2 = this.inputSurfaceTexture;
        if (surfaceTexture2 != null) {
            surfaceTexture2.release();
            this.inputSurfaceTexture = null;
        }
        RoundVideoOverlayRenderer roundVideoOverlayRenderer = this.overlayRenderer;
        if (roundVideoOverlayRenderer != null) {
            roundVideoOverlayRenderer.release();
            this.overlayRenderer = null;
        }
        int i3 = this.textureId;
        if (i3 != 0) {
            GLES20.glDeleteTextures(1, new int[]{i3}, 0);
            this.textureId = 0;
        }
        EGLDisplay eGLDisplay2 = this.eglDisplay;
        if (eGLDisplay2 != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface2, eGLSurface2, EGL14.EGL_NO_CONTEXT);
            EGLSurface eGLSurface3 = this.eglSurface;
            if (eGLSurface3 != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(this.eglDisplay, eGLSurface3);
            }
            EGLContext eGLContext2 = this.eglContext;
            if (eGLContext2 != EGL14.EGL_NO_CONTEXT) {
                EGL14.eglDestroyContext(this.eglDisplay, eGLContext2);
            }
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.eglDisplay);
        }
        this.eglDisplay = EGL14.EGL_NO_DISPLAY;
        this.eglContext = EGL14.EGL_NO_CONTEXT;
        this.eglSurface = EGL14.EGL_NO_SURFACE;
    }

    private static void checkEglObject(boolean z, String str) {
        if (z) {
            return;
        }
        GLUtils$$ExternalSyntheticBUOutline0.m83m(str, ": 0x", Integer.toHexString(EGL14.eglGetError()));
    }

    private static String frameRate(long j, long j2) {
        return j2 <= 0 ? "n/a" : String.valueOf((j * 1.0E9d) / j2);
    }
}
