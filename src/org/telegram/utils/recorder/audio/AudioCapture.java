package org.telegram.utils.recorder.audio;

import android.media.AudioRecord;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import java.io.File;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.utils.recorder.audio.AudioRecordingSession;

/* JADX INFO: loaded from: classes8.dex */
final class AudioCapture {
    private AudioRecord audioRecord;
    private final Callback callback;
    private final Handler captureHandler;
    private volatile boolean captureStopped;
    private final HandlerThread captureThread;
    private long capturedSamples;
    private final AudioRecorderDiagnostics diagnostics;
    private AudioRecorderNative encoder;
    private Exception encoderFailure;
    private final Handler encoderHandler;
    private final HandlerThread encoderThread;
    private boolean encodingFinished;
    private long lastFlushMs;
    private long lastProgressMs;
    private int maximumQueuedChunks;
    private long noiseProcessingCount;
    private long noiseProcessingMaxNs;
    private long noiseProcessingTotalNs;
    private final AudioRecordingSession.NoiseSuppression noiseSuppression;
    private AudioNoiseSuppressor noiseSuppressor;
    private final File outputFile;
    private final long prefixEndMs;
    private final File prefixFile;
    private final long prefixStartMs;
    private volatile boolean stopRequested;
    private final ConcurrentLinkedQueue<ByteBuffer> chunkPool = new ConcurrentLinkedQueue<>();
    private final AtomicInteger queuedChunks = new AtomicInteger();
    private final ByteBuffer frameBuffer = ByteBuffer.allocateDirect(1920).order(ByteOrder.nativeOrder());

    public interface Callback {
        void onError(Exception exc);

        void onOutputCommitted(long j);

        void onProgress(long j, double d);

        void onStarted();

        void onStopped(long j, long j2);
    }

    private static double nsToMs(long j) {
        return j / 1000000.0d;
    }

    public AudioCapture(File file, File file2, long j, long j2, AudioRecordingSession.NoiseSuppression noiseSuppression, AudioRecorderDiagnostics audioRecorderDiagnostics, Callback callback) {
        this.outputFile = file;
        this.prefixFile = file2;
        this.prefixStartMs = j;
        this.prefixEndMs = j2;
        this.noiseSuppression = noiseSuppression;
        this.diagnostics = audioRecorderDiagnostics;
        this.callback = callback;
        HandlerThread handlerThread = new HandlerThread("AudioRecorderCapture", -16);
        this.captureThread = handlerThread;
        handlerThread.start();
        this.captureHandler = new Handler(handlerThread.getLooper());
        HandlerThread handlerThread2 = new HandlerThread("AudioRecorderEncoder", 0);
        this.encoderThread = handlerThread2;
        handlerThread2.start();
        this.encoderHandler = new Handler(handlerThread2.getLooper());
    }

