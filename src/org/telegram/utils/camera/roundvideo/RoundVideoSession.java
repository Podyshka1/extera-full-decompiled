package org.telegram.utils.camera.roundvideo;

import android.content.Context;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.TextureView;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import java.io.File;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import okio.Segment$$ExternalSyntheticBUOutline1;
import okio.internal.ZipFilesKt$$ExternalSyntheticBUOutline1;
import org.telegram.utils.camera.roundvideo.RoundVideoCameraController;
import org.telegram.utils.camera.roundvideo.RoundVideoMp4Writer;
import org.telegram.utils.camera.roundvideo.RoundVideoRemuxer;
import org.vosk.Model$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes6.dex */
public final class RoundVideoSession {
    private CameraResolution activeCameraResolution;
    private CameraFacing activeFacing;
    private FrameRate activeFrameRate;
    private final RoundVideoCameraController.Callback cameraCallback;
    private final RoundVideoCameraController cameraController;
    private boolean cameraStopPending;
    private int cameraSwitchCount;
    private boolean cameraSwitching;
    private boolean cancelAfterCameraStops;
    private volatile boolean cancelRequested;
    private boolean cleanupStarted;
    private final boolean compositionEnabled;
    private final Context context;
    private final RoundVideoDiagnostics diagnostics;
    private final Runnable durationLimitRunnable;
    private final ExecutorService fileExecutor;
    private boolean finishAfterCameraStops;
    private boolean finishWithAudio;
    private boolean flashEnabled;
    private FlashType flashType;
    private final Matrix identityPreviewTransform;
    private final Listener listener;
    private final Handler mainHandler;
    private final long maximumDurationMs;
    private float maximumZoomRatio;
    private long nextOutputId;
    private final File outputDirectory;
    private final ExecutorService outputExecutor;
    private volatile OutputGeneration outputGeneration;
    private final OutputListener outputListener;
    private final Object outputLock;
    private final OutputResolution outputResolution;
    private int pauseCount;
    private ExoPlayer player;
    private final Player.Listener playerListener;
    private volatile File previewFile;
    private boolean previewPlaying;
    private final Runnable previewProgressRunnable;
    private long previewSnapshotStartedNs;
    private long previewSourceDurationMs;
    private final TextureView previewView;
    private long recordedDurationMs;
    private long recordingStartedAtRealtimeMs;
    private final CameraResolution requestedCameraResolution;
    private CameraFacing requestedFacing;
    private final FrameRate requestedFrameRate;
    private int resumeCount;
    private final ScreenFlashController screenFlashController;
    private boolean screenFlashEnabled;
    private State state;
    private boolean summaryLogged;
    private long trimEndMs;
    private long trimStartMs;
    private final int videoBitrate;
    private volatile RoundVideoMp4Writer writer;
    private float zoomProgress;

    public enum CameraFacing {
        FRONT,
        BACK
    }

    public enum CameraResolution {
        HIGH,
        MEDIUM,
        LOW
    }

    public enum FlashType {
        NONE,
        TORCH,
        SCREEN
    }

    public interface Listener {
        void onCameraCapabilitiesChanged(CameraCapabilities cameraCapabilities);

        void onCameraSwitchCompleted(CameraFacing cameraFacing);

        void onCameraSwitchFirstFrame();

        void onCameraSwitchStarted(CameraFacing cameraFacing);

        void onCompleted(Result result);

        void onError(Exception exc);

        void onPreviewFirstFrame();

        default void onPreviewPlaybackChanged(boolean z) {
        }

        default void onPreviewProgress(long j, long j2) {
        }

        void onPreviewReady(long j, long j2, long j3);

        void onStateChanged(StateInfo stateInfo);
    }

    public enum OutputInvalidationReason {
        TRIMMED,
        AUDIO_REMOVED,
        CANCELLED,
        ERROR
    }

    public interface OutputListener {
        void onBytesAvailable(long j, File file, long j2, long j3);

        void onOutputCompleted(long j, File file, long j2, long j3, boolean z);

        void onOutputError(long j, Exception exc);

        void onOutputInvalidated(long j, OutputInvalidationReason outputInvalidationReason);

        void onOutputStarted(long j, File file);
    }

    public interface ScreenFlashController {
        void setScreenFlashEnabled(boolean z);
    }

    public enum State {
        IDLE,
        STARTING,
        RECORDING,
        PAUSING,
        PREVIEWING,
        RESUMING,
        FINISHING,
        COMPLETED,
        ERROR,
        RELEASED
    }

    private static Exception asException(Exception exc) {
        return exc;
    }

    public enum OutputResolution {
        P480(480),
        P360(360);

        private final int size;

        OutputResolution(int i) {
            this.size = i;
        }

        public int getSize() {
            return this.size;
        }
    }

    public enum FrameRate {
        FPS_30(30),
        FPS_60(60);

        private final int value;

        FrameRate(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static final class Builder {
        private CameraResolution cameraResolution;
        private final Context context;
        private FrameRate frameRate;
        private CameraFacing initialFacing;
        private Listener listener;
        private File outputDirectory;
        private OutputListener outputListener;
        private OutputResolution outputResolution;
        private final TextureView previewView;
        private ScreenFlashController screenFlashController;
        private int videoBitrate;
        private long maximumDurationMs = 60000;
        private boolean compositionEnabled = true;

        public Builder(Context context, TextureView textureView) {
            this.context = context;
            this.previewView = textureView;
        }

        public Builder setInitialFacing(CameraFacing cameraFacing) {
            this.initialFacing = cameraFacing;
            return this;
        }

        public Builder setOutputResolution(OutputResolution outputResolution) {
            this.outputResolution = outputResolution;
            return this;
        }

        public Builder setVideoBitrate(int i) {
            this.videoBitrate = i;
            return this;
        }

        public Builder setCameraResolution(CameraResolution cameraResolution) {
            this.cameraResolution = cameraResolution;
            return this;
        }

        public Builder setFrameRate(FrameRate frameRate) {
            this.frameRate = frameRate;
            return this;
        }

        public Builder setCompositionEnabled(boolean z) {
            this.compositionEnabled = z;
            return this;
        }

        public Builder setOutputDirectory(File file) {
            this.outputDirectory = file;
            return this;
        }

        public Builder setListener(Listener listener) {
            this.listener = listener;
            return this;
        }

        public Builder setOutputListener(OutputListener outputListener) {
            this.outputListener = outputListener;
            return this;
        }

        public Builder setScreenFlashController(ScreenFlashController screenFlashController) {
            this.screenFlashController = screenFlashController;
            return this;
        }

        public RoundVideoSession build() {
            if (this.initialFacing == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Initial camera is required");
                return null;
            }
            if (this.outputResolution == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Output resolution is required");
                return null;
            }
            if (this.videoBitrate <= 0) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Video bitrate is required");
                return null;
            }
            if (this.cameraResolution == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Camera resolution is required");
                return null;
            }
            if (this.frameRate == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Frame rate is required");
                return null;
            }
            if (this.maximumDurationMs <= 0) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Invalid duration limit");
                return null;
            }
            if (this.listener == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Session listener is required");
                return null;
            }
            if (this.outputListener == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Output listener is required");
                return null;
            }
            return new RoundVideoSession(this);
        }
    }

