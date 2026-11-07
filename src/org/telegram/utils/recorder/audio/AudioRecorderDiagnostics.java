package org.telegram.utils.recorder.audio;

import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicLong;
import org.telegram.utils.recorder.audio.AudioRecordingSession;

/* JADX INFO: loaded from: classes8.dex */
final class AudioRecorderDiagnostics {
    private static final AtomicLong NEXT_ID = new AtomicLong(1);
    private final AudioRecordingSession.Logger logger;
    private final long id = NEXT_ID.getAndIncrement();
    private final long startedAtMs = SystemClock.elapsedRealtime();

    public AudioRecorderDiagnostics(AudioRecordingSession.Logger logger) {
        this.logger = logger;
    }

    public void log(String str) {
        this.logger.log("AudioRecorder[" + this.id + "] t+" + (SystemClock.elapsedRealtime() - this.startedAtMs) + "ms [" + Thread.currentThread().getName() + "] " + str);
    }

    public void error(String str, Throwable th) {
        this.logger.error("AudioRecorder[" + this.id + "] t+" + (SystemClock.elapsedRealtime() - this.startedAtMs) + "ms [" + Thread.currentThread().getName() + "] " + str, th);
    }
}
