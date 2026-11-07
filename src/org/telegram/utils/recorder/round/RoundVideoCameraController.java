package org.telegram.utils.recorder.round;

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
import android.hardware.camera2.params.MeteringRectangle;
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
import com.exteragram.messenger.camera.RoundVideoCamera2Helper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.utils.recorder.round.RoundVideoCodecRecorder;
import org.telegram.utils.recorder.round.RoundVideoGlProcessor;
import org.telegram.utils.recorder.round.RoundVideoSession;

/* JADX INFO: loaded from: classes8.dex */
final class RoundVideoCameraController extends RoundVideoCamera {
    private volatile boolean active;
    private RoundVideoSession.CameraResolution activeCameraResolution;
    private boolean activeDualSessionConfigured;
    private RoundVideoSession.CameraFacing activeFacing;
    private Range<Integer> activeFpsRange;
    private RoundVideoSession.FrameRate activeFrameRate;
    private boolean activeInputSecondary;
    private final Runnable applyZoomRunnable;
    private final int audioBitrate;
    private volatile boolean awaitingSwitchPreviewFrame;
    private boolean backConfigurationLogged;
    private CameraSelection backSelection;
    private final Callback callback;
    private long cameraCloseRequestedNs;
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
    private CameraDevice closingStandbyDevice;
    private RoundVideoCodecRecorder commonStartRecorder;
    private final Runnable commonStartTimeoutRunnable;
    private final boolean compositionEnabled;
    private final Context context;
    private final CameraDevice.StateCallback deviceCallback;
    private final RoundVideoDiagnostics diagnostics;
    private boolean dualActiveMode;
    private String focusCameraId;
    private MeteringRectangle focusRegion;
    private boolean force30Fps;
    private boolean frameRateFallbackAttempted;
    private boolean frameRatePolicyResolved;
    private boolean frontConfigurationLogged;
    private CameraSelection frontSelection;
    private boolean glPreviewEnabled;
    private RoundVideoGlProcessor glProcessor;
    private boolean lastSwitchUsedWarmDevice;
    private final View.OnLayoutChangeListener layoutChangeListener;
    private boolean notifySwitchCompletion;
    private boolean opening;
    private final RoundVideoSession.OutputResolution outputResolution;
    private final int outputSize;
    private RoundVideoSession.CameraFacing pendingWarmSwitchFacing;
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
    private final Runnable resetFocusRunnable;
    private boolean retryCaptureSessionAfterStandbyClose;
    private Surface secondaryRecordingSurface;
    private long segmentStartedNs;
    private RoundVideoSession.CameraFacing selectedFacing;
    private final CameraCaptureSession.StateCallback sessionCallback;
    private volatile int sourceCropSize;
    private volatile boolean stopping;
    private long switchSelectionStartedNs;
    private boolean switchingCamera;
    private long timelineOffsetUs;
    private boolean torchEnabled;
    private int torchVerificationFrames;
    private int torchVerificationGeneration;
    private boolean torchVerificationPending;
    private int torchVerificationRetries;
    private final int videoBitrate;
    private CameraDevice warmCameraDevice;
    private long warmCameraOpenRequestedNs;
    private boolean warmCameraOpening;
    private CameraSelection warmCameraSelection;
    private CameraCaptureSession warmCaptureSession;
    private final CameraDevice.StateCallback warmDeviceCallback;
    private boolean warmDualSessionConfigured;
    private CameraDevice warmRecoveryActiveDevice;
    private CameraDevice warmRecoveryStandbyDevice;
    private CaptureRequest.Builder warmRepeatingBuilder;
    private final CameraCaptureSession.StateCallback warmSessionCallback;
    private boolean warmSwitchDisabled;
    private boolean warmSwitchRecoveryPending;
    private boolean warmSwitchSupported;
    private RoundVideoMp4Writer writer;
    private volatile float zoomProgress;
    private final Rect zoomCropRect = new Rect();
    private volatile float zoomRatio = Float.NaN;
    private float maximumZoomRatio = 1.0f;

    public interface Callback {
        void onAudioAmplitude(double d);

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
        final String cameraId;
        final RoundVideoSession.CameraResolution cameraResolution;
        final RoundVideoSession.CameraFacing facing;
        final RoundVideoSession.FrameRate frameRate;
        final float maximumZoomRatio;
        final Size previewSize;
        final Size recordingSize;
        final boolean torchAvailable;

        public CameraInfo(String str, RoundVideoSession.CameraFacing cameraFacing, RoundVideoSession.CameraResolution cameraResolution, RoundVideoSession.FrameRate frameRate, Size size, Size size2, float f, boolean z) {
            this.cameraId = str;
            this.facing = cameraFacing;
            this.cameraResolution = cameraResolution;
            this.frameRate = frameRate;
            this.previewSize = size;
            this.recordingSize = size2;
            this.maximumZoomRatio = f;
            this.torchAvailable = z;
        }
    }

    public static final class CameraSelection {
        final RoundVideoSession.CameraResolution cameraResolution;
        final CameraCharacteristics characteristics;
        final RoundVideoSession.CameraFacing facing;
        final Range<Integer> fpsRange;
        final RoundVideoSession.FrameRate frameRate;
        final String id;
        final float maximumZoomRatio;
        final Size previewSize;
        final Size recordingSize;
        final OutputPair regularFallbackPair;
        final int sourceCropSize;