    public static final class StateInfo {
        private final boolean cameraSwitching;
        private final boolean flashEnabled;
        private final long maximumDurationMs;
        private final boolean previewPlaying;
        private final long recordedDurationMs;
        private final long recordingStartedAtRealtimeMs;
        private final State state;
        private final long trimEndMs;
        private final long trimStartMs;
        private final float zoomProgress;

        private StateInfo(State state, long j, long j2, long j3, long j4, long j5, boolean z, boolean z2, boolean z3, float f) {
            this.state = state;
            this.recordedDurationMs = j;
            this.recordingStartedAtRealtimeMs = j2;
            this.maximumDurationMs = j3;
            this.trimStartMs = j4;
            this.trimEndMs = j5;
            this.previewPlaying = z;
            this.cameraSwitching = z2;
            this.flashEnabled = z3;
            this.zoomProgress = f;
        }

        public State getState() {
            return this.state;
        }

        public long getRecordedDurationMs() {
            return this.recordedDurationMs;
        }

        public long getRecordingStartedAtRealtimeMs() {
            return this.recordingStartedAtRealtimeMs;
        }

        public long getMaximumDurationMs() {
            return this.maximumDurationMs;
        }

        public boolean isFlashEnabled() {
            return this.flashEnabled;
        }

        public boolean canControlCamera() {
            return this.state == State.RECORDING && !this.cameraSwitching;
        }
    }

    public static final class CameraCapabilities {
        private final CameraFacing activeFacing;
        private final FrameRate activeFrameRate;
        private final CameraResolution activeResolution;
        private final FlashType flashType;
        private final float maximumZoomRatio;
        private final CameraFacing requestedFacing;
        private final FrameRate requestedFrameRate;
        private final CameraResolution requestedResolution;

        private CameraCapabilities(CameraFacing cameraFacing, CameraFacing cameraFacing2, CameraResolution cameraResolution, CameraResolution cameraResolution2, FrameRate frameRate, FrameRate frameRate2, FlashType flashType, float f) {
            this.requestedFacing = cameraFacing;
            this.activeFacing = cameraFacing2;
            this.requestedResolution = cameraResolution;
            this.activeResolution = cameraResolution2;
            this.requestedFrameRate = frameRate;
            this.activeFrameRate = frameRate2;
            this.flashType = flashType;
            this.maximumZoomRatio = f;
        }

        public CameraFacing getRequestedFacing() {
            return this.requestedFacing;
        }

        public CameraFacing getActiveFacing() {
            return this.activeFacing;
        }

        public FlashType getFlashType() {
            return this.flashType;
        }

        public float getMaximumZoomRatio() {
            return this.maximumZoomRatio;
        }
    }

    public static final class Result {
        private final long durationMs;
        private final File file;
        private final FrameRate frameRate;
        private final boolean hasAudio;
        private final long outputId;

        private Result(long j, File file, long j2, boolean z, FrameRate frameRate) {
            this.outputId = j;
            this.file = file;
            this.durationMs = j2;
            this.hasAudio = z;
            this.frameRate = frameRate;
        }

        public long getOutputId() {
            return this.outputId;
        }

        public File getFile() {
            return this.file;
        }

        public long getDurationMs() {
            return this.durationMs;
        }

