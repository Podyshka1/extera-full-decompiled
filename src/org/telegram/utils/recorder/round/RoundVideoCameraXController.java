package org.telegram.utils.recorder.round;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Size;
import android.view.Surface;
import android.view.TextureView;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceRequest;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import com.exteragram.messenger.camera.CameraXSession;
import java.io.IOException;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import org.telegram.utils.recorder.round.RoundVideoCameraController;
import org.telegram.utils.recorder.round.RoundVideoCodecRecorder;
import org.telegram.utils.recorder.round.RoundVideoGlProcessor;
import org.telegram.utils.recorder.round.RoundVideoSession;

/* JADX INFO: loaded from: classes8.dex */
final class RoundVideoCameraXController extends RoundVideoCamera {
    private volatile boolean active;
    private volatile RoundVideoSession.CameraFacing activeFacing;
    private final int audioBitrate;
    private volatile boolean awaitingSwitchPreviewFrame;
    private final RoundVideoCameraController.Callback callback;
    private volatile boolean cameraConfigured;
    private final CameraManager cameraManager;
    private final RoundVideoSession.CameraResolution cameraResolution;
    private CameraXSession cameraXSession;
    private RoundVideoCodecRecorder commonStartRecorder;
    private final boolean compositionEnabled;
    private final Context context;
    private final RoundVideoDiagnostics diagnostics;
    private final boolean dualCameraEnabled;
    private volatile RoundVideoGlProcessor glProcessor;
    private boolean opening;
    private final int outputSize;
    private SurfaceRequest pendingPrimaryRequest;
    private SurfaceRequest pendingSecondaryRequest;
    private volatile boolean pipelineDual;
    private boolean pipelineReady;
    private volatile Surface previewSurface;
    private final TextureView previewView;
    private volatile Size primaryStreamSize;
    private volatile RoundVideoCodecRecorder recorder;
    private volatile RoundVideoSession.CameraFacing requestedFacing;
    private volatile Size secondaryStreamSize;
    private long segmentStartedNs;
    private volatile boolean stopping;
    private boolean switchingCamera;
    private volatile long timelineOffsetUs;
    private final int videoBitrate;
    private Handler workerHandler;
    private HandlerThread workerThread;
    private volatile RoundVideoMp4Writer writer;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private volatile RoundVideoSession.FrameRate activeFrameRate = RoundVideoSession.FrameRate.FPS_30;
    private final Runnable commonStartTimeoutRunnable = new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda15
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    };
    private final TextureView.SurfaceTextureListener previewListener = new TextureView.SurfaceTextureListener() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController.1
        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            RoundVideoCameraXController.this.openCameraIfReady();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            if (!RoundVideoCameraXController.this.active) {
                return true;
            }
            RoundVideoCameraXController.this.reportError(new IllegalStateException("Preview SurfaceTexture was destroyed"));
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            if (RoundVideoCameraXController.this.awaitingSwitchPreviewFrame) {
                RoundVideoCameraXController.this.awaitingSwitchPreviewFrame = false;
                RoundVideoCameraXController.this.callback.onCameraSwitchFirstFrame();
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        RoundVideoCodecRecorder roundVideoCodecRecorder = this.commonStartRecorder;
        if (!this.active || this.stopping || roundVideoCodecRecorder == null || this.recorder != roundVideoCodecRecorder) {
            return;
        }
        this.commonStartRecorder = null;
        reportError(new IllegalStateException("Timed out waiting for synchronized audio and video start"));
    }

    public RoundVideoCameraXController(Context context, TextureView textureView, int i, int i2, int i3, boolean z, RoundVideoSession.CameraResolution cameraResolution, boolean z2, RoundVideoDiagnostics roundVideoDiagnostics, RoundVideoCameraController.Callback callback) {
        this.context = context.getApplicationContext();
        this.cameraManager = (CameraManager) context.getSystemService("camera");
        this.previewView = textureView;
        this.outputSize = i;
        this.videoBitrate = i2;
        this.audioBitrate = i3;
        this.dualCameraEnabled = z;
        this.cameraResolution = cameraResolution;
        this.compositionEnabled = z2;
        this.diagnostics = roundVideoDiagnostics;
        this.callback = callback;
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public void startSegment(RoundVideoMp4Writer roundVideoMp4Writer, long j, RoundVideoSession.CameraFacing cameraFacing) {
        ensureThread();
        this.writer = roundVideoMp4Writer;
        this.timelineOffsetUs = j;
        this.requestedFacing = cameraFacing;
        this.active = true;
        this.stopping = false;
        this.cameraConfigured = false;
        this.pipelineReady = false;
        this.switchingCamera = false;
        this.commonStartRecorder = null;
        this.segmentStartedNs = SystemClock.elapsedRealtimeNanos();
        this.diagnostics.log("CameraX segment start: facing=" + cameraFacing + ", timelineOffsetUs=" + j + ", textureAvailable=" + this.previewView.isAvailable());
        this.previewView.setSurfaceTextureListener(this.previewListener);
        openCameraIfReady();
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean setCameraFacing(RoundVideoSession.CameraFacing cameraFacing) {
        this.requestedFacing = cameraFacing;
        CameraXSession cameraXSession = this.cameraXSession;
        if (!this.active || cameraXSession == null || !cameraXSession.isReady() || this.switchingCamera || cameraFacing == this.activeFacing) {
            return false;
        }
        RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
        if (this.pipelineDual && cameraXSession.isDualMode() && roundVideoGlProcessor != null) {
            this.callback.onCameraSwitchStarted(cameraFacing);
            cameraXSession.switchCamera();
            cameraXSession.resetInactiveCameraZoom();
            updateActiveCamera(cameraXSession);
            final RoundVideoSession.CameraFacing cameraFacing2 = this.activeFacing;
            roundVideoGlProcessor.setSecondaryInputActive(cameraFacing2 == RoundVideoSession.CameraFacing.BACK, new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setCameraFacing$2(cameraFacing2);
                }
            });
            this.diagnostics.log("CameraX dual switch: to=" + cameraFacing2);
            notifyConfigured(cameraXSession, true);
            return true;
        }
        this.switchingCamera = true;
        this.callback.onCameraSwitchStarted(cameraFacing);
        if (roundVideoGlProcessor != null && this.activeFacing != null) {
            roundVideoGlProcessor.beginCameraSwitch(this.activeFacing, cameraFacing);
        }
        this.diagnostics.log("CameraX switch started: from=" + this.activeFacing + ", to=" + cameraFacing);
        cameraXSession.switchCamera();
        if (!cameraXSession.isReady()) {
            reportError(new IllegalStateException("CameraX rebind failed after camera switch"));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCameraFacing$2(final RoundVideoSession.CameraFacing cameraFacing) {
        this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setCameraFacing$1(cameraFacing);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setCameraFacing$1(RoundVideoSession.CameraFacing cameraFacing) {
        if (this.active && this.activeFacing == cameraFacing) {
            this.callback.onCameraSwitchFirstFrame();
        }
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean setZoom(float f) {
        CameraXSession cameraXSession = this.cameraXSession;
        if (!this.active || cameraXSession == null) {
            return false;
        }
        if (f <= 0.0f) {
            return true;
        }
        cameraXSession.setZoomRatio((Math.min(1.0f, f) * Math.max(0.0f, Math.min(4.0f, cameraXSession.getMaxZoomRatio()) - 1.0f)) + 1.0f);
        return true;
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean setZoomRatio(float f) {
        CameraXSession cameraXSession = this.cameraXSession;
        if (!this.active || cameraXSession == null || !Float.isFinite(f) || f <= 0.0f) {
            return false;
        }
        cameraXSession.setZoomRatio(Math.max(cameraXSession.getMinZoomRatio(), Math.min(cameraXSession.getMaxZoomRatio(), f)));
        return true;
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean setFocusPoint(float f, float f2) {
        Size size;
        CameraXSession cameraXSession = this.cameraXSession;
        if (this.pipelineDual && this.activeFacing == RoundVideoSession.CameraFacing.BACK) {
            size = this.secondaryStreamSize;
        } else {
            size = this.primaryStreamSize;
        }
        if (!this.active || cameraXSession == null || !cameraXSession.isReady() || size == null) {
            return false;
        }
        boolean zIsStreamRotated = isStreamRotated(cameraXSession.getActiveCameraId());
        float height = zIsStreamRotated ? size.getHeight() : size.getWidth();
        float width = zIsStreamRotated ? size.getWidth() : size.getHeight();
        float fMin = Math.min(height, width);
        cameraXSession.focusToPoint((((Math.max(0.0f, Math.min(1.0f, f)) - 0.5f) * fMin) / height) + 0.5f, (((Math.max(0.0f, Math.min(1.0f, f2)) - 0.5f) * fMin) / width) + 0.5f, 1.0f, 1.0f);
        return true;
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean setTorchEnabled(boolean z) {
        CameraXSession cameraXSession = this.cameraXSession;
        if (!this.active || cameraXSession == null) {
            return false;
        }
        cameraXSession.setTorchEnabled(z);
        return true;
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean stopSegment() {
        final Handler handler = this.workerHandler;
        if (!this.active || this.stopping || handler == null) {
            return false;
        }
        this.stopping = true;
        this.diagnostics.log("CameraX segment stop requested");
        handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopSegment$5(handler);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopSegment$5(final Handler handler) {
        cancelCommonStartWait();
        requestRecorderStop();
        this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopSegment$4(handler);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopSegment$4(Handler handler) {
        this.active = false;
        closeCamera();
        handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda24
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopSegment$3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopSegment$3() {
        releasePipeline();
        this.stopping = false;
        this.callback.onRecordingStopped();
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public void release() {
        this.active = false;
        this.previewView.setSurfaceTextureListener(null);
        closeCamera();
        Handler handler = this.workerHandler;
        final HandlerThread handlerThread = this.workerThread;
        this.workerHandler = null;
        this.workerThread = null;
        if (handler == null || handlerThread == null) {
            return;
        }
        handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$release$6(handlerThread);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$6(HandlerThread handlerThread) {
        cancelCommonStartWait();
        requestRecorderStop();
        releasePipeline();
        handlerThread.quitSafely();
    }

    private void ensureThread() {
        if (this.workerThread != null) {
            return;
        }
        HandlerThread handlerThread = new HandlerThread("RoundVideoCameraX");
        this.workerThread = handlerThread;
        handlerThread.start();
        this.workerHandler = new Handler(this.workerThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCameraIfReady() {
        if (this.active && !this.opening && this.cameraXSession == null && this.previewView.isAvailable()) {
            if (ContextCompat.checkSelfPermission(this.context, "android.permission.CAMERA") != 0) {
                reportError(new SecurityException("Camera permission is not granted"));
                return;
            }
            if (ContextCompat.checkSelfPermission(this.context, "android.permission.RECORD_AUDIO") != 0) {
                reportError(new SecurityException("Audio recording permission is not granted"));
                return;
            }
            SurfaceTexture surfaceTexture = this.previewView.getSurfaceTexture();
            if (surfaceTexture == null) {
                return;
            }
            int iMax = Math.max(1, Math.min(720, Math.min(this.previewView.getWidth(), this.previewView.getHeight())));
            surfaceTexture.setDefaultBufferSize(iMax, iMax);
            if (this.previewSurface == null) {
                this.previewSurface = new Surface(surfaceTexture);
            }
            this.previewView.setTransform(new Matrix());
            this.opening = true;
            final CameraXSession cameraXSession = new CameraXSession(new CameraXSession.CameraLifecycle(), new Preview.SurfaceProvider() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda10
                @Override // androidx.camera.core.Preview.SurfaceProvider
                public final void onSurfaceRequested(SurfaceRequest surfaceRequest) {
                    this.f$0.lambda$openCameraIfReady$7(surfaceRequest);
                }
            });
            cameraXSession.setSecondSurfaceProvider(new Preview.SurfaceProvider() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda11
                @Override // androidx.camera.core.Preview.SurfaceProvider
                public final void onSurfaceRequested(SurfaceRequest surfaceRequest) {
                    this.f$0.lambda$openCameraIfReady$8(surfaceRequest);
                }
            });
            this.cameraXSession = cameraXSession;
            boolean z = this.dualCameraEnabled && CameraXSession.isRoundDualAvailable(this.context);
            this.diagnostics.log("CameraX open requested: facing=" + this.requestedFacing + ", dual=" + z + ", glPreview=" + iMax);
            cameraXSession.initCamera(this.context, this.requestedFacing == RoundVideoSession.CameraFacing.FRONT, z, new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$openCameraIfReady$9(cameraXSession);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openCameraIfReady$7(SurfaceRequest surfaceRequest) {
        onSurfaceRequested(surfaceRequest, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openCameraIfReady$8(SurfaceRequest surfaceRequest) {
        onSurfaceRequested(surfaceRequest, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onCameraBound, reason: merged with bridge method [inline-methods] */
    public void lambda$openCameraIfReady$9(CameraXSession cameraXSession) {
        if (this.cameraXSession == cameraXSession && this.active) {
            this.opening = false;
            if (!cameraXSession.isReady()) {
                reportError(new IllegalStateException("Unable to bind CameraX camera"));
                return;
            }
            updateActiveCamera(cameraXSession);
            this.diagnostics.log("CameraX bound: id=" + cameraXSession.getActiveCameraId() + ", dual=" + cameraXSession.isDualMode() + ", facing=" + this.activeFacing + ", fps=" + this.activeFrameRate.getValue() + ", segmentElapsedMs=" + elapsedMs(this.segmentStartedNs));
            if (this.recorder != null) {
                onPipelineReady();
                return;
            }
            final Surface surface = this.previewSurface;
            final RoundVideoSession.FrameRate frameRate = this.activeFrameRate;
            final boolean zIsDualMode = cameraXSession.isDualMode();
            Handler handler = this.workerHandler;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCameraBound$10(surface, frameRate, zIsDualMode);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createPipeline, reason: merged with bridge method [inline-methods] */
    public void lambda$onCameraBound$10(Surface surface, RoundVideoSession.FrameRate frameRate, boolean z) {
        if (!this.active || this.stopping) {
            return;
        }
        try {
            RoundVideoMp4Writer roundVideoMp4Writer = this.writer;
            long j = this.timelineOffsetUs;
            int i = this.outputSize;
            int i2 = this.videoBitrate;
            int i3 = this.audioBitrate;
            int value = frameRate.getValue();
            RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
            RoundVideoCodecRecorder.ErrorListener errorListener = new RoundVideoCodecRecorder.ErrorListener() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda20
                @Override // org.telegram.utils.recorder.round.RoundVideoCodecRecorder.ErrorListener
                public final void onError(Exception exc) {
                    this.f$0.reportError(exc);
                }
            };
            RoundVideoCameraController.Callback callback = this.callback;
            Objects.requireNonNull(callback);
            RoundVideoCodecRecorder roundVideoCodecRecorder = new RoundVideoCodecRecorder(roundVideoMp4Writer, j, i, i2, i3, value, roundVideoDiagnostics, errorListener, new RoundVideoCameraController$$ExternalSyntheticLambda18(callback));
            this.recorder = roundVideoCodecRecorder;
            Surface surfacePrepare = roundVideoCodecRecorder.prepare();
            int i4 = this.outputSize;
            Size size = new Size(i4, i4);
            int i5 = this.outputSize;
            RoundVideoGlProcessor roundVideoGlProcessor = new RoundVideoGlProcessor(size, surfacePrepare, surface, z, i5, i5, false, this.compositionEnabled, this.diagnostics, 0L, roundVideoCodecRecorder, new RoundVideoGlProcessor.ErrorListener() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda21
                @Override // org.telegram.utils.recorder.round.RoundVideoGlProcessor.ErrorListener
                public final void onError(Exception exc) {
                    this.f$0.reportError(exc);
                }
            });
            roundVideoGlProcessor.setFirstFrameListener(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createPipeline$11();
                }
            });
            this.glProcessor = roundVideoGlProcessor;
            this.pipelineDual = z;
            roundVideoGlProcessor.start();
            this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onPipelineReady();
                }
            });
        } catch (IOException | RuntimeException e) {
            reportError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPipeline$11() {
        postToWorker(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.startRecordingAfterFirstFrame();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPipelineReady() {
        if (this.active) {
            this.pipelineReady = true;
            servePendingRequests();
        }
    }

    private void onSurfaceRequested(SurfaceRequest surfaceRequest, boolean z) {
        if (!this.active || this.cameraXSession == null) {
            surfaceRequest.willNotProvideSurface();
            return;
        }
        this.diagnostics.log("CameraX surface requested: input=" + (z ? 1 : 0) + ", size=" + surfaceRequest.getResolution() + ", segmentElapsedMs=" + elapsedMs(this.segmentStartedNs));
        SurfaceRequest surfaceRequest2 = z ? this.pendingSecondaryRequest : this.pendingPrimaryRequest;
        if (surfaceRequest2 != null && surfaceRequest2 != surfaceRequest) {
            surfaceRequest2.willNotProvideSurface();
        }
        if (z) {
            this.pendingSecondaryRequest = surfaceRequest;
        } else {
            this.pendingPrimaryRequest = surfaceRequest;
        }
        servePendingRequests();
    }

    private void servePendingRequests() {
        final SurfaceRequest surfaceRequest;
        if (this.pipelineReady) {
            final SurfaceRequest surfaceRequest2 = this.pendingPrimaryRequest;
            SurfaceRequest surfaceRequest3 = this.pendingSecondaryRequest;
            this.pendingPrimaryRequest = null;
            this.pendingSecondaryRequest = null;
            final boolean z = this.pipelineDual;
            if (z || surfaceRequest3 == null) {
                surfaceRequest = surfaceRequest3;
            } else {
                surfaceRequest3.willNotProvideSurface();
                surfaceRequest = null;
            }
            if (surfaceRequest2 == null && surfaceRequest == null) {
                return;
            }
            CameraXSession cameraXSession = this.cameraXSession;
            final RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
            Handler handler = this.workerHandler;
            if (cameraXSession == null || roundVideoGlProcessor == null || handler == null) {
                willNotProvideSurfaces(surfaceRequest2, surfaceRequest);
                return;
            }
            final Size resolution = surfaceRequest2 != null ? surfaceRequest2.getResolution() : null;
            final Size resolution2 = surfaceRequest == null ? this.secondaryStreamSize : surfaceRequest.getResolution();
            final boolean zIsTimestampRealtime = isTimestampRealtime(cameraXSession.getActiveCameraId());
            final boolean z2 = z && !cameraXSession.isActiveCameraFrontface();
            handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$servePendingRequests$14(resolution, roundVideoGlProcessor, zIsTimestampRealtime, z, resolution2, z2, surfaceRequest2, surfaceRequest);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$servePendingRequests$14(Size size, final RoundVideoGlProcessor roundVideoGlProcessor, boolean z, boolean z2, Size size2, boolean z3, final SurfaceRequest surfaceRequest, final SurfaceRequest surfaceRequest2) {
        if (size != null) {
            try {
                roundVideoGlProcessor.updateInputConfiguration(size, Math.min(size.getWidth(), size.getHeight()), z);
            } catch (RuntimeException e) {
                this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        RoundVideoCameraXController.willNotProvideSurfaces(surfaceRequest, surfaceRequest2);
                    }
                });
                reportError(e);
                return;
            }
        }
        if (z2 && size2 != null) {
            roundVideoGlProcessor.configureSecondaryInput(size2, Math.min(size2.getWidth(), size2.getHeight()), z);
        }
        if (z2) {
            roundVideoGlProcessor.setSecondaryInputActive(z3);
        }
        this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$servePendingRequests$13(surfaceRequest, surfaceRequest2, roundVideoGlProcessor);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: provideSurfaces, reason: merged with bridge method [inline-methods] */
    public void lambda$servePendingRequests$13(SurfaceRequest surfaceRequest, SurfaceRequest surfaceRequest2, RoundVideoGlProcessor roundVideoGlProcessor) {
        CameraXSession cameraXSession = this.cameraXSession;
        if (!this.active || cameraXSession == null || this.glProcessor != roundVideoGlProcessor) {
            willNotProvideSurfaces(surfaceRequest, surfaceRequest2);
            return;
        }
        if (surfaceRequest != null) {
            this.primaryStreamSize = surfaceRequest.getResolution();
            provideSurface(surfaceRequest, roundVideoGlProcessor.getCameraSurface(), false);
        }
        if (surfaceRequest2 != null) {
            this.secondaryStreamSize = surfaceRequest2.getResolution();
            provideSurface(surfaceRequest2, roundVideoGlProcessor.getSecondaryCameraSurface(), true);
        }
        updateActiveCamera(cameraXSession);
        boolean z = this.pipelineDual && this.activeFacing == RoundVideoSession.CameraFacing.BACK;
        if (this.cameraConfigured) {
            if ((z ? surfaceRequest2 : surfaceRequest) == null) {
                return;
            }
        }
        if ((z ? this.secondaryStreamSize : this.primaryStreamSize) == null) {
            return;
        }
        boolean z2 = this.switchingCamera;
        this.switchingCamera = false;
        this.cameraConfigured = true;
        if (z2) {
            roundVideoGlProcessor.onCameraSessionConfigured();
            this.awaitingSwitchPreviewFrame = true;
        }
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        StringBuilder sb = new StringBuilder("CameraX surfaces provided: primary=");
        Object obj = "kept";
        sb.append(surfaceRequest == null ? "kept" : this.primaryStreamSize);
        sb.append(", secondary=");
        if (surfaceRequest2 != null) {
            obj = this.secondaryStreamSize;
        }
        sb.append(obj);
        sb.append(", facing=");
        sb.append(this.activeFacing);
        sb.append(", switch=");
        sb.append(z2);
        sb.append(", segmentElapsedMs=");
        sb.append(elapsedMs(this.segmentStartedNs));
        roundVideoDiagnostics.log(sb.toString());
        notifyConfigured(cameraXSession, z2);
        if (this.requestedFacing == null || this.requestedFacing == this.activeFacing) {
            return;
        }
        this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$provideSurfaces$15();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$provideSurfaces$15() {
        setCameraFacing(this.requestedFacing);
    }

    private void provideSurface(SurfaceRequest surfaceRequest, Surface surface, final boolean z) {
        surfaceRequest.provideSurface(surface, ContextCompat.getMainExecutor(this.context), new Consumer() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda6
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$provideSurface$16(z, (SurfaceRequest.Result) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$provideSurface$16(boolean z, SurfaceRequest.Result result) {
        this.diagnostics.log("CameraX surface released: input=" + (z ? 1 : 0) + ", result=" + result.getResultCode());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void willNotProvideSurfaces(SurfaceRequest surfaceRequest, SurfaceRequest surfaceRequest2) {
        if (surfaceRequest != null) {
            surfaceRequest.willNotProvideSurface();
        }
        if (surfaceRequest2 != null) {
            surfaceRequest2.willNotProvideSurface();
        }
    }

    private void notifyConfigured(CameraXSession cameraXSession, boolean z) {
        Size size;
        if (this.pipelineDual && this.activeFacing == RoundVideoSession.CameraFacing.BACK) {
            size = this.secondaryStreamSize;
        } else {
            size = this.primaryStreamSize;
        }
        Size size2 = size;
        this.callback.onConfigured(new RoundVideoCameraController.CameraInfo(cameraXSession.getActiveCameraId(), this.activeFacing, this.cameraResolution, this.activeFrameRate, size2, size2, cameraXSession.getMaxZoomRatio(), this.activeFacing == RoundVideoSession.CameraFacing.BACK && cameraXSession.isFlashAvailable()), z);
    }

    private void updateActiveCamera(CameraXSession cameraXSession) {
        RoundVideoSession.CameraFacing cameraFacing;
        RoundVideoSession.FrameRate frameRate;
        if (cameraXSession.isActiveCameraFrontface()) {
            cameraFacing = RoundVideoSession.CameraFacing.FRONT;
        } else {
            cameraFacing = RoundVideoSession.CameraFacing.BACK;
        }
        this.activeFacing = cameraFacing;
        if (cameraXSession.getRecordingFrameRate() >= 60) {
            frameRate = RoundVideoSession.FrameRate.FPS_60;
        } else {
            frameRate = RoundVideoSession.FrameRate.FPS_30;
        }
        this.activeFrameRate = frameRate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRecordingAfterFirstFrame() {
        final RoundVideoCodecRecorder roundVideoCodecRecorder = this.recorder;
        if (!this.active || this.stopping || !this.cameraConfigured || roundVideoCodecRecorder == null || roundVideoCodecRecorder.isStarted()) {
            return;
        }
        try {
            this.commonStartRecorder = roundVideoCodecRecorder;
            Handler handler = this.workerHandler;
            if (handler != null) {
                handler.removeCallbacks(this.commonStartTimeoutRunnable);
                handler.postDelayed(this.commonStartTimeoutRunnable, 3000L);
            }
            roundVideoCodecRecorder.startRecording(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startRecordingAfterFirstFrame$18(roundVideoCodecRecorder);
                }
            }, new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startRecordingAfterFirstFrame$20(roundVideoCodecRecorder);
                }
            });
            this.diagnostics.log("CameraX first frame received; audio startup requested: segmentElapsedMs=" + elapsedMs(this.segmentStartedNs));
        } catch (RuntimeException e) {
            cancelCommonStartWait();
            reportError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecordingAfterFirstFrame$18(final RoundVideoCodecRecorder roundVideoCodecRecorder) {
        postToWorker(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startRecordingAfterFirstFrame$17(roundVideoCodecRecorder);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecordingAfterFirstFrame$20(final RoundVideoCodecRecorder roundVideoCodecRecorder) {
        postToWorker(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraXController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startRecordingAfterFirstFrame$19(roundVideoCodecRecorder);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startVideoAfterAudioReady, reason: merged with bridge method [inline-methods] */
    public void lambda$startRecordingAfterFirstFrame$17(RoundVideoCodecRecorder roundVideoCodecRecorder) {
        RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
        if (!this.active || this.stopping || this.recorder != roundVideoCodecRecorder || roundVideoGlProcessor == null) {
            return;
        }
        try {
            roundVideoGlProcessor.startRecording(roundVideoCodecRecorder.getTimeOriginNs());
        } catch (RuntimeException e) {
            cancelCommonStartWait();
            reportError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: announceRecordingStarted, reason: merged with bridge method [inline-methods] */
    public void lambda$startRecordingAfterFirstFrame$19(RoundVideoCodecRecorder roundVideoCodecRecorder) {
        if (this.active && !this.stopping && this.recorder == roundVideoCodecRecorder) {
            cancelCommonStartWait();
            this.diagnostics.log("CameraX common A/V start completed: segmentElapsedMs=" + elapsedMs(this.segmentStartedNs));
            this.callback.onRecordingStarted();
        }
    }

    private void requestRecorderStop() {
        RoundVideoCodecRecorder roundVideoCodecRecorder = this.recorder;
        RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
        if (roundVideoCodecRecorder == null) {
            return;
        }
        long jRequestStop = roundVideoCodecRecorder.requestStop();
        if (roundVideoGlProcessor == null || jRequestStop == LongCompanionObject.MAX_VALUE) {
            return;
        }
        roundVideoGlProcessor.stopRecordingAt(jRequestStop);
    }

    private void releasePipeline() {
        RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
        this.glProcessor = null;
        if (roundVideoGlProcessor != null) {
            roundVideoGlProcessor.stop();
        }
        Surface surface = this.previewSurface;
        this.previewSurface = null;
        if (surface != null) {
            surface.release();
        }
        RoundVideoCodecRecorder roundVideoCodecRecorder = this.recorder;
        this.recorder = null;
        if (roundVideoCodecRecorder != null) {
            roundVideoCodecRecorder.stop();
        }
        this.primaryStreamSize = null;
        this.secondaryStreamSize = null;
        this.pipelineDual = false;
    }

    private void closeCamera() {
        CameraXSession cameraXSession = this.cameraXSession;
        this.cameraXSession = null;
        this.opening = false;
        this.pipelineReady = false;
        this.switchingCamera = false;
        this.cameraConfigured = false;
        this.awaitingSwitchPreviewFrame = false;
        SurfaceRequest surfaceRequest = this.pendingPrimaryRequest;
        SurfaceRequest surfaceRequest2 = this.pendingSecondaryRequest;
        this.pendingPrimaryRequest = null;
        this.pendingSecondaryRequest = null;
        if (surfaceRequest != null) {
            surfaceRequest.willNotProvideSurface();
        }
        if (surfaceRequest2 != null) {
            surfaceRequest2.willNotProvideSurface();
        }
        if (cameraXSession != null) {
            cameraXSession.closeCamera();
        }
    }

    private void cancelCommonStartWait() {
        Handler handler = this.workerHandler;
        if (handler != null) {
            handler.removeCallbacks(this.commonStartTimeoutRunnable);
        }
        this.commonStartRecorder = null;
    }

    private void postToWorker(Runnable runnable) {
        Handler handler = this.workerHandler;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    private boolean isTimestampRealtime(String str) {
        CameraCharacteristics characteristics = getCharacteristics(str);
        Integer num = characteristics == null ? null : (Integer) characteristics.get(CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE);
        return num != null && num.intValue() == 1;
    }

    private boolean isStreamRotated(String str) {
        CameraCharacteristics characteristics = getCharacteristics(str);
        Integer num = characteristics == null ? null : (Integer) characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
        if (num == null) {
            return false;
        }
        return ((num.intValue() - (this.previewView.getDisplay() == null ? 0 : this.previewView.getDisplay().getRotation() * 90)) + 360) % 180 != 0;
    }

    private CameraCharacteristics getCharacteristics(String str) {
        CameraManager cameraManager;
        if (str != null && (cameraManager = this.cameraManager) != null) {
            try {
                return cameraManager.getCameraCharacteristics(str);
            } catch (Exception e) {
                this.diagnostics.error("CameraX characteristics unavailable", e);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportError(Exception exc) {
        this.diagnostics.error("CameraX camera error", exc);
        this.callback.onError(exc);
    }

    private static long elapsedMs(long j) {
        return (SystemClock.elapsedRealtimeNanos() - j) / 1000000;
    }
}