        public CameraSelection(String str, RoundVideoSession.CameraFacing cameraFacing, CameraCharacteristics cameraCharacteristics, Size size, Size size2, int i, RoundVideoSession.CameraResolution cameraResolution, RoundVideoSession.FrameRate frameRate, Range<Integer> range, OutputPair outputPair, float f) {
            this.id = str;
            this.facing = cameraFacing;
            this.characteristics = cameraCharacteristics;
            this.previewSize = size;
            this.recordingSize = size2;
            this.sourceCropSize = i;
            this.cameraResolution = cameraResolution;
            this.frameRate = frameRate;
            this.fpsRange = range;
            this.regularFallbackPair = outputPair;
            this.maximumZoomRatio = f;
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

    public RoundVideoCameraController(Context context, TextureView textureView, RoundVideoSession.OutputResolution outputResolution, int i, int i2, int i3, boolean z, RoundVideoSession.CameraResolution cameraResolution, RoundVideoSession.FrameRate frameRate, boolean z2, RoundVideoDiagnostics roundVideoDiagnostics, Callback callback) {
        View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda4
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                this.f$0.lambda$new$0(view, i4, i5, i6, i7, i8, i9, i10, i11);
            }
        };
        this.layoutChangeListener = onLayoutChangeListener;
        this.commonStartTimeoutRunnable = new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1();
            }
        };
        this.applyZoomRunnable = new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.applyRepeatingRequest();
            }
        };
        this.resetFocusRunnable = new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$7();
            }
        };
        this.previewListener = new TextureView.SurfaceTextureListener() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i4, int i5) {
                RoundVideoCameraController.this.diagnostics.log("preview surface available: view=" + i4 + "x" + i5);
                RoundVideoCameraController.this.maybeOpenCamera();
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i4, int i5) {
                RoundVideoCameraController.this.diagnostics.log("preview surface size changed: view=" + i4 + "x" + i5);
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
                String str;
                if (RoundVideoCameraController.this.awaitingSwitchPreviewFrame) {
                    RoundVideoCameraController.this.awaitingSwitchPreviewFrame = false;
                    RoundVideoDiagnostics roundVideoDiagnostics2 = RoundVideoCameraController.this.diagnostics;
                    StringBuilder sb = new StringBuilder("camera switch first preview frame: path=");
                    if (RoundVideoCameraController.this.dualActiveMode) {
                        str = "DUAL_ACTIVE";
                    } else {
                        str = RoundVideoCameraController.this.lastSwitchUsedWarmDevice ? "WARM_DEVICE" : "SEQUENTIAL";
                    }
                    sb.append(str);
                    sb.append(", totalElapsedMs=");
                    sb.append(RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.cameraSwitchStartedNs));
                    roundVideoDiagnostics2.log(sb.toString());
                    RoundVideoCameraController.this.callback.onCameraSwitchFirstFrame();
                }
                long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                long timestamp = surfaceTexture.getTimestamp();
                if (RoundVideoCameraController.this.previewFpsStartedNs == 0) {
                    RoundVideoCameraController.this.previewFpsStartedNs = jElapsedRealtimeNanos;
                    RoundVideoDiagnostics roundVideoDiagnostics3 = RoundVideoCameraController.this.diagnostics;
                    StringBuilder sb2 = new StringBuilder("preview frame delivery started: thread=");
                    sb2.append(Thread.currentThread().getName());
                    sb2.append(", view=");
                    sb2.append(RoundVideoCameraController.this.previewView.getWidth());
                    sb2.append("x");
                    sb2.append(RoundVideoCameraController.this.previewView.getHeight());
                    sb2.append(", buffer=");
                    sb2.append(RoundVideoCameraController.this.previewSize);
                    sb2.append(", attached=");
                    sb2.append(RoundVideoCameraController.this.previewView.isAttachedToWindow());
                    sb2.append(", shown=");
                    sb2.append(RoundVideoCameraController.this.previewView.isShown());
                    sb2.append(", alpha=");
                    sb2.append(RoundVideoCameraController.this.previewView.getAlpha());
                    sb2.append(", hardwareAccelerated=");
                    sb2.append(RoundVideoCameraController.this.previewView.isHardwareAccelerated());
                    sb2.append(", displayRefreshRate=");
                    sb2.append(RoundVideoCameraController.this.previewView.getDisplay() == null ? "unknown" : Float.valueOf(RoundVideoCameraController.this.previewView.getDisplay().getRefreshRate()));
                    roundVideoDiagnostics3.log(sb2.toString());
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
        this.deviceCallback = new CameraDevice.StateCallback() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController.2
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) {
                String str;
                RoundVideoCameraController.this.opening = false;
                RoundVideoDiagnostics roundVideoDiagnostics2 = RoundVideoCameraController.this.diagnostics;
                StringBuilder sb = new StringBuilder("camera opened: id=");
                sb.append(cameraDevice.getId());
                sb.append(", elapsedMs=");
                sb.append(RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.cameraOpenRequestedNs));
                if (RoundVideoCameraController.this.notifySwitchCompletion) {
                    str = ", switchElapsedMs=" + RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.cameraSwitchStartedNs);
                } else {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                sb.append(str);
                roundVideoDiagnostics2.log(sb.toString());
                if (!RoundVideoCameraController.this.active || RoundVideoCameraController.this.switchingCamera) {
                    cameraDevice.close();
                    return;
                }
                RoundVideoCameraController.this.cameraDevice = cameraDevice;
                boolean z3 = RoundVideoCameraController.this.dualActiveMode;
                RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                if (z3) {
                    if (roundVideoCameraController.warmCameraOpening || RoundVideoCameraController.this.warmCameraDevice == null) {
                        RoundVideoCameraController.this.diagnostics.log("active camera opened; waiting for dual peer before sessions");
                        return;
                    } else {
                        RoundVideoCameraController.this.createDualCaptureSessions();
                        return;
                    }
                }
                roundVideoCameraController.createCaptureSession();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                boolean z3 = false;
                RoundVideoCameraController.this.opening = false;
                RoundVideoCameraController.this.diagnostics.log("camera disconnected: id=" + cameraDevice.getId());
                boolean zIsWarmSwitchRecoveryDevice = RoundVideoCameraController.this.isWarmSwitchRecoveryDevice(cameraDevice);
                RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                if (zIsWarmSwitchRecoveryDevice) {
                    roundVideoCameraController.diagnostics.log("camera disconnected while warm-switch recovery is closing it: id=" + cameraDevice.getId());
                    cameraDevice.close();
                    return;
                }
                CameraDevice cameraDevice2 = roundVideoCameraController.warmCameraDevice;
                RoundVideoCameraController roundVideoCameraController2 = RoundVideoCameraController.this;
                if (cameraDevice == cameraDevice2) {
                    boolean z4 = roundVideoCameraController2.dualActiveMode;
                    RoundVideoCameraController roundVideoCameraController3 = RoundVideoCameraController.this;
                    if (z4) {
                        roundVideoCameraController3.handleWarmDeviceFailure(cameraDevice, "disconnected", null);
                        return;
                    }
                    roundVideoCameraController3.warmCameraDevice = null;
                    RoundVideoCameraController.this.closingStandbyDevice = cameraDevice;
                    cameraDevice.close();
                    RoundVideoCameraController.this.disableWarmSwitch("standby device disconnected", null);
                    return;
                }
                if (roundVideoCameraController2.active && !RoundVideoCameraController.this.stopping && !RoundVideoCameraController.this.switchingCamera && !RoundVideoCameraController.this.reopenAfterCameraClose) {
                    z3 = true;
                }
                if (RoundVideoCameraController.this.cameraDevice == cameraDevice) {
                    RoundVideoCameraController.this.closeCaptureSession();
                    RoundVideoCameraController.this.cameraDevice = null;
                }
                cameraDevice.close();
                if (z3) {
                    RoundVideoCameraController.this.reportError(new IllegalStateException("Camera device disconnected"));
                }
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int i4) {
                RoundVideoCameraController.this.opening = false;
                boolean zIsWarmSwitchRecoveryDevice = RoundVideoCameraController.this.isWarmSwitchRecoveryDevice(cameraDevice);
                RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                if (zIsWarmSwitchRecoveryDevice) {
                    roundVideoCameraController.diagnostics.log("camera error while warm-switch recovery is closing it: id=" + cameraDevice.getId() + ", error=" + RoundVideoCameraController.cameraErrorName(i4) + " (" + i4 + ")");
                    cameraDevice.close();
                    return;
                }
                CameraDevice cameraDevice2 = roundVideoCameraController.warmCameraDevice;
                RoundVideoCameraController roundVideoCameraController2 = RoundVideoCameraController.this;
                if (cameraDevice == cameraDevice2) {
                    boolean z3 = roundVideoCameraController2.dualActiveMode;
                    RoundVideoCameraController roundVideoCameraController3 = RoundVideoCameraController.this;
                    if (z3) {
                        roundVideoCameraController3.handleWarmDeviceFailure(cameraDevice, "error=" + RoundVideoCameraController.cameraErrorName(i4) + " (" + i4 + ")", null);
                        return;
                    }
                    roundVideoCameraController3.warmCameraDevice = null;
                    RoundVideoCameraController.this.closingStandbyDevice = cameraDevice;
                    cameraDevice.close();
                    RoundVideoCameraController.this.disableWarmSwitch("standby device error=" + RoundVideoCameraController.cameraErrorName(i4) + " (" + i4 + ")", null);
                    return;
                }
                if (roundVideoCameraController2.cameraDevice == cameraDevice) {
                    RoundVideoCameraController.this.closeCaptureSession();
                    RoundVideoCameraController.this.cameraDevice = null;
                }
                cameraDevice.close();
                RoundVideoCameraController.this.reportError(new IllegalStateException("Camera device error: " + RoundVideoCameraController.cameraErrorName(i4) + " (" + i4 + ")"));
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onClosed(CameraDevice cameraDevice) {
                if (RoundVideoCameraController.this.handleWarmSwitchRecoveryClosed(cameraDevice) || RoundVideoCameraController.this.handleStandbyCameraClosed(cameraDevice)) {
                    return;
                }
                CameraDevice cameraDevice2 = RoundVideoCameraController.this.warmCameraDevice;
                RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                if (cameraDevice == cameraDevice2) {
                    roundVideoCameraController.warmCameraDevice = null;
                    RoundVideoCameraController.this.diagnostics.log("standby camera closed: id=" + cameraDevice.getId());
                    return;
                }
                boolean z3 = roundVideoCameraController.switchingCamera;
                RoundVideoCameraController roundVideoCameraController2 = RoundVideoCameraController.this;
                if (z3) {
                    roundVideoCameraController2.diagnostics.log("camera closed for sequential switch: elapsedMs=" + RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.cameraCloseRequestedNs) + ", switchElapsedMs=" + RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.cameraSwitchStartedNs));
                    RoundVideoCameraController.this.switchingCamera = false;
                    if (RoundVideoCameraController.this.active) {
                        RoundVideoCameraController.this.openCameraIfReady();
                        return;
                    }
                    return;
                }
                if (roundVideoCameraController2.reopenAfterCameraClose) {
                    RoundVideoCameraController.this.reopenAfterCameraClose = false;
                    if (RoundVideoCameraController.this.active) {
                        RoundVideoCameraController.this.openCameraIfReady();
                    }
                }
            }
        };
        this.warmDeviceCallback = new CameraDevice.StateCallback() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController.3
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) {
                RoundVideoCameraController.this.warmCameraOpening = false;
                if (!RoundVideoCameraController.this.active || RoundVideoCameraController.this.stopping || RoundVideoCameraController.this.warmSwitchDisabled || RoundVideoCameraController.this.warmCameraSelection == null || !cameraDevice.getId().equals(RoundVideoCameraController.this.warmCameraSelection.id)) {
                    RoundVideoCameraController.this.diagnostics.log("stale warm camera open ignored: id=" + cameraDevice.getId());
                    cameraDevice.close();
                    return;
                }
                RoundVideoCameraController.this.warmCameraDevice = cameraDevice;
                RoundVideoCameraController.this.diagnostics.log("warm camera opened: id=" + cameraDevice.getId() + ", facing=" + RoundVideoCameraController.this.warmCameraSelection.facing + ", elapsedMs=" + RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.warmCameraOpenRequestedNs));
                if (RoundVideoCameraController.this.cameraDevice != null && RoundVideoCameraController.this.captureSession == null && !RoundVideoCameraController.this.switchingCamera) {
                    boolean z3 = RoundVideoCameraController.this.dualActiveMode;
                    RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                    if (z3) {
                        roundVideoCameraController.diagnostics.log("both camera devices opened; configuring dual sessions");
                        RoundVideoCameraController.this.createDualCaptureSessions();
                    } else {
                        roundVideoCameraController.diagnostics.log("both camera devices opened; configuring active session");
                        RoundVideoCameraController.this.createCaptureSession();
                    }
                }
                RoundVideoSession.CameraFacing cameraFacing = RoundVideoCameraController.this.pendingWarmSwitchFacing;
                if (cameraFacing == null || cameraFacing != RoundVideoCameraController.this.warmCameraSelection.facing) {
                    return;
                }
                RoundVideoCameraController.this.pendingWarmSwitchFacing = null;
                if (RoundVideoCameraController.this.switchToWarmCamera(cameraFacing)) {
                    return;
                }
                RoundVideoCameraController.this.continueSequentialSwitch();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                boolean zIsWarmSwitchRecoveryDevice = RoundVideoCameraController.this.isWarmSwitchRecoveryDevice(cameraDevice);
                RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                if (zIsWarmSwitchRecoveryDevice) {
                    roundVideoCameraController.diagnostics.log("warm camera disconnected while recovery is closing it: id=" + cameraDevice.getId());
                    cameraDevice.close();
                    return;
                }
                roundVideoCameraController.handleWarmDeviceFailure(cameraDevice, "disconnected", null);
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int i4) {
                boolean zIsWarmSwitchRecoveryDevice = RoundVideoCameraController.this.isWarmSwitchRecoveryDevice(cameraDevice);
                RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                if (zIsWarmSwitchRecoveryDevice) {
                    roundVideoCameraController.diagnostics.log("warm camera error while recovery is closing it: id=" + cameraDevice.getId() + ", error=" + RoundVideoCameraController.cameraErrorName(i4) + " (" + i4 + ")");
                    cameraDevice.close();
                    return;
                }
                roundVideoCameraController.handleWarmDeviceFailure(cameraDevice, "error=" + RoundVideoCameraController.cameraErrorName(i4) + " (" + i4 + ")", new IllegalStateException("Warm camera device error: " + RoundVideoCameraController.cameraErrorName(i4) + " (" + i4 + ")"));
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onClosed(CameraDevice cameraDevice) {
                if (RoundVideoCameraController.this.handleWarmSwitchRecoveryClosed(cameraDevice) || RoundVideoCameraController.this.handleStandbyCameraClosed(cameraDevice) || cameraDevice != RoundVideoCameraController.this.warmCameraDevice) {
                    return;
                }
                RoundVideoCameraController.this.warmCameraDevice = null;
                RoundVideoCameraController.this.diagnostics.log("standby camera closed: id=" + cameraDevice.getId());
            }
        };
        this.warmSessionCallback = new CameraCaptureSession.StateCallback() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController.4
            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                if (!RoundVideoCameraController.this.active || !RoundVideoCameraController.this.dualActiveMode || RoundVideoCameraController.this.warmCameraDevice == null || cameraCaptureSession.getDevice() != RoundVideoCameraController.this.warmCameraDevice || RoundVideoCameraController.this.secondaryRecordingSurface == null || RoundVideoCameraController.this.warmCameraSelection == null) {
                    RoundVideoCameraController.this.diagnostics.log("stale standby capture session ignored: id=" + cameraCaptureSession.getDevice().getId());
                    cameraCaptureSession.close();
                    return;
                }
                try {
                    RoundVideoCameraController.this.warmCaptureSession = cameraCaptureSession;
                    RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
                    roundVideoCameraController.warmRepeatingBuilder = roundVideoCameraController.createRepeatingRequestBuilder(roundVideoCameraController.warmCameraDevice, RoundVideoCameraController.this.secondaryRecordingSurface, RoundVideoCameraController.this.warmCameraSelection, false, true);
                    cameraCaptureSession.setRepeatingRequest(RoundVideoCameraController.this.warmRepeatingBuilder.build(), RoundVideoCameraController.this.captureCallback, RoundVideoCameraController.this.cameraHandler);
                    RoundVideoCameraController.this.warmDualSessionConfigured = true;
                    RoundVideoCameraController.this.diagnostics.log("standby capture session configured: id=" + cameraCaptureSession.getDevice().getId() + ", elapsedMs=" + RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.captureSessionRequestedNs));
                    RoundVideoCameraController.this.completePendingDualSwitchIfReady();
                } catch (Exception e) {
                    RoundVideoCameraController.this.fallbackFromDualMode("standby request submission failed", e, true);
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                cameraCaptureSession.close();
                if (RoundVideoCameraController.this.dualActiveMode && RoundVideoCameraController.this.warmCameraDevice != null && cameraCaptureSession.getDevice() == RoundVideoCameraController.this.warmCameraDevice) {
                    RoundVideoCameraController.this.fallbackFromDualMode("standby session configuration failed", null, true);
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onClosed(CameraCaptureSession cameraCaptureSession) {
                if (RoundVideoCameraController.this.warmCaptureSession == cameraCaptureSession) {
                    RoundVideoCameraController.this.warmCaptureSession = null;
                    RoundVideoCameraController.this.warmRepeatingBuilder = null;
                    RoundVideoCameraController.this.warmDualSessionConfigured = false;
                }
            }
        };
        this.sessionCallback = new C67475();
        this.captureCallback = new CameraCaptureSession.CaptureCallback() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController.6
            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
                if (cameraCaptureSession != RoundVideoCameraController.this.captureSession) {
                    return;
                }
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
        this.outputSize = i;
        this.videoBitrate = i2;
        this.audioBitrate = i3;
        this.warmSwitchDisabled = !z;
        this.requestedCameraResolution = cameraResolution;
        this.requestedFrameRate = frameRate;
        this.compositionEnabled = z2;
        this.diagnostics = roundVideoDiagnostics;
        this.callback = callback;
        textureView.addOnLayoutChangeListener(onLayoutChangeListener);
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
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

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean setCameraFacing(final RoundVideoSession.CameraFacing cameraFacing) {
        this.requestedFacing = cameraFacing;
        Handler handler = this.cameraHandler;
        if (!this.active || handler == null) {
            return false;
        }
        handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setCameraFacing$2(cameraFacing);
            }
        });
        return true;
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean setZoom(float f) {
        this.zoomProgress = clamp(f, 0.0f, 1.0f);
        this.zoomRatio = Float.NaN;
        Handler handler = this.cameraHandler;
        if (!this.active || handler == null) {
            return false;
        }
        handler.removeCallbacks(this.applyZoomRunnable);
        handler.post(this.applyZoomRunnable);
        return true;
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean setZoomRatio(float f) {
        if (Float.isFinite(f) && f > 0.0f) {
            this.zoomRatio = f;
            Handler handler = this.cameraHandler;
            if (this.active && handler != null) {
                handler.removeCallbacks(this.applyZoomRunnable);
                handler.post(this.applyZoomRunnable);
                return true;
            }
        }
        return false;
    }

    private float getCurrentZoomRatio() {
        float f = this.zoomRatio;
        if (!Float.isNaN(f)) {
            return f;
        }
        if (this.zoomProgress > 0.0f) {
            return (this.zoomProgress * (this.maximumZoomRatio - 1.0f)) + 1.0f;
        }
        return RoundVideoCamera2Helper.getInitialZoomRatio(this.characteristics);
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean setFocusPoint(final float f, final float f2) {
        Handler handler = this.cameraHandler;
        if (!this.active || handler == null) {
            return false;
        }
        final int rotation = this.previewView.getDisplay() != null ? this.previewView.getDisplay().getRotation() * 90 : 0;
        handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setFocusPoint$3(f, f2, rotation);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: applyFocusPoint, reason: merged with bridge method [inline-methods] */
    public void lambda$setFocusPoint$3(float f, float f2, int i) {
        CameraCharacteristics cameraCharacteristics;
        MeteringRectangle meteringRectangleCreateFocusRegion;
        Size size = this.recordingSize;
        if (!this.active || this.captureSession == null || (cameraCharacteristics = this.characteristics) == null || this.cameraId == null || size == null || (meteringRectangleCreateFocusRegion = RoundVideoCamera2Helper.createFocusRegion(cameraCharacteristics, size, this.sourceCropSize, i, getCurrentZoomRatio(), f, f2)) == null) {
            return;
        }
        this.focusRegion = meteringRectangleCreateFocusRegion;
        this.focusCameraId = this.cameraId;
        this.cameraHandler.removeCallbacks(this.resetFocusRunnable);
        this.cameraHandler.postDelayed(this.resetFocusRunnable, 5000L);
        applyRepeatingRequest();
        triggerAutoFocus();
    }

    private void triggerAutoFocus() {
        Integer num;
        CameraCaptureSession cameraCaptureSession = this.captureSession;
        CaptureRequest.Builder builder = this.repeatingBuilder;
        if (cameraCaptureSession == null || builder == null || (num = (Integer) builder.get(CaptureRequest.CONTROL_AF_MODE)) == null) {
            return;
        }
        try {
            if (num.intValue() != 1) {
                return;
            }
            try {
                CaptureRequest.Key key = CaptureRequest.CONTROL_AF_TRIGGER;
                builder.set(key, 1);
                cameraCaptureSession.capture(builder.build(), null, this.cameraHandler);
                builder.set(key, 0);
            } catch (CameraAccessException | IllegalArgumentException | IllegalStateException e) {
                this.diagnostics.log("autofocus trigger failed: " + e);
            }
        } finally {
            builder.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
        }
    }

    private void clearFocusRegion() {
        this.focusRegion = null;
        this.focusCameraId = null;
        Handler handler = this.cameraHandler;
        if (handler != null) {
            handler.removeCallbacks(this.resetFocusRunnable);
        }
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean setTorchEnabled(final boolean z) {
        Handler handler = this.cameraHandler;
        if (!this.active || handler == null) {
            return false;
        }
        handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$setTorchEnabled$4(z);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTorchEnabled$4(boolean z) {
        this.torchEnabled = z;
        this.torchVerificationPending = isTorchAvailable();
        this.torchVerificationFrames = 0;
        this.torchVerificationRetries = 0;
        this.diagnostics.log("torch requested: enabled=" + z + ", available=" + isTorchAvailable() + ", cameraId=" + this.cameraId + ", facing=" + this.activeFacing);
        applyRepeatingRequest();
    }

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
    public boolean stopSegment() {
        Handler handler = this.cameraHandler;
        if (!this.active || this.stopping || handler == null) {
            return false;
        }
        this.stopping = true;
        this.previewTransformEnabled = false;
        this.diagnostics.log("camera segment stop requested");
        handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopSegment$5();
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopSegment$5() {
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

    @Override // org.telegram.utils.recorder.round.RoundVideoCamera
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
        handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$release$6(handlerThread);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$6(HandlerThread handlerThread) {
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
    public /* synthetic */ void lambda$new$7() {
        clearFocusRegion();
        applyRepeatingRequest();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeOpenCamera() {
        Handler handler = this.cameraHandler;
        if (this.active && handler != null && this.previewView.isAvailable()) {
            handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda12
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
                this.switchSelectionStartedNs = SystemClock.elapsedRealtimeNanos();
                selectCameraAndSizes(this.requestedFacing);
                long jElapsedMs = elapsedMs(this.switchSelectionStartedNs);
                if (this.cameraDevice == null && this.recorder == null) {
                    prepareWarmSwitchSupport();
                }
                SurfaceTexture surfaceTexture = this.previewView.getSurfaceTexture();
                if (surfaceTexture == null) {
                    return;
                }
                if (this.dualActiveMode) {
                    int iMax = Math.max(1, Math.min(720, Math.min(this.previewView.getWidth(), this.previewView.getHeight())));
                    surfaceTexture.setDefaultBufferSize(iMax, iMax);
                } else {
                    surfaceTexture.setDefaultBufferSize(this.previewSize.getWidth(), this.previewSize.getHeight());
                }
                if (this.previewSurface == null) {
                    this.previewSurface = new Surface(surfaceTexture);
                }
                if (this.recorder == null) {
                    createRecordingPipelineWithFallback(surfaceTexture);
                } else {
                    RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
                    if (roundVideoGlProcessor != null) {
                        roundVideoGlProcessor.updateInputConfiguration(this.recordingSize, this.sourceCropSize, isCameraTimestampRealtime());
                        if (!this.dualActiveMode && this.activeInputSecondary) {
                            this.activeInputSecondary = false;
                            this.glProcessor.setSecondaryInputActive(false);
                        }
                        this.recordingSurface = this.glProcessor.getCameraSurface();
                        this.secondaryRecordingSurface = this.dualActiveMode ? this.glProcessor.getSecondaryCameraSurface() : null;
                    }
                }
                openInitialWarmCameraIfNeeded();
                this.opening = true;
                this.cameraOpenRequestedNs = SystemClock.elapsedRealtimeNanos();
                this.diagnostics.log("camera open requested: id=" + this.cameraId + ", preview=" + this.previewSize + ", recording=" + this.recordingSize + ", crop=" + this.sourceCropSize + ", selectionElapsedMs=" + jElapsedMs + ", dualActive=" + this.dualActiveMode);
                this.cameraManager.openCamera(this.cameraId, this.deviceCallback, this.cameraHandler);
            } catch (Exception e) {
                this.opening = false;
                reportError(e);
            }
        }
    }

    private void createRecordingPipeline() {
        this.glPreviewEnabled = this.dualActiveMode;
        RoundVideoMp4Writer roundVideoMp4Writer = this.writer;
        long j = this.timelineOffsetUs;
        int i = this.outputSize;
        int i2 = this.videoBitrate;
        int i3 = this.audioBitrate;
        int value = this.activeFrameRate.getValue();
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        final Callback callback = this.callback;
        Objects.requireNonNull(callback);
        RoundVideoCodecRecorder.ErrorListener errorListener = new RoundVideoCodecRecorder.ErrorListener() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda17
            @Override // org.telegram.utils.recorder.round.RoundVideoCodecRecorder.ErrorListener
            public final void onError(Exception exc) {
                callback.onError(exc);
            }
        };
        Callback callback2 = this.callback;
        Objects.requireNonNull(callback2);
        RoundVideoCodecRecorder roundVideoCodecRecorder = new RoundVideoCodecRecorder(roundVideoMp4Writer, j, i, i2, i3, value, roundVideoDiagnostics, errorListener, new RoundVideoCameraController$$ExternalSyntheticLambda18(callback2));
        this.recorder = roundVideoCodecRecorder;
        Surface surfacePrepare = roundVideoCodecRecorder.prepare();
        Size size = this.recordingSize;
        Surface surface = this.glPreviewEnabled ? this.previewSurface : null;
        boolean z = this.dualActiveMode;
        int i4 = this.outputSize;
        int i5 = this.sourceCropSize;
        boolean zIsCameraTimestampRealtime = isCameraTimestampRealtime();
        boolean z2 = this.compositionEnabled;
        RoundVideoDiagnostics roundVideoDiagnostics2 = this.diagnostics;
        RoundVideoCodecRecorder roundVideoCodecRecorder2 = this.recorder;
        final Callback callback3 = this.callback;
        Objects.requireNonNull(callback3);
        RoundVideoGlProcessor roundVideoGlProcessor = new RoundVideoGlProcessor(size, surfacePrepare, surface, z, i4, i5, zIsCameraTimestampRealtime, z2, roundVideoDiagnostics2, 0L, roundVideoCodecRecorder2, new RoundVideoGlProcessor.ErrorListener() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda19
            @Override // org.telegram.utils.recorder.round.RoundVideoGlProcessor.ErrorListener
            public final void onError(Exception exc) {
                callback3.onError(exc);
            }
        });
        this.glProcessor = roundVideoGlProcessor;
        roundVideoGlProcessor.setFirstFrameListener(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createRecordingPipeline$8();
            }
        });
        this.recordingSurface = this.glProcessor.start();
        if (this.dualActiveMode) {
            RoundVideoSession.CameraFacing cameraFacing = this.selectedFacing;
            RoundVideoSession.CameraFacing cameraFacing2 = RoundVideoSession.CameraFacing.FRONT;
            if (cameraFacing == cameraFacing2) {
                cameraFacing2 = RoundVideoSession.CameraFacing.BACK;
            }
            CameraSelection cameraSelectionSelectionForFacing = selectionForFacing(cameraFacing2);
            if (cameraSelectionSelectionForFacing == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Secondary camera selection is unavailable");
                return;
            } else {
                this.glProcessor.configureSecondaryInput(cameraSelectionSelectionForFacing.recordingSize, cameraSelectionSelectionForFacing.sourceCropSize, isCameraTimestampRealtime(cameraSelectionSelectionForFacing.characteristics));
                this.secondaryRecordingSurface = this.glProcessor.getSecondaryCameraSurface();
                return;
            }
        }
        this.secondaryRecordingSurface = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createRecordingPipeline$8() {
        Handler handler = this.cameraHandler;
        if (handler != null) {
            handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.startRecordingAfterFirstFrame();
                }
            });
        }
    }

    private void createRecordingPipelineWithFallback(SurfaceTexture surfaceTexture) {
        try {
            createRecordingPipeline();
        } catch (IOException | RuntimeException e) {
            if (!this.dualActiveMode) {
                throw e;
            }
            this.diagnostics.log("camera dual-active fallback: reason=GL pipeline initialization failed, error=" + e);
            RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
            if (roundVideoGlProcessor != null) {
                roundVideoGlProcessor.stop();
                this.glProcessor = null;
            }
            RoundVideoCodecRecorder roundVideoCodecRecorder = this.recorder;
            if (roundVideoCodecRecorder != null) {
                roundVideoCodecRecorder.stop();
                this.recorder = null;
            }
            this.recordingSurface = null;
            this.secondaryRecordingSurface = null;
            this.dualActiveMode = false;
            this.glPreviewEnabled = false;
            this.warmSwitchSupported = false;
            this.warmSwitchDisabled = true;
            surfaceTexture.setDefaultBufferSize(this.previewSize.getWidth(), this.previewSize.getHeight());
            createRecordingPipeline();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: switchCameraIfNeeded, reason: merged with bridge method [inline-methods] */
    public void lambda$setCameraFacing$2(RoundVideoSession.CameraFacing cameraFacing) {
        CameraSelection cameraSelection;
        if (!this.active || this.switchingCamera || cameraFacing == this.activeFacing) {
            return;
        }
        this.switchingCamera = true;
        this.notifySwitchCompletion = true;
        this.torchEnabled = false;
        this.torchVerificationPending = false;
        this.zoomProgress = 0.0f;
        this.zoomRatio = Float.NaN;
        this.callback.onCameraSwitchStarted(cameraFacing);
        this.cameraSwitchStartedNs = SystemClock.elapsedRealtimeNanos();
        this.lastSwitchUsedWarmDevice = false;
        this.diagnostics.log("camera device switch started: from=" + this.activeFacing + ", to=" + cameraFacing);
        if (switchDualActiveCamera(cameraFacing)) {
            return;
        }
        if (this.dualActiveMode) {
            this.pendingWarmSwitchFacing = cameraFacing;
            this.diagnostics.log("camera switch path: waiting for DUAL_ACTIVE standby session");
            return;
        }
        RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
        if (roundVideoGlProcessor != null) {
            roundVideoGlProcessor.beginCameraSwitch(this.activeFacing, cameraFacing);
        }
        if (switchToWarmCamera(cameraFacing)) {
            return;
        }
        if (this.warmCameraOpening && (cameraSelection = this.warmCameraSelection) != null && cameraSelection.facing == cameraFacing) {
            this.pendingWarmSwitchFacing = cameraFacing;
            this.diagnostics.log("camera switch path: waiting for warm device open");
        } else {
            continueSequentialSwitch();
        }
    }

    private boolean switchDualActiveCamera(final RoundVideoSession.CameraFacing cameraFacing) {
        CameraDevice cameraDevice;
        CameraDevice cameraDevice2;
        CameraCaptureSession cameraCaptureSession;
        CameraCaptureSession cameraCaptureSession2;
        CameraSelection cameraSelection;
        if (!this.dualActiveMode || !this.activeDualSessionConfigured || !this.warmDualSessionConfigured || (cameraDevice = this.cameraDevice) == null || (cameraDevice2 = this.warmCameraDevice) == null || (cameraCaptureSession = this.captureSession) == null || (cameraCaptureSession2 = this.warmCaptureSession) == null || (cameraSelection = this.warmCameraSelection) == null || cameraSelection.facing != cameraFacing || this.glProcessor == null) {
            return false;
        }
        this.cameraDevice = cameraDevice2;
        this.warmCameraDevice = cameraDevice;
        this.captureSession = cameraCaptureSession2;
        this.warmCaptureSession = cameraCaptureSession;
        CaptureRequest.Builder builder = this.repeatingBuilder;
        this.repeatingBuilder = this.warmRepeatingBuilder;
        this.warmRepeatingBuilder = builder;
        Surface surface = this.recordingSurface;
        this.recordingSurface = this.secondaryRecordingSurface;
        this.secondaryRecordingSurface = surface;
        CameraSelection cameraSelectionSelectionForFacing = selectionForFacing(this.activeFacing);
        CameraSelection cameraSelection2 = this.warmCameraSelection;
        this.warmCameraSelection = cameraSelectionSelectionForFacing;
        applySelection(cameraSelection2);
        this.activeFacing = cameraFacing;
        try {
            CaptureRequest.Builder builderCreateRepeatingRequestBuilder = createRepeatingRequestBuilder(this.cameraDevice, this.recordingSurface, cameraSelection2, true, false);
            this.repeatingBuilder = builderCreateRepeatingRequestBuilder;
            this.captureSession.setRepeatingRequest(builderCreateRepeatingRequestBuilder.build(), this.captureCallback, this.cameraHandler);
            CameraSelection cameraSelection3 = this.warmCameraSelection;
            if (cameraSelection3 != null) {
                CaptureRequest.Builder builderCreateRepeatingRequestBuilder2 = createRepeatingRequestBuilder(this.warmCameraDevice, this.secondaryRecordingSurface, cameraSelection3, false, false);
                this.warmRepeatingBuilder = builderCreateRepeatingRequestBuilder2;
                this.warmCaptureSession.setRepeatingRequest(builderCreateRepeatingRequestBuilder2.build(), this.captureCallback, this.cameraHandler);
            }
            boolean z = !this.activeInputSecondary;
            this.activeInputSecondary = z;
            final long j = this.cameraSwitchStartedNs;
            this.glProcessor.setSecondaryInputActive(z, new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$switchDualActiveCamera$10(cameraFacing, j);
                }
            });
            this.activeDualSessionConfigured = true;
            this.warmDualSessionConfigured = true;
            this.lastSwitchUsedWarmDevice = true;
            this.notifySwitchCompletion = false;
            this.switchingCamera = false;
            this.awaitingSwitchPreviewFrame = false;
            resetCaptureFpsMeasurement();
            this.diagnostics.log("camera switch path: DUAL_ACTIVE, activeId=" + this.cameraDevice.getId() + ", standbyId=" + this.warmCameraDevice.getId() + ", input=" + (this.activeInputSecondary ? 1 : 0) + ", elapsedMs=" + elapsedMs(this.cameraSwitchStartedNs));
            this.previewView.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.updatePreviewTransform();
                }
            });
            this.callback.onConfigured(new CameraInfo(this.cameraId, this.activeFacing, this.activeCameraResolution, this.activeFrameRate, this.previewSize, this.recordingSize, this.maximumZoomRatio, isTorchAvailable()), true);
            return true;
        } catch (CameraAccessException | IllegalArgumentException | IllegalStateException e) {
            fallbackFromDualMode("role switch request failed", e, false);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchDualActiveCamera$10(final RoundVideoSession.CameraFacing cameraFacing, final long j) {
        this.previewView.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$switchDualActiveCamera$9(cameraFacing, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchDualActiveCamera$9(RoundVideoSession.CameraFacing cameraFacing, long j) {
        if (this.active && this.activeFacing == cameraFacing) {
            this.diagnostics.log("camera switch first preview frame: path=DUAL_ACTIVE, totalElapsedMs=" + elapsedMs(j));
            this.callback.onCameraSwitchFirstFrame();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completePendingDualSwitchIfReady() {
        RoundVideoSession.CameraFacing cameraFacing = this.pendingWarmSwitchFacing;
        if (cameraFacing != null && this.dualActiveMode && this.activeDualSessionConfigured && this.warmDualSessionConfigured) {
            this.pendingWarmSwitchFacing = null;
            if (switchDualActiveCamera(cameraFacing)) {
                return;
            }
            this.switchingCamera = false;
            lambda$setCameraFacing$2(cameraFacing);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void continueSequentialSwitch() {
        String str;
        this.pendingWarmSwitchFacing = null;
        this.lastSwitchUsedWarmDevice = false;
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        if (this.warmSwitchSupported) {
            str = ", reason=warm device not ready";
        } else {
            str = ", reason=concurrent pair unavailable";
        }
        roundVideoDiagnostics.log("camera switch path: sequential".concat(str));
        closeCaptureSession();
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null) {
            this.cameraDevice = null;
            this.cameraCloseRequestedNs = SystemClock.elapsedRealtimeNanos();
            cameraDevice.close();
        } else {
            if (this.opening) {
                return;
            }
            this.switchingCamera = false;
            openCameraIfReady();
        }
    }

    private void openInitialWarmCameraIfNeeded() {
        if (!this.warmSwitchSupported || this.warmSwitchDisabled || this.warmCameraOpening || this.warmCameraDevice != null) {
            return;
        }
        RoundVideoSession.CameraFacing cameraFacing = this.selectedFacing;
        RoundVideoSession.CameraFacing cameraFacing2 = RoundVideoSession.CameraFacing.FRONT;
        if (cameraFacing == cameraFacing2) {
            cameraFacing2 = RoundVideoSession.CameraFacing.BACK;
        }
        requestWarmCameraOpen(selectionForFacing(cameraFacing2));
    }

    @SuppressLint({"MissingPermission"})
    private void requestWarmCameraOpen(CameraSelection cameraSelection) {
        if (cameraSelection == null || this.warmCameraOpening || this.warmCameraDevice != null) {
            return;
        }
        try {
            this.warmCameraSelection = cameraSelection;
            this.warmCameraOpening = true;
            this.warmCameraOpenRequestedNs = SystemClock.elapsedRealtimeNanos();
            this.diagnostics.log("warm camera open requested: id=" + cameraSelection.id + ", facing=" + cameraSelection.facing);
            this.cameraManager.openCamera(cameraSelection.id, this.warmDeviceCallback, this.cameraHandler);
        } catch (Exception e) {
            this.warmCameraOpening = false;
            disableWarmSwitch("open request failed", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean switchToWarmCamera(RoundVideoSession.CameraFacing cameraFacing) {
        CameraDevice cameraDevice = this.warmCameraDevice;
        CameraSelection cameraSelection = this.warmCameraSelection;
        if (cameraDevice == null || cameraSelection == null || cameraSelection.facing != cameraFacing) {
            return false;
        }
        SurfaceTexture surfaceTexture = this.previewView.getSurfaceTexture();
        if (surfaceTexture == null) {
            disableWarmSwitch("preview SurfaceTexture unavailable", null);
            return false;
        }
        CameraDevice cameraDevice2 = this.cameraDevice;
        RoundVideoSession.CameraFacing cameraFacing2 = this.activeFacing;
        CameraSelection cameraSelectionSelectionForFacing = cameraFacing2 != null ? selectionForFacing(cameraFacing2) : null;
        closeCaptureSession();
        this.warmCameraDevice = cameraDevice2;
        this.warmCameraSelection = cameraSelectionSelectionForFacing;
        this.cameraDevice = cameraDevice;
        applySelection(cameraSelection);
        surfaceTexture.setDefaultBufferSize(this.previewSize.getWidth(), this.previewSize.getHeight());
        RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
        if (roundVideoGlProcessor != null) {
            roundVideoGlProcessor.updateInputConfiguration(this.recordingSize, this.sourceCropSize, isCameraTimestampRealtime());
            this.recordingSurface = this.glProcessor.getCameraSurface();
        }
        this.lastSwitchUsedWarmDevice = true;
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        StringBuilder sb = new StringBuilder("camera switch path: warm device, targetId=");
        sb.append(this.cameraId);
        sb.append(", standbyId=");
        sb.append(cameraDevice2 == null ? "none" : cameraDevice2.getId());
        sb.append(", preparationMs=");
        sb.append(elapsedMs(this.cameraSwitchStartedNs));
        roundVideoDiagnostics.log(sb.toString());
        createCaptureSession();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWarmDeviceFailure(CameraDevice cameraDevice, String str, Exception exc) {
        String str2;
        boolean z = cameraDevice == this.cameraDevice;
        if (!z && this.dualActiveMode) {
            RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
            StringBuilder sb = new StringBuilder("camera dual-active fallback: reason=standby device ");
            sb.append(str);
            if (exc == null) {
                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                str2 = ", error=" + exc;
            }
            sb.append(str2);
            roundVideoDiagnostics.log(sb.toString());
            this.dualActiveMode = false;
            this.warmSwitchSupported = false;
            this.warmSwitchDisabled = true;
            this.warmCameraOpening = false;
            this.warmCameraDevice = null;
            this.warmCameraSelection = null;
            closeWarmCaptureSession();
            this.closingStandbyDevice = cameraDevice;
            this.retryCaptureSessionAfterStandbyClose = this.active && this.cameraDevice != null && this.captureSession == null && !this.switchingCamera;
            cameraDevice.close();
            return;
        }
        if (cameraDevice == this.warmCameraDevice) {
            this.warmCameraDevice = null;
        }
        this.warmCameraOpening = false;
        cameraDevice.close();
        if (z) {
            closeCaptureSession();
            this.cameraDevice = null;
            if (exc != null) {
                reportError(exc);
                return;
            }
            reportError(new IllegalStateException("Active warm camera " + str));
            return;
        }
        disableWarmSwitch("standby device " + str, exc);
        if (this.pendingWarmSwitchFacing != null) {
            continueSequentialSwitch();
            return;
        }
        if (!this.active || this.cameraDevice == null || this.captureSession != null || this.switchingCamera) {
            return;
        }
        this.diagnostics.log("warm camera failed during startup; configuring active camera only");
        createCaptureSession();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disableWarmSwitch(String str, Exception exc) {
        String str2;
        this.warmSwitchDisabled = true;
        this.warmSwitchSupported = false;
        this.dualActiveMode = false;
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        StringBuilder sb = new StringBuilder("camera warm-switch disabled: reason=");
        sb.append(str);
        if (exc == null) {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str2 = ", error=" + exc;
        }
        sb.append(str2);
        roundVideoDiagnostics.log(sb.toString());
        closeWarmCaptureSession();
        CameraDevice cameraDevice = this.warmCameraDevice;
        this.warmCameraDevice = null;
        this.warmCameraSelection = null;
        if (cameraDevice == null || cameraDevice == this.cameraDevice) {
            return;
        }
        this.closingStandbyDevice = cameraDevice;
        cameraDevice.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryCaptureSessionWithoutWarmCamera(String str, Exception exc) {
        this.retryCaptureSessionAfterStandbyClose = true;
        disableWarmSwitch(str, exc);
        if (this.closingStandbyDevice == null) {
            this.retryCaptureSessionAfterStandbyClose = false;
            createCaptureSession();
        } else {
            this.diagnostics.log("capture session retry waiting for standby camera close: id=" + this.closingStandbyDevice.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleStandbyCameraClosed(CameraDevice cameraDevice) {
        if (cameraDevice != this.closingStandbyDevice) {
            return false;
        }
        this.closingStandbyDevice = null;
        this.diagnostics.log("standby camera closed: id=" + cameraDevice.getId());
        if (this.retryCaptureSessionAfterStandbyClose) {
            this.retryCaptureSessionAfterStandbyClose = false;
            if (!this.active || this.stopping || this.cameraDevice == null) {
                return true;
            }
            this.diagnostics.log("retrying capture session after standby camera closed");
            createCaptureSession();
            return true;
        }
        if (!this.switchingCamera || this.pendingWarmSwitchFacing == null) {
            return true;
        }
        this.diagnostics.log("continuing pending switch after DUAL_ACTIVE fallback");
        continueSequentialSwitch();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recoverWarmSwitchAsSequential(String str, Exception exc) {
        String str2;
        if (this.warmSwitchRecoveryPending) {
            return;
        }
        this.warmSwitchRecoveryPending = true;
        this.warmSwitchDisabled = true;
        this.warmSwitchSupported = false;
        this.retryCaptureSessionAfterStandbyClose = false;
        this.pendingWarmSwitchFacing = null;
        this.lastSwitchUsedWarmDevice = false;
        this.opening = false;
        closeCaptureSession();
        closeWarmCaptureSession();
        CameraDevice cameraDevice = this.cameraDevice;
        this.warmRecoveryActiveDevice = cameraDevice;
        CameraDevice cameraDevice2 = this.warmCameraDevice;
        this.warmRecoveryStandbyDevice = cameraDevice2;
        this.cameraDevice = null;
        this.warmCameraDevice = null;
        this.warmCameraSelection = null;
        CameraDevice cameraDevice3 = this.closingStandbyDevice;
        if (cameraDevice3 == cameraDevice || cameraDevice3 == cameraDevice2) {
            this.closingStandbyDevice = null;
        }
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        StringBuilder sb = new StringBuilder("camera warm-switch recovery started: reason=");
        sb.append(str);
        sb.append(", target=");
        sb.append(this.requestedFacing);
        sb.append(", targetId=");
        sb.append(deviceId(this.warmRecoveryActiveDevice));
        sb.append(", standbyId=");
        sb.append(deviceId(this.warmRecoveryStandbyDevice));
        sb.append(", fps=");
        RoundVideoSession.FrameRate frameRate = this.activeFrameRate;
        sb.append(frameRate == null ? "unknown" : Integer.valueOf(frameRate.getValue()));
        sb.append(", switchElapsedMs=");
        sb.append(elapsedMs(this.cameraSwitchStartedNs));
        if (exc == null) {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str2 = ", error=" + exc;
        }
        sb.append(str2);
        roundVideoDiagnostics.log(sb.toString());
        CameraDevice cameraDevice4 = this.warmRecoveryActiveDevice;
        if (cameraDevice4 != null) {
            cameraDevice4.close();
        }
        CameraDevice cameraDevice5 = this.warmRecoveryStandbyDevice;
        if (cameraDevice5 != null && cameraDevice5 != this.warmRecoveryActiveDevice) {
            cameraDevice5.close();
        }
        maybeCompleteWarmSwitchRecovery();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isWarmSwitchRecoveryDevice(CameraDevice cameraDevice) {
        if (this.warmSwitchRecoveryPending) {
            return cameraDevice == this.warmRecoveryActiveDevice || cameraDevice == this.warmRecoveryStandbyDevice;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleWarmSwitchRecoveryClosed(CameraDevice cameraDevice) {
        if (!isWarmSwitchRecoveryDevice(cameraDevice)) {
            return false;
        }
        if (cameraDevice == this.warmRecoveryActiveDevice) {
            this.warmRecoveryActiveDevice = null;
        }
        if (cameraDevice == this.warmRecoveryStandbyDevice) {
            this.warmRecoveryStandbyDevice = null;
        }
        this.diagnostics.log("camera closed for warm-switch recovery: id=" + cameraDevice.getId() + ", targetRemaining=" + deviceId(this.warmRecoveryActiveDevice) + ", standbyRemaining=" + deviceId(this.warmRecoveryStandbyDevice));
        maybeCompleteWarmSwitchRecovery();
        return true;
    }

    private void maybeCompleteWarmSwitchRecovery() {
        if (this.warmSwitchRecoveryPending && this.warmRecoveryActiveDevice == null && this.warmRecoveryStandbyDevice == null) {
            this.warmSwitchRecoveryPending = false;
            this.switchingCamera = false;
            this.diagnostics.log("camera warm-switch recovery reopening target sequentially: facing=" + this.requestedFacing + ", switchElapsedMs=" + elapsedMs(this.cameraSwitchStartedNs));
            if (!this.active || this.stopping) {
                return;
            }
            openCameraIfReady();
        }
    }

    private static String deviceId(CameraDevice cameraDevice) {
        return cameraDevice == null ? "none" : cameraDevice.getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createDualCaptureSessions() {
        CameraDevice cameraDevice = this.cameraDevice;
        CameraDevice cameraDevice2 = this.warmCameraDevice;
        if (!this.dualActiveMode || cameraDevice == null || cameraDevice2 == null || this.recordingSurface == null || this.secondaryRecordingSurface == null || this.captureSession != null || this.warmCaptureSession != null) {
            return;
        }
        this.activeDualSessionConfigured = false;
        this.warmDualSessionConfigured = false;
        try {
            this.captureSessionRequestedNs = SystemClock.elapsedRealtimeNanos();
            this.diagnostics.log("dual capture sessions requested: activeId=" + cameraDevice.getId() + ", standbyId=" + cameraDevice2.getId() + ", input=" + this.recordingSize + ", fpsRange=" + this.activeFpsRange);
            cameraDevice.createCaptureSession(Arrays.asList(this.recordingSurface), this.sessionCallback, this.cameraHandler);
            cameraDevice2.createCaptureSession(Arrays.asList(this.secondaryRecordingSurface), this.warmSessionCallback, this.cameraHandler);
        } catch (CameraAccessException | IllegalArgumentException e) {
            fallbackFromDualMode("session request failed", e, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fallbackFromDualMode(String str, Exception exc, boolean z) {
        String str2;
        if (this.dualActiveMode) {
            RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
            StringBuilder sb = new StringBuilder("camera dual-active fallback: reason=");
            sb.append(str);
            sb.append(", keepActive=");
            sb.append(z);
            if (exc == null) {
                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                str2 = ", error=" + exc;
            }
            sb.append(str2);
            roundVideoDiagnostics.log(sb.toString());
            this.dualActiveMode = false;
            this.warmSwitchSupported = false;
            this.warmSwitchDisabled = true;
            this.activeDualSessionConfigured = false;
            this.warmDualSessionConfigured = false;
            if (!z || this.captureSession == null) {
                recoverWarmSwitchAsSequential("DUAL_ACTIVE " + str, exc);
                return;
            }
            closeWarmCaptureSession();
            CameraDevice cameraDevice = this.warmCameraDevice;
            this.warmCameraDevice = null;
            this.warmCameraSelection = null;
            if (cameraDevice != null) {
                this.closingStandbyDevice = cameraDevice;
                cameraDevice.close();
            }
            if (this.closingStandbyDevice == null && this.switchingCamera && this.pendingWarmSwitchFacing != null) {
                continueSequentialSwitch();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void createCaptureSession() {
        List<Surface> listAsList;
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice == null || this.previewSurface == null || this.recordingSurface == null) {
            return;
        }
        try {
            this.captureSessionRequestedNs = SystemClock.elapsedRealtimeNanos();
            this.diagnostics.log("capture session requested: preview=" + this.previewSize + ", recording=" + this.recordingSize + ", fpsRange=" + this.activeFpsRange + ", glPreview=" + this.glPreviewEnabled);
            if (this.glPreviewEnabled) {
                listAsList = Arrays.asList(this.recordingSurface);
            } else {
                listAsList = Arrays.asList(this.previewSurface, this.recordingSurface);
            }
            cameraDevice.createCaptureSession(listAsList, this.sessionCallback, this.cameraHandler);
        } catch (CameraAccessException e) {
            e = e;
            if (this.warmCameraDevice == null && !this.warmSwitchDisabled) {
                if (this.switchingCamera && this.lastSwitchUsedWarmDevice) {
                    recoverWarmSwitchAsSequential("session request failed", e);
                    return;
                }
                this.diagnostics.log("camera session request failed with warm device open: " + e);
                retryCaptureSessionWithoutWarmCamera("session request failed", e);
                return;
            }
            if (this.activeFrameRate != RoundVideoSession.FrameRate.FPS_60) {
                fallbackTo30Fps("60 fps session creation rejected", e);
            } else {
                reportError(e);
            }
        } catch (IllegalArgumentException e2) {
            e = e2;
            if (this.warmCameraDevice == null) {
            }
            if (this.activeFrameRate != RoundVideoSession.FrameRate.FPS_60) {
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.utils.recorder.round.RoundVideoCameraController$5 */
    public class C67475 extends CameraCaptureSession.StateCallback {
        public C67475() {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            String string;
            if (!RoundVideoCameraController.this.active || RoundVideoCameraController.this.cameraDevice == null || cameraCaptureSession.getDevice() != RoundVideoCameraController.this.cameraDevice) {
                RoundVideoCameraController.this.diagnostics.log("stale capture session ignored: deviceId=" + cameraCaptureSession.getDevice().getId());
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
                boolean z = RoundVideoCameraController.this.dualActiveMode && RoundVideoCameraController.this.pendingWarmSwitchFacing != null;
                boolean z2 = RoundVideoCameraController.this.notifySwitchCompletion && !z;
                RoundVideoCameraController.this.submitRepeatingRequest();
                if (RoundVideoCameraController.this.dualActiveMode) {
                    RoundVideoCameraController.this.activeDualSessionConfigured = true;
                }
                if (!z) {
                    RoundVideoCameraController.this.notifySwitchCompletion = false;
                }
                if (z2) {
                    RoundVideoCameraController.this.switchingCamera = false;
                }
                RoundVideoCameraController.this.awaitingSwitchPreviewFrame = z2;
                RoundVideoDiagnostics roundVideoDiagnostics = RoundVideoCameraController.this.diagnostics;
                StringBuilder sb = new StringBuilder("capture session configured: facing=");
                sb.append(RoundVideoCameraController.this.activeFacing);
                sb.append(", fpsRange=");
                sb.append(RoundVideoCameraController.this.activeFpsRange);
                sb.append(", elapsedMs=");
                sb.append(RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.captureSessionRequestedNs));
                sb.append(", segmentElapsedMs=");
                sb.append(RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.segmentStartedNs));
                if (z2) {
                    StringBuilder sb2 = new StringBuilder(", switchPath=");
                    sb2.append(RoundVideoCameraController.this.lastSwitchUsedWarmDevice ? "WARM_DEVICE" : "SEQUENTIAL");
                    sb2.append(", switchElapsedMs=");
                    sb2.append(RoundVideoCameraController.elapsedMs(RoundVideoCameraController.this.cameraSwitchStartedNs));
                    string = sb2.toString();
                } else {
                    string = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                sb.append(string);
                roundVideoDiagnostics.log(sb.toString());
                TextureView textureView = RoundVideoCameraController.this.previewView;
                final RoundVideoCameraController roundVideoCameraController3 = RoundVideoCameraController.this;
                textureView.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        roundVideoCameraController3.updatePreviewTransform();
                    }
                });
                RoundVideoCameraController.this.callback.onConfigured(new CameraInfo(RoundVideoCameraController.this.cameraId, RoundVideoCameraController.this.activeFacing, RoundVideoCameraController.this.activeCameraResolution, RoundVideoCameraController.this.activeFrameRate, RoundVideoCameraController.this.previewSize, RoundVideoCameraController.this.recordingSize, RoundVideoCameraController.this.maximumZoomRatio, RoundVideoCameraController.this.isTorchAvailable()), z2);
                RoundVideoCameraController roundVideoCameraController4 = RoundVideoCameraController.this;
                if (z) {
                    roundVideoCameraController4.completePendingDualSwitchIfReady();
                } else if (roundVideoCameraController4.requestedFacing != RoundVideoCameraController.this.activeFacing) {
                    RoundVideoCameraController roundVideoCameraController5 = RoundVideoCameraController.this;
                    roundVideoCameraController5.lambda$setCameraFacing$2(roundVideoCameraController5.requestedFacing);
                }
            } catch (Exception e) {
                boolean z3 = RoundVideoCameraController.this.dualActiveMode;
                RoundVideoCameraController roundVideoCameraController6 = RoundVideoCameraController.this;
                if (z3) {
                    roundVideoCameraController6.fallbackFromDualMode("active request submission failed", e, false);
                    return;
                }
                if (roundVideoCameraController6.switchingCamera && RoundVideoCameraController.this.lastSwitchUsedWarmDevice) {
                    RoundVideoCameraController.this.recoverWarmSwitchAsSequential("request submission failed", e);
                    return;
                }
                RoundVideoSession.FrameRate frameRate = RoundVideoCameraController.this.activeFrameRate;
                RoundVideoSession.FrameRate frameRate2 = RoundVideoSession.FrameRate.FPS_60;
                RoundVideoCameraController roundVideoCameraController7 = RoundVideoCameraController.this;
                if (frameRate == frameRate2) {
                    roundVideoCameraController7.fallbackTo30Fps("60 fps request submission rejected", e);
                } else {
                    roundVideoCameraController7.reportError(e);
                }
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            cameraCaptureSession.close();
            if (RoundVideoCameraController.this.cameraDevice == null || cameraCaptureSession.getDevice() != RoundVideoCameraController.this.cameraDevice) {
                RoundVideoCameraController.this.diagnostics.log("stale capture session configuration failure ignored: id=" + cameraCaptureSession.getDevice().getId());
                return;
            }
            if (RoundVideoCameraController.this.captureSession == cameraCaptureSession) {
                RoundVideoCameraController.this.captureSession = null;
                RoundVideoCameraController.this.repeatingBuilder = null;
            }
            if (!RoundVideoCameraController.this.active || RoundVideoCameraController.this.cameraDevice == null || RoundVideoCameraController.this.stopping) {
                RoundVideoCameraController.this.diagnostics.log("stale capture session configuration failure ignored");
                return;
            }
            boolean z = RoundVideoCameraController.this.dualActiveMode;
            RoundVideoCameraController roundVideoCameraController = RoundVideoCameraController.this;
            if (z) {
                roundVideoCameraController.fallbackFromDualMode("active session configuration failed", null, false);
                return;
            }
            if (roundVideoCameraController.warmCameraDevice != null && !RoundVideoCameraController.this.warmSwitchDisabled) {
                if (RoundVideoCameraController.this.switchingCamera && RoundVideoCameraController.this.lastSwitchUsedWarmDevice) {
                    RoundVideoCameraController.this.recoverWarmSwitchAsSequential("session configuration failed", null);
                    return;
                } else {
                    RoundVideoCameraController.this.diagnostics.log("camera session configuration failed with warm device open");
                    RoundVideoCameraController.this.retryCaptureSessionWithoutWarmCamera("session configuration failed", null);
                    return;
                }
            }
            RoundVideoSession.FrameRate frameRate = RoundVideoCameraController.this.activeFrameRate;
            RoundVideoSession.FrameRate frameRate2 = RoundVideoSession.FrameRate.FPS_60;
            RoundVideoCameraController roundVideoCameraController2 = RoundVideoCameraController.this;
            if (frameRate == frameRate2) {
                roundVideoCameraController2.fallbackTo30Fps("60 fps session configuration failed", null);
            } else {
                roundVideoCameraController2.reportError(new IllegalStateException("Camera capture session configuration failed"));
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
            roundVideoCodecRecorder2.startRecording(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startRecordingAfterFirstFrame$12(roundVideoCodecRecorder2);
                }
            }, new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startRecordingAfterFirstFrame$14(roundVideoCodecRecorder2);
                }
            });
            this.diagnostics.log("first camera frame received; audio startup requested: segmentElapsedMs=" + elapsedMs(this.segmentStartedNs));
        } catch (RuntimeException e) {
            cancelCommonStartWait();
            reportError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecordingAfterFirstFrame$12(final RoundVideoCodecRecorder roundVideoCodecRecorder) {
        postToCameraThread(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startRecordingAfterFirstFrame$11(roundVideoCodecRecorder);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRecordingAfterFirstFrame$14(final RoundVideoCodecRecorder roundVideoCodecRecorder) {
        postToCameraThread(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startRecordingAfterFirstFrame$13(roundVideoCodecRecorder);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startVideoAfterAudioReady, reason: merged with bridge method [inline-methods] */
    public void lambda$startRecordingAfterFirstFrame$11(RoundVideoCodecRecorder roundVideoCodecRecorder) {
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
    public void lambda$startRecordingAfterFirstFrame$13(RoundVideoCodecRecorder roundVideoCodecRecorder) {
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
    /* JADX WARN: Removed duplicated region for block: B:19:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0028  */
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
            if (!this.dualActiveMode) {
                fallbackFromDualMode("active repeating request failed", e, false);
            } else if (this.activeFrameRate == RoundVideoSession.FrameRate.FPS_60) {
                fallbackTo30Fps("60 fps updated request rejected", e);
            } else {
                reportError(e);
            }
        } catch (IllegalArgumentException e2) {
            e = e2;
            if (!this.dualActiveMode) {
            }
        } catch (IllegalStateException e3) {
            if (this.dualActiveMode) {
                fallbackFromDualMode("active repeating request rejected", e3, false);
            } else {
                recoverFromClosedCamera(cameraCaptureSession, e3);
            }
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
    public CaptureRequest.Builder createRepeatingRequestBuilder(boolean z) {
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice == null || this.recordingSurface == null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Camera request surfaces are unavailable");
            return null;
        }
        return createRepeatingRequestBuilder(cameraDevice, this.recordingSurface, captureSelection(), true, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CaptureRequest.Builder createRepeatingRequestBuilder(CameraDevice cameraDevice, Surface surface, CameraSelection cameraSelection, boolean z, boolean z2) throws CameraAccessException {
        Surface surface2;
        CaptureRequest.Builder builderCreateCaptureRequest = cameraDevice.createCaptureRequest(3);
        if (z && !this.glPreviewEnabled && (surface2 = this.previewSurface) != null) {
            builderCreateCaptureRequest.addTarget(surface2);
        }
        builderCreateCaptureRequest.addTarget(surface);
        builderCreateCaptureRequest.set(CaptureRequest.CONTROL_MODE, 1);
        builderCreateCaptureRequest.set(CaptureRequest.CONTROL_CAPTURE_INTENT, 3);
        if (!z || this.focusRegion == null || !cameraSelection.id.equals(this.focusCameraId) || !RoundVideoCamera2Helper.applyFocusRegion(builderCreateCaptureRequest, cameraSelection.characteristics, this.focusRegion)) {
            setContinuousVideoAf(builderCreateCaptureRequest, cameraSelection.characteristics);
        }
        if (!this.dualActiveMode) {
            RoundVideoCamera2Helper.applyStabilization(builderCreateCaptureRequest, cameraSelection.characteristics);
        }
        Range<Integer> range = cameraSelection.fpsRange;
        if (range != null) {
            builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE, range);
            if (z2) {
                this.diagnostics.log("capture FPS range selected: " + cameraSelection.fpsRange + ", cameraId=" + cameraSelection.id + ", active=" + z);
            }
        }
        if (z) {
            applyZoom(builderCreateCaptureRequest);
            applyTorch(builderCreateCaptureRequest);
        } else {
            if (contains((int[]) cameraSelection.characteristics.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES), 1)) {
                builderCreateCaptureRequest.set(CaptureRequest.CONTROL_AE_MODE, 1);
            }
            builderCreateCaptureRequest.set(CaptureRequest.FLASH_MODE, 0);
            RoundVideoCamera2Helper.applyInitialZoom(builderCreateCaptureRequest, cameraSelection.characteristics);
        }
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
        float currentZoomRatio = getCurrentZoomRatio();
        if (Build.VERSION.SDK_INT >= 30) {
            CameraCharacteristics cameraCharacteristics = this.characteristics;
            Range range = cameraCharacteristics == null ? null : (Range) cameraCharacteristics.get(CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE);
            if (range != null) {
                builder.set(CaptureRequest.CONTROL_ZOOM_RATIO, Float.valueOf(clamp(currentZoomRatio, ((Float) range.getLower()).floatValue(), ((Float) range.getUpper()).floatValue())));
                return;
            }
        }
        CameraCharacteristics cameraCharacteristics2 = this.characteristics;
        Rect rect = cameraCharacteristics2 != null ? (Rect) cameraCharacteristics2.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE) : null;
        if (rect == null) {
            return;
        }
        float fMax = Math.max(1.0f, currentZoomRatio);
        int iMax = Math.max(1, Math.round(rect.width() / fMax));
        int iMax2 = Math.max(1, Math.round(rect.height() / fMax));
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
        int i2;
        String[] strArr;
        CameraCandidate cameraCandidate;
        CameraCandidate cameraCandidate2;
        String str2;
        String str3;
        CameraCandidate cameraCandidate3;
        int i3;
        FrameRatePlan frameRatePlanResolveFrameRate;
        RoundVideoSession.FrameRate frameRate;
        CameraSelection cameraSelectionSelectionForFacing = selectionForFacing(cameraFacing);
        if (cameraSelectionSelectionForFacing != null) {
            applySelection(cameraSelectionSelectionForFacing);
            this.diagnostics.log("camera outputs restored from cache: id=" + cameraSelectionSelectionForFacing.id + ", facing=" + cameraFacing + ", preview=" + cameraSelectionSelectionForFacing.previewSize + ", recording=" + cameraSelectionSelectionForFacing.recordingSize + ", fps=" + cameraSelectionSelectionForFacing.frameRate.getValue());
            return;
        }
        resolveSessionFrameRatePolicy();
        int i4 = cameraFacing == RoundVideoSession.CameraFacing.FRONT ? 0 : 1;
        String[] cameraIdList = this.cameraManager.getCameraIdList();
        int length = cameraIdList.length;
        CameraCandidate cameraCandidate4 = null;
        CameraCandidate cameraCandidate5 = null;
        int i5 = 0;
        while (i5 < length) {
            CameraCandidate cameraCandidate6 = cameraCandidate4;
            String str4 = cameraIdList[i5];
            CameraCharacteristics cameraCharacteristics = this.cameraManager.getCameraCharacteristics(str4);
            Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING);
            if (num == null || num.intValue() != i4) {
                i = i5;
                i2 = i4;
                strArr = cameraIdList;
                cameraCandidate = cameraCandidate5;
                cameraCandidate2 = cameraCandidate6;
                cameraCandidate4 = cameraCandidate2;
            } else {
                StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) cameraCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                if (streamConfigurationMap == null) {
                    this.diagnostics.log("camera candidate rejected: id=" + str4 + ", reason=no stream map");
                    i = i5;
                    i2 = i4;
                    strArr = cameraIdList;
                    cameraCandidate = cameraCandidate5;
                    cameraCandidate2 = cameraCandidate6;
                    cameraCandidate4 = cameraCandidate2;
                } else {
                    Size[] outputSizes = streamConfigurationMap.getOutputSizes(SurfaceTexture.class);
                    if (outputSizes != null) {
                        String str5 = str4;
                        if (outputSizes.length == 0) {
                            strArr = cameraIdList;
                            cameraCandidate = cameraCandidate5;
                            str2 = str5;
                        } else {
                            try {
                                cameraCandidate3 = cameraCandidate5;
                                try {
                                    i3 = i5;
                                } catch (RuntimeException e) {
                                    e = e;
                                    i = i5;
                                    i2 = i4;
                                    strArr = cameraIdList;
                                    cameraCandidate = cameraCandidate3;
                                    str3 = str5;
                                }
                            } catch (RuntimeException e2) {
                                e = e2;
                                i = i5;
                                i2 = i4;
                                strArr = cameraIdList;
                                cameraCandidate = cameraCandidate5;
                                cameraCandidate2 = cameraCandidate6;
                            }
                            try {
                                OutputPair outputPairChooseOutputPair = chooseOutputPair(outputSizes, this.outputResolution, this.outputSize, this.requestedCameraResolution);
                                i2 = i4;
                                strArr = cameraIdList;
                                cameraCandidate = cameraCandidate3;
                                i = i3;
                                cameraCandidate2 = cameraCandidate6;
                                try {
                                    frameRatePlanResolveFrameRate = resolveFrameRate(str5, cameraCharacteristics, streamConfigurationMap, outputSizes, outputPairChooseOutputPair);
                                    str5 = str5;
                                    try {
                                        cameraCandidate4 = new CameraCandidate(str5, cameraCharacteristics, outputSizes, outputPairChooseOutputPair, frameRatePlanResolveFrameRate);
                                        str3 = str5;
                                    } catch (RuntimeException e3) {
                                        e = e3;
                                        str3 = str5;
                                        this.diagnostics.log("camera candidate rejected: id=" + str3 + ", reason=" + e);
                                        cameraCandidate4 = cameraCandidate2;
                                        cameraCandidate5 = cameraCandidate;
                                        i5 = i + 1;
                                        i4 = i2;
                                        cameraIdList = strArr;
                                    }
                                    try {
                                        this.diagnostics.log("camera candidate accepted: id=" + str3 + ", facing=" + cameraFacing + ", flashAvailable=" + hasFlashUnit(cameraCharacteristics) + ", fps=" + frameRatePlanResolveFrameRate.frameRate.getValue() + ", preview=" + frameRatePlanResolveFrameRate.outputPair.preview + ", recording=" + frameRatePlanResolveFrameRate.outputPair.recording);
                                        if (cameraCandidate == null || isPreferredCameraCandidate(cameraCandidate4, cameraCandidate, cameraFacing)) {
                                            cameraCandidate = cameraCandidate4;
                                        }
                                        frameRate = this.requestedFrameRate;
                                    } catch (RuntimeException e4) {
                                        e = e4;
                                        this.diagnostics.log("camera candidate rejected: id=" + str3 + ", reason=" + e);
                                    }
                                } catch (RuntimeException e5) {
                                    e = e5;
                                    str3 = str5;
                                }
                            } catch (RuntimeException e6) {
                                e = e6;
                                i2 = i4;
                                strArr = cameraIdList;
                                cameraCandidate = cameraCandidate3;
                                str3 = str5;
                                i = i3;
                                cameraCandidate2 = cameraCandidate6;
                                this.diagnostics.log("camera candidate rejected: id=" + str3 + ", reason=" + e);
                                cameraCandidate4 = cameraCandidate2;
                                cameraCandidate5 = cameraCandidate;
                                i5 = i + 1;
                                i4 = i2;
                                cameraIdList = strArr;
                            }
                            if ((frameRate != RoundVideoSession.FrameRate.FPS_30 && frameRatePlanResolveFrameRate.frameRate != frameRate) || (cameraCandidate2 != null && !isPreferredCameraCandidate(cameraCandidate4, cameraCandidate2, cameraFacing))) {
                                cameraCandidate4 = cameraCandidate2;
                            }
                        }
                    } else {
                        strArr = cameraIdList;
                        cameraCandidate = cameraCandidate5;
                        str2 = str4;
                    }
                    i = i5;
                    i2 = i4;
                    cameraCandidate2 = cameraCandidate6;
                    this.diagnostics.log("camera candidate rejected: id=" + str2 + ", reason=no SurfaceTexture outputs");
                    cameraCandidate4 = cameraCandidate2;
                }
            }
            cameraCandidate5 = cameraCandidate;
            i5 = i + 1;
            i4 = i2;
            cameraIdList = strArr;
        }
        CameraCandidate cameraCandidate7 = cameraCandidate4;
        CameraCandidate cameraCandidate8 = cameraCandidate7 == null ? cameraCandidate5 : cameraCandidate7;
        if (cameraCandidate8 == null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Requested camera is not available");
            return;
        }
        String str6 = cameraCandidate8.id;
        CameraCharacteristics cameraCharacteristics2 = cameraCandidate8.characteristics;
        Size[] sizeArr = cameraCandidate8.sizes;
        OutputPair outputPair = cameraCandidate8.regularPair;
        FrameRatePlan frameRatePlan = cameraCandidate8.frameRatePlan;
        OutputPair outputPair2 = frameRatePlan.outputPair;
        this.cameraId = str6;
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
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        StringBuilder sb = new StringBuilder("camera outputs selected: output=");
        sb.append(this.outputSize);
        sb.append("x");
        sb.append(this.outputSize);
        sb.append(", cameraMode=");
        sb.append(this.activeCameraResolution);
        RoundVideoSession.CameraResolution cameraResolution = this.activeCameraResolution;
        RoundVideoSession.CameraResolution cameraResolution2 = this.requestedCameraResolution;
        String str7 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (cameraResolution != cameraResolution2) {
            str = " (fallback from " + this.requestedCameraResolution + ")";
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        sb.append(str);
        sb.append(", crop=");
        sb.append(this.sourceCropSize);
        sb.append(", preview=");
        sb.append(this.previewSize);
        sb.append(", recording=");
        sb.append(this.recordingSize);
        sb.append(", previewMinFrameDurationNs=");
        sb.append(minimumFrameDurationNs);
        sb.append(", recordingMinFrameDurationNs=");
        sb.append(minimumFrameDurationNs2);
        sb.append(", fps=");
        sb.append(this.activeFrameRate.getValue());
        sb.append(", fpsRange=");
        sb.append(this.activeFpsRange);
        sb.append(", timestampSource=");
        sb.append(isCameraTimestampRealtime() ? "REALTIME" : "UNKNOWN");
        if (this.activeFrameRate != this.requestedFrameRate) {
            str7 = " (fallback from " + this.requestedFrameRate.getValue() + ")";
        }
        sb.append(str7);
        roundVideoDiagnostics.log(sb.toString());
        logCameraConfigurationOnce(cameraFacing, str6, cameraCharacteristics2, sizeArr);
        cacheSelection(captureSelection());
    }

    private CameraSelection selectionForFacing(RoundVideoSession.CameraFacing cameraFacing) {
        if (cameraFacing == RoundVideoSession.CameraFacing.FRONT) {
            return this.frontSelection;
        }
        return this.backSelection;
    }

    private void cacheSelection(CameraSelection cameraSelection) {
        if (cameraSelection.facing == RoundVideoSession.CameraFacing.FRONT) {
            this.frontSelection = cameraSelection;
        } else {
            this.backSelection = cameraSelection;
        }
    }

    private CameraSelection captureSelection() {
        return new CameraSelection(this.cameraId, this.selectedFacing, this.characteristics, this.previewSize, this.recordingSize, this.sourceCropSize, this.activeCameraResolution, this.activeFrameRate, this.activeFpsRange, this.regularFallbackPair, this.maximumZoomRatio);
    }

    private void applySelection(CameraSelection cameraSelection) {
        this.cameraId = cameraSelection.id;
        this.selectedFacing = cameraSelection.facing;
        this.characteristics = cameraSelection.characteristics;
        this.previewSize = cameraSelection.previewSize;
        this.recordingSize = cameraSelection.recordingSize;
        this.sourceCropSize = cameraSelection.sourceCropSize;
        this.activeCameraResolution = cameraSelection.cameraResolution;
        this.activeFrameRate = cameraSelection.frameRate;
        this.activeFpsRange = cameraSelection.fpsRange;
        this.regularFallbackPair = cameraSelection.regularFallbackPair;
        this.maximumZoomRatio = cameraSelection.maximumZoomRatio;
        this.frameRateFallbackAttempted = false;
        resetCaptureFpsMeasurement();
    }

    private void prepareWarmSwitchSupport() {
        if (this.warmSwitchDisabled) {
            return;
        }
        if (this.warmSwitchSupported) {
            this.dualActiveMode = true;
            return;
        }
        if (Build.VERSION.SDK_INT < 30) {
            this.warmSwitchDisabled = true;
            this.diagnostics.log("camera warm-switch capability: supported=false, reason=API<30");
            return;
        }
        CameraSelection cameraSelectionCaptureSelection = captureSelection();
        RoundVideoSession.CameraFacing cameraFacing = cameraSelectionCaptureSelection.facing;
        RoundVideoSession.CameraFacing cameraFacing2 = RoundVideoSession.CameraFacing.FRONT;
        if (cameraFacing == cameraFacing2) {
            cameraFacing2 = RoundVideoSession.CameraFacing.BACK;
        }
        try {
            try {
                selectCameraAndSizes(cameraFacing2);
                CameraSelection cameraSelectionCaptureSelection2 = captureSelection();
                boolean zIsConcurrentPair = isConcurrentPair(cameraSelectionCaptureSelection.id, cameraSelectionCaptureSelection2.id);
                this.warmSwitchSupported = zIsConcurrentPair;
                if (zIsConcurrentPair && !isDualConfigurationCompatible(cameraSelectionCaptureSelection, cameraSelectionCaptureSelection2)) {
                    this.warmSwitchSupported = false;
                    this.diagnostics.log("camera dual-active capability rejected: incompatible frame rate, first=" + cameraSelectionCaptureSelection.recordingSize + "/" + cameraSelectionCaptureSelection.sourceCropSize + ", second=" + cameraSelectionCaptureSelection2.recordingSize + "/" + cameraSelectionCaptureSelection2.sourceCropSize + ", firstFps=" + cameraSelectionCaptureSelection.frameRate.getValue() + ", secondFps=" + cameraSelectionCaptureSelection2.frameRate.getValue());
                }
                boolean z = this.warmSwitchSupported;
                if (!z) {
                    this.warmSwitchDisabled = true;
                }
                this.dualActiveMode = z;
                RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
                StringBuilder sb = new StringBuilder("camera dual-active capability: supported=");
                sb.append(this.warmSwitchSupported);
                sb.append(", pair=");
                sb.append(cameraSelectionCaptureSelection.id);
                sb.append("+");
                sb.append(cameraSelectionCaptureSelection2.id);
                sb.append(this.warmSwitchSupported ? _UrlKt.FRAGMENT_ENCODE_SET : ", reason=pair not advertised");
                roundVideoDiagnostics.log(sb.toString());
                applySelection(cameraSelectionCaptureSelection);
            } catch (Exception e) {
                this.warmSwitchDisabled = true;
                this.diagnostics.log("camera warm-switch capability unavailable: " + e);
                applySelection(cameraSelectionCaptureSelection);
            }
        } catch (Throwable th) {
            applySelection(cameraSelectionCaptureSelection);
            throw th;
        }
    }

    private static boolean isDualConfigurationCompatible(CameraSelection cameraSelection, CameraSelection cameraSelection2) {
        return cameraSelection.frameRate == cameraSelection2.frameRate;
    }

    private boolean isConcurrentPair(String str, String str2) {
        if (Build.VERSION.SDK_INT < 30) {
            return false;
        }
        for (Set<String> set : this.cameraManager.getConcurrentCameraIds()) {
            if (set.contains(str) && set.contains(str2)) {
                return true;
            }
        }
        return false;
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
                        if (roundVideoCameraController.resolveFrameRate(str, cameraCharacteristics, streamConfigurationMap, outputSizes, chooseOutputPair(outputSizes, this.outputResolution, this.outputSize, this.requestedCameraResolution)).frameRate == RoundVideoSession.FrameRate.FPS_60) {
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
        return isCameraTimestampRealtime(this.characteristics);
    }

    private static boolean isCameraTimestampRealtime(CameraCharacteristics cameraCharacteristics) {
        Integer num;
        return (cameraCharacteristics == null || (num = (Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE)) == null || num.intValue() != 1) ? false : true;
    }

    private static boolean isPreferredCameraCandidate(CameraCandidate cameraCandidate, CameraCandidate cameraCandidate2, RoundVideoSession.CameraFacing cameraFacing) {
        return cameraFacing == RoundVideoSession.CameraFacing.BACK && hasFlashUnit(cameraCandidate.characteristics) && !hasFlashUnit(cameraCandidate2.characteristics);
    }

    private static boolean hasFlashUnit(CameraCharacteristics cameraCharacteristics) {
        return Boolean.TRUE.equals(cameraCharacteristics.get(CameraCharacteristics.FLASH_INFO_AVAILABLE));
    }

    private static void setContinuousVideoAf(CaptureRequest.Builder builder, CameraCharacteristics cameraCharacteristics) {
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
                OutputPair outputPairChooseOutputPair = chooseOutputPair(sizeArrFilterSizesForFrameRate, this.outputResolution, this.outputSize, this.requestedCameraResolution);
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

    /* JADX INFO: Access modifiers changed from: private */
    public void fallbackTo30Fps(String str, Exception exc) {
        String str2;
        RoundVideoCodecRecorder roundVideoCodecRecorder = this.recorder;
        if (roundVideoCodecRecorder != null && roundVideoCodecRecorder.isStarted()) {
            reportError(new IllegalStateException("Unable to apply 30 fps fallback after recording started: " + str, exc));
            return;
        }
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
        this.frontSelection = null;
        this.backSelection = null;
        disableWarmSwitch("frame-rate fallback changed stream configuration", exc);
        SurfaceTexture surfaceTexture = this.previewView.getSurfaceTexture();
        if (surfaceTexture != null) {
            surfaceTexture.setDefaultBufferSize(this.previewSize.getWidth(), this.previewSize.getHeight());
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
            handler.post(new Runnable() { // from class: org.telegram.utils.recorder.round.RoundVideoCameraController$$ExternalSyntheticLambda14
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
        if (this.previewTransformEnabled) {
            if (this.glPreviewEnabled) {
                this.previewView.setTransform(new Matrix());
                this.diagnostics.log("preview transform: GL output, identity matrix, view=" + this.previewView.getWidth() + "x" + this.previewView.getHeight());
                return;
            }
            Size size = this.recordingSize;
            if (size == null || this.previewView.getWidth() == 0 || this.previewView.getHeight() == 0) {
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
        clearFocusRegion();
        this.opening = false;
        this.switchingCamera = false;
        this.reopenAfterCameraClose = false;
        this.warmSwitchRecoveryPending = false;
        this.retryCaptureSessionAfterStandbyClose = false;
        this.warmRecoveryActiveDevice = null;
        this.warmRecoveryStandbyDevice = null;
        this.previewTransformEnabled = false;
        this.notifySwitchCompletion = false;
        this.awaitingSwitchPreviewFrame = false;
        this.repeatingBuilder = null;
        this.torchVerificationPending = false;
        this.pendingWarmSwitchFacing = null;
        this.warmCameraOpening = false;
        closeCaptureSession();
        closeWarmCaptureSession();
        CameraDevice cameraDevice = this.cameraDevice;
        if (cameraDevice != null) {
            cameraDevice.close();
            this.cameraDevice = null;
        }
        CameraDevice cameraDevice2 = this.warmCameraDevice;
        this.warmCameraDevice = null;
        this.warmCameraSelection = null;
        if (cameraDevice2 != null) {
            cameraDevice2.close();
        }
        CameraDevice cameraDevice3 = this.closingStandbyDevice;
        this.closingStandbyDevice = null;
        if (cameraDevice3 != null && cameraDevice3 != cameraDevice2) {
            cameraDevice3.close();
        }
        RoundVideoGlProcessor roundVideoGlProcessor = this.glProcessor;
        if (roundVideoGlProcessor != null) {
            roundVideoGlProcessor.stop();
            this.glProcessor = null;
        }
        Surface surface = this.previewSurface;
        if (surface != null) {
            surface.release();
            this.previewSurface = null;
        }
        this.recordingSurface = null;
        this.secondaryRecordingSurface = null;
        this.dualActiveMode = false;
        this.glPreviewEnabled = false;
        this.activeDualSessionConfigured = false;
        this.warmDualSessionConfigured = false;
        this.activeInputSecondary = false;
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

    private void closeWarmCaptureSession() {
        CameraCaptureSession cameraCaptureSession = this.warmCaptureSession;
        if (cameraCaptureSession != null) {
            cameraCaptureSession.close();
            this.warmCaptureSession = null;
        }
        this.warmRepeatingBuilder = null;
        this.warmDualSessionConfigured = false;
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

    private static OutputPair chooseOutputPair(Size[] sizeArr, RoundVideoSession.OutputResolution outputResolution, int i, RoundVideoSession.CameraResolution cameraResolution) {
        OutputPair outputPairChooseTierPair;
        RoundVideoSession.CameraResolution cameraResolution2;
        OutputPair outputPairChooseTierPair2;
        OutputPair outputPairChooseTierPair3 = chooseTierPair(sizeArr, getSourceCropSize(outputResolution, i, cameraResolution), cameraResolution);
        if (outputPairChooseTierPair3 != null) {
            return outputPairChooseTierPair3;
        }
        if (outputResolution == RoundVideoSession.OutputResolution.P360 && cameraResolution == (cameraResolution2 = RoundVideoSession.CameraResolution.MEDIUM) && (outputPairChooseTierPair2 = chooseTierPair(sizeArr, 480, cameraResolution2)) != null) {
            return outputPairChooseTierPair2;
        }
        RoundVideoSession.CameraResolution cameraResolution3 = RoundVideoSession.CameraResolution.LOW;
        if (cameraResolution != cameraResolution3 && (outputPairChooseTierPair = chooseTierPair(sizeArr, i, cameraResolution3)) != null) {
            return outputPairChooseTierPair;
        }
        Size sizeChooseFallbackRecordingSize = chooseFallbackRecordingSize(sizeArr, i);
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
        Segment$$ExternalSyntheticBUOutline1.m973m("Camera has no output at or below the bandwidth cap");
        return null;
    }

    private static int getSourceCropSize(RoundVideoSession.OutputResolution outputResolution, int i, RoundVideoSession.CameraResolution cameraResolution) {
        return cameraResolution == RoundVideoSession.CameraResolution.LOW ? i : outputResolution == RoundVideoSession.OutputResolution.P480 ? cameraResolution == RoundVideoSession.CameraResolution.HIGH ? 960 : 720 : cameraResolution == RoundVideoSession.CameraResolution.HIGH ? 720 : 540;
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
