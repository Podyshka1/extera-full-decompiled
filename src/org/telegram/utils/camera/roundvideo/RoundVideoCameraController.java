package org.telegram.utils.camera.roundvideo;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.utils.camera.roundvideo.RoundVideoCodecRecorder;
import org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor;
import org.telegram.utils.camera.roundvideo.RoundVideoSession;

/* JADX INFO: loaded from: classes6.dex */
final class RoundVideoCameraController {
    private volatile boolean active;
    private RoundVideoSession.CameraResolution activeCameraResolution;
    private RoundVideoSession.CameraFacing activeFacing;
    private Range<Integer> activeFpsRange;
    private RoundVideoSession.FrameRate activeFrameRate;
    private final Runnable applyZoomRunnable;
    private volatile boolean awaitingSwitchPreviewFrame;
    private boolean backConfigurationLogged;
    private final Callback callback;
    private CameraDevice cameraDevice;
    private Handler cameraHandler;
    private String cameraId;
    private final CameraManager cameraManager;
    private long cameraOpenRequestedNs;
    private long cameraSwitchStartedNs;
    private HandlerThread cameraThread;
    private final CameraCaptureSession.CaptureCallback captureCallback;
    private long captureCallbackIntervalCount;
    private long captureCallbackIntervalMaximumNs;
    private long captureCallbackIntervalTotalNs;
    private long captureFpsFirstTimestampNs;
    private long captureFpsLastTimestampNs;
    private long captureFrames;
    private long captureLastCallbackNs;
    private long captureSensorGapsOver100Ms;
    private long captureSensorGapsOver50Ms;
    private long captureSensorIntervalCount;
    private long captureSensorIntervalMaximumNs;
    private long captureSensorIntervalMinimumNs;
    private double captureSensorIntervalSquaredTotalNs;
    private long captureSensorIntervalTotalNs;
    private CameraCaptureSession captureSession;
    private long captureSessionRequestedNs;
    private CameraCharacteristics characteristics;
    private RoundVideoCodecRecorder commonStartRecorder;
    private final Runnable commonStartTimeoutRunnable;
    private final boolean compositionEnabled;
    private final Context context;
    private final CameraDevice.StateCallback deviceCallback;
    private final RoundVideoDiagnostics diagnostics;
    private boolean force30Fps;
    private boolean frameRateFallbackAttempted;
    private boolean frameRatePolicyResolved;
    private boolean frontConfigurationLogged;
    private RoundVideoGlProcessor glProcessor;
    private final View.OnLayoutChangeListener layoutChangeListener;
    private boolean notifySwitchCompletion;
    private boolean opening;
    private final RoundVideoSession.OutputResolution outputResolution;
    private final int outputSize;
    private long previewFpsStartedNs;
    private long previewFrames;
    private long previewGapsOver100Ms;
    private long previewGapsOver50Ms;
    private long previewIntervalCount;
    private long previewIntervalMaximumNs;
    private long previewIntervalMinimumNs;
    private double previewIntervalSquaredTotalNs;
    private long previewIntervalTotalNs;
    private long previewLastCallbackNs;
    private long previewLastTimestampNs;
    private final TextureView.SurfaceTextureListener previewListener;
    private Size previewSize;
    private Surface previewSurface;
    private long previewTimestampFirstNs;
    private long previewTimestampFrames;
    private long previewTimestampLastNs;
    private long previewTimestampNonMonotonic;
    private volatile boolean previewTransformEnabled;
    private final TextureView previewView;
    private RoundVideoCodecRecorder recorder;
    private volatile Size recordingSize;
    private Surface recordingSurface;
    private OutputPair regularFallbackPair;
    private boolean reopenAfterCameraClose;
    private CaptureRequest.Builder repeatingBuilder;
    private int requestGeneration;
    private final RoundVideoSession.CameraResolution requestedCameraResolution;
    private volatile RoundVideoSession.CameraFacing requestedFacing;
    private final RoundVideoSession.FrameRate requestedFrameRate;
    private long segmentStartedNs;
    private RoundVideoSession.CameraFacing selectedFacing;
    private final CameraCaptureSession.StateCallback sessionCallback;
    private volatile int sourceCropSize;
    private volatile boolean stopping;
    private boolean switchingCamera;
    private long timelineOffsetUs;
    private boolean torchEnabled;
    private int torchVerificationFrames;
    private int torchVerificationGeneration;
    private boolean torchVerificationPending;
    private int torchVerificationRetries;
    private final int videoBitrate;
    private RoundVideoMp4Writer writer;
    private volatile float zoomProgress;
    private final Rect zoomCropRect = new Rect();
    private float maximumZoomRatio = 1.0f;

    public interface Callback {
        void onCameraSwitchFirstFrame();

        void onCameraSwitchStarted(RoundVideoSession.CameraFacing cameraFacing);

        void onConfigured(CameraInfo cameraInfo, boolean z);

        void onError(Exception exc);

        void onRecordingStarted();

