package org.telegram.messenger;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import org.telegram.utils.recorder.audio.AudioRecordingSession;
import org.telegram.utils.settings.SharedSettings;

/* JADX INFO: loaded from: classes6.dex */
final class AudioRecorderV2Controller {
    private boolean finishRequested;
    private final Listener listener;
    private boolean released;
    private final AudioRecordingSession session;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Object outputLock = new Object();
    private final HashMap<Long, File> outputFiles = new HashMap<>();
    private final HashSet<Long> deliveredOutputIds = new HashSet<>();
    private AudioRecordingSession.State previousState = AudioRecordingSession.State.IDLE;

    public interface Listener {
        void onCompleted(AudioRecordingSession.Result result);

        void onError(Exception exc);

        void onOutputInvalidated(File file);

        void onOutputStarted(File file);

        void onPreviewReady(long j, File file, byte[] bArr);

        void onRecordingProgress(long j, double d);

        void onRecordingResumed();

        void onRecordingStarted();

        void onRecordingTooShort(long j);
    }

    public AudioRecorderV2Controller(Context context, File file, final Listener listener) {
        this.listener = listener;
        this.session = new AudioRecordingSession.Builder(context).setOutputDirectory(file).setMinimumDurationMs(700L).setMaximumDurationMs(0L).setNoiseSuppression((AudioRecordingSession.NoiseSuppression) SharedSettings.audioRecorderNoiseSuppression.get()).setPreviewPlaybackEnabled(false).setListener(new AudioRecordingSession.Listener() { // from class: org.telegram.messenger.AudioRecorderV2Controller.3
            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Listener
            public /* bridge */ /* synthetic */ void onMaximumDurationReached() {
                super.onMaximumDurationReached();
            }

            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Listener
            public /* bridge */ /* synthetic */ void onPreviewPlaybackChanged(boolean z) {
                super.onPreviewPlaybackChanged(z);
            }

            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Listener
            public /* bridge */ /* synthetic */ void onPreviewProgress(long j, long j2) {
                super.onPreviewProgress(j, j2);
            }

            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Listener
            public void onStateChanged(AudioRecordingSession.StateInfo stateInfo) {
                AudioRecordingSession.State state = stateInfo.getState();
                AudioRecordingSession.State state2 = AudioRecorderV2Controller.this.previousState;
                AudioRecorderV2Controller.this.previousState = state;
                if (state == AudioRecordingSession.State.RECORDING) {
                    if (!AudioRecorderV2Controller.this.finishRequested && state2 == AudioRecordingSession.State.STARTING) {
                        listener.onRecordingStarted();
                    } else if (!AudioRecorderV2Controller.this.finishRequested && state2 == AudioRecordingSession.State.RESUMING) {
                        listener.onRecordingResumed();
                    }
                    AudioRecorderV2Controller.this.completePendingFinish(state);
                }
            }

            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Listener
            public void onRecordingProgress(long j, double d) {
                listener.onRecordingProgress(j, d);
            }

            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Listener
            public void onPreviewReady(long j, long j2, long j3, byte[] bArr) {
                boolean z = AudioRecorderV2Controller.this.finishRequested;
                AudioRecorderV2Controller audioRecorderV2Controller = AudioRecorderV2Controller.this;
                if (z) {
                    audioRecorderV2Controller.finishRequested = false;
                    AudioRecorderV2Controller.this.session.finish();
                    return;
                }
                File previewFile = audioRecorderV2Controller.session.getPreviewFile();
                Listener listener2 = listener;
                if (previewFile == null) {
                    listener2.onError(new IllegalStateException("Preview file is unavailable"));
                } else {
                    listener2.onPreviewReady(j, previewFile, bArr);
                }
            }

            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Listener
            public void onRecordingTooShort(long j) {
                listener.onRecordingTooShort(j);
            }

            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Listener
            public void onCompleted(AudioRecordingSession.Result result) {
                listener.onCompleted(result);
            }

            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Listener
            public void onError(Exception exc) {
                listener.onError(exc);
            }
        }).setOutputListener(new C27432(listener)).setLogger(new AudioRecordingSession.Logger() { // from class: org.telegram.messenger.AudioRecorderV2Controller.1
            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Logger
            public void log(String str) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1037d("AudioRecorderV2 " + str);
                }
            }

            @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.Logger
            public void error(String str, Throwable th) {
                FileLog.m1039e("AudioRecorderV2 " + str, th);
            }
        }).build();
    }

    /* JADX INFO: renamed from: org.telegram.messenger.AudioRecorderV2Controller$2 */
    public class C27432 implements AudioRecordingSession.OutputListener {
        final /* synthetic */ Listener val$listener;

        @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.OutputListener
        public /* bridge */ /* synthetic */ void onBytesAvailable(long j, File file, long j2, long j3) {
            super.onBytesAvailable(j, file, j2, j3);
        }

        @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.OutputListener
        public /* bridge */ /* synthetic */ void onOutputError(long j, Exception exc) {
            super.onOutputError(j, exc);
        }

        public C27432(Listener listener) {
            this.val$listener = listener;
        }

        @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.OutputListener
        public void onOutputStarted(final long j, final File file) {
            synchronized (AudioRecorderV2Controller.this.outputLock) {
                AudioRecorderV2Controller.this.outputFiles.put(Long.valueOf(j), file);
            }
            Handler handler = AudioRecorderV2Controller.this.mainHandler;
            final Listener listener = this.val$listener;
            handler.post(new Runnable() { // from class: org.telegram.messenger.AudioRecorderV2Controller$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onOutputStarted$0(j, listener, file);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onOutputStarted$0(long j, Listener listener, File file) {
            if (AudioRecorderV2Controller.this.released) {
                return;
            }
            AudioRecorderV2Controller.this.deliveredOutputIds.add(Long.valueOf(j));
            listener.onOutputStarted(file);
        }

        @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.OutputListener
        public void onOutputInvalidated(final long j, AudioRecordingSession.OutputInvalidationReason outputInvalidationReason) {
            final File file;
            synchronized (AudioRecorderV2Controller.this.outputLock) {
                file = (File) AudioRecorderV2Controller.this.outputFiles.remove(Long.valueOf(j));
            }
            if (file != null) {
                Handler handler = AudioRecorderV2Controller.this.mainHandler;
                final Listener listener = this.val$listener;
                handler.post(new Runnable() { // from class: org.telegram.messenger.AudioRecorderV2Controller$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onOutputInvalidated$1(j, listener, file);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onOutputInvalidated$1(long j, Listener listener, File file) {
            if (AudioRecorderV2Controller.this.deliveredOutputIds.remove(Long.valueOf(j))) {
                listener.onOutputInvalidated(file);
            }
        }

        @Override // org.telegram.utils.recorder.audio.AudioRecordingSession.OutputListener
        public void onOutputCompleted(long j, File file, long j2, long j3) {
            synchronized (AudioRecorderV2Controller.this.outputLock) {
                AudioRecorderV2Controller.this.outputFiles.put(Long.valueOf(j), file);
            }
        }
    }

    public boolean start() {
        return this.session.start();
    }

    public boolean togglePause() {
        AudioRecordingSession.State state = this.session.getStateInfo().getState();
        if (state == AudioRecordingSession.State.RECORDING) {
            return this.session.pauseRecording();
        }
        if (state == AudioRecordingSession.State.PREVIEWING) {
            return this.session.resumeRecording();
        }
        return false;
    }

    public boolean setTrimRange(long j, long j2) {
        return this.session.setTrimRange(j, j2);
    }

    public void finishWhenReady() {
        this.finishRequested = true;
        completePendingFinish(this.session.getStateInfo().getState());
    }

    public void cancel() {
        this.finishRequested = false;
        this.session.cancel();
    }

    public void release() {
        this.session.release();
        this.released = true;
    }

    public boolean detachPreviewOutput() {
        if (this.session.detachPreviewOutput() == null) {
            return false;
        }
        this.session.release();
        this.released = true;
        return true;
    }

    public boolean isPreviewing() {
        return this.session.getStateInfo().getState() == AudioRecordingSession.State.PREVIEWING;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completePendingFinish(AudioRecordingSession.State state) {
        if (this.finishRequested) {
            if (state == AudioRecordingSession.State.RECORDING || state == AudioRecordingSession.State.PREVIEWING) {
                this.finishRequested = false;
                this.session.finish();
            }
        }
    }
}
