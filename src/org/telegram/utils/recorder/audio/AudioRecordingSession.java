package org.telegram.utils.recorder.audio;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.media3.common.MediaItem;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.exoplayer.ExoPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.utils.recorder.audio.AudioCapture;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes8.dex */
public final class AudioRecordingSession {
    private long activeSegmentSamples;
    private AudioCapture capture;
    private long captureToken;
    private boolean cleanupStarted;
    private final Context context;
    private final AudioRecorderDiagnostics diagnostics;
    private final ExecutorService fileExecutor;
    private boolean finishAfterCaptureStops;
    private final Listener listener;
    private final Handler mainHandler;
    private boolean maximumDurationDispatched;
    private final long maximumDurationMs;
    private final Runnable maximumDurationRunnable;
    private final long minimumDurationMs;
    private long nextOutputId;
    private final NoiseSuppression noiseSuppression;
    private final File outputDirectory;
    private final ExecutorService outputExecutor;
    private volatile OutputGeneration outputGeneration;
    private final OutputListener outputListener;
    private final Object outputLock;
    private ExoPlayer player;
    private final Player.Listener playerListener;
    private final boolean previewPlaybackEnabled;
    private boolean previewPlaying;
    private final Runnable previewProgressRunnable;
    private byte[] previewWaveform;
    private long recordingStartedAtRealtimeMs;
    private Result result;
    private long retainedSamples;
    private State state;
    private boolean summaryLogged;
    private final ArrayList<File> temporaryFiles;
    private long trimEndMs;
    private long trimStartMs;
    private static final Logger NO_OP_LOGGER = new Logger() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession.1
        @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Logger
        public void error(String str, Throwable th) {
        }