        void onRecordingStopped();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float averageMs(long j, long j2) {
        if (j2 == 0) {
            return 0.0f;
        }
        return (j / j2) / 1000000.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float nanosToMs(long j) {
        return j / 1000000.0f;
    }

    public static final class CameraInfo {
        final RoundVideoSession.CameraResolution cameraResolution;
        final RoundVideoSession.CameraFacing facing;
        final RoundVideoSession.FrameRate frameRate;
        final float maximumZoomRatio;
        final Size previewSize;
        final Size recordingSize;
        final boolean torchAvailable;

        public CameraInfo(RoundVideoSession.CameraFacing cameraFacing, RoundVideoSession.CameraResolution cameraResolution, RoundVideoSession.FrameRate frameRate, Size size, Size size2, float f, boolean z) {
            this.facing = cameraFacing;
            this.cameraResolution = cameraResolution;
            this.frameRate = frameRate;
            this.previewSize = size;
            this.recordingSize = size2;
            this.maximumZoomRatio = f;
            this.torchAvailable = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        updatePreviewTransform();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        RoundVideoCodecRecorder roundVideoCodecRecorder = this.commonStartRecorder;
        if (!this.active || this.stopping || roundVideoCodecRecorder == null || this.recorder != roundVideoCodecRecorder) {
            return;
        }
        this.commonStartRecorder = null;
        reportError(new IllegalStateException("Timed out waiting for synchronized audio and video start"));
    }

    public RoundVideoCameraController(Context context, TextureView textureView, RoundVideoSession.OutputResolution outputResolution, int i, RoundVideoSession.CameraResolution cameraResolution, RoundVideoSession.FrameRate frameRate, boolean z, RoundVideoDiagnostics roundVideoDiagnostics, Callback callback) {
        View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda4
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                this.f$0.lambda$new$0(view, i2, i3, i4, i5, i6, i7, i8, i9);
            }
        };
        this.layoutChangeListener = onLayoutChangeListener;
        this.commonStartTimeoutRunnable = new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        };
        this.applyZoomRunnable = new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.applyRepeatingRequest();
            }
        };
        this.previewListener = new TextureView.SurfaceTextureListener() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
                RoundVideoCameraController.this.diagnostics.log("preview surface available: view=" + i2 + "x" + i3);
                RoundVideoCameraController.this.maybeOpenCamera();
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
                RoundVideoCameraController.this.diagnostics.log("preview surface size changed: view=" + i2 + "x" + i3);
                RoundVideoCameraController.this.updatePreviewTransform();
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                RoundVideoCameraController.this.diagnostics.log("preview surface destroyed: active=" + RoundVideoCameraController.this.active);
                if (!RoundVideoCameraController.this.active) {
                    return true;
                }
                RoundVideoCameraController.this.reportError(new IllegalStateException("Preview SurfaceTexture was destroyed"));
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                if (RoundVideoCameraController.this.awaitingSwitchPreviewFrame) {
                    RoundVideoCameraController.this.awaitingSwitchPreviewFrame = false;
                    RoundVideoCameraController.this.diagnostics.log("camera switch first preview frame");
                    RoundVideoCameraController.this.callback.onCameraSwitchFirstFrame();
                }
                long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                long timestamp = surfaceTexture.getTimestamp();
                if (RoundVideoCameraController.this.previewFpsStartedNs == 0) {
                    RoundVideoCameraController.this.previewFpsStartedNs = jElapsedRealtimeNanos;
                    RoundVideoDiagnostics roundVideoDiagnostics2 = RoundVideoCameraController.this.diagnostics;
                    StringBuilder sb = new StringBuilder("preview frame delivery started: thread=");
                    sb.append(Thread.currentThread().getName());
                    sb.append(", view=");
                    sb.append(RoundVideoCameraController.this.previewView.getWidth());
                    sb.append("x");
                    sb.append(RoundVideoCameraController.this.previewView.getHeight());
                    sb.append(", buffer=");
                    sb.append(RoundVideoCameraController.this.previewSize);
                    sb.append(", attached=");
                    sb.append(RoundVideoCameraController.this.previewView.isAttachedToWindow());
                    sb.append(", shown=");
                    sb.append(RoundVideoCameraController.this.previewView.isShown());
                    sb.append(", alpha=");
                    sb.append(RoundVideoCameraController.this.previewView.getAlpha());
                    sb.append(", hardwareAccelerated=");
                    sb.append(RoundVideoCameraController.this.previewView.isHardwareAccelerated());
                    sb.append(", displayRefreshRate=");
                    sb.append(RoundVideoCameraController.this.previewView.getDisplay() == null ? "unknown" : Float.valueOf(RoundVideoCameraController.this.previewView.getDisplay().getRefreshRate()));
                    roundVideoDiagnostics2.log(sb.toString());
                }
                if (RoundVideoCameraController.this.previewLastCallbackNs != 0) {
                    RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                    roundVideoCameraController.recordPreviewInterval(jElapsedRealtimeNanos - roundVideoCameraController.previewLastCallbackNs);
                }
                RoundVideoCameraController.this.previewLastCallbackNs = jElapsedRealtimeNanos;
                long j = RoundVideoCameraController.this.previewLastTimestampNs;
                RoundVideoCameraController roundVideoCameraController2 = RoundVideoCameraController.this;
                if (timestamp > j) {
                    if (roundVideoCameraController2.previewTimestampFirstNs == 0) {
                        RoundVideoCameraController.this.previewTimestampFirstNs = timestamp;
                    }
                    RoundVideoCameraController.this.previewTimestampLastNs = timestamp;
                    RoundVideoCameraController.this.previewTimestampFrames++;
                } else if (roundVideoCameraController2.previewLastTimestampNs != 0) {
                    RoundVideoCameraController.this.previewTimestampNonMonotonic++;
                }
                RoundVideoCameraController.this.previewLastTimestampNs = timestamp;
                RoundVideoCameraController.this.previewFrames++;
                long j2 = jElapsedRealtimeNanos - RoundVideoCameraController.this.previewFpsStartedNs;
                if (j2 >= 5000000000L) {
                    RoundVideoCameraController.this.logPreviewFrameMetrics(jElapsedRealtimeNanos, j2);
                }
            }
        };
        this.deviceCallback = new CameraDevice.StateCallback() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController.2
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) {
                RoundVideoCameraController.this.opening = false;
                RoundVideoCameraController.this.diagnostics.log("camera opened: id=" + cameraDevice.getId() + ", elapsedMs=" + RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.cameraOpenRequestedNs));
                if (!RoundVideoCameraController.this.active || RoundVideoCameraController.this.switchingCamera) {
                    cameraDevice.close();
                } else {
                    RoundVideoCameraController.this.cameraDevice = cameraDevice;
                    RoundVideoCameraController.this.createCaptureSession();
                }
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                boolean z2 = false;
                RoundVideoCameraController.this.opening = false;
                RoundVideoCameraController.this.diagnostics.log("camera disconnected: id=" + cameraDevice.getId());
                if (RoundVideoCameraController.this.active && !RoundVideoCameraController.this.stopping && !RoundVideoCameraController.this.switchingCamera && !RoundVideoCameraController.this.reopenAfterCameraClose) {
                    z2 = true;
                }
                if (RoundVideoCameraController.this.cameraDevice == cameraDevice) {
                    RoundVideoCameraController.this.closeCaptureSession();
                    RoundVideoCameraController.this.cameraDevice = null;
                }
                cameraDevice.close();
                if (z2) {
                    RoundVideoCameraController.this.reportError(new IllegalStateException("Camera device disconnected"));
                }
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int i2) {
                RoundVideoCameraController.this.opening = false;
                if (RoundVideoCameraController.this.cameraDevice == cameraDevice) {
                    RoundVideoCameraController.this.closeCaptureSession();
                    RoundVideoCameraController.this.cameraDevice = null;
                }
                cameraDevice.close();
                RoundVideoCameraController.this.reportError(new IllegalStateException("Camera device error: " + RoundVideoCameraController.cameraErrorName(i2) + " (" + i2 + ")"));
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onClosed(CameraDevice cameraDevice) {
                boolean z2 = RoundVideoCameraController.this.switchingCamera;
                RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                if (z2) {
                    roundVideoCameraController.switchingCamera = false;
                    if (RoundVideoCameraController.this.active) {
                        RoundVideoCameraController.this.openCameraIfReady();
                        return;
                    }
                    return;
                }
                if (roundVideoCameraController.reopenAfterCameraClose) {
                    RoundVideoCameraController.this.reopenAfterCameraClose = false;
                    if (RoundVideoCameraController.this.active) {
                        RoundVideoCameraController.this.openCameraIfReady();
                    }
                }
            }
        };
        this.sessionCallback = new C64943();
        this.captureCallback = new CameraCaptureSession.CaptureCallback() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController.4
            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                RoundVideoCameraController.this.verifyTorchResult(captureRequest, totalCaptureResult);
                Long l = (Long) totalCaptureResult.get(CaptureResult.SENSOR_TIMESTAMP);
                if (l == null || l.longValue() <= RoundVideoCameraController.this.captureFpsLastTimestampNs) {
                    return;
                }
                long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                long j = RoundVideoCameraController.this.captureFpsFirstTimestampNs;
                RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                if (j == 0) {
                    roundVideoCameraController.captureFpsFirstTimestampNs = l.longValue();
                    RoundVideoCameraController.this.captureFrames = 1L;
                } else {
                    roundVideoCameraController.recordCaptureSensorInterval(l.longValue() - RoundVideoCameraController.this.captureFpsLastTimestampNs);
                    RoundVideoCameraController.this.captureFrames++;
                }
                if (RoundVideoCameraController.this.captureLastCallbackNs != 0) {
                    long j2 = jElapsedRealtimeNanos - RoundVideoCameraController.this.captureLastCallbackNs;
                    RoundVideoCameraController.this.captureCallbackIntervalCount++;
                    RoundVideoCameraController.this.captureCallbackIntervalTotalNs += j2;
                    RoundVideoCameraController roundVideoCameraController2 = RoundVideoCameraController.this;
                    roundVideoCameraController2.captureCallbackIntervalMaximumNs = Math.max(roundVideoCameraController2.captureCallbackIntervalMaximumNs, j2);
                }
                RoundVideoCameraController.this.captureLastCallbackNs = jElapsedRealtimeNanos;
                RoundVideoCameraController.this.captureFpsLastTimestampNs = l.longValue();
                long jLongValue = l.longValue() - RoundVideoCameraController.this.captureFpsFirstTimestampNs;
                if (jLongValue < 3000000000L) {
                    return;
                }
                float f = ((RoundVideoCameraController.this.captureFrames - 1) * 1.0E9f) / jLongValue;
                int value = RoundVideoCameraController.this.activeFrameRate == null ? 0 : RoundVideoCameraController.this.activeFrameRate.getValue();
                RoundVideoDiagnostics roundVideoDiagnostics2 = RoundVideoCameraController.this.diagnostics;
                StringBuilder sb = new StringBuilder("camera capture rate: measuredFps=");
                sb.append(f);
                sb.append(", requestedFps=");
                sb.append(RoundVideoCameraController.this.requestedFrameRate.getValue());
                sb.append(", activeFps=");
                sb.append(value == 0 ? "unknown" : Integer.valueOf(value));
                sb.append(", targetMet=");
                sb.append(value == 0 || f >= ((float) value) * 0.85f);
                sb.append(", fpsRange=");
                sb.append(RoundVideoCameraController.this.activeFpsRange);
                sb.append(", sensorIntervalMs={avg=");
                sb.append(RoundVideoCameraController.averageMs(RoundVideoCameraController.this.captureSensorIntervalTotalNs, RoundVideoCameraController.this.captureSensorIntervalCount));
                sb.append(", min=");
                sb.append(RoundVideoCameraController.nanosToMs(RoundVideoCameraController.this.captureSensorIntervalMinimumNs));
                sb.append(", max=");
                sb.append(RoundVideoCameraController.nanosToMs(RoundVideoCameraController.this.captureSensorIntervalMaximumNs));
                sb.append(", jitter=");
                sb.append(RoundVideoCameraController.standardDeviationMs(RoundVideoCameraController.this.captureSensorIntervalTotalNs, RoundVideoCameraController.this.captureSensorIntervalSquaredTotalNs, RoundVideoCameraController.this.captureSensorIntervalCount));
                sb.append("}, sensorGaps={over50ms=");
                sb.append(RoundVideoCameraController.this.captureSensorGapsOver50Ms);
                sb.append(", over100ms=");
                sb.append(RoundVideoCameraController.this.captureSensorGapsOver100Ms);
                sb.append("}, callbackIntervalMs={avg=");
                sb.append(RoundVideoCameraController.averageMs(RoundVideoCameraController.this.captureCallbackIntervalTotalNs, RoundVideoCameraController.this.captureCallbackIntervalCount));
                sb.append(", max=");
                sb.append(RoundVideoCameraController.nanosToMs(RoundVideoCameraController.this.captureCallbackIntervalMaximumNs));
                sb.append("}");
                roundVideoDiagnostics2.log(sb.toString());
                RoundVideoCameraController.this.resetCaptureFpsMeasurement();
                RoundVideoCameraController.this.captureFpsFirstTimestampNs = l.longValue();
                RoundVideoCameraController.this.captureFpsLastTimestampNs = l.longValue();
                RoundVideoCameraController.this.captureFrames = 1L;
                RoundVideoCameraController.this.captureLastCallbackNs = jElapsedRealtimeNanos;
            }
        };
        this.context = context.getApplicationContext();
        this.cameraManager = (CameraManager) context.getSystemService("camera");
        this.previewView = textureView;
        this.outputResolution = outputResolution;
        this.outputSize = outputResolution.getSize();
        this.videoBitrate = i;
        this.requestedCameraResolution = cameraResolution;
        this.requestedFrameRate = frameRate;
        this.compositionEnabled = z;
        this.diagnostics = roundVideoDiagnostics;
        this.callback = callback;
        textureView.addOnLayoutChangeListener(onLayoutChangeListener);
    }

    public void startSegment(RoundVideoMp4Writer roundVideoMp4Writer, long j, RoundVideoSession.CameraFacing cameraFacing) {
        ensureThread();
        this.writer = roundVideoMp4Writer;
        this.timelineOffsetUs = j;
        this.requestedFacing = cameraFacing;
        this.active = true;
        this.stopping = false;
        this.commonStartRecorder = null;
        this.previewTransformEnabled = true;
        this.segmentStartedNs = SystemClock.elapsedRealtimeNanos();
        resetPreviewFrameMetrics();
        resetCaptureFpsMeasurement();
        this.diagnostics.log("camera segment start: facing=" + cameraFacing + ", timelineOffsetUs=" + j + ", textureAvailable=" + this.previewView.isAvailable());
        this.previewView.setSurfaceTextureListener(this.previewListener);
        maybeOpenCamera();
    }

    public boolean setCameraFacing(final RoundVideoSession.CameraFacing cameraFacing) {
        this.requestedFacing = cameraFacing;
        Handler handler = this.cameraHandler;
        if (!this.active || handler == null) {
            return false;
        }
        handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setCameraFacing$2(cameraFacing);
            }
        });
        return true;
    }

    public boolean setZoom(float f) {
        this.zoomProgress = clamp(f, 0.0f, 1.0f);
        Handler handler = this.cameraHandler;
        if (!this.active || handler == null) {
            return false;
        }
        handler.removeCallbacks(this.applyZoomRunnable);
        handler.post(this.applyZoomRunnable);
        return true;
    }

    public boolean setTorchEnabled(final boolean z) {
        Handler handler = this.cameraHandler;
        if (!this.active || handler == null) {
            return false;
        }
        handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setTorchEnabled$3(z);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTorchEnabled$3(boolean z) {
        this.torchEnabled = z;
        this.torchVerificationPending = isTorchAvailable();
        this.torchVerificationFrames = 0;
        this.torchVerificationRetries = 0;
        this.diagnostics.log("torch requested: enabled=" + z + ", available=" + isTorchAvailable() + ", cameraId=" + this.cameraId + ", facing=" + this.activeFacing);
        applyRepeatingRequest();
    }

    public boolean stopSegment() {
        Handler handler = this.cameraHandler;
        if (!this.active || this.stopping || handler == null) {
            return false;
        }
        this.stopping = true;
        this.previewTransformEnabled = false;
        this.diagnostics.log("camera segment stop requested");
        handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopSegment$4();
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopSegment$4() {
        this.active = false;
        cancelCommonStartWait();
        RoundVideoCodecRecorder roundVideoCodecRecorder = this.recorder;
        if (roundVideoCodecRecorder != null) {
            long jRequestStop = roundVideoCodecRecorder.requestStop();
            RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
            if (roundVideoGlProcessor != null && jRequestStop != LongCompanionObject.MAX_VALUE) {
                roundVideoGlProcessor.stopRecordingAt(jRequestStop);
            }
        }
        closeCameraAndSurfaces();
        RoundVideoCodecRecorder roundVideoCodecRecorder2 = this.recorder;
        if (roundVideoCodecRecorder2 != null) {
            roundVideoCodecRecorder2.stop();
            this.recorder = null;
        }
        this.stopping = false;
        this.callback.onRecordingStopped();
    }

    public void release() {
        this.active = false;
        this.previewView.setSurfaceTextureListener(null);
        this.previewView.removeOnLayoutChangeListener(this.layoutChangeListener);
        Handler handler = this.cameraHandler;
        final HandlerThread handlerThread = this.cameraThread;
        this.cameraHandler = null;
        this.cameraThread = null;
        if (handler == null || handlerThread == null) {
            return;
        }
        handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$release$5(handlerThread);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$5(HandlerThread handlerThread) {
        cancelCommonStartWait();
        RoundVideoCodecRecorder roundVideoCodecRecorder = this.recorder;
        if (roundVideoCodecRecorder != null) {
            long jRequestStop = roundVideoCodecRecorder.requestStop();
            RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
            if (roundVideoGlProcessor != null && jRequestStop != LongCompanionObject.MAX_VALUE) {
                roundVideoGlProcessor.stopRecordingAt(jRequestStop);
            }
        }
        closeCameraAndSurfaces();
        RoundVideoCodecRecorder roundVideoCodecRecorder2 = this.recorder;
        if (roundVideoCodecRecorder2 != null) {
            roundVideoCodecRecorder2.stop();
            this.recorder = null;
        }
        handlerThread.quitSafely();
    }

    private void ensureThread() {
        if (this.cameraThread != null) {
            return;
        }
        HandlerThread handlerThread = new HandlerThread("RoundVideoCamera2");
        this.cameraThread = handlerThread;
        handlerThread.start();
        this.cameraHandler = new Handler(this.cameraThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeOpenCamera() {
        Handler handler = this.cameraHandler;
        if (this.active && handler != null && this.previewView.isAvailable()) {
            handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.openCameraIfReady();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public void openCameraIfReady() {
        if (this.active && !this.opening && this.cameraDevice == null) {
            if (ContextCompat.checkSelfPermission(this.context, "android.permission.CAMERA") != 0) {
                reportError(new SecurityException("Camera permission is not granted"));
                return;
            }
            if (ContextCompat.checkSelfPermission(this.context, "android.permission.RECORD_AUDIO") != 0) {
                reportError(new SecurityException("Audio recording permission is not granted"));
                return;
            }
            try {
                selectCameraAndSizes(this.requestedFacing);
                SurfaceTexture surfaceTexture = this.previewView.getSurfaceTexture();
                if (surfaceTexture == null) {
                    return;
                }
                surfaceTexture.setDefaultBufferSize(this.previewSize.getWidth(), this.previewSize.getHeight());
                if (this.previewSurface == null) {
                    this.previewSurface = new Surface(surfaceTexture);
                }
                if (this.recorder == null) {
                    createRecordingPipeline();
                } else {
                    RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
                    if (roundVideoGlProcessor != null) {
                        roundVideoGlProcessor.updateInputConfiguration(this.recordingSize, this.sourceCropSize, isCameraTimestampRealtime());
                        this.recordingSurface = this.glProcessor.getCameraSurface();
                    }
                }
                this.opening = true;
                this.cameraOpenRequestedNs = SystemClock.elapsedRealtimeNanos();
                this.diagnostics.log("camera open requested: id=" + this.cameraId + ", preview=" + this.previewSize + ", recording=" + this.recordingSize + ", crop=" + this.sourceCropSize);
                this.cameraManager.openCamera(this.cameraId, this.deviceCallback, this.cameraHandler);
            } catch (Exception e) {
                this.opening = false;
                reportError(e);
            }
        }
    }

    private void createRecordingPipeline() {
        RoundVideoMp4Writer roundVideoMp4Writer = this.writer;
        long j = this.timelineOffsetUs;
        int i = this.outputSize;
        int i2 = this.videoBitrate;
        int value = this.activeFrameRate.getValue();
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        final Callback callback = this.callback;
        Objects.requireNonNull(callback);
        RoundVideoCodecRecorder roundVideoCodecRecorder = new RoundVideoCodecRecorder(roundVideoMp4Writer, j, i, i2, value, roundVideoDiagnostics, new RoundVideoCodecRecorder.ErrorListener() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda13
            @Override // org.telegram.utils.camera.roundvideo.RoundVideoCodecRecorder.ErrorListener
            public final void onError(Exception exc) {
                callback.onError(exc);
            }
        });
        this.recorder = roundVideoCodecRecorder;
        Surface surfacePrepare = roundVideoCodecRecorder.prepare();
        Size size = this.recordingSize;
        int i3 = this.outputSize;
        int i4 = this.sourceCropSize;
        boolean zIsCameraTimestampRealtime = isCameraTimestampRealtime();
        boolean z = this.compositionEnabled;
        RoundVideoDiagnostics roundVideoDiagnostics2 = this.diagnostics;
        RoundVideoCodecRecorder roundVideoCodecRecorder2 = this.recorder;
        final Callback callback2 = this.callback;
        Objects.requireNonNull(callback2);
        RoundVideoGlProcessor roundVideoGlProcessor = new RoundVideoGlProcessor(size, surfacePrepare, i3, i4, zIsCameraTimestampRealtime, z, roundVideoDiagnostics2, 0L, roundVideoCodecRecorder2, new RoundVideoGlProcessor.ErrorListener() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda14
            @Override // org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor.ErrorListener
            public final void onError(Exception exc) {
                callback2.onError(exc);
            }
        });
        this.glProcessor = roundVideoGlProcessor;
        roundVideoGlProcessor.setFirstFrameListener(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createRecordingPipeline$6();
            }
        });
        this.recordingSurface = this.glProcessor.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createRecordingPipeline$6() {
        Handler handler = this.cameraHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.startRecordingAfterFirstFrame();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: switchCameraIfNeeded, reason: merged with bridge method [inline-methods] */
    public void lambda$setCameraFacing$2(RoundVideoSession.CameraFacing cameraFacing) {
        if (!this.active || this.switchingCamera || cameraFacing == this.activeFacing) {
            return;
        }
        this.switchingCamera = true;
        this.notifySwitchCompletion = true;
        this.torchEnabled = false;
        this.torchVerificationPending = false;
        this.zoomProgress = 0.0f;
        this.callback.onCameraSwitchStarted(cameraFacing);
        this.cameraSwitchStartedNs = SystemClock.elapsedRealtimeNanos();
        this.diagnostics.log("camera device switch started: from=" + this.activeFacing + ", to=" + cameraFacing);
        RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
        if (roundVideoGlProcessor != null) {
            roundVideoGlProcessor.beginCameraSwitch(this.activeFacing, cameraFacing);
        }
        closeCaptureSession();
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null) {
            this.cameraDevice = null;
            cameraDevice.close();
        } else {
            if (this.opening) {
                return;
            }
            this.switchingCamera = false;
            openCameraIfReady();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createCaptureSession() {
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice == null || this.previewSurface == null || this.recordingSurface == null) {
            return;
        }
        try {
            this.captureSessionRequestedNs = SystemClock.elapsedRealtimeNanos();
            this.diagnostics.log("capture session requested: preview=" + this.previewSize + ", recording=" + this.recordingSize + ", fpsRange=" + this.activeFpsRange);
            cameraDevice.createCaptureSession(Arrays.asList(this.previewSurface, this.recordingSurface), this.sessionCallback, this.cameraHandler);
        } catch (CameraAccessException | IllegalArgumentException e) {
            if (this.activeFrameRate == RoundVideoSession.FrameRate.FPS_60) {
                fallbackTo30Fps("60 fps session creation rejected", e);
            } else {
                reportError(e);
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$3 */
    public class C64943 extends CameraCaptureSession.StateCallback {
        public C64943() {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            String str;
            if (!RoundVideoCameraController.this.active || RoundVideoCameraController.this.cameraDevice == null) {
                cameraCaptureSession.close();
                return;
            }
            RoundVideoCameraController.this.captureSession = cameraCaptureSession;
            try {
                RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                roundVideoCameraController.activeFacing = roundVideoCameraController.selectedFacing;
                RoundVideoCameraController roundVideoCameraController2 = RoundVideoCameraController.this;
                roundVideoCameraController2.repeatingBuilder = roundVideoCameraController2.createRepeatingRequestBuilder(true);
                if (RoundVideoCameraController.this.glProcessor != null) {
                    RoundVideoCameraController.this.glProcessor.onCameraSessionConfigured();
                }
                boolean z = RoundVideoCameraController.this.notifySwitchCompletion;
                RoundVideoCameraController.this.notifySwitchCompletion = false;
                RoundVideoCameraController.this.awaitingSwitchPreviewFrame = z;
                RoundVideoCameraController.this.submitRepeatingRequest();
                RoundVideoDiagnostics roundVideoDiagnostics = RoundVideoCameraController.this.diagnostics;
                StringBuilder sb = new StringBuilder("capture session configured: facing=");
                sb.append(RoundVideoCameraController.this.activeFacing);
                sb.append(", fpsRange=");
                sb.append(RoundVideoCameraController.this.activeFpsRange);
                sb.append(", elapsedMs=");
                sb.append(RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.captureSessionRequestedNs));
                sb.append(", segmentElapsedMs=");
                sb.append(RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.segmentStartedNs));
                if (z) {
                    str = ", switchElapsedMs=" + RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.cameraSwitchStartedNs);
                } else {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                sb.append(str);
                roundVideoDiagnostics.log(sb.toString());
                TextureView textureView = RoundVideoCameraController.this.previewView;
                final RoundVideoCameraController roundVideoCameraController3 = RoundVideoCameraController.this;
                textureView.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        roundVideoCameraController3.updatePreviewTransform();
                    }
                });
                RoundVideoCameraController.this.callback.onConfigured(new CameraInfo(RoundVideoCameraController.this.activeFacing, RoundVideoCameraController.this.activeCameraResolution, RoundVideoCameraController.this.activeFrameRate, RoundVideoCameraController.this.previewSize, RoundVideoCameraController.this.recordingSize, RoundVideoCameraController.this.maximumZoomRatio, RoundVideoCameraController.this.isTorchAvailable()), z);
                if (RoundVideoCameraController.this.requestedFacing != RoundVideoCameraController.this.activeFacing) {
                    RoundVideoCameraController roundVideoCameraController4 = RoundVideoCameraController.this;
                    roundVideoCameraController4.lambda$setCameraFacing$2(roundVideoCameraController4.requestedFacing);
                }
            } catch (Exception e) {
                RoundVideoSession.FrameRate frameRate = RoundVideoCameraController.this.activeFrameRate;
                RoundVideoSession.FrameRate frameRate2 = RoundVideoSession.FrameRate.FPS_60;
                RoundVideoCameraController roundVideoCameraController5 = RoundVideoCameraController.this;
                if (frameRate == frameRate2) {
                    roundVideoCameraController5.fallbackTo30Fps("60 fps request submission rejected", e);
                } else {
                    roundVideoCameraController5.reportError(e);
                }
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            cameraCaptureSession.close();
            if (RoundVideoCameraController.this.captureSession == cameraCaptureSession) {
                RoundVideoCameraController.this.captureSession = null;
                RoundVideoCameraController.this.repeatingBuilder = null;
            }
            if (!RoundVideoCameraController.this.active || RoundVideoCameraController.this.cameraDevice == null || RoundVideoCameraController.this.switchingCamera || RoundVideoCameraController.this.stopping) {
                RoundVideoCameraController.this.diagnostics.log("stale capture session configuration failure ignored");
                return;
            }
            RoundVideoSession.FrameRate frameRate = RoundVideoCameraController.this.activeFrameRate;
            RoundVideoSession.FrameRate frameRate2 = RoundVideoSession.FrameRate.FPS_60;
            RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
            if (frameRate == frameRate2) {
                roundVideoCameraController.fallbackTo30Fps("60 fps session configuration failed", null);
            } else {
                roundVideoCameraController.reportError(new IllegalStateException("Camera capture session configuration failed"));
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onClosed(CameraCaptureSession cameraCaptureSession) {
            if (RoundVideoCameraController.this.captureSession != cameraCaptureSession) {
                return;
            }
            RoundVideoCameraController.this.captureSession = null;
            RoundVideoCameraController.this.repeatingBuilder = null;
            RoundVideoCameraController.this.torchVerificationPending = false;
            RoundVideoCameraController.this.diagnostics.log("capture session closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRecordingAfterFirstFrame() {
        RoundVideoCodecRecorder roundVideoCodecRecorder;
        if (!this.active || this.captureSession == null || (roundVideoCodecRecorder = this.recorder) == null || roundVideoCodecRecorder.isStarted()) {
            return;
        }
        try {
            final RoundVideoCodecRecorder roundVideoCodecRecorder2 = this.recorder;
            this.commonStartRecorder = roundVideoCodecRecorder2;
            Handler handler = this.cameraHandler;
            if (handler != null) {
                handler.removeCallbacks(this.commonStartTimeoutRunnable);
                handler.postDelayed(this.commonStartTimeoutRunnable, 3000L);
            }
            roundVideoCodecRecorder2.startRecording(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startRecordingAfterFirstFrame$8(roundVideoCodecRecorder2);
                }
            }, new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startRecordingAfterFirstFrame$10(roundVideoCodecRecorder2);
                }
            });
            this.diagnostics.log("first camera frame received; audio startup requested: segmentElapsedMs=" + elapsedMs(this.segmentStartedNs));
        } catch (RuntimeException e) {
            cancelCommonStartWait();
            reportError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecordingAfterFirstFrame$8(final RoundVideoCodecRecorder roundVideoCodecRecorder) {
        postToCameraThread(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startRecordingAfterFirstFrame$7(roundVideoCodecRecorder);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecordingAfterFirstFrame$10(final RoundVideoCodecRecorder roundVideoCodecRecorder) {
        postToCameraThread(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startRecordingAfterFirstFrame$9(roundVideoCodecRecorder);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startVideoAfterAudioReady, reason: merged with bridge method [inline-methods] */
    public void lambda$startRecordingAfterFirstFrame$7(RoundVideoCodecRecorder roundVideoCodecRecorder) {
        RoundVideoGlProcessor roundVideoGlProcessor;
        if (!this.active || this.stopping || this.recorder != roundVideoCodecRecorder || this.captureSession == null || (roundVideoGlProcessor = this.glProcessor) == null) {
            return;
        }
        try {
            roundVideoGlProcessor.startRecording(roundVideoCodecRecorder.getTimeOriginNs());
            this.diagnostics.log("common A/V start armed; waiting for next camera frame: segmentElapsedMs=" + elapsedMs(this.segmentStartedNs));
        } catch (RuntimeException e) {
            cancelCommonStartWait();
            reportError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: announceRecordingStarted, reason: merged with bridge method [inline-methods] */
    public void lambda$startRecordingAfterFirstFrame$9(RoundVideoCodecRecorder roundVideoCodecRecorder) {
        if (this.active && !this.stopping && this.recorder == roundVideoCodecRecorder) {
            cancelCommonStartWait();
            this.diagnostics.log("common A/V start completed: segmentElapsedMs=" + elapsedMs(this.segmentStartedNs));
            this.callback.onRecordingStarted();
        }
    }

    private void postToCameraThread(Runnable runnable) {
        Handler handler = this.cameraHandler;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    private void cancelCommonStartWait() {
        Handler handler = this.cameraHandler;
        if (handler != null) {
            handler.removeCallbacks(this.commonStartTimeoutRunnable);
        }
        this.commonStartRecorder = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void applyRepeatingRequest() {
        CameraCaptureSession cameraCaptureSession = this.captureSession;
        if (!this.active || cameraCaptureSession == null || this.cameraDevice == null) {
            return;
        }
        try {
            this.repeatingBuilder = createRepeatingRequestBuilder(false);
            submitRepeatingRequest();
        } catch (CameraAccessException e) {
            e = e;
            if (this.activeFrameRate != RoundVideoSession.FrameRate.FPS_60) {
                fallbackTo30Fps("60 fps updated request rejected", e);
            } else {
                reportError(e);
            }
        } catch (IllegalArgumentException e2) {
            e = e2;
            if (this.activeFrameRate != RoundVideoSession.FrameRate.FPS_60) {
            }
        } catch (IllegalStateException e3) {
            recoverFromClosedCamera(cameraCaptureSession, e3);
        }
    }

    private void recoverFromClosedCamera(CameraCaptureSession cameraCaptureSession, IllegalStateException illegalStateException) {
        if (!this.active || this.stopping || cameraCaptureSession != this.captureSession) {
            this.diagnostics.log("stale repeating request rejection ignored: " + illegalStateException.getMessage());
            return;
        }
        this.diagnostics.log("repeating request rejected by closed camera; reopening device: " + illegalStateException.getMessage());
        closeCaptureSession();
        CameraDevice cameraDevice = this.cameraDevice;
        this.cameraDevice = null;
        this.opening = false;
        if (cameraDevice != null) {
            this.reopenAfterCameraClose = true;
            cameraDevice.close();
        } else {
            openCameraIfReady();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CaptureRequest.Builder createRepeatingRequestBuilder(boolean z) throws CameraAccessException {
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice == null || this.previewSurface == null || this.recordingSurface == null) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Camera request surfaces are unavailable");
            return null;
        }
        CaptureRequest.Builder builderCreateCaptureRequest = cameraDevice.createCaptureRequest(3);
        builderCreateCaptureRequest.addTarget(this.previewSurface);
        builderCreateCaptureRequest.addTarget(this.recordingSurface);
        builderCreateCaptureRequest.set(CaptureRequest.CONTROL_MODE, 1);
        builderCreateCaptureRequest.set(CaptureRequest.CONTROL_CAPTURE_INTENT, 3);
        setContinuousVideoAf(builderCreateCaptureRequest);
        setPreferredFps(builderCreateCaptureRequest, z);
        applyZoom(builderCreateCaptureRequest);
        applyTorch(builderCreateCaptureRequest);
        int i = this.requestGeneration + 1;
        this.requestGeneration = i;
        builderCreateCaptureRequest.setTag(Integer.valueOf(i));
        if (this.torchVerificationPending) {
            this.torchVerificationGeneration = this.requestGeneration;
        }
        return builderCreateCaptureRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void submitRepeatingRequest() throws CameraAccessException {
        CameraCaptureSession cameraCaptureSession = this.captureSession;
        CaptureRequest.Builder builder = this.repeatingBuilder;
        if (cameraCaptureSession == null || builder == null) {
            return;
        }
        cameraCaptureSession.setRepeatingRequest(builder.build(), this.captureCallback, this.cameraHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void verifyTorchResult(CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        int i;
        if (this.torchVerificationPending) {
            Object tag = captureRequest.getTag();
            if ((tag instanceof Integer) && ((Integer) tag).intValue() == this.torchVerificationGeneration) {
                this.torchVerificationFrames++;
                Integer num = (Integer) totalCaptureResult.get(CaptureResult.FLASH_MODE);
                Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.FLASH_STATE);
                boolean z = !this.torchEnabled ? !(num == null || num.intValue() == 0) : !(num != null && num.intValue() == 2);
                boolean z2 = !this.torchEnabled || num2 == null || num2.intValue() == 3 || num2.intValue() == 4;
                if (z && z2) {
                    this.diagnostics.log("torch result confirmed: enabled=" + this.torchEnabled + ", resultMode=" + num + ", flashState=" + num2 + ", frames=" + this.torchVerificationFrames + ", retries=" + this.torchVerificationRetries);
                    this.torchVerificationPending = false;
                    return;
                }
                int i2 = this.torchVerificationFrames;
                if (i2 == 3 && (i = this.torchVerificationRetries) == 0) {
                    this.torchVerificationRetries = i + 1;
                    this.torchVerificationFrames = 0;
                    this.diagnostics.log("torch result not applied; rebuilding request: enabled=" + this.torchEnabled + ", resultMode=" + num + ", flashState=" + num2);
                    applyRepeatingRequest();
                    return;
                }
                if (i2 >= 6) {
                    this.diagnostics.log("torch result failed: enabled=" + this.torchEnabled + ", resultMode=" + num + ", flashState=" + num2 + ", retries=" + this.torchVerificationRetries);
                    this.torchVerificationPending = false;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recordPreviewInterval(long j) {
        this.previewIntervalCount++;
        this.previewIntervalTotalNs += j;
        double d = j;
        this.previewIntervalSquaredTotalNs += d * d;
        long j2 = this.previewIntervalMinimumNs;
        if (j2 == 0 || j < j2) {
            this.previewIntervalMinimumNs = j;
        }
        this.previewIntervalMaximumNs = Math.max(this.previewIntervalMaximumNs, j);
        if (j > 50000000) {
            this.previewGapsOver50Ms++;
        }
        if (j > 100000000) {
            this.previewGapsOver100Ms++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void logPreviewFrameMetrics(long j, long j2) {
        float f;
        long j3 = this.previewTimestampLastNs - this.previewTimestampFirstNs;
        if (j3 > 0) {
            f = this.previewTimestampFrames > 1 ? ((r4 - 1) * 1.0E9f) / j3 : 0.0f;
        }
        this.diagnostics.log("preview frame delivery: callbackFps=" + ((this.previewFrames * 1.0E9f) / j2) + ", timestampFps=" + f + ", callbackIntervalMs={avg=" + averageMs(this.previewIntervalTotalNs, this.previewIntervalCount) + ", min=" + nanosToMs(this.previewIntervalMinimumNs) + ", max=" + nanosToMs(this.previewIntervalMaximumNs) + ", jitter=" + standardDeviationMs(this.previewIntervalTotalNs, this.previewIntervalSquaredTotalNs, this.previewIntervalCount) + "}, gaps={over50ms=" + this.previewGapsOver50Ms + ", over100ms=" + this.previewGapsOver100Ms + "}, nonMonotonicTimestamps=" + this.previewTimestampNonMonotonic + ", viewState={shown=" + this.previewView.isShown() + ", alpha=" + this.previewView.getAlpha() + ", windowVisibility=" + this.previewView.getWindowVisibility() + "}");
        resetPreviewFrameMetrics();
        this.previewFpsStartedNs = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recordCaptureSensorInterval(long j) {
        this.captureSensorIntervalCount++;
        this.captureSensorIntervalTotalNs += j;
        double d = j;
        this.captureSensorIntervalSquaredTotalNs += d * d;
        long j2 = this.captureSensorIntervalMinimumNs;
        if (j2 == 0 || j < j2) {
            this.captureSensorIntervalMinimumNs = j;
        }
        this.captureSensorIntervalMaximumNs = Math.max(this.captureSensorIntervalMaximumNs, j);
        if (j > 50000000) {
            this.captureSensorGapsOver50Ms++;
        }
        if (j > 100000000) {
            this.captureSensorGapsOver100Ms++;
        }
    }

    private void resetPreviewFrameMetrics() {
        this.previewFpsStartedNs = 0L;
        this.previewFrames = 0L;
        this.previewLastCallbackNs = 0L;
        this.previewLastTimestampNs = 0L;
        this.previewIntervalCount = 0L;
        this.previewIntervalTotalNs = 0L;
        this.previewIntervalSquaredTotalNs = 0.0d;
        this.previewIntervalMinimumNs = 0L;
        this.previewIntervalMaximumNs = 0L;
        this.previewGapsOver50Ms = 0L;
        this.previewGapsOver100Ms = 0L;
        this.previewTimestampFrames = 0L;
        this.previewTimestampFirstNs = 0L;
        this.previewTimestampLastNs = 0L;
        this.previewTimestampNonMonotonic = 0L;
    }

    private void applyZoom(CaptureRequest.Builder builder) {
        float f = (this.zoomProgress * (this.maximumZoomRatio - 1.0f)) + 1.0f;
        if (Build.VERSION.SDK_INT >= 30) {
            CameraCharacteristics cameraCharacteristics = this.characteristics;
            Range range = cameraCharacteristics == null ? null : (Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE);
            if (range != null) {
                builder.set(CaptureRequest.CONTROL_ZOOM_RATIO, Float.valueOf(clamp(f, ((Float) range.getLower()).floatValue(), ((Float) range.getUpper()).floatValue())));
                return;
            }
        }
        CameraCharacteristics cameraCharacteristics2 = this.characteristics;
        Rect rect = cameraCharacteristics2 != null ? (Rect) cameraCharacteristics2.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE) : null;
        if (rect == null) {
            return;
        }
        int iMax = Math.max(1, Math.round(rect.width() / f));
        int iMax2 = Math.max(1, Math.round(rect.height() / f));
        int iCenterX = rect.centerX() - (iMax / 2);
        int iCenterY = rect.centerY() - (iMax2 / 2);
        this.zoomCropRect.set(iCenterX, iCenterY, iMax + iCenterX, iMax2 + iCenterY);
        builder.set(CaptureRequest.SCALER_CROP_REGION, this.zoomCropRect);
    }

    private void applyTorch(CaptureRequest.Builder builder) {
        boolean z = this.torchEnabled && isTorchAvailable();
        CameraCharacteristics cameraCharacteristics = this.characteristics;
        if (contains(cameraCharacteristics == null ? null : (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES), 1)) {
            builder.set(CaptureRequest.CONTROL_AE_MODE, 1);
        }
        CaptureRequest.Key key = CaptureRequest.FLASH_MODE;
        builder.set(key, Integer.valueOf(z ? 2 : 0));
        if (this.torchVerificationPending) {
            this.diagnostics.log("torch request configured: requested=" + this.torchEnabled + ", applied=" + z + ", aeMode=" + builder.get(CaptureRequest.CONTROL_AE_MODE) + ", flashMode=" + builder.get(key) + ", cameraId=" + this.cameraId);
        }
    }

    private void selectCameraAndSizes(RoundVideoSession.CameraFacing cameraFacing) throws CameraAccessException {
        String str;
        int i;
        String[] strArr;
        String str2;
        String str3;
        FrameRatePlan frameRatePlanResolveFrameRate;
        CameraCandidate cameraCandidate;
        RoundVideoDiagnostics roundVideoDiagnostics;
        StringBuilder sb;
        resolveSessionFrameRatePolicy();
        int i2 = cameraFacing == RoundVideoSession.CameraFacing.FRONT ? 0 : 1;
        String[] cameraIdList = this.cameraManager.getCameraIdList();
        int length = cameraIdList.length;
        CameraCandidate cameraCandidate2 = null;
        CameraCandidate cameraCandidate3 = null;
        int i3 = 0;
        while (i3 < length) {
            String str4 = cameraIdList[i3];
            CameraCharacteristics cameraCharacteristics = this.cameraManager.getCameraCharacteristics(str4);
            Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
            if (num == null || num.intValue() != i2) {
                i = i2;
                strArr = cameraIdList;
            } else {
                StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                if (streamConfigurationMap == null) {
                    this.diagnostics.log("camera candidate rejected: id=" + str4 + ", reason=no stream map");
                    i = i2;
                    strArr = cameraIdList;
                } else {
                    Size[] outputSizes = streamConfigurationMap.getOutputSizes(SurfaceTexture.class);
                    if (outputSizes != null) {
                        if (outputSizes.length == 0) {
                            str4 = str4;
                            i = i2;
                            strArr = cameraIdList;
                            this.diagnostics.log("camera candidate rejected: id=" + str4 + ", reason=no SurfaceTexture outputs");
                        } else {
                            try {
                                OutputPair outputPairChooseOutputPair = chooseOutputPair(outputSizes, this.outputResolution, this.requestedCameraResolution);
                                i = i2;
                                str2 = str4;
                                str3 = "camera candidate rejected: id=";
                                try {
                                    frameRatePlanResolveFrameRate = resolveFrameRate(str2, cameraCharacteristics, streamConfigurationMap, outputSizes, outputPairChooseOutputPair);
                                    try {
                                        cameraCandidate = new CameraCandidate(str2, cameraCharacteristics, outputSizes, outputPairChooseOutputPair, frameRatePlanResolveFrameRate);
                                        str2 = str2;
                                        roundVideoDiagnostics = this.diagnostics;
                                        sb = new StringBuilder();
                                        strArr = cameraIdList;
                                    } catch (RuntimeException e) {
                                        e = e;
                                        strArr = cameraIdList;
                                        str2 = str2;
                                    }
                                } catch (RuntimeException e2) {
                                    e = e2;
                                    strArr = cameraIdList;
                                }
                            } catch (RuntimeException e3) {
                                e = e3;
                                i = i2;
                                strArr = cameraIdList;
                                str2 = str4;
                                str3 = "camera candidate rejected: id=";
                            }
                            try {
                                sb.append("camera candidate accepted: id=");
                                sb.append(str2);
                                sb.append(", facing=");
                                sb.append(cameraFacing);
                                sb.append(", flashAvailable=");
                                sb.append(hasFlashUnit(cameraCharacteristics));
                                sb.append(", fps=");
                                sb.append(frameRatePlanResolveFrameRate.frameRate.getValue());
                                sb.append(", preview=");
                                sb.append(frameRatePlanResolveFrameRate.outputPair.preview);
                                sb.append(", recording=");
                                sb.append(frameRatePlanResolveFrameRate.outputPair.recording);
                                roundVideoDiagnostics.log(sb.toString());
                                if (cameraCandidate3 == null || isPreferredCameraCandidate(cameraCandidate, cameraCandidate3, cameraFacing)) {
                                    cameraCandidate3 = cameraCandidate;
                                }
                                RoundVideoSession.FrameRate frameRate = this.requestedFrameRate;
                                if ((frameRate == RoundVideoSession.FrameRate.FPS_30 || frameRatePlanResolveFrameRate.frameRate == frameRate) && (cameraCandidate2 == null || isPreferredCameraCandidate(cameraCandidate, cameraCandidate2, cameraFacing))) {
                                    cameraCandidate2 = cameraCandidate;
                                }
                            } catch (RuntimeException e4) {
                                e = e4;
                                this.diagnostics.log(str3 + str2 + ", reason=" + e);
                            }
                        }
                    } else {
                        i = i2;
                        strArr = cameraIdList;
                        this.diagnostics.log("camera candidate rejected: id=" + str4 + ", reason=no SurfaceTexture outputs");
                    }
                }
            }
            i3++;
            cameraIdList = strArr;
            i2 = i;
        }
        if (cameraCandidate2 == null) {
            cameraCandidate2 = cameraCandidate3;
        }
        if (cameraCandidate2 == null) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Requested camera is not available");
            return;
        }
        String str5 = cameraCandidate2.id;
        CameraCharacteristics cameraCharacteristics2 = cameraCandidate2.characteristics;
        Size[] sizeArr = cameraCandidate2.sizes;
        OutputPair outputPair = cameraCandidate2.regularPair;
        FrameRatePlan frameRatePlan = cameraCandidate2.frameRatePlan;
        OutputPair outputPair2 = frameRatePlan.outputPair;
        this.cameraId = str5;
        this.selectedFacing = cameraFacing;
        this.characteristics = cameraCharacteristics2;
        this.activeFrameRate = frameRatePlan.frameRate;
        this.activeFpsRange = frameRatePlan.fpsRange;
        this.frameRateFallbackAttempted = false;
        this.regularFallbackPair = outputPair;
        resetCaptureFpsMeasurement();
        this.previewSize = outputPair2.preview;
        this.recordingSize = outputPair2.recording;
        this.sourceCropSize = outputPair2.cropSize;
        this.activeCameraResolution = outputPair2.cameraResolution;
        this.maximumZoomRatio = readMaximumZoomRatio(cameraCharacteristics2);
        long minimumFrameDurationNs = getMinimumFrameDurationNs(cameraCharacteristics2, this.previewSize);
        long minimumFrameDurationNs2 = getMinimumFrameDurationNs(cameraCharacteristics2, this.recordingSize);
        RoundVideoDiagnostics roundVideoDiagnostics2 = this.diagnostics;
        StringBuilder sb2 = new StringBuilder("camera outputs selected: output=");
        sb2.append(this.outputSize);
        sb2.append("x");
        sb2.append(this.outputSize);
        sb2.append(", cameraMode=");
        sb2.append(this.activeCameraResolution);
        RoundVideoSession.CameraResolution cameraResolution = this.activeCameraResolution;
        RoundVideoSession.CameraResolution cameraResolution2 = this.requestedCameraResolution;
        String str6 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (cameraResolution != cameraResolution2) {
            str = " (fallback from " + this.requestedCameraResolution + ")";
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        sb2.append(str);
        sb2.append(", crop=");
        sb2.append(this.sourceCropSize);
        sb2.append(", preview=");
        sb2.append(this.previewSize);
        sb2.append(", recording=");
        sb2.append(this.recordingSize);
        sb2.append(", previewMinFrameDurationNs=");
        sb2.append(minimumFrameDurationNs);
        sb2.append(", recordingMinFrameDurationNs=");
        sb2.append(minimumFrameDurationNs2);
        sb2.append(", fps=");
        sb2.append(this.activeFrameRate.getValue());
        sb2.append(", fpsRange=");
        sb2.append(this.activeFpsRange);
        sb2.append(", timestampSource=");
        sb2.append(isCameraTimestampRealtime() ? "REALTIME" : "UNKNOWN");
        if (this.activeFrameRate != this.requestedFrameRate) {
            str6 = " (fallback from " + this.requestedFrameRate.getValue() + ")";
        }
        sb2.append(str6);
        roundVideoDiagnostics2.log(sb2.toString());
        logCameraConfigurationOnce(cameraFacing, str5, cameraCharacteristics2, sizeArr);
    }

    private void resolveSessionFrameRatePolicy() throws CameraAccessException {
        if (this.frameRatePolicyResolved) {
            return;
        }
        boolean z = true;
        this.frameRatePolicyResolved = true;
        if (this.requestedFrameRate != RoundVideoSession.FrameRate.FPS_60) {
            return;
        }
        boolean zSupports60FpsForFacing = supports60FpsForFacing(RoundVideoSession.CameraFacing.FRONT);
        boolean zSupports60FpsForFacing2 = supports60FpsForFacing(RoundVideoSession.CameraFacing.BACK);
        if (zSupports60FpsForFacing && zSupports60FpsForFacing2) {
            z = false;
        }
        this.force30Fps = z;
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        StringBuilder sb = new StringBuilder("60 fps session capability: front=");
        sb.append(zSupports60FpsForFacing);
        sb.append(", back=");
        sb.append(zSupports60FpsForFacing2);
        sb.append(", selected=");
        sb.append(this.force30Fps ? 30 : 60);
        roundVideoDiagnostics.log(sb.toString());
    }

    private boolean supports60FpsForFacing(RoundVideoSession.CameraFacing cameraFacing) throws CameraAccessException {
        RoundVideoCameraController roundVideoCameraController;
        StreamConfigurationMap streamConfigurationMap;
        Size[] outputSizes;
        int i = cameraFacing == RoundVideoSession.CameraFacing.FRONT ? 0 : 1;
        String[] cameraIdList = this.cameraManager.getCameraIdList();
        int length = cameraIdList.length;
        int i2 = 0;
        while (i2 < length) {
            String str = cameraIdList[i2];
            CameraCharacteristics cameraCharacteristics = this.cameraManager.getCameraCharacteristics(str);
            Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
            if (num == null || num.intValue() != i || (streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)) == null || (outputSizes = streamConfigurationMap.getOutputSizes(SurfaceTexture.class)) == null || outputSizes.length == 0) {
                roundVideoCameraController = this;
            } else {
                try {
                    roundVideoCameraController = this;
                    try {
                        if (roundVideoCameraController.resolveFrameRate(str, cameraCharacteristics, streamConfigurationMap, outputSizes, chooseOutputPair(outputSizes, this.outputResolution, this.requestedCameraResolution)).frameRate == RoundVideoSession.FrameRate.FPS_60) {
                            return true;
                        }
                    } catch (RuntimeException unused) {
                        continue;
                    }
                } catch (RuntimeException unused2) {
                    roundVideoCameraController = this;
                }
            }
            i2++;
            this = roundVideoCameraController;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private float readMaximumZoomRatio(CameraCharacteristics cameraCharacteristics) {
        float fFloatValue;
        if (Build.VERSION.SDK_INT >= 30) {
            Range range = (Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE);
            fFloatValue = range != null ? ((Float) range.getUpper()).floatValue() : 1.0f;
        } else {
            Float f = (Float) cameraCharacteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
            if (f != null) {
                fFloatValue = f.floatValue();
            }
        }
        return clamp(fFloatValue, 1.0f, 4.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isTorchAvailable() {
        CameraCharacteristics cameraCharacteristics;
        return this.activeFacing == RoundVideoSession.CameraFacing.BACK && (cameraCharacteristics = this.characteristics) != null && hasFlashUnit(cameraCharacteristics);
    }

    private boolean isCameraTimestampRealtime() {
        Integer num;
        CameraCharacteristics cameraCharacteristics = this.characteristics;
        return (cameraCharacteristics == null || (num = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE)) == null || num.intValue() != 1) ? false : true;
    }

    private static boolean isPreferredCameraCandidate(CameraCandidate cameraCandidate, CameraCandidate cameraCandidate2, RoundVideoSession.CameraFacing cameraFacing) {
        return cameraFacing == RoundVideoSession.CameraFacing.BACK && hasFlashUnit(cameraCandidate.characteristics) && !hasFlashUnit(cameraCandidate2.characteristics);
    }

    private static boolean hasFlashUnit(CameraCharacteristics cameraCharacteristics) {
        return Boolean.TRUE.equals(cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE));
    }

    private void setContinuousVideoAf(CaptureRequest.Builder builder) {
        CameraCharacteristics cameraCharacteristics = this.characteristics;
        if (contains(cameraCharacteristics == null ? null : (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES), 3)) {
            builder.set(CaptureRequest.CONTROL_AF_MODE, 3);
        }
    }

    private FrameRatePlan resolveFrameRate(String str, CameraCharacteristics cameraCharacteristics, StreamConfigurationMap streamConfigurationMap, Size[] sizeArr, OutputPair outputPair) {
        Range[] rangeArr = (Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        RoundVideoSession.FrameRate frameRate = this.requestedFrameRate;
        RoundVideoSession.FrameRate frameRate2 = RoundVideoSession.FrameRate.FPS_30;
        if (frameRate == frameRate2 || this.force30Fps) {
            Range<Integer> rangeFindBestFpsRange = findBestFpsRange(rangeArr, 30);
            RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
            StringBuilder sb = new StringBuilder("fps selection: id=");
            sb.append(str);
            sb.append(", requested=");
            sb.append(this.requestedFrameRate.getValue());
            sb.append(", mode=REGULAR, range=");
            sb.append(rangeFindBestFpsRange);
            sb.append(this.force30Fps ? ", reason=session-wide fallback" : _UrlKt.FRAGMENT_ENCODE_SET);
            roundVideoDiagnostics.log(sb.toString());
            return new FrameRatePlan(frameRate2, rangeFindBestFpsRange, outputPair);
        }
        int value = frameRate.getValue();
        Range<Integer> rangeFindBestFpsRange2 = findBestFpsRange(rangeArr, value);
        if (rangeFindBestFpsRange2 != null) {
            Size[] sizeArrFilterSizesForFrameRate = filterSizesForFrameRate(streamConfigurationMap, sizeArr, value);
            try {
                OutputPair outputPairChooseOutputPair = chooseOutputPair(sizeArrFilterSizesForFrameRate, this.outputResolution, this.requestedCameraResolution);
                this.diagnostics.log("fps selection: id=" + str + ", requested=" + value + ", mode=REGULAR, range=" + rangeFindBestFpsRange2 + ", compatibleSizes=" + Arrays.toString(sizeArrFilterSizesForFrameRate));
                return new FrameRatePlan(RoundVideoSession.FrameRate.FPS_60, rangeFindBestFpsRange2, outputPairChooseOutputPair);
            } catch (RuntimeException unused) {
                this.diagnostics.log("fps selection: id=" + str + ", regular " + value + " fps rejected: no compatible output pair, compatibleSizes=" + Arrays.toString(sizeArrFilterSizesForFrameRate));
            }
        } else {
            this.diagnostics.log("fps selection: id=" + str + ", regular " + value + " fps rejected: advertisedRanges=" + Arrays.toString(rangeArr));
        }
        Range<Integer> rangeFindBestFpsRange3 = findBestFpsRange(rangeArr, 30);
        this.diagnostics.log("fps selection: id=" + str + ", requested=" + value + ", fallback=30, range=" + rangeFindBestFpsRange3);
        return new FrameRatePlan(RoundVideoSession.FrameRate.FPS_30, rangeFindBestFpsRange3, outputPair);
    }

    private static boolean supportsFrameDuration(StreamConfigurationMap streamConfigurationMap, Size size, int i) {
        long outputMinFrameDuration = streamConfigurationMap.getOutputMinFrameDuration(SurfaceTexture.class, size);
        return outputMinFrameDuration <= 0 || outputMinFrameDuration <= 1000000000 / ((long) i);
    }

    private static long getMinimumFrameDurationNs(CameraCharacteristics cameraCharacteristics, Size size) {
        StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
        if (streamConfigurationMap == null) {
            return -1L;
        }
        try {
            return streamConfigurationMap.getOutputMinFrameDuration(SurfaceTexture.class, size);
        } catch (RuntimeException unused) {
            return -1L;
        }
    }

    private void setPreferredFps(CaptureRequest.Builder builder, boolean z) {
        Range<Integer> range = this.activeFpsRange;
        if (range == null) {
            if (z) {
                this.diagnostics.log("capture FPS range unavailable; HAL default will be used");
                return;
            }
            return;
        }
        builder.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range);
        if (z) {
            this.diagnostics.log("capture FPS range selected: " + this.activeFpsRange);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fallbackTo30Fps(String str, Exception exc) {
        String str2;
        if (this.frameRateFallbackAttempted) {
            if (exc == null) {
                exc = new IllegalStateException("30 fps fallback session failed");
            }
            reportError(exc);
            return;
        }
        this.frameRateFallbackAttempted = true;
        closeCaptureSession();
        OutputPair outputPair = this.regularFallbackPair;
        if (outputPair == null) {
            reportError(new IllegalStateException("Regular camera fallback is unavailable", exc));
            return;
        }
        this.activeFrameRate = RoundVideoSession.FrameRate.FPS_30;
        CameraCharacteristics cameraCharacteristics = this.characteristics;
        this.activeFpsRange = findBestFpsRange(cameraCharacteristics == null ? null : (Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES), 30);
        this.previewSize = outputPair.preview;
        this.recordingSize = outputPair.recording;
        this.sourceCropSize = outputPair.cropSize;
        this.activeCameraResolution = outputPair.cameraResolution;
        SurfaceTexture surfaceTexture = this.previewView.getSurfaceTexture();
        if (surfaceTexture != null) {
            surfaceTexture.setDefaultBufferSize(this.previewSize.getWidth(), this.previewSize.getHeight());
        }
        RoundVideoCodecRecorder roundVideoCodecRecorder = this.recorder;
        if (roundVideoCodecRecorder != null && roundVideoCodecRecorder.isStarted()) {
            reportError(new IllegalStateException("Unable to change encoder frame rate after recording started", exc));
            return;
        }
        RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
        if (roundVideoGlProcessor != null) {
            roundVideoGlProcessor.stop();
            this.glProcessor = null;
        }
        RoundVideoCodecRecorder roundVideoCodecRecorder2 = this.recorder;
        if (roundVideoCodecRecorder2 != null) {
            roundVideoCodecRecorder2.stop();
            this.recorder = null;
        }
        this.recordingSurface = null;
        try {
            createRecordingPipeline();
            resetCaptureFpsMeasurement();
            RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
            StringBuilder sb = new StringBuilder("60 fps fallback: reason=");
            sb.append(str);
            if (exc == null) {
                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                str2 = ", error=" + exc;
            }
            sb.append(str2);
            sb.append(", preview=");
            sb.append(this.previewSize);
            sb.append(", recording=");
            sb.append(this.recordingSize);
            sb.append(", crop=");
            sb.append(this.sourceCropSize);
            sb.append(", fpsRange=");
            sb.append(this.activeFpsRange);
            roundVideoDiagnostics.log(sb.toString());
            Handler handler = this.cameraHandler;
            if (!this.active || handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCameraController$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.createCaptureSession();
                }
            });
        } catch (Exception e) {
            reportError(e);
        }
    }

    private static Range<Integer> findBestFpsRange(Range<Integer>[] rangeArr, int i) {
        Range<Integer> range = null;
        if (rangeArr == null) {
            return null;
        }
        for (Range<Integer> range2 : rangeArr) {
            if (range2.contains(Integer.valueOf(i)) && (range == null || ((Integer) range2.getLower()).intValue() > ((Integer) range.getLower()).intValue() || (((Integer) range2.getLower()).equals(range.getLower()) && ((Integer) range2.getUpper()).intValue() < ((Integer) range.getUpper()).intValue()))) {
                range = range2;
            }
        }
        return range;
    }

    private static Size[] filterSizesForFrameRate(StreamConfigurationMap streamConfigurationMap, Size[] sizeArr, int i) {
        ArrayList arrayList = new ArrayList(sizeArr.length);
        for (Size size : sizeArr) {
            if (supportsFrameDuration(streamConfigurationMap, size, i)) {
                arrayList.add(size);
            }
        }
        return (Size[]) arrayList.toArray(new Size[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetCaptureFpsMeasurement() {
        this.captureFpsFirstTimestampNs = 0L;
        this.captureFpsLastTimestampNs = 0L;
        this.captureFrames = 0L;
        this.captureLastCallbackNs = 0L;
        this.captureSensorIntervalCount = 0L;
        this.captureSensorIntervalTotalNs = 0L;
        this.captureSensorIntervalSquaredTotalNs = 0.0d;
        this.captureSensorIntervalMinimumNs = 0L;
        this.captureSensorIntervalMaximumNs = 0L;
        this.captureSensorGapsOver50Ms = 0L;
        this.captureSensorGapsOver100Ms = 0L;
        this.captureCallbackIntervalCount = 0L;
        this.captureCallbackIntervalTotalNs = 0L;
        this.captureCallbackIntervalMaximumNs = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float standardDeviationMs(long j, double d, long j2) {
        if (j2 == 0) {
            return 0.0f;
        }
        double d2 = j2;
        double d3 = j / d2;
        return (float) (Math.sqrt(Math.max(0.0d, (d / d2) - (d3 * d3))) / 1000000.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePreviewTransform() {
        Size size;
        if (!this.previewTransformEnabled || (size = this.recordingSize) == null || this.previewView.getWidth() == 0 || this.previewView.getHeight() == 0) {
            return;
        }
        int iMin = Math.min(this.sourceCropSize, Math.min(size.getWidth(), size.getHeight()));
        boolean zIsOutputRotationSwapped = isOutputRotationSwapped();
        float f = iMin;
        float height = (zIsOutputRotationSwapped ? size.getHeight() : size.getWidth()) / f;
        float width = (zIsOutputRotationSwapped ? size.getWidth() : size.getHeight()) / f;
        Matrix matrix = new Matrix();
        matrix.setScale(height, width, this.previewView.getWidth() * 0.5f, this.previewView.getHeight() * 0.5f);
        this.previewView.setTransform(matrix);
        this.diagnostics.log("preview transform: view=" + this.previewView.getWidth() + "x" + this.previewView.getHeight() + ", source=" + size + ", crop=" + iMin + ", axesSwapped=" + zIsOutputRotationSwapped + ", scale=" + height + "x" + width);
    }

    private boolean isOutputRotationSwapped() {
        Integer num;
        if (this.characteristics == null || this.previewView.getDisplay() == null || (num = (Integer) this.characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)) == null) {
            return false;
        }
        int iIntValue = ((num.intValue() - (this.previewView.getDisplay().getRotation() * 90)) + 360) % 360;
        return iIntValue == 90 || iIntValue == 270;
    }

    private void closeCameraAndSurfaces() {
        cancelCommonStartWait();
        this.opening = false;
        this.switchingCamera = false;
        this.reopenAfterCameraClose = false;
        this.previewTransformEnabled = false;
        this.notifySwitchCompletion = false;
        this.awaitingSwitchPreviewFrame = false;
        this.repeatingBuilder = null;
        this.torchVerificationPending = false;
        closeCaptureSession();
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null) {
            cameraDevice.close();
            this.cameraDevice = null;
        }
        Surface surface = this.previewSurface;
        if (surface != null) {
            surface.release();
            this.previewSurface = null;
        }
        RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
        if (roundVideoGlProcessor != null) {
            roundVideoGlProcessor.stop();
            this.glProcessor = null;
        }
        this.recordingSurface = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeCaptureSession() {
        CameraCaptureSession cameraCaptureSession = this.captureSession;
        if (cameraCaptureSession != null) {
            cameraCaptureSession.close();
            this.captureSession = null;
        }
        this.repeatingBuilder = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportError(Exception exc) {
        this.diagnostics.error("camera error", exc);
        this.callback.onError(exc);
    }

    private void logCameraConfigurationOnce(RoundVideoSession.CameraFacing cameraFacing, String str, CameraCharacteristics cameraCharacteristics, Size[] sizeArr) {
        if (cameraFacing == RoundVideoSession.CameraFacing.FRONT) {
            if (this.frontConfigurationLogged) {
                return;
            } else {
                this.frontConfigurationLogged = true;
            }
        } else if (this.backConfigurationLogged) {
            return;
        } else {
            this.backConfigurationLogged = true;
        }
        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        Integer num2 = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION);
        Range[] rangeArr = (Range[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES);
        int[] iArr = (int[]) cameraCharacteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
        Boolean bool = (Boolean) cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE);
        Rect rect = (Rect) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        this.diagnostics.log("camera capabilities: id=" + str + ", facing=" + cameraFacing + ", hardwareLevel=" + hardwareLevelName(num) + ", sensorOrientation=" + num2 + ", activeArray=" + rect + ", flashAvailable=" + bool + ", aeModes=" + Arrays.toString(iArr) + ", fpsRanges=" + Arrays.toString(rangeArr) + ", outputSizes=" + Arrays.toString(sizeArr));
    }

    private static String hardwareLevelName(Integer num) {
        if (num == null) {
            return "unknown";
        }
        if (num.intValue() == 2) {
            return "LEGACY";
        }
        if (num.intValue() == 0) {
            return "LIMITED";
        }
        if (num.intValue() == 1) {
            return "FULL";
        }
        if (num.intValue() == 3) {
            return "LEVEL_3";
        }
        if (Build.VERSION.SDK_INT >= 28 && num.intValue() == 4) {
            return "EXTERNAL";
        }
        return String.valueOf(num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String cameraErrorName(int i) {
        if (i == 1) {
            return "CAMERA_IN_USE";
        }
        if (i == 2) {
            return "MAX_CAMERAS_IN_USE";
        }
        if (i == 3) {
            return "CAMERA_DISABLED";
        }
        if (i == 4) {
            return "CAMERA_DEVICE";
        }
        if (i == 5) {
            return "CAMERA_SERVICE";
        }
        return "UNKNOWN";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long elapsedMs(long j) {
        if (j == 0) {
            return -1L;
        }
        return (SystemClock.elapsedRealtimeNanos() - j) / 1000000;
    }

    private static OutputPair chooseOutputPair(Size[] sizeArr, RoundVideoSession.OutputResolution outputResolution, RoundVideoSession.CameraResolution cameraResolution) {
        OutputPair outputPairChooseTierPair;
        RoundVideoSession.CameraResolution cameraResolution2;
        OutputPair outputPairChooseTierPair2;
        OutputPair outputPairChooseTierPair3 = chooseTierPair(sizeArr, getSourceCropSize(outputResolution, cameraResolution), cameraResolution);
        if (outputPairChooseTierPair3 != null) {
            return outputPairChooseTierPair3;
        }
        if (outputResolution == RoundVideoSession.OutputResolution.P360 && cameraResolution == (cameraResolution2 = RoundVideoSession.CameraResolution.MEDIUM) && (outputPairChooseTierPair2 = chooseTierPair(sizeArr, 480, cameraResolution2)) != null) {
            return outputPairChooseTierPair2;
        }
        int size = outputResolution.getSize();
        RoundVideoSession.CameraResolution cameraResolution3 = RoundVideoSession.CameraResolution.LOW;
        if (cameraResolution != cameraResolution3 && (outputPairChooseTierPair = chooseTierPair(sizeArr, size, cameraResolution3)) != null) {
            return outputPairChooseTierPair;
        }
        Size sizeChooseFallbackRecordingSize = chooseFallbackRecordingSize(sizeArr, outputResolution.getSize());
        return new OutputPair(choosePreviewSize(sizeArr, sizeChooseFallbackRecordingSize), sizeChooseFallbackRecordingSize, cameraResolution3, Math.min(shortSide(sizeChooseFallbackRecordingSize), 1088));
    }

    private static OutputPair chooseTierPair(Size[] sizeArr, int i, RoundVideoSession.CameraResolution cameraResolution) {
        OutputPair outputPair = null;
        for (Size size : sizeArr) {
            if (isValidTierSize(size, i)) {
                OutputPair outputPair2 = new OutputPair(choosePreviewSize(sizeArr, size), size, cameraResolution, i);
                if (outputPair == null || compareOutputPairs(outputPair2, outputPair) < 0) {
                    outputPair = outputPair2;
                }
            }
        }
        return outputPair;
    }

    private static Size chooseFallbackRecordingSize(Size[] sizeArr, int i) {
        Size size = null;
        for (Size size2 : sizeArr) {
            if (isWithinAbsoluteLimit(size2) && shortSide(size2) >= i && (size == null || area(size2) < area(size))) {
                size = size2;
            }
        }
        if (size != null) {
            return size;
        }
        for (Size size3 : sizeArr) {
            if (isWithinAbsoluteLimit(size3) && (size == null || shortSide(size3) > shortSide(size) || (shortSide(size3) == shortSide(size) && area(size3) < area(size)))) {
                size = size3;
            }
        }
        if (size != null) {
            return size;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Camera has no output at or below the bandwidth cap");
        return null;
    }

    private static int getSourceCropSize(RoundVideoSession.OutputResolution outputResolution, RoundVideoSession.CameraResolution cameraResolution) {
        if (cameraResolution == RoundVideoSession.CameraResolution.LOW) {
            return outputResolution.getSize();
        }
        return outputResolution == RoundVideoSession.OutputResolution.P480 ? cameraResolution == RoundVideoSession.CameraResolution.HIGH ? 960 : 720 : cameraResolution == RoundVideoSession.CameraResolution.HIGH ? 720 : 540;
    }

    private static Size choosePreviewSize(Size[] sizeArr, Size size) {
        Size size2 = size;
        for (Size size3 : sizeArr) {
            if (hasSameAspectRatio(size3, size) && comparePreviewSizes(size3, size2) < 0) {
                size2 = size3;
            }
        }
        return size2;
    }

    private static int comparePreviewSizes(Size size, Size size2) {
        int iAbs = Math.abs(shortSide(size) - 720);
        int iAbs2 = Math.abs(shortSide(size2) - 720);
        if (iAbs != iAbs2) {
            return Integer.compare(iAbs, iAbs2);
        }
        return Long.compare(area(size), area(size2));
    }

    private static int compareOutputPairs(OutputPair outputPair, OutputPair outputPair2) {
        int iAbs = Math.abs(shortSide(outputPair.preview) - 720);
        int iAbs2 = Math.abs(shortSide(outputPair2.preview) - 720);
        if (iAbs != iAbs2) {
            return Integer.compare(iAbs, iAbs2);
        }
        long jArea = area(outputPair.preview) + area(outputPair.recording);
        long jArea2 = area(outputPair2.preview) + area(outputPair2.recording);
        if (jArea != jArea2) {
            return Long.compare(jArea, jArea2);
        }
        return Long.compare(area(outputPair.recording), area(outputPair2.recording));
    }

    private static boolean hasSameAspectRatio(Size size, Size size2) {
        return ((long) size.getWidth()) * ((long) size2.getHeight()) == ((long) size.getHeight()) * ((long) size2.getWidth());
    }

    private static boolean isValidTierSize(Size size, int i) {
        int i2 = ((i * 15) / 100) + i;
        int iMin = Math.min(1920, i * 2);
        int iShortSide = shortSide(size);
        return iShortSide >= i && iShortSide <= i2 && Math.max(size.getWidth(), size.getHeight()) <= iMin;
    }

    private static boolean isWithinAbsoluteLimit(Size size) {
        return shortSide(size) <= 1088 && Math.max(size.getWidth(), size.getHeight()) <= 1920;
    }

    private static int shortSide(Size size) {
        return Math.min(size.getWidth(), size.getHeight());
    }

    private static long area(Size size) {
        return ((long) size.getWidth()) * ((long) size.getHeight());
    }

    private static boolean contains(int[] iArr, int i) {
        if (iArr == null) {
            return false;
        }
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private static float clamp(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    public static final class FrameRatePlan {
        final Range<Integer> fpsRange;
        final RoundVideoSession.FrameRate frameRate;
        final OutputPair outputPair;

        public FrameRatePlan(RoundVideoSession.FrameRate frameRate, Range<Integer> range, OutputPair outputPair) {
            this.frameRate = frameRate;
            this.fpsRange = range;
            this.outputPair = outputPair;
        }
    }

    public static final class CameraCandidate {
        final CameraCharacteristics characteristics;
        final FrameRatePlan frameRatePlan;
        final String id;
        final OutputPair regularPair;
        final Size[] sizes;

        public CameraCandidate(String str, CameraCharacteristics cameraCharacteristics, Size[] sizeArr, OutputPair outputPair, FrameRatePlan frameRatePlan) {
            this.id = str;
            this.characteristics = cameraCharacteristics;
            this.sizes = sizeArr;
            this.regularPair = outputPair;
            this.frameRatePlan = frameRatePlan;
        }
    }

    public static final class OutputPair {
        final RoundVideoSession.CameraResolution cameraResolution;
        final int cropSize;
        final Size preview;
        final Size recording;

        public OutputPair(Size size, Size size2, RoundVideoSession.CameraResolution cameraResolution, int i) {
            this.preview = size;
            this.recording = size2;
            this.cameraResolution = cameraResolution;
            this.cropSize = i;
        }
    }
}