    public void start() {
        this.encoderHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioCapture$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.startEncoder();
            }
        });
        this.captureHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioCapture$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.startCapture();
            }
        });
    }

    public void stop() {
        this.stopRequested = true;
        if (this.captureStopped) {
            return;
        }
        this.captureHandler.postAtFrontOfQueue(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioCapture$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stop$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stop$0() {
        stopCapture(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCapture() {
        try {
            if (this.stopRequested) {
                stopCapture(null);
                return;
            }
            int minBufferSize = AudioRecord.getMinBufferSize(48000, 16, 2);
            if (minBufferSize <= 0) {
                minBufferSize = 7680;
            }
            int iMax = Math.max(minBufferSize * 2, 7680);
            AudioRecord audioRecord = new AudioRecord(0, 48000, 16, 2, iMax);
            this.audioRecord = audioRecord;
            if (audioRecord.getState() != 1) {
                throw new IllegalStateException("Unable to initialize AudioRecord");
            }
            this.audioRecord.startRecording();
            if (this.audioRecord.getRecordingState() != 3) {
                throw new IllegalStateException("Unable to start AudioRecord");
            }
            this.diagnostics.log("AudioRecord started: minBufferBytes=" + minBufferSize + ", bufferBytes=" + iMax + ", sessionId=" + this.audioRecord.getAudioSessionId());
            this.lastProgressMs = SystemClock.elapsedRealtime();
            this.callback.onStarted();
            this.captureHandler.post(new AudioCapture$$ExternalSyntheticLambda3(this));
        } catch (Throwable th) {
            stopCapture(asException(th));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void readOnce() {
        if (this.captureStopped) {
            return;
        }
        if (this.stopRequested) {
            stopCapture(null);
            return;
        }
        final ByteBuffer byteBufferObtainChunk = obtainChunk();
        try {
            int i = this.audioRecord.read(byteBufferObtainChunk, byteBufferObtainChunk.capacity());
            if (i <= 0) {
                throw new IllegalStateException("AudioRecord read failed: " + i);
            }
            byteBufferObtainChunk.limit(i);
            int i2 = i / 2;
            long j = 0;
            for (int i3 = 0; i3 + 1 < i; i3 += 2) {
                long j2 = byteBufferObtainChunk.getShort(i3);
                j += j2 * j2;
            }
            this.capturedSamples += (long) i2;
            this.queuedChunks.incrementAndGet();
            this.encoderHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioCapture$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$readOnce$1(byteBufferObtainChunk);
                }
            });
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (jElapsedRealtime - this.lastProgressMs >= 32) {
                this.callback.onProgress(this.capturedSamples, i2 == 0 ? 0.0d : Math.sqrt(j / ((double) i2)));
                this.lastProgressMs = jElapsedRealtime;
            }
            this.captureHandler.post(new AudioCapture$$ExternalSyntheticLambda3(this));
        } catch (Throwable th) {
            if (0 == 0) {
                recycleChunk(byteBufferObtainChunk);
            }
            stopCapture(this.stopRequested ? null : asException(th));
        }
    }

    private void stopCapture(final Exception exc) {
        if (this.captureStopped) {
            return;
        }
        this.captureStopped = true;
        this.stopRequested = true;
        if (exc != null) {
            this.diagnostics.error("capture failed", exc);
        }
        AudioRecord audioRecord = this.audioRecord;
        if (audioRecord != null) {
            try {
                if (audioRecord.getRecordingState() == 3) {
                    this.audioRecord.stop();
                }
            } finally {
                if (exc == null) {
                    try {
                    } finally {
                    }
                }
            }
        }
        final long j = this.capturedSamples;
        this.encoderHandler.post(new Runnable() { // from class: org.telegram.utils.recorder.audio.AudioCapture$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$stopCapture$2(j, exc);
            }
        });
        this.captureThread.quitSafely();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startEncoder() {
        String str;
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            AudioRecorderNative audioRecorderNativeCreate = AudioRecorderNative.create(this.outputFile, 48000, this.prefixFile, this.prefixStartMs, this.prefixEndMs);
            this.encoder = audioRecorderNativeCreate;
            if (audioRecorderNativeCreate == null) {
                throw new IllegalStateException("Unable to initialize native Opus recorder");
            }
            if (this.noiseSuppression == AudioRecordingSession.NoiseSuppression.RNNOISE) {
                AudioNoiseSuppressor audioNoiseSuppressorCreate = AudioNoiseSuppressor.create();
                this.noiseSuppressor = audioNoiseSuppressorCreate;
                AudioRecorderDiagnostics audioRecorderDiagnostics = this.diagnostics;
                if (audioNoiseSuppressorCreate == null) {
                    audioRecorderDiagnostics.log("RNNoise unavailable; recording unprocessed PCM");
                } else {
                    audioRecorderDiagnostics.log("RNNoise started: sampleRate=48000, captureFrameSamples=960");
                }
            }
            long jFlush = this.encoder.flush();
            AudioRecorderDiagnostics audioRecorderDiagnostics2 = this.diagnostics;
            StringBuilder sb = new StringBuilder("Opus encoder started: prefix=");
            if (this.prefixFile == null) {
                str = "none";
            } else {
                str = this.prefixFile.getName() + " " + this.prefixStartMs + ".." + this.prefixEndMs;
            }
            sb.append(str);
            sb.append(", initialBytes=");
            sb.append(jFlush);
            sb.append(", queuedChunks=");
            sb.append(this.queuedChunks.get());
            sb.append(", elapsedMs=");
            sb.append(SystemClock.elapsedRealtime() - jElapsedRealtime);
            audioRecorderDiagnostics2.log(sb.toString());
            this.lastFlushMs = SystemClock.elapsedRealtime();
            if (jFlush > 0) {
                this.callback.onOutputCommitted(jFlush);
            }
        } catch (Throwable th) {
            failEncoder(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: encodeChunk, reason: merged with bridge method [inline-methods] */
    public void lambda$readOnce$1(ByteBuffer byteBuffer) {
        int andDecrement = this.queuedChunks.getAndDecrement();
        try {
            if (this.encoderFailure == null && !this.encodingFinished) {
                this.maximumQueuedChunks = Math.max(this.maximumQueuedChunks, andDecrement);
                copyAndEncode(byteBuffer);
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime - this.lastFlushMs >= 100) {
                    long jFlush = this.encoder.flush();
                    this.lastFlushMs = jElapsedRealtime;
                    if (jFlush >= 0) {
                        this.callback.onOutputCommitted(jFlush);
                    }
                }
            }
        } catch (Throwable th) {
            try {
                failEncoder(th);
            } finally {
                recycleChunk(byteBuffer);
            }
        }
    }

    private void failEncoder(Throwable th) {
        if (this.encoderFailure != null) {
            return;
        }
        this.diagnostics.error("encoding failed", th);
        this.encoderFailure = asException(th);
        this.stopRequested = true;
    }

    private void copyAndEncode(ByteBuffer byteBuffer) {
        byteBuffer.position(0);
        while (byteBuffer.hasRemaining()) {
            int iMin = Math.min(byteBuffer.remaining(), this.frameBuffer.remaining());
            int iLimit = byteBuffer.limit();
            byteBuffer.limit(byteBuffer.position() + iMin);
            this.frameBuffer.put(byteBuffer);
            byteBuffer.limit(iLimit);
            if (!this.frameBuffer.hasRemaining()) {
                encodeFrame(1920);
                this.frameBuffer.clear();
            }
        }
    }

    private void encodeFrame(int i) {
        this.frameBuffer.position(0);
        this.frameBuffer.limit(i);
        if (this.noiseSuppressor != null) {
            long jNanoTime = System.nanoTime();
            boolean zProcess = this.noiseSuppressor.process(this.frameBuffer, i / 2);
            long jNanoTime2 = System.nanoTime() - jNanoTime;
            this.noiseProcessingCount++;
            this.noiseProcessingTotalNs += jNanoTime2;
            this.noiseProcessingMaxNs = Math.max(this.noiseProcessingMaxNs, jNanoTime2);
            if (!zProcess) {
                this.diagnostics.log("RNNoise processing failed; recording unprocessed PCM");
                this.noiseSuppressor.recycle();
                this.noiseSuppressor = null;
            } else if (this.noiseProcessingCount % 100 == 0) {
                this.diagnostics.log("RNNoise processing: averageMs=" + nsToMs(this.noiseProcessingTotalNs / this.noiseProcessingCount) + ", maxMs=" + nsToMs(this.noiseProcessingMaxNs));
            }
            this.frameBuffer.position(0);
            this.frameBuffer.limit(i);
        }
        AudioRecorderNative audioRecorderNative = this.encoder;
        if (audioRecorderNative == null || audioRecorderNative.writeFrame(this.frameBuffer, i) == 0) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Native Opus encoding failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0051 A[PHI: r0
  0x0051: PHI (r0v5 'th' java.lang.Throwable) = (r0v4 'th' java.lang.Throwable), (r0v14 'th' java.lang.Throwable) binds: [B:29:0x004f, B:59:0x00a5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: finishEncoding, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void lambda$stopCapture$2(long j, Exception exc) {
        IllegalStateException illegalStateException;
        AudioNoiseSuppressor audioNoiseSuppressor;
        AudioRecorderNative audioRecorderNative;
        if (this.encodingFinished) {
            return;
        }
        this.encodingFinished = true;
        Exception exc2 = this.encoderFailure;
        if (exc2 != null) {
            exc = exc2;
        }
        if (exc == null) {
            try {
                if (this.encoder != null && this.frameBuffer.position() > 0) {
                    encodeFrame(this.frameBuffer.position());
                    this.frameBuffer.clear();
                }
                audioNoiseSuppressor = this.noiseSuppressor;
                if (audioNoiseSuppressor != null) {
                    audioNoiseSuppressor.recycle();
                    this.noiseSuppressor = null;
                }
                audioRecorderNative = this.encoder;
            } catch (Throwable th) {
                try {
                    exc = asException(th);
                    AudioNoiseSuppressor audioNoiseSuppressor2 = this.noiseSuppressor;
                    if (audioNoiseSuppressor2 != null) {
                        audioNoiseSuppressor2.recycle();
                        this.noiseSuppressor = null;
                    }
                    AudioRecorderNative audioRecorderNative2 = this.encoder;
                    if (audioRecorderNative2 != null) {
                        try {
                            if (!audioRecorderNative2.finish() && exc == null) {
                                illegalStateException = new IllegalStateException("Unable to finalize native Opus recorder");
                                exc = illegalStateException;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (exc == null) {
                            }
                        }
                        this.encoder.recycle();
                        this.encoder = null;
                    }
                } catch (Throwable th3) {
                    if (this.noiseSuppressor != null) {
                        this.noiseSuppressor.recycle();
                        this.noiseSuppressor = null;
                    }
                    AudioRecorderNative audioRecorderNative3 = this.encoder;
                    if (audioRecorderNative3 != null) {
                        try {
                            if (!audioRecorderNative3.finish() && exc == null) {
                                new IllegalStateException("Unable to finalize native Opus recorder");
                            }
                        } catch (Throwable th4) {
                            if (exc == null) {
                                asException(th4);
                            }
                        }
                        this.encoder.recycle();
                        this.encoder = null;
                    }
                    throw th3;
                }
            }
            if (audioRecorderNative != null) {
                try {
                    if (!audioRecorderNative.finish() && exc == null) {
                        illegalStateException = new IllegalStateException("Unable to finalize native Opus recorder");
                        exc = illegalStateException;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    if (exc == null) {
                        exc = asException(th);
                    }
                }
                this.encoder.recycle();
                this.encoder = null;
            }
        } else {
            audioNoiseSuppressor = this.noiseSuppressor;
            if (audioNoiseSuppressor != null) {
            }
            audioRecorderNative = this.encoder;
            if (audioRecorderNative != null) {
            }
        }
        long length = this.outputFile.isFile() ? this.outputFile.length() : 0L;
        if (this.noiseProcessingCount > 0) {
            this.diagnostics.log("RNNoise summary: frames=" + this.noiseProcessingCount + ", averageMs=" + nsToMs(this.noiseProcessingTotalNs / this.noiseProcessingCount) + ", maxMs=" + nsToMs(this.noiseProcessingMaxNs));
        }
        this.diagnostics.log("capture stopped: samples=" + j + ", durationMs=" + samplesToMs(j) + ", bytes=" + length + ", maxQueuedChunks=" + this.maximumQueuedChunks);
        Callback callback = this.callback;
        if (exc == null) {
            callback.onStopped(j, length);
        } else {
            callback.onError(exc);
        }
        this.encoderThread.quitSafely();
        this.chunkPool.clear();
    }

    private ByteBuffer obtainChunk() {
        ByteBuffer byteBufferPoll = this.chunkPool.poll();
        if (byteBufferPoll == null) {
            byteBufferPoll = ByteBuffer.allocateDirect(1920).order(ByteOrder.nativeOrder());
        }
        byteBufferPoll.clear();
        return byteBufferPoll;
    }

    private void recycleChunk(ByteBuffer byteBuffer) {
        if (this.encodingFinished) {
            return;
        }
        this.chunkPool.offer(byteBuffer);
    }

    private static long samplesToMs(long j) {
        return (j * 1000) / 48000;
    }

    private static Exception asException(Throwable th) {
        return th instanceof Exception ? (Exception) th : new RuntimeException(th);
    }
}