        @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Logger
        public void log(String str) {
        }
    };
    private static final AtomicLong NEXT_FILE_ID = new AtomicLong(1);

    public interface Listener {
        void onCompleted(Result result);

        void onError(Exception exc);

        default void onMaximumDurationReached() {
        }

        default void onPreviewPlaybackChanged(boolean z) {
        }

        default void onPreviewProgress(long j, long j2) {
        }

        void onPreviewReady(long j, long j2, long j3, byte[] bArr);

        void onRecordingProgress(long j, double d);

        void onRecordingTooShort(long j);

        void onStateChanged(StateInfo stateInfo);
    }

    public interface Logger {
        void error(String str, Throwable th);

        void log(String str);
    }

    public enum NoiseSuppression {
        DISABLED,
        RNNOISE
    }

    public enum OutputInvalidationReason {
        REBUILT,
        CANCELLED,
        ERROR
    }

    public interface OutputListener {
        default void onBytesAvailable(long j, File file, long j2, long j3) {
        }

        void onOutputCompleted(long j, File file, long j2, long j3);

        default void onOutputError(long j, Exception exc) {
        }

        void onOutputInvalidated(long j, OutputInvalidationReason outputInvalidationReason);

        void onOutputStarted(long j, File file);
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

    public static final class Builder {
        private final Context context;
        private Listener listener;
        private long maximumDurationMs;
        private File outputDirectory;
        private OutputListener outputListener;
        private long minimumDurationMs = 700;
        private NoiseSuppression noiseSuppression = NoiseSuppression.DISABLED;
        private boolean previewPlaybackEnabled = true;
        private Logger logger = AudioRecordingSession.NO_OP_LOGGER;

        public Builder(Context context) {
            this.context = context;
        }

        public Builder setOutputDirectory(File file) {
            this.outputDirectory = file;
            return this;
        }

        public Builder setMinimumDurationMs(long j) {
            this.minimumDurationMs = j;
            return this;
        }

        public Builder setMaximumDurationMs(long j) {
            this.maximumDurationMs = j;
            return this;
        }

        public Builder setNoiseSuppression(NoiseSuppression noiseSuppression) {
            if (noiseSuppression == null) {
                f$$ExternalSyntheticBUOutline1.m215m("Noise suppression mode is required");
                return null;
            }
            this.noiseSuppression = noiseSuppression;
            return this;
        }

        public Builder setPreviewPlaybackEnabled(boolean z) {
            this.previewPlaybackEnabled = z;
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

        public Builder setLogger(Logger logger) {
            if (logger == null) {
                logger = AudioRecordingSession.NO_OP_LOGGER;
            }
            this.logger = logger;
            return this;
        }

        public AudioRecordingSession build() {
            long j = this.minimumDurationMs;
            if (j < 0) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Minimum duration cannot be negative");
                return null;
            }
            long j2 = this.maximumDurationMs;
            if (j2 < 0) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Maximum duration cannot be negative");
                return null;
            }
            if (j2 > 0 && j2 < j) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Maximum duration is shorter than minimum duration");
                return null;
            }
            if (this.listener == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Session listener is required");
                return null;
            }
            if (this.outputListener == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Output listener is required");
                return null;
            }
            return new AudioRecordingSession(this);
        }
    }

    public static final class StateInfo {
        private final long maximumDurationMs;
        private final long minimumDurationMs;
        private final boolean previewPlaying;
        private final long recordedDurationMs;
        private final long recordingStartedAtRealtimeMs;
        private final State state;
        private final long trimEndMs;
        private final long trimStartMs;

        private StateInfo(State state, long j, long j2, long j3, long j4, long j5, long j6, boolean z) {
            this.state = state;
            this.recordedDurationMs = j;
            this.recordingStartedAtRealtimeMs = j2;
            this.minimumDurationMs = j3;
            this.maximumDurationMs = j4;
            this.trimStartMs = j5;
            this.trimEndMs = j6;
            this.previewPlaying = z;
        }

        public State getState() {
            return this.state;
        }
    }

    public static final class Result {
        private final long durationMs;
        private final File file;
        private final long outputId;
        private final byte[] waveform;

        private Result(long j, File file, long j2, byte[] bArr) {
            this.outputId = j;
            this.file = file;
            this.durationMs = j2;
            this.waveform = bArr == null ? null : (byte[]) bArr.clone();
        }

        public File getFile() {
            return this.file;
        }

        public long getDurationMs() {
            return this.durationMs;
        }

        public byte[] getWaveform() {
            byte[] bArr = this.waveform;
            if (bArr == null) {
                return null;
            }
            return (byte[]) bArr.clone();
        }
    }

    public static /* synthetic */ Thread $r8$lambda$B4YMyFpKRSV64bDbk2b2MB5sau0(Runnable runnable) {
        return new Thread(runnable, "AudioRecorderFiles");
    }

    public static /* synthetic */ Thread $r8$lambda$vupbKtPL9DbuiXwxptwQyObX1CQ(Runnable runnable) {
        return new Thread(runnable, "AudioRecorderOutput");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMaximumDurationTimer() {
        if (this.state != State.RECORDING || this.maximumDurationDispatched) {
            return;
        }
        this.maximumDurationDispatched = true;
        this.diagnostics.log("maximum duration reached: durationMs=" + getRecordedDurationMs());
        this.listener.onMaximumDurationReached();
        pauseRecording();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePreviewProgress() {
        ExoPlayer exoPlayer;
        if (this.state == State.PREVIEWING && (exoPlayer = this.player) != null && this.previewPlaying) {
            long currentPosition = exoPlayer.getCurrentPosition();
            long j = this.trimStartMs;
            if (currentPosition < j || currentPosition >= this.trimEndMs) {
                this.player.seekTo(j);
                currentPosition = this.trimStartMs;
            }
            this.listener.onPreviewProgress(currentPosition, getRecordedDurationMs());
            this.mainHandler.postDelayed(this.previewProgressRunnable, 32L);
        }
    }

    private AudioRecordingSession(Builder builder) {
        File cacheDir;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.fileExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return AudioRecordingSession.$r8$lambda$B4YMyFpKRSV64bDbk2b2MB5sau0(runnable);
            }
        });
        this.outputExecutor = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda3
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return AudioRecordingSession.$r8$lambda$vupbKtPL9DbuiXwxptwQyObX1CQ(runnable);
            }
        });
        this.outputLock = new Object();
        this.temporaryFiles = new ArrayList<>();
        this.state = State.IDLE;
        this.nextOutputId = 1L;
        this.playerListener = new Player.Listener() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession.3
            @Override // androidx.media3.common.Player.Listener
            public void onPlayerError(PlaybackException playbackException) {
                AudioRecordingSession.this.fail(playbackException);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onIsPlayingChanged(boolean z) {
                AudioRecordingSession.this.updatePreviewPlaying(z);
            }

            @Override // androidx.media3.common.Player.Listener
            public void onPlaybackStateChanged(int i) {
                if (i == 4 && AudioRecordingSession.this.state == State.PREVIEWING && AudioRecordingSession.this.player != null) {
                    AudioRecordingSession.this.player.seekTo(AudioRecordingSession.this.trimStartMs);
                    AudioRecordingSession.this.player.pause();
                }
            }
        };
        requireMainThread();
        Context applicationContext = builder.context.getApplicationContext();
        applicationContext = applicationContext == null ? builder.context : applicationContext;
        this.context = applicationContext;
        if (builder.outputDirectory == null) {
            cacheDir = applicationContext.getCacheDir();
        } else {
            cacheDir = builder.outputDirectory;
        }
        this.outputDirectory = cacheDir;
        long j = builder.minimumDurationMs;
        this.minimumDurationMs = j;
        long j2 = builder.maximumDurationMs;
        this.maximumDurationMs = j2;
        NoiseSuppression noiseSuppression = builder.noiseSuppression;
        this.noiseSuppression = noiseSuppression;
        this.previewPlaybackEnabled = builder.previewPlaybackEnabled;
        this.listener = builder.listener;
        this.outputListener = builder.outputListener;
        AudioRecorderDiagnostics audioRecorderDiagnostics = new AudioRecorderDiagnostics(builder.logger);
        this.diagnostics = audioRecorderDiagnostics;
        this.maximumDurationRunnable = new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onMaximumDurationTimer();
            }
        };
        this.previewProgressRunnable = new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updatePreviewProgress();
            }
        };
        audioRecorderDiagnostics.log("session created: device=" + Build.MANUFACTURER + " " + Build.MODEL + ", sdk=" + Build.VERSION.SDK_INT + ", sampleRate=48000, noiseSuppression=" + noiseSuppression + ", minimumDurationMs=" + j + ", maximumDurationMs=" + j2);
    }

    public boolean start() {
        requireMainThread();
        if (this.state != State.IDLE || !ensureOutputDirectory()) {
            return false;
        }
        this.diagnostics.log("start requested");
        createOutputGeneration();
        setState(State.STARTING);
        startCapture(null, 0L, -1L);
        return true;
    }

    public boolean pauseRecording() {
        requireMainThread();
        if (this.state != State.RECORDING || this.capture == null) {
            return false;
        }
        this.diagnostics.log("pause requested: durationMs=" + getRecordedDurationMs());
        this.mainHandler.removeCallbacks(this.maximumDurationRunnable);
        setState(State.PAUSING);
        this.capture.stop();
        return true;
    }

    public boolean resumeRecording() {
        requireMainThread();
        if (this.state != State.PREVIEWING) {
            return false;
        }
        long j = this.trimEndMs - this.trimStartMs;
        long j2 = this.maximumDurationMs;
        if (j2 > 0 && j >= j2) {
            return false;
        }
        this.diagnostics.log("resume requested: trim=" + this.trimStartMs + ".." + this.trimEndMs + ", sourceDurationMs=" + getRecordedDurationMs());
        releasePlayer();
        setState(State.RESUMING);
        rebuildPrefixAndResume();
        return true;
    }

    public boolean setTrimRange(long j, long j2) {
        requireMainThread();
        if (this.state != State.PREVIEWING) {
            return false;
        }
        long recordedDurationMs = getRecordedDurationMs();
        long jClamp = clamp(j, 0L, recordedDurationMs);
        long jClamp2 = clamp(j2, jClamp, recordedDurationMs);
        if (jClamp2 - jClamp < Math.min(this.minimumDurationMs, recordedDurationMs)) {
            return false;
        }
        this.trimStartMs = jClamp;
        this.trimEndMs = jClamp2;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.seekTo(jClamp);
        }
        this.listener.onPreviewProgress(this.trimStartMs, recordedDurationMs);
        notifyState();
        return true;
    }

    public boolean finish() {
        requireMainThread();
        State state = this.state;
        State state2 = State.RECORDING;
        if (state != state2 && state != State.PREVIEWING) {
            return false;
        }
        this.diagnostics.log("finish requested: state=" + this.state + ", durationMs=" + getRecordedDurationMs() + ", trim=" + this.trimStartMs + ".." + this.trimEndMs);
        if (this.state == state2) {
            this.finishAfterCaptureStops = true;
            this.mainHandler.removeCallbacks(this.maximumDurationRunnable);
            setState(State.FINISHING);
            this.capture.stop();
        } else {
            releasePlayer();
            setState(State.FINISHING);
            finishFromPreview();
        }
        return true;
    }

    public Result detachPreviewOutput() {
        requireMainThread();
        if (this.state != State.PREVIEWING || this.outputGeneration == null || this.trimStartMs != 0 || this.trimEndMs != getRecordedDurationMs()) {
            return null;
        }
        releasePlayer();
        final OutputGeneration outputGeneration = this.outputGeneration;
        final long recordedDurationMs = getRecordedDurationMs();
        final long length = outputGeneration.file.length();
        announceBytes(outputGeneration, length);
        synchronized (this.outputLock) {
            if (outputGeneration.valid && !outputGeneration.completed) {
                outputGeneration.completed = true;
                this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$detachPreviewOutput$2(outputGeneration, length, recordedDurationMs);
                    }
                });
                this.result = new Result(outputGeneration.id, outputGeneration.file, recordedDurationMs, cloneOrNull(this.previewWaveform));
                setState(State.COMPLETED);
                cleanupUnfinishedFiles();
                shutdownExecutors();
                logSummary("detached_preview");
                return this.result;
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detachPreviewOutput$2(OutputGeneration outputGeneration, long j, long j2) {
        this.outputListener.onOutputCompleted(outputGeneration.id, outputGeneration.file, j, j2);
    }

    public boolean cancel() {
        requireMainThread();
        State state = this.state;
        State state2 = State.RELEASED;
        if (state == state2 || state == State.COMPLETED) {
            return false;
        }
        this.diagnostics.log("cancel requested: state=" + this.state);
        removeScheduledCallbacks();
        releasePlayer();
        invalidateCurrentOutput(OutputInvalidationReason.CANCELLED);
        setState(state2);
        AudioCapture audioCapture = this.capture;
        if (audioCapture != null) {
            audioCapture.stop();
            return true;
        }
        cleanupUnfinishedFiles();
        shutdownExecutors();
        return true;
    }

    public void release() {
        requireMainThread();
        State state = this.state;
        State state2 = State.RELEASED;
        if (state == state2) {
            return;
        }
        if (state != State.COMPLETED) {
            cancel();
            return;
        }
        releasePlayer();
        cleanupUnfinishedFiles();
        setState(state2);
        logSummary("released");
    }

    public StateInfo getStateInfo() {
        requireMainThread();
        return createStateInfo();
    }

    public File getPreviewFile() {
        requireMainThread();
        OutputGeneration outputGeneration = this.outputGeneration;
        if (this.state != State.PREVIEWING || outputGeneration == null) {
            return null;
        }
        return outputGeneration.file;
    }

    public long getRecordedDurationMs() {
        requireMainThread();
        return samplesToMs(this.retainedSamples + this.activeSegmentSamples);
    }

    private void startCapture(File file, long j, long j2) {
        long j3 = this.captureToken + 1;
        this.captureToken = j3;
        OutputGeneration outputGeneration = this.outputGeneration;
        if (outputGeneration == null) {
            fail(new IllegalStateException("Output generation is missing"));
            return;
        }
        AudioCapture audioCapture = new AudioCapture(outputGeneration.file, file, j, j2, this.noiseSuppression, this.diagnostics, new C67412(j3, outputGeneration));
        this.capture = audioCapture;
        this.activeSegmentSamples = 0L;
        audioCapture.start();
    }

    /* JADX INFO: renamed from: org.telegram.utils.recorder.audio.AudioRecordingSession$2 */
    public class C67412 implements AudioCapture.Callback {
        final /* synthetic */ OutputGeneration val$generation;
        final /* synthetic */ long val$token;

        public C67412(long j, OutputGeneration outputGeneration) {
            this.val$token = j;
            this.val$generation = outputGeneration;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStarted$0(long j) {
            AudioRecordingSession.this.onCaptureStarted(j);
        }

        @Override // org.telegram.utils.recorder.audio.AudioCapture.Callback
        public void onStarted() {
            Handler handler = AudioRecordingSession.this.mainHandler;
            final long j = this.val$token;
            handler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStarted$0(j);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onProgress$1(long j, long j2, double d) {
            AudioRecordingSession.this.onCaptureProgress(j, j2, d);
        }

        @Override // org.telegram.utils.recorder.audio.AudioCapture.Callback
        public void onProgress(final long j, final double d) {
            Handler handler = AudioRecordingSession.this.mainHandler;
            final long j2 = this.val$token;
            handler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$2$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onProgress$1(j2, j, d);
                }
            });
        }

        @Override // org.telegram.utils.recorder.audio.AudioCapture.Callback
        public void onOutputCommitted(long j) {
            AudioRecordingSession.this.announceBytes(this.val$generation, j);
        }

        @Override // org.telegram.utils.recorder.audio.AudioCapture.Callback
        public void onStopped(final long j, long j2) {
            AudioRecordingSession.this.announceBytes(this.val$generation, j2);
            Handler handler = AudioRecordingSession.this.mainHandler;
            final long j3 = this.val$token;
            handler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onStopped$2(j3, j);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onStopped$2(long j, long j2) {
            AudioRecordingSession.this.onCaptureStopped(j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$3(long j, Exception exc) {
            AudioRecordingSession.this.onCaptureError(j, exc);
        }

        @Override // org.telegram.utils.recorder.audio.AudioCapture.Callback
        public void onError(final Exception exc) {
            Handler handler = AudioRecordingSession.this.mainHandler;
            final long j = this.val$token;
            handler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$2$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onError$3(j, exc);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCaptureStarted(long j) {
        if (j != this.captureToken || isTerminalState()) {
            return;
        }
        this.recordingStartedAtRealtimeMs = SystemClock.elapsedRealtime();
        this.maximumDurationDispatched = false;
        setState(State.RECORDING);
        scheduleMaximumDuration();
        this.diagnostics.log("recording started: retainedDurationMs=" + samplesToMs(this.retainedSamples));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCaptureProgress(long j, long j2, double d) {
        if (j == this.captureToken && this.state == State.RECORDING) {
            this.activeSegmentSamples = j2;
            long recordedDurationMs = getRecordedDurationMs();
            long j3 = this.maximumDurationMs;
            if (j3 > 0 && recordedDurationMs >= j3) {
                this.maximumDurationRunnable.run();
            } else if (d >= 0.0d) {
                this.listener.onRecordingProgress(recordedDurationMs, d);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCaptureStopped(long j, long j2) {
        if (j != this.captureToken) {
            return;
        }
        this.capture = null;
        this.retainedSamples += j2;
        this.activeSegmentSamples = 0L;
        this.recordingStartedAtRealtimeMs = 0L;
        this.mainHandler.removeCallbacks(this.maximumDurationRunnable);
        State state = this.state;
        if (state == State.RELEASED) {
            cleanupUnfinishedFiles();
            shutdownExecutors();
            logSummary("cancelled");
        } else if (state == State.ERROR) {
            cleanupUnfinishedFiles();
            shutdownExecutors();
        } else if (this.finishAfterCaptureStops) {
            this.finishAfterCaptureStops = false;
            finishFinalGeneration();
        } else if (state == State.PAUSING) {
            preparePreview();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCaptureError(long j, Exception exc) {
        if (j != this.captureToken) {
            return;
        }
        this.capture = null;
        State state = this.state;
        if (state == State.RELEASED || state == State.ERROR) {
            this.diagnostics.error("capture error after session end", exc);
            cleanupUnfinishedFiles();
            shutdownExecutors();
            return;
        }
        fail(exc);
    }

    private void preparePreview() {
        final OutputGeneration outputGeneration = this.outputGeneration;
        if (outputGeneration == null) {
            fail(new IllegalStateException("Output generation is missing"));
            return;
        }
        long recordedDurationMs = getRecordedDurationMs();
        this.trimStartMs = 0L;
        this.trimEndMs = recordedDurationMs;
        this.fileExecutor.execute(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$preparePreview$4(outputGeneration);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preparePreview$4(final OutputGeneration outputGeneration) {
        final byte[] waveform;
        try {
            waveform = AudioRecorderNative.getWaveform(outputGeneration.file.getAbsolutePath());
        } catch (Throwable th) {
            this.diagnostics.error("waveform extraction failed", th);
            waveform = null;
        }
        this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$preparePreview$3(outputGeneration, waveform);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preparePreview$3(OutputGeneration outputGeneration, byte[] bArr) {
        enterPreview(outputGeneration.file, bArr);
    }

    private void enterPreview(File file, byte[] bArr) {
        if (this.state != State.PAUSING) {
            return;
        }
        this.previewWaveform = bArr;
        try {
            releasePlayer();
            if (this.previewPlaybackEnabled) {
                ExoPlayer exoPlayerBuild = new ExoPlayer.Builder(this.context).build();
                this.player = exoPlayerBuild;
                exoPlayerBuild.addListener(this.playerListener);
                this.player.setMediaItem(MediaItem.fromUri(Uri.fromFile(file)));
                this.player.prepare();
            }
            setState(State.PREVIEWING);
            this.listener.onPreviewReady(getRecordedDurationMs(), this.trimStartMs, this.trimEndMs, cloneOrNull(this.previewWaveform));
        } catch (Throwable th) {
            fail(asException(th));
        }
    }

    private void rebuildPrefixAndResume() {
        OutputGeneration outputGeneration = this.outputGeneration;
        if (outputGeneration == null) {
            fail(new IllegalStateException("Output generation is missing"));
            return;
        }
        long j = this.trimStartMs;
        long j2 = this.trimEndMs;
        boolean z = j2 >= samplesToMs(this.retainedSamples);
        invalidateCurrentOutput(OutputInvalidationReason.REBUILT);
        long jMsToSamples = msToSamples(j2 - j);
        this.retainedSamples = jMsToSamples;
        this.trimStartMs = 0L;
        this.trimEndMs = samplesToMs(jMsToSamples);
        createOutputGeneration();
        this.diagnostics.log("resume prefix selected: source=" + outputGeneration.file.getName() + ", trim=" + j + ".." + j2);
        File file = outputGeneration.file;
        if (z) {
            j2 = -1;
        }
        startCapture(file, j, j2);
    }

    private void finishFromPreview() {
        final OutputGeneration outputGeneration = this.outputGeneration;
        if (outputGeneration == null) {
            fail(new IllegalStateException("Output generation is missing"));
            return;
        }
        long jSamplesToMs = samplesToMs(this.retainedSamples);
        final long j = this.trimStartMs;
        if (j == 0 && this.trimEndMs == jSamplesToMs) {
            finishFinalGeneration();
            return;
        }
        final long j2 = this.trimEndMs;
        invalidateCurrentOutput(OutputInvalidationReason.REBUILT);
        final OutputGeneration outputGenerationCreateOutputGeneration = createOutputGeneration();
        this.fileExecutor.execute(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$finishFromPreview$7(outputGeneration, outputGenerationCreateOutputGeneration, j, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishFromPreview$7(OutputGeneration outputGeneration, OutputGeneration outputGeneration2, final long j, final long j2) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            if (!AudioRecorderNative.cropOpusFile(outputGeneration.file.getAbsolutePath(), outputGeneration2.file.getAbsolutePath(), j, j2)) {
                throw new IllegalStateException("Unable to trim final Opus output");
            }
            this.diagnostics.log("final trim completed: source=" + outputGeneration.file.getName() + ", output=" + outputGeneration2.file.getName() + ", trim=" + j + ".." + j2 + ", bytes=" + outputGeneration2.file.length() + ", elapsedMs=" + (SystemClock.elapsedRealtime() - jElapsedRealtime));
            announceBytes(outputGeneration2, outputGeneration2.file.length());
            this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$finishFromPreview$5(j2, j);
                }
            });
        } catch (Throwable th) {
            this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$finishFromPreview$6(th);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishFromPreview$5(long j, long j2) {
        if (this.state != State.FINISHING) {
            return;
        }
        long jMsToSamples = msToSamples(j - j2);
        this.retainedSamples = jMsToSamples;
        this.trimStartMs = 0L;
        this.trimEndMs = samplesToMs(jMsToSamples);
        finishFinalGeneration();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishFromPreview$6(Throwable th) {
        fail(asException(th));
    }

    private void finishFinalGeneration() {
        if (this.state != State.FINISHING) {
            return;
        }
        final OutputGeneration outputGeneration = this.outputGeneration;
        if (outputGeneration == null) {
            fail(new IllegalStateException("Output generation is missing"));
            return;
        }
        final long recordedDurationMs = getRecordedDurationMs();
        if (recordedDurationMs < this.minimumDurationMs) {
            this.diagnostics.log("recording rejected as too short: durationMs=" + recordedDurationMs);
            this.listener.onRecordingTooShort(recordedDurationMs);
            invalidateCurrentOutput(OutputInvalidationReason.CANCELLED);
            setState(State.RELEASED);
            cleanupUnfinishedFiles();
            shutdownExecutors();
            logSummary("too_short");
            return;
        }
        this.fileExecutor.execute(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$finishFinalGeneration$9(outputGeneration, recordedDurationMs);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishFinalGeneration$9(final OutputGeneration outputGeneration, final long j) {
        byte[] waveform;
        try {
            waveform = AudioRecorderNative.getWaveform(outputGeneration.file.getAbsolutePath());
        } catch (Throwable th) {
            this.diagnostics.error("final waveform extraction failed", th);
            waveform = null;
        }
        final byte[] bArr = waveform;
        this.mainHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$finishFinalGeneration$8(outputGeneration, j, bArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: complete, reason: merged with bridge method [inline-methods] */
    public void lambda$finishFinalGeneration$8(final OutputGeneration outputGeneration, final long j, byte[] bArr) {
        if (this.state != State.FINISHING) {
            return;
        }
        final long length = outputGeneration.file.length();
        announceBytes(outputGeneration, length);
        synchronized (this.outputLock) {
            if (outputGeneration.valid && !outputGeneration.completed) {
                outputGeneration.completed = true;
                this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$complete$10(outputGeneration, length, j);
                    }
                });
                this.result = new Result(outputGeneration.id, outputGeneration.file, j, bArr);
                setState(State.COMPLETED);
                this.listener.onCompleted(this.result);
                cleanupUnfinishedFiles();
                shutdownExecutors();
                logSummary("completed");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$complete$10(OutputGeneration outputGeneration, long j, long j2) {
        this.outputListener.onOutputCompleted(outputGeneration.id, outputGeneration.file, j, j2);
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

    private void releasePlayer() {
        this.mainHandler.removeCallbacks(this.previewProgressRunnable);
        this.previewPlaying = false;
        ExoPlayer exoPlayer = this.player;
        if (exoPlayer != null) {
            exoPlayer.removeListener(this.playerListener);
            this.player.release();
            this.player = null;
        }
    }

    private void scheduleMaximumDuration() {
        this.mainHandler.removeCallbacks(this.maximumDurationRunnable);
        long j = this.maximumDurationMs;
        if (j == 0) {
            return;
        }
        long recordedDurationMs = j - getRecordedDurationMs();
        Handler handler = this.mainHandler;
        if (recordedDurationMs <= 0) {
            handler.post(this.maximumDurationRunnable);
        } else {
            handler.postDelayed(this.maximumDurationRunnable, recordedDurationMs);
        }
    }

    private boolean ensureOutputDirectory() {
        if ((this.outputDirectory.isDirectory() || this.outputDirectory.mkdirs()) && this.outputDirectory.canWrite()) {
            return true;
        }
        fail(new IllegalStateException("Output directory is not writable: " + this.outputDirectory));
        return false;
    }

    private OutputGeneration createOutputGeneration() {
        final File fileCreateTemporaryFile = createTemporaryFile("voice", ".ogg");
        long j = this.nextOutputId;
        this.nextOutputId = 1 + j;
        final OutputGeneration outputGeneration = new OutputGeneration(j, fileCreateTemporaryFile);
        synchronized (this.outputLock) {
            this.outputGeneration = outputGeneration;
            this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createOutputGeneration$11(outputGeneration, fileCreateTemporaryFile);
                }
            });
        }
        this.diagnostics.log("output generation started: id=" + outputGeneration.id + ", file=" + fileCreateTemporaryFile.getName());
        return outputGeneration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createOutputGeneration$11(OutputGeneration outputGeneration, File file) {
        this.outputListener.onOutputStarted(outputGeneration.id, file);
    }

    private File createTemporaryFile(String str, String str2) {
        File file = new File(this.outputDirectory, "audio_recording_" + str + "_" + System.currentTimeMillis() + "_" + NEXT_FILE_ID.getAndIncrement() + str2);
        synchronized (this.temporaryFiles) {
            this.temporaryFiles.add(file);
        }
        return file;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void announceBytes(final OutputGeneration outputGeneration, long j) {
        if (j <= 0) {
            return;
        }
        synchronized (this.outputLock) {
            try {
                if (outputGeneration.valid && !outputGeneration.completed) {
                    final long j2 = outputGeneration.announcedBytes;
                    if (j > j2) {
                        final long j3 = j - j2;
                        outputGeneration.announcedBytes = j;
                        this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda13
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$announceBytes$12(outputGeneration, j2, j3);
                            }
                        });
                    }
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$announceBytes$12(OutputGeneration outputGeneration, long j, long j2) {
        this.outputListener.onBytesAvailable(outputGeneration.id, outputGeneration.file, j, j2);
    }

    private void invalidateCurrentOutput(final OutputInvalidationReason outputInvalidationReason) {
        synchronized (this.outputLock) {
            final OutputGeneration outputGeneration = this.outputGeneration;
            if (outputGeneration != null && outputGeneration.valid && !outputGeneration.completed) {
                outputGeneration.valid = false;
                this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$invalidateCurrentOutput$13(outputGeneration, outputInvalidationReason);
                    }
                });
                this.diagnostics.log("output generation invalidated: id=" + outputGeneration.id + ", reason=" + outputInvalidationReason);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invalidateCurrentOutput$13(OutputGeneration outputGeneration, OutputInvalidationReason outputInvalidationReason) {
        this.outputListener.onOutputInvalidated(outputGeneration.id, outputInvalidationReason);
    }

    private void cleanupUnfinishedFiles() {
        if (this.cleanupStarted) {
            return;
        }
        this.cleanupStarted = true;
        Result result = this.result;
        final File file = result == null ? null : result.file;
        Runnable runnable = new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cleanupUnfinishedFiles$14(file);
            }
        };
        try {
            this.fileExecutor.execute(runnable);
        } catch (RejectedExecutionException unused) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: deleteTemporaryFiles, reason: merged with bridge method [inline-methods] */
    public void lambda$cleanupUnfinishedFiles$14(File file) {
        synchronized (this.temporaryFiles) {
            int i = 0;
            while (true) {
                try {
                    int size = this.temporaryFiles.size();
                    ArrayList<File> arrayList = this.temporaryFiles;
                    if (i < size) {
                        File file2 = arrayList.get(i);
                        if (file == null || !file.equals(file2)) {
                            if (file2.exists() && !file2.delete()) {
                                this.diagnostics.log("temporary file deletion failed: " + file2.getName());
                            }
                        }
                        i++;
                    } else {
                        arrayList.clear();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void removeScheduledCallbacks() {
        this.mainHandler.removeCallbacks(this.maximumDurationRunnable);
        this.mainHandler.removeCallbacks(this.previewProgressRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fail(final Exception exc) {
        State state = this.state;
        State state2 = State.ERROR;
        if (state == state2 || state == State.RELEASED || state == State.COMPLETED) {
            return;
        }
        this.diagnostics.error("fatal error in state=" + this.state, exc);
        removeScheduledCallbacks();
        releasePlayer();
        invalidateCurrentOutput(OutputInvalidationReason.ERROR);
        setState(state2);
        final OutputGeneration outputGeneration = this.outputGeneration;
        if (outputGeneration != null) {
            this.outputExecutor.execute(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioRecordingSession$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fail$15(outputGeneration, exc);
                }
            });
        }
        this.listener.onError(exc);
        AudioCapture audioCapture = this.capture;
        if (audioCapture != null) {
            audioCapture.stop();
        } else {
            cleanupUnfinishedFiles();
            shutdownExecutors();
        }
        logSummary("error");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fail$15(OutputGeneration outputGeneration, Exception exc) {
        this.outputListener.onOutputError(outputGeneration.id, exc);
    }

    private void setState(State state) {
        State state2 = this.state;
        if (state2 == state) {
            return;
        }
        this.state = state;
        this.diagnostics.log("state: " + state2 + " -> " + state + ", durationMs=" + samplesToMs(this.retainedSamples + this.activeSegmentSamples));
        notifyState();
    }

    private void notifyState() {
        this.listener.onStateChanged(createStateInfo());
    }

    private StateInfo createStateInfo() {
        return new StateInfo(this.state, samplesToMs(this.retainedSamples + this.activeSegmentSamples), this.recordingStartedAtRealtimeMs, this.minimumDurationMs, this.maximumDurationMs, this.trimStartMs, this.trimEndMs, this.previewPlaying);
    }

    private boolean isTerminalState() {
        State state = this.state;
        return state == State.ERROR || state == State.RELEASED || state == State.COMPLETED;
    }

    private void shutdownExecutors() {
        this.fileExecutor.shutdown();
        this.outputExecutor.shutdown();
    }

    private void logSummary(String str) {
        if (this.summaryLogged) {
            return;
        }
        this.summaryLogged = true;
        this.diagnostics.log("session summary: terminal=" + str + ", durationMs=" + samplesToMs(this.retainedSamples + this.activeSegmentSamples) + ", generations=" + (this.nextOutputId - 1));
    }

    private static long samplesToMs(long j) {
        return (j * 1000) / 48000;
    }

    private static long msToSamples(long j) {
        return (j * 48000) / 1000;
    }

    private static long clamp(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j3, j));
    }

    private static byte[] cloneOrNull(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return (byte[]) bArr.clone();
    }

    private static Exception asException(Throwable th) {
        return th instanceof Exception ? (Exception) th : new RuntimeException(th);
    }

    private static void requireMainThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("AudioRecordingSession must be used on the main thread");
    }

    public static final class OutputGeneration {
        long announcedBytes;
        boolean completed;
        final File file;
        final long id;
        boolean valid = true;

        public OutputGeneration(long j, File file) {
            this.id = j;
            this.file = file;
        }
    }
}