        public boolean hasAudio() {
            return this.hasAudio;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$XCDForUIE35_Ic-4IVQureFncQo, reason: not valid java name */
    public static /* synthetic */ Thread m23248$r8$lambda$XCDForUIE35_Ic4IVQureFncQo(Runnable runnable) {
        return new Thread(runnable, "RoundVideoFiles");
    }

    /* JADX INFO: renamed from: $r8$lambda$-4zJsc9a0ObivEm5TA2R2OP6rRE, reason: not valid java name */
    public static /* synthetic */ Thread m23240$r8$lambda$4zJsc9a0ObivEm5TA2R2OP6rRE(Runnable runnable) {
        return new Thread(runnable, "RoundVideoOutput");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        if (this.state == State.RECORDING) {
            pauseRecording();
        }
    }

    private RoundVideoSession(Builder builder) {
        File cacheDir;
        this.outputLock = new Object();
        this.identityPreviewTransform = new Matrix();
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.fileExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda10
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return RoundVideoSession.m23248$r8$lambda$XCDForUIE35_Ic4IVQureFncQo(runnable);
            }
        });
        this.outputExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda11
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return RoundVideoSession.m23240$r8$lambda$4zJsc9a0ObivEm5TA2R2OP6rRE(runnable);
            }
        });
        this.state = State.IDLE;
        this.flashType = FlashType.NONE;
        this.maximumZoomRatio = 1.0f;
        this.nextOutputId = 1L;
        this.durationLimitRunnable = new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        };
        this.previewProgressRunnable = new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession.1
            @Override // java.lang.Runnable
            public void run() {
                if (RoundVideoSession.this.state == State.PREVIEWING && RoundVideoSession.this.player != null && RoundVideoSession.this.previewPlaying) {
                    long currentPosition = RoundVideoSession.this.player.getCurrentPosition();
                    if (currentPosition < RoundVideoSession.this.trimStartMs || currentPosition >= RoundVideoSession.this.trimEndMs) {
                        RoundVideoSession.this.player.seekTo(RoundVideoSession.this.trimStartMs);
                        currentPosition = RoundVideoSession.this.trimStartMs;
                    }
                    RoundVideoSession.this.listener.onPreviewProgress(currentPosition, RoundVideoSession.this.recordedDurationMs);
                    RoundVideoSession.this.mainHandler.postDelayed(this, 33L);
                }
            }
        };
        C64972 c64972 = new C64972();
        this.cameraCallback = c64972;
        this.playerListener = new Player.Listener() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession.3
            @Override // androidx.media3.common.Player.Listener
            public void onRenderedFirstFrame() {
                if (RoundVideoSession.this.state == State.PREVIEWING) {
                    RoundVideoSession.this.listener.onPreviewFirstFrame();
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlayerError(PlaybackException playbackException) {
                RoundVideoSession.this.diagnostics.log("preview player error: code=" + playbackException.errorCode);
                RoundVideoSession.this.fail(playbackException);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onIsPlayingChanged(boolean z) {
                if (RoundVideoSession.this.state == State.PREVIEWING) {
                    RoundVideoSession.this.updatePreviewPlaying(z);
                }
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlaybackStateChanged(int i) {
                RoundVideoSession.this.diagnostics.log("preview playback state=" + i);
                if (RoundVideoSession.this.state == State.PREVIEWING && i == 4 && RoundVideoSession.this.player != null) {
                    RoundVideoSession.this.player.seekTo(RoundVideoSession.this.trimStartMs);
                    RoundVideoSession.this.player.play();
                }
            }
        };
        requireMainThread();
        Context context = builder.context;
        Context applicationContext = context.getApplicationContext();
        Context context2 = applicationContext == null ? context : applicationContext;
        this.context = context2;
        TextureView textureView = builder.previewView;
        this.previewView = textureView;
        if (builder.outputDirectory == null) {
            cacheDir = context2.getCacheDir();
        } else {
            cacheDir = builder.outputDirectory;
        }
        this.outputDirectory = cacheDir;
        this.requestedFacing = builder.initialFacing;
        OutputResolution outputResolution = builder.outputResolution;
        this.outputResolution = outputResolution;
        int i = builder.videoBitrate;
        this.videoBitrate = i;
        CameraResolution cameraResolution = builder.cameraResolution;
        this.requestedCameraResolution = cameraResolution;
        FrameRate frameRate = builder.frameRate;
        this.requestedFrameRate = frameRate;
        long j = builder.maximumDurationMs;
        this.maximumDurationMs = j;
        boolean z = builder.compositionEnabled;
        this.compositionEnabled = z;
        this.listener = builder.listener;
        this.outputListener = builder.outputListener;
        this.screenFlashController = builder.screenFlashController;
        RoundVideoDiagnostics roundVideoDiagnostics = new RoundVideoDiagnostics();
        this.diagnostics = roundVideoDiagnostics;
        roundVideoDiagnostics.log("session created: device=" + Build.MANUFACTURER + " " + Build.MODEL + ", sdk=" + Build.VERSION.SDK_INT + ", output=" + outputResolution.getSize() + "x" + outputResolution.getSize() + ", bitrate=" + i + ", cameraMode=" + cameraResolution + ", fps=" + frameRate.getValue() + ", composition=" + z + ", facing=" + this.requestedFacing + ", maxDurationMs=" + j);
        this.cameraController = new RoundVideoCameraController(context2, textureView, outputResolution, i, cameraResolution, frameRate, z, roundVideoDiagnostics, c64972);
    }

    public boolean start() {
        requireMainThread();
        if (this.state != State.IDLE) {
            return false;
        }
        try {
            this.diagnostics.log("start requested");
            createOutputGeneration(true);
            setState(State.STARTING);
            this.cameraController.startSegment(this.writer, 0L, this.requestedFacing);
            return true;
        } catch (Exception e) {
            fail(asException(e));
            return false;
        }
    }

    public boolean pauseRecording() {
        requireMainThread();
        if (this.state != State.RECORDING) {
            return false;
        }
        this.recordedDurationMs = getRecordedDurationMs();
        this.pauseCount++;
        this.diagnostics.log("pause requested: durationMs=" + this.recordedDurationMs);
        disableCameraEffects();
        this.mainHandler.removeCallbacks(this.durationLimitRunnable);
        setState(State.PAUSING);
        boolean zStopSegment = this.cameraController.stopSegment();
        this.cameraStopPending = zStopSegment;
        if (!zStopSegment) {
            fail(new IllegalStateException("Unable to stop the camera segment"));
        }
        return true;
    }

    public boolean resumeRecording() {
        requireMainThread();
        if (this.state != State.PREVIEWING || this.trimEndMs - this.trimStartMs >= this.maximumDurationMs) {
            return false;
        }
        this.resumeCount++;
        this.diagnostics.log("resume requested: trim=" + this.trimStartMs + ".." + this.trimEndMs + ", sourceDurationMs=" + this.recordedDurationMs);
        releasePlayer();
        setState(State.RESUMING);
        rebuildForResume();
        return true;
    }

    public boolean setTrimRange(long j, long j2) {
        requireMainThread();
        if (this.state != State.PREVIEWING) {
            return false;
        }
        long jClamp = clamp(j, 0L, this.recordedDurationMs);
        long jClamp2 = clamp(j2, jClamp, this.recordedDurationMs);
        if (jClamp2 - jClamp < Math.min(800L, this.recordedDurationMs)) {
            return false;
        }
        this.trimStartMs = jClamp;
        this.trimEndMs = jClamp2;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.seekTo(jClamp);
        }
        this.listener.onPreviewProgress(this.trimStartMs, this.recordedDurationMs);
        notifyState();
        return true;
    }

    public boolean playPreview() {
        ExoPlayer exoPlayer;
        requireMainThread();
        if (this.state != State.PREVIEWING || (exoPlayer = this.player) == null) {
            return false;
        }
        long currentPosition = exoPlayer.getCurrentPosition();
        long j = this.trimStartMs;
        if (currentPosition < j || currentPosition >= this.trimEndMs) {
            this.player.seekTo(j);
        }
        this.player.play();
        updatePreviewPlaying(true);
        return true;
    }

    public boolean pausePreview() {
        ExoPlayer exoPlayer;
        requireMainThread();
        if (this.state != State.PREVIEWING || (exoPlayer = this.player) == null) {
            return false;
        }
        exoPlayer.pause();
        updatePreviewPlaying(false);
        this.listener.onPreviewProgress(this.player.getCurrentPosition(), this.recordedDurationMs);
        return true;
    }

    public boolean setPreviewMuted(boolean z) {
        ExoPlayer exoPlayer;
        requireMainThread();
        if (this.state != State.PREVIEWING || (exoPlayer = this.player) == null) {
            return false;
        }
        exoPlayer.setVolume(z ? 0.0f : 1.0f);
        return true;
    }

    public boolean seekPreview(long j) {
        requireMainThread();
        if (this.state != State.PREVIEWING || this.player == null) {
            return false;
        }
        long j2 = this.trimStartMs;
        long jClamp = clamp(j, j2, Math.max(j2, this.trimEndMs - 1));
        this.player.seekTo(jClamp);
        this.listener.onPreviewProgress(jClamp, this.recordedDurationMs);
        return true;
    }

    public boolean setCameraFacing(CameraFacing cameraFacing) {
        requireMainThread();
        if (isTerminalState()) {
            return false;
        }
        if (this.requestedFacing == cameraFacing) {
            return true;
        }
        this.diagnostics.log("camera facing requested: " + this.requestedFacing + " -> " + cameraFacing + ", state=" + this.state);
        this.requestedFacing = cameraFacing;
        State state = this.state;
        if (state == State.RECORDING || state == State.STARTING) {
            disableCameraEffects();
            this.cameraSwitching = this.cameraController.setCameraFacing(cameraFacing);
        }
        notifyCapabilities();
        notifyState();
        return true;
    }

    public boolean setZoom(float f) {
        requireMainThread();
        if (this.state != State.RECORDING || this.cameraSwitching) {
            return false;
        }
        float fClamp = clamp(f, 0.0f, 1.0f);
        this.zoomProgress = fClamp;
        return this.cameraController.setZoom(fClamp);
    }

    public boolean setFlashEnabled(boolean z) {
        FlashType flashType;
        requireMainThread();
        if (this.state != State.RECORDING || this.cameraSwitching || (flashType = this.flashType) == FlashType.NONE) {
            return false;
        }
        this.flashEnabled = z;
        if (flashType == FlashType.SCREEN) {
            setScreenFlashEnabled(z);
            this.cameraController.setTorchEnabled(false);
        } else {
            setScreenFlashEnabled(false);
            this.cameraController.setTorchEnabled(z);
        }
        notifyState();
        return true;
    }

    public boolean finish(boolean z) {
        requireMainThread();
        State state = this.state;
        State state2 = State.RECORDING;
        if (state != state2 && state != State.PREVIEWING) {
            return false;
        }
        this.diagnostics.log("finish requested: state=" + this.state + ", includeAudio=" + z + ", durationMs=" + getRecordedDurationMs() + ", trim=" + this.trimStartMs + ".." + this.trimEndMs);
        this.finishWithAudio = z;
        if (this.state == state2) {
            this.recordedDurationMs = getRecordedDurationMs();
            this.finishAfterCameraStops = true;
            disableCameraEffects();
            this.mainHandler.removeCallbacks(this.durationLimitRunnable);
            setState(State.FINISHING);
            boolean zStopSegment = this.cameraController.stopSegment();
            this.cameraStopPending = zStopSegment;
            if (!zStopSegment) {
                fail(new IllegalStateException("Unable to stop the camera segment"));
            }
        } else {
            releasePlayer();
            setState(State.FINISHING);
            finishFromPreview(z);
        }
        return true;
    }

    public boolean cancel() {
        requireMainThread();
        State state = this.state;
        State state2 = State.RELEASED;
        if (state == state2 || state == State.COMPLETED) {
            return false;
        }
        this.diagnostics.log("cancel requested: state=" + this.state);
        if (!cancelOutput(OutputInvalidationReason.CANCELLED)) {
            return false;
        }
        disableCameraEffects();
        releasePlayer();
        setState(state2);
        if (this.cameraStopPending || this.cameraController.stopSegment()) {
            this.cameraStopPending = true;
            this.cancelAfterCameraStops = true;
        } else {
            finishCancellation();
        }
        return true;
    }

    public void release() {
        requireMainThread();
        State state = this.state;
        State state2 = State.RELEASED;
        if (state == state2) {
            if (this.cleanupStarted) {
                return;
            }
            finishCancellation();
        } else {
            if (state != State.COMPLETED) {
                cancel();
                return;
            }
            disableCameraEffects();
            releasePlayer();
            this.cameraController.release();
            this.cleanupStarted = true;
            setState(state2);
            logSummary("released");
            shutdownExecutors();
        }
    }

    public File getPreviewFile() {
        requireMainThread();
        return this.previewFile;
    }

    public FrameRate getActiveFrameRate() {
        return this.activeFrameRate;
    }

    public long getRecordedDurationMs() {
        requireMainThread();
        return this.state != State.RECORDING ? this.recordedDurationMs : Math.min(this.maximumDurationMs, (this.recordedDurationMs + SystemClock.elapsedRealtime()) - this.recordingStartedAtRealtimeMs);
    }

    /* JADX INFO: renamed from: org.telegram.utils.camera.roundvideo.RoundVideoSession$2 */
    public class C64972 implements RoundVideoCameraController.Callback {
        public C64972() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onConfigured$0(RoundVideoCameraController.CameraInfo cameraInfo, boolean z) {
            RoundVideoSession.this.handleCameraConfigured(cameraInfo, z);
        }

        @Override // org.telegram.utils.camera.roundvideo.RoundVideoCameraController.Callback
        public void onConfigured(final RoundVideoCameraController.CameraInfo cameraInfo, final boolean z) {
            RoundVideoSession.this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$2$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onConfigured$0(cameraInfo, z);
                }
            });
        }

        @Override // org.telegram.utils.camera.roundvideo.RoundVideoCameraController.Callback
        public void onRecordingStarted() {
            Handler handler = RoundVideoSession.this.mainHandler;
            final RoundVideoSession roundVideoSession = RoundVideoSession.this;
            handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    roundVideoSession.handleRecordingStarted();
                }
            });
        }

        @Override // org.telegram.utils.camera.roundvideo.RoundVideoCameraController.Callback
        public void onCameraSwitchStarted(final CameraFacing cameraFacing) {
            RoundVideoSession.this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$2$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCameraSwitchStarted$1(cameraFacing);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCameraSwitchStarted$1(CameraFacing cameraFacing) {
            RoundVideoSession.this.cameraSwitchCount++;
            RoundVideoSession.this.cameraSwitching = true;
            RoundVideoSession.this.diagnostics.log("camera switch started: target=" + cameraFacing);
            RoundVideoSession.this.listener.onCameraSwitchStarted(cameraFacing);
            RoundVideoSession.this.notifyState();
        }

        @Override // org.telegram.utils.camera.roundvideo.RoundVideoCameraController.Callback
        public void onCameraSwitchFirstFrame() {
            Handler handler = RoundVideoSession.this.mainHandler;
            final Listener listener = RoundVideoSession.this.listener;
            Objects.requireNonNull(listener);
            handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$2$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    listener.onCameraSwitchFirstFrame();
                }
            });
        }

        @Override // org.telegram.utils.camera.roundvideo.RoundVideoCameraController.Callback
        public void onRecordingStopped() {
            Handler handler = RoundVideoSession.this.mainHandler;
            final RoundVideoSession roundVideoSession = RoundVideoSession.this;
            handler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    roundVideoSession.handleRecordingStopped();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$2(Exception exc) {
            RoundVideoSession.this.fail(exc);
        }

        @Override // org.telegram.utils.camera.roundvideo.RoundVideoCameraController.Callback
        public void onError(final Exception exc) {
            RoundVideoSession.this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$2$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onError$2(exc);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCameraConfigured(RoundVideoCameraController.CameraInfo cameraInfo, boolean z) {
        FlashType flashType;
        if (isTerminalState()) {
            return;
        }
        CameraFacing cameraFacing = cameraInfo.facing;
        this.activeFacing = cameraFacing;
        this.activeCameraResolution = cameraInfo.cameraResolution;
        this.activeFrameRate = cameraInfo.frameRate;
        this.maximumZoomRatio = cameraInfo.maximumZoomRatio;
        if (cameraFacing == CameraFacing.FRONT) {
            flashType = this.screenFlashController == null ? FlashType.NONE : FlashType.SCREEN;
        } else {
            flashType = cameraInfo.torchAvailable ? FlashType.TORCH : FlashType.NONE;
        }
        this.flashType = flashType;
        notifyCapabilities();
        this.diagnostics.log("camera configured: facing=" + cameraInfo.facing + ", mode=" + cameraInfo.cameraResolution + ", preview=" + cameraInfo.previewSize + ", recording=" + cameraInfo.recordingSize + ", fps=" + cameraInfo.frameRate.getValue() + ", maxZoom=" + this.maximumZoomRatio + ", flash=" + this.flashType + ", switch=" + z);
        if (z || this.cameraSwitching) {
            this.cameraSwitching = false;
            this.listener.onCameraSwitchCompleted(cameraInfo.facing);
            notifyState();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRecordingStarted() {
        State state = this.state;
        if (state == State.STARTING || state == State.RESUMING) {
            this.recordingStartedAtRealtimeMs = SystemClock.elapsedRealtime();
            this.diagnostics.log("recording started: retainedDurationMs=" + this.recordedDurationMs);
            setState(State.RECORDING);
            long j = this.maximumDurationMs - this.recordedDurationMs;
            if (j <= 0) {
                pauseRecording();
            } else {
                this.mainHandler.postDelayed(this.durationLimitRunnable, j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleRecordingStopped() {
        this.cameraStopPending = false;
        this.diagnostics.log("recording segment stopped: state=" + this.state + ", retainedDurationMs=" + this.recordedDurationMs);
        if (this.cancelAfterCameraStops) {
            this.cancelAfterCameraStops = false;
            finishCancellation();
        } else if (this.finishAfterCameraStops) {
            this.finishAfterCameraStops = false;
            finishActiveRecording(this.finishWithAudio);
        } else {
            if (this.state != State.PAUSING) {
                return;
            }
            createPreviewSnapshot();
        }
    }

    private void createPreviewSnapshot() {
        try {
            final File fileCreateTemporaryFile = createTemporaryFile("round_video_preview_");
            this.previewFile = fileCreateTemporaryFile;
            this.previewSnapshotStartedNs = System.nanoTime();
            this.diagnostics.log("preview snapshot started: file=" + fileCreateTemporaryFile.getName());
            final RoundVideoMp4Writer roundVideoMp4Writer = this.writer;
            this.fileExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createPreviewSnapshot$5(roundVideoMp4Writer, fileCreateTemporaryFile);
                }
            });
        } catch (IOException e) {
            fail(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPreviewSnapshot$5(RoundVideoMp4Writer roundVideoMp4Writer, File file) {
        try {
            roundVideoMp4Writer.createPreview(file);
            ensureNotCancelled();
            final long durationMs = RoundVideoRemuxer.getDurationMs(file);
            this.diagnostics.log("preview snapshot completed: durationMs=" + durationMs + ", size=" + file.length() + ", elapsedMs=" + elapsedMs(this.previewSnapshotStartedNs));
            this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createPreviewSnapshot$3(durationMs);
                }
            });
        } catch (Exception e) {
            this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createPreviewSnapshot$4(e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createPreviewSnapshot$4(Exception exc) {
        fail(asException(exc));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: enterPreview, reason: merged with bridge method [inline-methods] */
    public void lambda$createPreviewSnapshot$3(long j) {
        if (this.state != State.PAUSING) {
            return;
        }
        this.previewSourceDurationMs = j;
        long jMin = Math.min(this.maximumDurationMs, j);
        this.recordedDurationMs = jMin;
        this.trimStartMs = 0L;
        this.trimEndMs = jMin;
        this.previewView.setSurfaceTextureListener(null);
        this.previewView.setTransform(this.identityPreviewTransform);
        ExoPlayer exoPlayerBuild = new ExoPlayer.Builder(this.context).build();
        this.player = exoPlayerBuild;
        exoPlayerBuild.setVideoTextureView(this.previewView);
        this.player.setMediaItem(MediaItem.fromUri(Uri.fromFile(this.previewFile)));
        this.player.setRepeatMode(0);
        this.player.setVolume(1.0f);
        this.player.addListener(this.playerListener);
        this.player.prepare();
        this.player.seekTo(this.trimStartMs);
        this.diagnostics.log("preview player prepared: durationMs=" + this.recordedDurationMs + ", trim=" + this.trimStartMs + ".." + this.trimEndMs);
        setState(State.PREVIEWING);
        this.listener.onPreviewReady(this.recordedDurationMs, this.trimStartMs, this.trimEndMs);
        playPreview();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePreviewPlaying(boolean z) {
        if (this.previewPlaying == z) {
            return;
        }
        this.previewPlaying = z;
        this.mainHandler.removeCallbacks(this.previewProgressRunnable);
        if (z) {
            this.mainHandler.post(this.previewProgressRunnable);
        }
        this.listener.onPreviewPlaybackChanged(z);
        notifyState();
    }

    private void rebuildForResume() {
        final boolean zIsTrimChanged = isTrimChanged();
        final File file = this.previewFile;
        final RoundVideoMp4Writer roundVideoMp4Writer = this.writer;
        final OutputGeneration outputGeneration = this.outputGeneration;
        this.fileExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                this.f$0.lambda$rebuildForResume$8(zIsTrimChanged, roundVideoMp4Writer, outputGeneration, file);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$rebuildForResume$8(boolean z, RoundVideoMp4Writer roundVideoMp4Writer, OutputGeneration outputGeneration, File file) throws Throwable {
        final long j;
        File file2;
        long jNanoTime = System.nanoTime();
        File file3 = null;
        try {
            try {
                ensureNotCancelled();
                j = this.recordedDurationMs;
                if (z) {
                    roundVideoMp4Writer.closeForReplacement();
                    ensureNotCancelled();
                    invalidateOutput(outputGeneration, OutputInvalidationReason.TRIMMED);
                    File file4 = roundVideoMp4Writer.getFile();
                    try {
                        createOutputGenerationOnFileThread(true);
                        RoundVideoRemuxer.Result resultCopyRange = RoundVideoRemuxer.copyRange(file, this.writer, this.trimStartMs, this.trimEndMs, true);
                        long j2 = resultCopyRange.durationMs;
                        this.diagnostics.log("resume trim remux completed: requested=" + this.trimStartMs + ".." + this.trimEndMs + ", actualStartMs=" + resultCopyRange.startMs + ", retainedDurationMs=" + j2 + ", outputSize=" + this.writer.getFile().length() + ", elapsedMs=" + elapsedMs(jNanoTime));
                        file2 = file4;
                        j = j2;
                    } catch (Exception e) {
                        e = e;
                        file3 = file4;
                        this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda17
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$rebuildForResume$7(e);
                            }
                        });
                        if (file != null) {
                        }
                        if (file3 == null) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        file3 = file4;
                        if (file != null) {
                        }
                        if (file3 != null) {
                        }
                        throw th;
                    }
                } else {
                    file2 = null;
                }
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            ensureNotCancelled();
            this.previewFile = null;
            if (!z) {
                this.diagnostics.log("resume prepared without remux: retainedDurationMs=" + j + ", elapsedMs=" + elapsedMs(jNanoTime));
            }
            this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$rebuildForResume$6(j);
                }
            });
            if (file != null) {
                RoundVideoRemuxer.erase(file);
            }
            if (file2 != null) {
                RoundVideoRemuxer.erase(file2);
            }
        } catch (Exception e3) {
            e = e3;
            file3 = file2;
            this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda17
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$rebuildForResume$7(e);
                }
            });
            if (file != null) {
                RoundVideoRemuxer.erase(file);
            }
            if (file3 == null) {
                RoundVideoRemuxer.erase(file3);
            }
        } catch (Throwable th3) {
            th = th3;
            file3 = file2;
            if (file != null) {
                RoundVideoRemuxer.erase(file);
            }
            if (file3 != null) {
                RoundVideoRemuxer.erase(file3);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rebuildForResume$6(long j) {
        if (this.state != State.RESUMING) {
            return;
        }
        this.recordedDurationMs = j;
        this.previewSourceDurationMs = 0L;
        this.trimStartMs = 0L;
        this.trimEndMs = j;
        setState(State.STARTING);
        this.cameraController.startSegment(this.writer, this.recordedDurationMs * 1000, this.requestedFacing);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rebuildForResume$7(Exception exc) {
        fail(asException(exc));
    }

    private void finishActiveRecording(final boolean z) {
        final RoundVideoMp4Writer roundVideoMp4Writer = this.writer;
        final OutputGeneration outputGeneration = this.outputGeneration;
        this.fileExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$finishActiveRecording$10(roundVideoMp4Writer, z, outputGeneration);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishActiveRecording$10(RoundVideoMp4Writer roundVideoMp4Writer, boolean z, OutputGeneration outputGeneration) {
        OutputInvalidationReason outputInvalidationReason;
        long jNanoTime = System.nanoTime();
        try {
            roundVideoMp4Writer.finish();
            long durationMs = RoundVideoRemuxer.getDurationMs(roundVideoMp4Writer.getFile());
            this.diagnostics.log("active output finalized: size=" + roundVideoMp4Writer.getFile().length() + ", durationMs=" + durationMs + ", elapsedMs=" + elapsedMs(jNanoTime));
            ensureNotCancelled();
            boolean z2 = durationMs > this.maximumDurationMs;
            if (z && !z2) {
                completeOutput(outputGeneration, roundVideoMp4Writer.getFile(), durationMs, true);
                return;
            }
            File file = roundVideoMp4Writer.getFile();
            try {
                long jMin = Math.min(this.maximumDurationMs, durationMs);
                if (z2) {
                    outputInvalidationReason = OutputInvalidationReason.TRIMMED;
                } else {
                    outputInvalidationReason = OutputInvalidationReason.AUDIO_REMOVED;
                }
                replaceWithFinalRange(file, 0L, jMin, z, outputInvalidationReason);
                RoundVideoRemuxer.erase(file);
            } catch (Throwable th) {
                RoundVideoRemuxer.erase(file);
                throw th;
            }
        } catch (Exception e) {
            this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$finishActiveRecording$9(e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishActiveRecording$9(Exception exc) {
        fail(asException(exc));
    }

    private void finishFromPreview(final boolean z) {
        OutputInvalidationReason outputInvalidationReason;
        final boolean z2 = isTrimChanged() || !z;
        if (isTrimChanged()) {
            outputInvalidationReason = OutputInvalidationReason.TRIMMED;
        } else {
            outputInvalidationReason = OutputInvalidationReason.AUDIO_REMOVED;
        }
        final OutputInvalidationReason outputInvalidationReason2 = outputInvalidationReason;
        final File file = this.previewFile;
        final RoundVideoMp4Writer roundVideoMp4Writer = this.writer;
        final OutputGeneration outputGeneration = this.outputGeneration;
        this.fileExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$finishFromPreview$12(roundVideoMp4Writer, z2, file, z, outputInvalidationReason2, outputGeneration);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishFromPreview$12(RoundVideoMp4Writer roundVideoMp4Writer, boolean z, File file, boolean z2, OutputInvalidationReason outputInvalidationReason, OutputGeneration outputGeneration) {
        long jNanoTime = System.nanoTime();
        try {
            try {
                roundVideoMp4Writer.finish();
                this.diagnostics.log("preview output finalized: size=" + roundVideoMp4Writer.getFile().length() + ", replace=" + z + ", elapsedMs=" + elapsedMs(jNanoTime));
                ensureNotCancelled();
                if (z) {
                    replaceWithFinalRange(file, this.trimStartMs, this.trimEndMs, z2, outputInvalidationReason);
                } else {
                    File file2 = roundVideoMp4Writer.getFile();
                    long j = this.previewSourceDurationMs;
                    if (j <= 0) {
                        j = this.recordedDurationMs;
                    }
                    completeOutput(outputGeneration, file2, j, true);
                }
                this.previewFile = null;
                if (file != null) {
                    RoundVideoRemuxer.erase(file);
                }
                if (z) {
                    RoundVideoRemuxer.erase(roundVideoMp4Writer.getFile());
                }
            } catch (Exception e) {
                this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$finishFromPreview$11(e);
                    }
                });
                if (file != null) {
                    RoundVideoRemuxer.erase(file);
                }
                if (z) {
                    RoundVideoRemuxer.erase(roundVideoMp4Writer.getFile());
                }
            }
        } catch (Throwable th) {
            if (file != null) {
                RoundVideoRemuxer.erase(file);
            }
            if (z) {
                RoundVideoRemuxer.erase(roundVideoMp4Writer.getFile());
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishFromPreview$11(Exception exc) {
        fail(asException(exc));
    }

    private void replaceWithFinalRange(File file, long j, long j2, boolean z, OutputInvalidationReason outputInvalidationReason) throws IOException {
        long jNanoTime = System.nanoTime();
        this.diagnostics.log("final range remux started: range=" + j + ".." + j2 + ", includeAudio=" + z + ", reason=" + outputInvalidationReason);
        ensureNotCancelled();
        invalidateOutput(this.outputGeneration, outputInvalidationReason);
        createOutputGenerationOnFileThread(z);
        ensureNotCancelled();
        RoundVideoRemuxer.Result resultCopyRange = RoundVideoRemuxer.copyRange(file, this.writer, j, j2, z);
        this.writer.finish();
        long durationMs = RoundVideoRemuxer.getDurationMs(this.writer.getFile());
        this.diagnostics.log("final range remux completed: durationMs=" + durationMs + ", requestedDurationMs=" + resultCopyRange.durationMs + ", actualStartMs=" + resultCopyRange.startMs + ", size=" + this.writer.getFile().length() + ", elapsedMs=" + elapsedMs(jNanoTime));
        ensureNotCancelled();
        completeOutput(this.outputGeneration, this.writer.getFile(), durationMs, z);
    }

    private void completeOutput(final OutputGeneration outputGeneration, final File file, final long j, final boolean z) {
        this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$completeOutput$14(outputGeneration, file, j, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$completeOutput$14(final OutputGeneration outputGeneration, final File file, final long j, final boolean z) {
        synchronized (this.outputLock) {
            if (!this.cancelRequested && !outputGeneration.invalidated && !outputGeneration.completed) {
                outputGeneration.completed = true;
                this.outputListener.onOutputCompleted(outputGeneration.id, file, file.length(), j, z);
                this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda21
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$completeOutput$13(outputGeneration, j, file, z);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$completeOutput$13(OutputGeneration outputGeneration, long j, File file, boolean z) {
        State state = this.state;
        if (state == State.RELEASED || state == State.ERROR) {
            return;
        }
        setState(State.COMPLETED);
        this.diagnostics.log("output completed: generation=" + outputGeneration.id + ", durationMs=" + j + ", size=" + file.length() + ", hasAudio=" + z);
        logSummary("completed");
        Listener listener = this.listener;
        long j2 = outputGeneration.id;
        FrameRate frameRate = this.activeFrameRate;
        if (frameRate == null) {
            frameRate = FrameRate.FPS_30;
        }
        listener.onCompleted(new Result(j2, file, j, z, frameRate));
    }

    private void createOutputGeneration(boolean z) {
        createOutputGenerationOnFileThread(z);
    }

    private void createOutputGenerationOnFileThread(boolean z) {
        synchronized (this.outputLock) {
            ensureNotCancelled();
            final File fileCreateTemporaryFile = createTemporaryFile("round_video_");
            long j = this.nextOutputId;
            this.nextOutputId = 1 + j;
            final OutputGeneration outputGeneration = new OutputGeneration(j, fileCreateTemporaryFile);
            this.outputGeneration = outputGeneration;
            this.writer = new RoundVideoMp4Writer(fileCreateTemporaryFile, this.outputResolution.getSize(), z, this.diagnostics, new RoundVideoMp4Writer.Listener() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda13
                @Override // org.telegram.utils.camera.roundvideo.RoundVideoMp4Writer.Listener
                public final void onBytesAvailable(long j2) {
                    this.f$0.lambda$createOutputGenerationOnFileThread$16(outputGeneration, j2);
                }
            });
            this.diagnostics.log("output generation started: id=" + outputGeneration.id + ", includeAudio=" + z + ", file=" + fileCreateTemporaryFile.getName());
            this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createOutputGenerationOnFileThread$17(outputGeneration, fileCreateTemporaryFile);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createOutputGenerationOnFileThread$16(final OutputGeneration outputGeneration, long j) {
        synchronized (this.outputLock) {
            try {
                final long j2 = outputGeneration.availableSize;
                final long j3 = j - j2;
                if (j3 > 0 && !outputGeneration.invalidated) {
                    outputGeneration.availableSize = j;
                    this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda18
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$createOutputGenerationOnFileThread$15(outputGeneration, j2, j3);
                        }
                    });
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createOutputGenerationOnFileThread$15(OutputGeneration outputGeneration, long j, long j2) {
        synchronized (this.outputLock) {
            if (!outputGeneration.invalidated && !outputGeneration.completed) {
                this.outputListener.onBytesAvailable(outputGeneration.id, outputGeneration.file, j, j2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createOutputGenerationOnFileThread$17(OutputGeneration outputGeneration, File file) {
        this.outputListener.onOutputStarted(outputGeneration.id, file);
    }

    private void invalidateOutput(final OutputGeneration outputGeneration, final OutputInvalidationReason outputInvalidationReason) {
        synchronized (this.outputLock) {
            try {
                if (!outputGeneration.invalidated && !outputGeneration.completed) {
                    outputGeneration.invalidated = true;
                    this.diagnostics.log("output generation invalidated: id=" + outputGeneration.id + ", reason=" + outputInvalidationReason + ", availableSize=" + outputGeneration.availableSize);
                    this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda19
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$invalidateOutput$18(outputGeneration, outputInvalidationReason);
                        }
                    });
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invalidateOutput$18(OutputGeneration outputGeneration, OutputInvalidationReason outputInvalidationReason) {
        this.outputListener.onOutputInvalidated(outputGeneration.id, outputInvalidationReason);
    }

    private void setState(State state) {
        State state2 = this.state;
        this.state = state;
        this.diagnostics.log("state: " + state2 + " -> " + state + ", durationMs=" + getRecordedDurationMs());
        notifyState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyState() {
        this.listener.onStateChanged(createStateInfo());
    }

    private StateInfo createStateInfo() {
        return new StateInfo(this.state, this.recordedDurationMs, this.recordingStartedAtRealtimeMs, this.maximumDurationMs, this.trimStartMs, this.trimEndMs, this.previewPlaying, this.cameraSwitching, this.flashEnabled, this.zoomProgress);
    }

    private void notifyCapabilities() {
        this.listener.onCameraCapabilitiesChanged(new CameraCapabilities(this.requestedFacing, this.activeFacing, this.requestedCameraResolution, this.activeCameraResolution, this.requestedFrameRate, this.activeFrameRate, this.flashType, this.maximumZoomRatio));
    }

    private void disableCameraEffects() {
        this.zoomProgress = 0.0f;
        this.flashEnabled = false;
        this.cameraController.setZoom(0.0f);
        this.cameraController.setTorchEnabled(false);
        setScreenFlashEnabled(false);
    }

    private void setScreenFlashEnabled(boolean z) {
        if (this.screenFlashEnabled == z) {
            return;
        }
        this.screenFlashEnabled = z;
        ScreenFlashController screenFlashController = this.screenFlashController;
        if (screenFlashController != null) {
            screenFlashController.setScreenFlashEnabled(z);
        }
    }

    private void releasePlayer() {
        this.mainHandler.removeCallbacks(this.previewProgressRunnable);
        this.previewPlaying = false;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer == null) {
            return;
        }
        exoPlayer.removeListener(this.playerListener);
        this.player.clearVideoTextureView(this.previewView);
        this.player.release();
        this.player = null;
    }

    private boolean isTrimChanged() {
        long j = this.previewSourceDurationMs;
        if (j <= 0) {
            j = this.recordedDurationMs;
        }
        return j > this.maximumDurationMs || this.trimStartMs > 0 || this.trimEndMs + 10 < j;
    }

    private boolean isTerminalState() {
        State state = this.state;
        return state == State.FINISHING || state == State.COMPLETED || state == State.ERROR || state == State.RELEASED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fail(final Exception exc) {
        State state = this.state;
        State state2 = State.ERROR;
        if (state == state2 || state == State.RELEASED) {
            return;
        }
        this.diagnostics.error("fatal error in state=" + this.state, exc);
        if (cancelOutput(OutputInvalidationReason.ERROR)) {
            disableCameraEffects();
            releasePlayer();
            this.mainHandler.removeCallbacks(this.durationLimitRunnable);
            final OutputGeneration outputGeneration = this.outputGeneration;
            if (outputGeneration != null) {
                this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$fail$19(outputGeneration, exc);
                    }
                });
            }
            setState(state2);
            logSummary("error");
            this.listener.onError(exc);
            if (this.cameraStopPending || this.cameraController.stopSegment()) {
                this.cameraStopPending = true;
                this.cancelAfterCameraStops = true;
            } else {
                finishCancellation();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fail$19(OutputGeneration outputGeneration, Exception exc) {
        this.outputListener.onOutputError(outputGeneration.id, exc);
    }

    private void deleteMediaFiles() {
        this.fileExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$deleteMediaFiles$20();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$deleteMediaFiles$20() {
        RoundVideoMp4Writer roundVideoMp4Writer = this.writer;
        File file = this.previewFile;
        if (roundVideoMp4Writer != null) {
            try {
                roundVideoMp4Writer.closeForReplacement();
            } catch (IOException unused) {
            }
            RoundVideoRemuxer.erase(roundVideoMp4Writer.getFile());
        }
        if (file != null) {
            RoundVideoRemuxer.erase(file);
        }
    }

    private void finishCancellation() {
        if (this.cleanupStarted) {
            return;
        }
        this.cleanupStarted = true;
        logSummary("cancelled");
        deleteMediaFiles();
        this.cameraController.release();
        shutdownExecutors();
    }

    private void shutdownExecutors() {
        this.mainHandler.removeCallbacksAndMessages(null);
        this.fileExecutor.shutdown();
        this.outputExecutor.shutdown();
    }

    private void ensureNotCancelled() throws IOException {
        if (this.cancelRequested) {
            Model$$ExternalSyntheticBUOutline0.m1054m("Round-video operation was cancelled");
        }
    }

    private File createTemporaryFile(String str) throws IOException {
        boolean zExists = this.outputDirectory.exists();
        File file = this.outputDirectory;
        if (zExists) {
            if (!file.isDirectory()) {
                ZipFilesKt$$ExternalSyntheticBUOutline1.m932m("Round-video output path is not a directory: ", this.outputDirectory);
                return null;
            }
        } else if (!file.mkdirs() && !this.outputDirectory.isDirectory()) {
            ZipFilesKt$$ExternalSyntheticBUOutline1.m932m("Cannot create round-video output directory: ", this.outputDirectory);
            return null;
        }
        return File.createTempFile(str, ".mp4", this.outputDirectory);
    }

    private boolean cancelOutput(final OutputInvalidationReason outputInvalidationReason) {
        synchronized (this.outputLock) {
            try {
                final OutputGeneration outputGeneration = this.outputGeneration;
                if (outputGeneration != null && outputGeneration.completed) {
                    return false;
                }
                this.cancelRequested = true;
                if (outputGeneration != null && !outputGeneration.invalidated) {
                    outputGeneration.invalidated = true;
                    this.diagnostics.log("output generation invalidated: id=" + outputGeneration.id + ", reason=" + outputInvalidationReason + ", availableSize=" + outputGeneration.availableSize);
                    this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoSession$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$cancelOutput$21(outputGeneration, outputInvalidationReason);
                        }
                    });
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelOutput$21(OutputGeneration outputGeneration, OutputInvalidationReason outputInvalidationReason) {
        this.outputListener.onOutputInvalidated(outputGeneration.id, outputInvalidationReason);
    }

    private static long clamp(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j3, j));
    }

    private static float clamp(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    private void logSummary(String str) {
        if (this.summaryLogged) {
            return;
        }
        this.summaryLogged = true;
        OutputGeneration outputGeneration = this.outputGeneration;
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        StringBuilder sb = new StringBuilder("session summary: terminal=");
        sb.append(str);
        sb.append(", state=");
        sb.append(this.state);
        sb.append(", durationMs=");
        sb.append(getRecordedDurationMs());
        sb.append(", pauses=");
        sb.append(this.pauseCount);
        sb.append(", resumes=");
        sb.append(this.resumeCount);
        sb.append(", cameraSwitches=");
        sb.append(this.cameraSwitchCount);
        sb.append(", facing=");
        sb.append(this.activeFacing);
        sb.append(", cameraMode=");
        sb.append(this.activeCameraResolution);
        sb.append(", generation=");
        sb.append(outputGeneration == null ? 0L : outputGeneration.id);
        sb.append(", availableSize=");
        sb.append(outputGeneration != null ? outputGeneration.availableSize : 0L);
        roundVideoDiagnostics.log(sb.toString());
    }

    private static long elapsedMs(long j) {
        return (System.nanoTime() - j) / 1000000;
    }

    public static final class OutputGeneration {
        volatile long availableSize;
        volatile boolean completed;
        final File file;
        final long id;
        volatile boolean invalidated;

        public OutputGeneration(long j, File file) {
            this.id = j;
            this.file = file;
        }
    }

    private static void requireMainThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("RoundVideoSession must be used from the main thread");
    }
}
