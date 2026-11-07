package org.telegram.utils.camera.roundvideo;

import android.media.AudioRecord;
import android.media.AudioTimestamp;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Process;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.MediaController;
import org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes6.dex */
final class RoundVideoCodecRecorder implements RoundVideoGlProcessor.FrameTimingListener {
    private long alignedAudioStartDeltaUs;
    private int audioBuffers;
    private long audioBytes;
    private MediaCodec audioCodec;
    private int audioReadErrors;
    private Runnable audioReadyListener;
    private AudioRecord audioRecord;
    private boolean audioStartAligned;
    private Thread audioThread;
    private final RoundVideoDiagnostics diagnostics;
    private int droppedAudioAfterStop;
    private int droppedAudioBuffers;
    private int droppedVideoAfterStop;
    private int emptyAudioReads;
    private final ErrorListener errorListener;
    private long firstAudioPtsUs;
    private volatile long firstVideoPtsUs;
    private long lastAudioPtsUs;
    private long lastKeyframePtsUs;
    private long lastVideoPtsUs;
    private long latencyMaxNs;
    private int latencySamples;
    private long latencyTotalNs;
    private long maximumKeyframeIntervalUs;
    private int nonMonotonicAudioPts;
    private int nonMonotonicVideoPts;
    private final int outputSize;
    private boolean prepared;
    private int prependHeaderSize;
    private boolean started;
    private boolean stopFinalizationStarted;
    private volatile boolean stopping;
    private volatile long submittedSequence;
    private long timeOriginNs;
    private final long timelineOffsetUs;
    private final int videoBitrate;
    private int videoBuffers;
    private long videoBytes;
    private MediaCodec videoCodec;
    private Thread videoDrainThread;
    private final int videoFrameRate;
    private Surface videoInputSurface;
    private int videoKeyframes;
    private Runnable videoReadyListener;
    private final RoundVideoMp4Writer writer;
    private final AtomicBoolean errorReported = new AtomicBoolean();
    private final ArrayList<PendingAudioSample> pendingAudioSamples = new ArrayList<>();
    private final AudioTimestamp audioTimestamp = new AudioTimestamp();
    private final long[] submittedPtsUs = new long[256];
    private final long[] submittedTimeNs = new long[256];
    private volatile long stopPresentationTimeUs = LongCompanionObject.MAX_VALUE;

    public interface ErrorListener {
        void onError(Exception exc);
    }

    private static long durationUs(long j, long j2) {
        if (j == Long.MIN_VALUE || j2 <= j) {
            return 0L;
        }
        return j2 - j;
    }

    public RoundVideoCodecRecorder(RoundVideoMp4Writer roundVideoMp4Writer, long j, int i, int i2, int i3, RoundVideoDiagnostics roundVideoDiagnostics, ErrorListener errorListener) {
        this.writer = roundVideoMp4Writer;
        this.timelineOffsetUs = j;
        this.outputSize = i;
        this.videoBitrate = i2;
        this.videoFrameRate = i3;
        this.diagnostics = roundVideoDiagnostics;
        this.errorListener = errorListener;
    }

    public synchronized Surface prepare() {
        if (this.prepared) {
            return this.videoInputSurface;
        }
        resetStats();
        long jNanoTime = System.nanoTime();
        try {
            createVideoEncoder();
            createAudioEncoder();
            this.videoCodec.start();
            this.prepared = true;
            this.diagnostics.log("codecs prepared: video=" + this.videoCodec.getName() + ", audio=" + this.audioCodec.getName() + ", elapsedMs=" + elapsedMs(jNanoTime));
            return this.videoInputSurface;
        } catch (IOException | RuntimeException e) {
            release();
            throw e;
        }
    }

    public synchronized void startRecording(Runnable runnable, Runnable runnable2) {
        if (this.started) {
            return;
        }
        if (!this.prepared) {
            throw new IllegalStateException("Recorder is not prepared");
        }
        try {
            this.audioCodec.start();
            this.audioRecord.startRecording();
            if (this.audioRecord.getRecordingState() != 3) {
                throw new IllegalStateException("Unable to start AudioRecord");
            }
            this.timeOriginNs = SystemClock.elapsedRealtimeNanos();
            this.audioReadyListener = runnable;
            this.videoReadyListener = runnable2;
            this.started = true;
            this.diagnostics.log("audio and video recording started: timeOriginNs=" + this.timeOriginNs + ", timelineOffsetUs=" + this.timelineOffsetUs + ", audioSessionId=" + this.audioRecord.getAudioSessionId());
            this.videoDrainThread = new Thread(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCodecRecorder$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.drainVideo();
                }
            }, "RoundVideoVideoEncoder");
            this.audioThread = new Thread(new Runnable() { // from class: org.telegram.utils.camera.roundvideo.RoundVideoCodecRecorder$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.captureAndEncodeAudio();
                }
            }, "RoundVideoAudioEncoder");
            this.videoDrainThread.start();
            this.audioThread.start();
        } catch (RuntimeException e) {
            release();
            throw e;
        }
    }

    public synchronized boolean isStarted() {
        return this.started;
    }

    public long getTimeOriginNs() {
        return this.timeOriginNs;
    }

    @Override // org.telegram.utils.camera.roundvideo.RoundVideoGlProcessor.FrameTimingListener
    public void onFrameSubmitted(long j, long j2) {
        long j3 = this.submittedSequence;
        int i = (int) (j3 % 256);
        this.submittedPtsUs[i] = j;
        this.submittedTimeNs[i] = j2;
        this.submittedSequence = j3 + 1;
        notifyVideoReady();
    }

    public void stop() {
        requestStop();
        synchronized (this) {
            try {
                if (this.prepared && !this.stopFinalizationStarted) {
                    if (!this.started) {
                        release();
                        return;
                    }
                    this.stopFinalizationStarted = true;
                    try {
                        this.videoCodec.signalEndOfInputStream();
                    } catch (IllegalStateException e) {
                        this.diagnostics.error("video encoder EOS failed", e);
                    }
                    join(this.videoDrainThread);
                    join(this.audioThread);
                    logSummary();
                    release();
                }
            } finally {
            }
        }
    }

    public long requestStop() {
        synchronized (this) {
            try {
                if (this.prepared && this.started) {
                    if (this.stopping) {
                        return this.stopPresentationTimeUs;
                    }
                    this.stopping = true;
                    long jMax = Math.max(0L, (SystemClock.elapsedRealtimeNanos() - this.timeOriginNs) / 1000);
                    this.stopPresentationTimeUs = jMax;
                    AudioRecord audioRecord = this.audioRecord;
                    if (audioRecord != null) {
                        try {
                            if (audioRecord.getRecordingState() == 3) {
                                audioRecord.stop();
                            }
                        } catch (IllegalStateException e) {
                            this.diagnostics.error("AudioRecord stop failed", e);
                        }
                    }
                    this.diagnostics.log("recording stop boundary: presentationTimeUs=" + jMax);
                    return jMax;
                }
                return LongCompanionObject.MAX_VALUE;
            } finally {
            }
        }
    }

    private void resetStats() {
        this.stopping = false;
        this.stopFinalizationStarted = false;
        this.stopPresentationTimeUs = LongCompanionObject.MAX_VALUE;
        this.timeOriginNs = 0L;
        this.audioBytes = 0L;
        this.videoBytes = 0L;
        this.audioBuffers = 0;
        this.videoBuffers = 0;
        this.submittedSequence = 0L;
        this.latencySamples = 0;
        this.latencyMaxNs = 0L;
        this.latencyTotalNs = 0L;
        this.lastVideoPtsUs = Long.MIN_VALUE;
        this.firstVideoPtsUs = Long.MIN_VALUE;
        this.lastAudioPtsUs = Long.MIN_VALUE;
        this.firstAudioPtsUs = Long.MIN_VALUE;
        this.lastKeyframePtsUs = Long.MIN_VALUE;
        this.maximumKeyframeIntervalUs = 0L;
        this.videoKeyframes = 0;
        this.nonMonotonicAudioPts = 0;
        this.nonMonotonicVideoPts = 0;
        this.emptyAudioReads = 0;
        this.audioReadErrors = 0;
        this.droppedAudioBuffers = 0;
        this.droppedAudioAfterStop = 0;
        this.droppedVideoAfterStop = 0;
        this.audioStartAligned = false;
        this.alignedAudioStartDeltaUs = Long.MIN_VALUE;
        this.audioReadyListener = null;
        this.videoReadyListener = null;
        this.pendingAudioSamples.clear();
    }

    private void createVideoEncoder() throws IOException {
        int i = this.outputSize;
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(MediaController.VIDEO_MIME_TYPE, i, i);
        mediaFormatCreateVideoFormat.setInteger("color-format", 2130708361);
        mediaFormatCreateVideoFormat.setInteger("bitrate", this.videoBitrate);
        mediaFormatCreateVideoFormat.setInteger("frame-rate", this.videoFrameRate);
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", 1);
        MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType(MediaController.VIDEO_MIME_TYPE);
        this.videoCodec = mediaCodecCreateEncoderByType;
        MediaCodecInfo.VideoCapabilities videoCapabilities = mediaCodecCreateEncoderByType.getCodecInfo().getCapabilitiesForType(MediaController.VIDEO_MIME_TYPE).getVideoCapabilities();
        int i2 = this.outputSize;
        if (videoCapabilities.isSizeSupported(i2, i2)) {
            int i3 = this.outputSize;
            if (videoCapabilities.areSizeAndRateSupported(i3, i3, this.videoFrameRate)) {
                this.diagnostics.log("video encoder configure: codec=" + this.videoCodec.getName() + ", format=" + mediaFormatCreateVideoFormat);
                this.videoCodec.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
                this.videoInputSurface = this.videoCodec.createInputSurface();
                return;
            }
        }
        throw new IOException("Video encoder does not support " + this.outputSize + "x" + this.outputSize + " at " + this.videoFrameRate + " fps");
    }

    private void createAudioEncoder() {
        int minBufferSize = AudioRecord.getMinBufferSize(48000, 16, 2);
        if (minBufferSize <= 0) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Unsupported audio recording configuration");
            return;
        }
        int iMax = Math.max(minBufferSize * 4, 16384);
        MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat(MediaController.AUDIO_MIME_TYPE, 48000, 1);
        mediaFormatCreateAudioFormat.setInteger("aac-profile", 2);
        mediaFormatCreateAudioFormat.setInteger("bitrate", 64000);
        mediaFormatCreateAudioFormat.setInteger("max-input-size", iMax);
        this.audioCodec = MediaCodec.createEncoderByType(MediaController.AUDIO_MIME_TYPE);
        this.diagnostics.log("audio encoder configure: codec=" + this.audioCodec.getName() + ", format=" + mediaFormatCreateAudioFormat + ", minBufferSize=" + minBufferSize + ", audioBufferSize=" + iMax);
        this.audioCodec.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 1);
        AudioRecord audioRecord = new AudioRecord(5, 48000, 16, 2, iMax);
        this.audioRecord = audioRecord;
        if (audioRecord.getState() == 1) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Unable to initialize AudioRecord");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void drainVideo() {
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        boolean z = false;
        while (!z) {
            try {
                int iDequeueOutputBuffer = this.videoCodec.dequeueOutputBuffer(bufferInfo, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
                if (iDequeueOutputBuffer == -2) {
                    setTrackFormat(true, this.videoCodec.getOutputFormat());
                } else if (iDequeueOutputBuffer >= 0) {
                    if (isMediaBuffer(bufferInfo)) {
                        if (bufferInfo.presentationTimeUs < this.stopPresentationTimeUs) {
                            this.videoBuffers++;
                            this.videoBytes += (long) bufferInfo.size;
                            recordSampleStats(true, bufferInfo);
                            recordCodecLatency(bufferInfo.presentationTimeUs);
                            writeSample(true, this.videoCodec.getOutputBuffer(iDequeueOutputBuffer), bufferInfo);
                        } else {
                            this.droppedVideoAfterStop++;
                        }
                    }
                    z = (bufferInfo.flags & 4) != 0;
                    this.videoCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                }
            } catch (RuntimeException e) {
                if (this.stopping) {
                    this.diagnostics.error("video drain failed while stopping", e);
                    return;
                } else {
                    reportError(e);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void captureAndEncodeAudio() {
        Process.setThreadPriority(-16);
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        boolean zDrainAudioOutput = false;
        long jResolveAudioBasePtsUs = Long.MIN_VALUE;
        boolean z = false;
        long j = 0;
        while (!zDrainAudioOutput) {
            try {
                zDrainAudioOutput = drainAudioOutput(bufferInfo, z ? 10000L : 0L);
                if (zDrainAudioOutput) {
                    return;
                }
                int iDequeueInputBuffer = this.audioCodec.dequeueInputBuffer(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
                if (iDequeueInputBuffer >= 0) {
                    if (this.stopping) {
                        this.audioCodec.queueInputBuffer(iDequeueInputBuffer, 0, 0, jResolveAudioBasePtsUs == Long.MIN_VALUE ? 0L : framesToDurationUs(j) + jResolveAudioBasePtsUs, 4);
                        z = true;
                    } else {
                        ByteBuffer inputBuffer = this.audioCodec.getInputBuffer(iDequeueInputBuffer);
                        if (inputBuffer == null) {
                            this.audioCodec.queueInputBuffer(iDequeueInputBuffer, 0, 0, 0L, 0);
                        } else {
                            inputBuffer.clear();
                            int i = this.audioRecord.read(inputBuffer, Math.min(inputBuffer.remaining(), 2048));
                            if (i <= 0) {
                                if (i < 0) {
                                    int i2 = this.audioReadErrors + 1;
                                    this.audioReadErrors = i2;
                                    if (i == -6 || i2 >= 3) {
                                        throw new IllegalStateException("AudioRecord read failed: " + i);
                                    }
                                } else {
                                    this.emptyAudioReads++;
                                }
                                this.audioCodec.queueInputBuffer(iDequeueInputBuffer, 0, 0, jResolveAudioBasePtsUs == Long.MIN_VALUE ? 0L : framesToDurationUs(j) + jResolveAudioBasePtsUs, 0);
                            } else {
                                int i3 = i / 2;
                                if (jResolveAudioBasePtsUs == Long.MIN_VALUE) {
                                    jResolveAudioBasePtsUs = resolveAudioBasePtsUs(i3);
                                    this.diagnostics.log("first audio input: basePtsUs=" + jResolveAudioBasePtsUs + ", frames=" + i3 + ", timestampSource=AudioTimestamp");
                                }
                                this.audioCodec.queueInputBuffer(iDequeueInputBuffer, 0, i3 * 2, jResolveAudioBasePtsUs + framesToDurationUs(j), 0);
                                j += (long) i3;
                                notifyAudioReady();
                            }
                        }
                    }
                }
            } catch (RuntimeException e) {
                if (this.stopping) {
                    this.diagnostics.error("audio capture failed while stopping", e);
                    return;
                } else {
                    reportError(e);
                    return;
                }
            }
        }
    }

    private boolean drainAudioOutput(MediaCodec.BufferInfo bufferInfo, long j) {
        int iDequeueOutputBuffer = this.audioCodec.dequeueOutputBuffer(bufferInfo, j);
        boolean z = false;
        while (true) {
            boolean z2 = true;
            if (iDequeueOutputBuffer < 0) {
                break;
            }
            if (isMediaBuffer(bufferInfo)) {
                writeOrBufferAudioSample(this.audioCodec.getOutputBuffer(iDequeueOutputBuffer), bufferInfo);
            }
            if ((bufferInfo.flags & 4) == 0) {
                z2 = false;
            }
            z |= z2;
            this.audioCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
            iDequeueOutputBuffer = this.audioCodec.dequeueOutputBuffer(bufferInfo, 0L);
        }
        if (iDequeueOutputBuffer == -2) {
            setTrackFormat(false, this.audioCodec.getOutputFormat());
        }
        if (z && !this.audioStartAligned && this.firstVideoPtsUs != Long.MIN_VALUE) {
            flushPendingAudioSamples(this.firstVideoPtsUs, true);
        }
        return z;
    }

    private void notifyAudioReady() {
        synchronized (this) {
            if (this.audioReadyListener != null && !this.stopping) {
                Runnable runnable = this.audioReadyListener;
                this.audioReadyListener = null;
                this.diagnostics.log("audio capture ready; waiting for common A/V start frame");
                runnable.run();
            }
        }
    }

    private void notifyVideoReady() {
        synchronized (this) {
            if (this.videoReadyListener != null && !this.stopping) {
                Runnable runnable = this.videoReadyListener;
                this.videoReadyListener = null;
                this.diagnostics.log("first synchronized video frame submitted");
                runnable.run();
            }
        }
    }

    private long resolveAudioBasePtsUs(int i) {
        long jMax = Math.max(0L, ((SystemClock.elapsedRealtimeNanos() - this.timeOriginNs) / 1000) - framesToDurationUs(i));
        if (this.audioRecord.getTimestamp(this.audioTimestamp, 1) == 0) {
            AudioTimestamp audioTimestamp = this.audioTimestamp;
            long jMax2 = Math.max(0L, ((audioTimestamp.nanoTime - this.timeOriginNs) / 1000) - framesToDurationUs(audioTimestamp.framePosition));
            this.diagnostics.log("audio timestamp alignment: framePosition=" + this.audioTimestamp.framePosition + ", timestampDeltaUs=" + ((this.audioTimestamp.nanoTime - this.timeOriginNs) / 1000) + ", timestampBaseUs=" + jMax2 + ", readCompletionBaseUs=" + jMax);
            return jMax2;
        }
        this.diagnostics.log("audio timestamp unavailable: readCompletionBaseUs=" + jMax);
        return jMax;
    }

    private void writeOrBufferAudioSample(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        if (byteBuffer == null) {
            return;
        }
        if (bufferInfo.presentationTimeUs >= this.stopPresentationTimeUs) {
            this.droppedAudioBuffers++;
            this.droppedAudioAfterStop++;
        } else {
            if (this.audioStartAligned) {
                writeAudioSample(byteBuffer, bufferInfo);
                return;
            }
            bufferAudioSample(byteBuffer, bufferInfo);
            long j = this.firstVideoPtsUs;
            if (j == Long.MIN_VALUE || bufferInfo.presentationTimeUs < j) {
                return;
            }
            flushPendingAudioSamples(j, false);
        }
    }

    private void bufferAudioSample(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(bufferInfo.size);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        try {
            byteBuffer.position(bufferInfo.offset);
            byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
            byteBufferAllocateDirect.put(byteBuffer).flip();
            byteBuffer.limit(iLimit);
            byteBuffer.position(iPosition);
            MediaCodec.BufferInfo bufferInfo2 = new MediaCodec.BufferInfo();
            bufferInfo2.set(0, bufferInfo.size, bufferInfo.presentationTimeUs, bufferInfo.flags);
            this.pendingAudioSamples.add(new PendingAudioSample(byteBufferAllocateDirect, bufferInfo2));
        } catch (Throwable th) {
            byteBuffer.limit(iLimit);
            byteBuffer.position(iPosition);
            throw th;
        }
    }

    private void flushPendingAudioSamples(long j, boolean z) {
        if (this.pendingAudioSamples.isEmpty()) {
            return;
        }
        int size = 0;
        while (true) {
            if (size >= this.pendingAudioSamples.size()) {
                size = -1;
                break;
            } else if (this.pendingAudioSamples.get(size).info.presentationTimeUs >= j) {
                break;
            } else {
                size++;
            }
        }
        if (size < 0) {
            if (!z) {
                return;
            } else {
                size = this.pendingAudioSamples.size() - 1;
            }
        } else if (size > 0 && j - this.pendingAudioSamples.get(size - 1).info.presentationTimeUs <= this.pendingAudioSamples.get(size).info.presentationTimeUs - j) {
            size--;
        }
        for (int i = 0; i < size; i++) {
            this.droppedAudioBuffers++;
        }
        PendingAudioSample pendingAudioSample = this.pendingAudioSamples.get(size);
        this.alignedAudioStartDeltaUs = pendingAudioSample.info.presentationTimeUs - j;
        while (true) {
            int size2 = this.pendingAudioSamples.size();
            ArrayList<PendingAudioSample> arrayList = this.pendingAudioSamples;
            if (size < size2) {
                PendingAudioSample pendingAudioSample2 = arrayList.get(size);
                writeAudioSample(pendingAudioSample2.data, pendingAudioSample2.info);
                size++;
            } else {
                arrayList.clear();
                this.audioStartAligned = true;
                this.diagnostics.log("A/V start aligned: videoPtsUs=" + j + ", audioPtsUs=" + pendingAudioSample.info.presentationTimeUs + ", deltaUs=" + this.alignedAudioStartDeltaUs);
                return;
            }
        }
    }

    private void writeAudioSample(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        this.audioBuffers++;
        this.audioBytes += (long) bufferInfo.size;
        recordSampleStats(false, bufferInfo);
        writeSample(false, byteBuffer, bufferInfo);
    }

    private void setTrackFormat(boolean z, MediaFormat mediaFormat) {
        if (z) {
            try {
                if (mediaFormat.containsKey("prepend-sps-pps-to-idr-frames") && mediaFormat.getInteger("prepend-sps-pps-to-idr-frames") == 1) {
                    ByteBuffer byteBuffer = mediaFormat.getByteBuffer("csd-0");
                    ByteBuffer byteBuffer2 = mediaFormat.getByteBuffer("csd-1");
                    int iRemaining = 0;
                    int iRemaining2 = byteBuffer == null ? 0 : byteBuffer.remaining();
                    if (byteBuffer2 != null) {
                        iRemaining = byteBuffer2.remaining();
                    }
                    this.prependHeaderSize = iRemaining2 + iRemaining;
                }
            } catch (IOException e) {
                UnsafeUtil$$ExternalSyntheticBUOutline0.m483m(e);
                return;
            }
        }
        this.writer.setTrackFormat(z, mediaFormat);
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        StringBuilder sb = new StringBuilder();
        sb.append(z ? MediaStreamTrack.VIDEO_TRACK_KIND : MediaStreamTrack.AUDIO_TRACK_KIND);
        sb.append(" output format: ");
        sb.append(mediaFormat);
        roundVideoDiagnostics.log(sb.toString());
    }

    private void writeSample(boolean z, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        int i;
        if (byteBuffer == null) {
            return;
        }
        if (z) {
            try {
                int i2 = this.prependHeaderSize;
                if (i2 > 0 && (bufferInfo.flags & 1) != 0 && (i = bufferInfo.size) > i2) {
                    bufferInfo.offset += i2;
                    bufferInfo.size = i - i2;
                }
            } catch (IOException e) {
                UnsafeUtil$$ExternalSyntheticBUOutline0.m483m(e);
                return;
            }
        }
        this.writer.writeSample(z, byteBuffer, bufferInfo, this.timelineOffsetUs);
    }

    private void reportError(Exception exc) {
        this.diagnostics.error("codec error" + codecDiagnostic(exc), exc);
        if (this.errorReported.compareAndSet(false, true)) {
            this.errorListener.onError(exc);
        }
    }

    private void recordCodecLatency(long j) {
        int i;
        long j2 = this.submittedSequence;
        long jMax = Math.max(0L, j2 - 256);
        do {
            j2--;
            if (j2 < jMax) {
                return;
            } else {
                i = (int) (j2 % 256);
            }
        } while (this.submittedPtsUs[i] != j);
        long jNanoTime = System.nanoTime() - this.submittedTimeNs[i];
        this.latencySamples++;
        this.latencyTotalNs += jNanoTime;
        this.latencyMaxNs = Math.max(this.latencyMaxNs, jNanoTime);
        if (this.latencySamples % 30 == 0) {
            this.diagnostics.log("codec latency: average=" + ((this.latencyTotalNs / this.latencySamples) / 1000000.0f) + " ms, max=" + (this.latencyMaxNs / 1000000.0f) + " ms");
        }
    }

    private void recordSampleStats(boolean z, MediaCodec.BufferInfo bufferInfo) {
        long j = bufferInfo.presentationTimeUs;
        if (z) {
            if (this.firstVideoPtsUs == Long.MIN_VALUE) {
                this.firstVideoPtsUs = j;
            }
            long j2 = this.lastVideoPtsUs;
            if (j2 != Long.MIN_VALUE && j < j2) {
                this.nonMonotonicVideoPts++;
            }
            this.lastVideoPtsUs = Math.max(j2, j);
            if ((bufferInfo.flags & 1) != 0) {
                this.videoKeyframes++;
                long j3 = this.lastKeyframePtsUs;
                if (j3 != Long.MIN_VALUE) {
                    this.maximumKeyframeIntervalUs = Math.max(this.maximumKeyframeIntervalUs, j - j3);
                }
                this.lastKeyframePtsUs = j;
                return;
            }
            return;
        }
        if (this.firstAudioPtsUs == Long.MIN_VALUE) {
            this.firstAudioPtsUs = j;
        }
        long j4 = this.lastAudioPtsUs;
        if (j4 != Long.MIN_VALUE && j < j4) {
            this.nonMonotonicAudioPts++;
        }
        this.lastAudioPtsUs = Math.max(j4, j);
    }

    private void logSummary() {
        long j = hasAudioVideoPts() ? this.firstAudioPtsUs - this.firstVideoPtsUs : Long.MIN_VALUE;
        long j2 = hasAudioVideoPts() ? this.lastAudioPtsUs - this.lastVideoPtsUs : Long.MIN_VALUE;
        long jDurationUs = durationUs(this.firstVideoPtsUs, this.lastVideoPtsUs);
        long jDurationUs2 = durationUs(this.firstAudioPtsUs, this.lastAudioPtsUs);
        RoundVideoDiagnostics roundVideoDiagnostics = this.diagnostics;
        StringBuilder sb = new StringBuilder("codec summary: videoBuffers=");
        sb.append(this.videoBuffers);
        sb.append(", videoBytes=");
        sb.append(this.videoBytes);
        sb.append(", videoPts=");
        sb.append(ptsRange(this.firstVideoPtsUs, this.lastVideoPtsUs));
        sb.append(", actualVideoBitrate=");
        sb.append(bitrate(this.videoBytes, jDurationUs));
        sb.append(", keyframes=");
        sb.append(this.videoKeyframes);
        sb.append(", maxKeyframeIntervalUs=");
        sb.append(this.maximumKeyframeIntervalUs);
        sb.append(", nonMonotonicVideoPts=");
        sb.append(this.nonMonotonicVideoPts);
        sb.append(", audioBuffers=");
        sb.append(this.audioBuffers);
        sb.append(", audioBytes=");
        sb.append(this.audioBytes);
        sb.append(", audioPts=");
        sb.append(ptsRange(this.firstAudioPtsUs, this.lastAudioPtsUs));
        sb.append(", actualAudioBitrate=");
        sb.append(bitrate(this.audioBytes, jDurationUs2));
        sb.append(", nonMonotonicAudioPts=");
        sb.append(this.nonMonotonicAudioPts);
        sb.append(", avStartDeltaUs=");
        sb.append(optionalValue(j));
        sb.append(", avEndDeltaUs=");
        sb.append(optionalValue(j2));
        sb.append(", audioReadErrors=");
        sb.append(this.audioReadErrors);
        sb.append(", emptyAudioReads=");
        sb.append(this.emptyAudioReads);
        sb.append(", droppedAudioBuffers=");
        sb.append(this.droppedAudioBuffers);
        sb.append(", droppedAudioAfterStop=");
        sb.append(this.droppedAudioAfterStop);
        sb.append(", droppedVideoAfterStop=");
        sb.append(this.droppedVideoAfterStop);
        sb.append(", stopPresentationTimeUs=");
        sb.append(this.stopPresentationTimeUs == LongCompanionObject.MAX_VALUE ? "n/a" : Long.valueOf(this.stopPresentationTimeUs));
        sb.append(", alignedAudioStartDeltaUs=");
        sb.append(optionalValue(this.alignedAudioStartDeltaUs));
        sb.append(", codecLatencyAvgMs=");
        int i = this.latencySamples;
        sb.append(i != 0 ? Float.valueOf((this.latencyTotalNs / i) / 1000000.0f) : "n/a");
        sb.append(", codecLatencyMaxMs=");
        sb.append(this.latencyMaxNs / 1000000.0f);
        roundVideoDiagnostics.log(sb.toString());
    }

    private boolean hasAudioVideoPts() {
        return (this.firstVideoPtsUs == Long.MIN_VALUE || this.lastVideoPtsUs == Long.MIN_VALUE || this.firstAudioPtsUs == Long.MIN_VALUE || this.lastAudioPtsUs == Long.MIN_VALUE) ? false : true;
    }

    private static String ptsRange(long j, long j2) {
        if (j == Long.MIN_VALUE) {
            return "n/a";
        }
        return j + ".." + j2;
    }

    private static String optionalValue(long j) {
        return j == Long.MIN_VALUE ? "n/a" : String.valueOf(j);
    }

    private static String bitrate(long j, long j2) {
        return j2 <= 0 ? "n/a" : String.valueOf((j * 8000000) / j2);
    }

    private static String codecDiagnostic(Exception exc) {
        if (exc instanceof MediaCodec.CodecException) {
            MediaCodec.CodecException codecException = (MediaCodec.CodecException) exc;
            return ": diagnostic=" + codecException.getDiagnosticInfo() + ", recoverable=" + codecException.isRecoverable() + ", transient=" + codecException.isTransient();
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    private static long elapsedMs(long j) {
        return (System.nanoTime() - j) / 1000000;
    }

    private void release() {
        this.prepared = false;
        this.started = false;
        this.audioReadyListener = null;
        this.videoReadyListener = null;
        AudioRecord audioRecord = this.audioRecord;
        if (audioRecord != null) {
            audioRecord.release();
            this.audioRecord = null;
        }
        Surface surface = this.videoInputSurface;
        if (surface != null) {
            surface.release();
            this.videoInputSurface = null;
        }
        releaseCodec(this.videoCodec);
        releaseCodec(this.audioCodec);
        this.audioCodec = null;
        this.videoCodec = null;
        this.audioThread = null;
        this.videoDrainThread = null;
    }

    private static long framesToDurationUs(long j) {
        return (j * 1000000) / 48000;
    }

    private static boolean isMediaBuffer(MediaCodec.BufferInfo bufferInfo) {
        return bufferInfo.size > 0 && (bufferInfo.flags & 2) == 0;
    }

    private static void releaseCodec(MediaCodec mediaCodec) {
        if (mediaCodec == null) {
            return;
        }
        try {
            mediaCodec.stop();
        } catch (IllegalStateException unused) {
        }
        mediaCodec.release();
    }

    private void join(Thread thread) {
        if (thread == null) {
            return;
        }
        try {
            thread.join(5000L);
            if (thread.isAlive()) {
                this.diagnostics.log("encoder thread did not stop: " + thread.getName());
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    public static final class PendingAudioSample {
        final ByteBuffer data;
        final MediaCodec.BufferInfo info;

        public PendingAudioSample(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
            this.data = byteBuffer;
            this.info = bufferInfo;
        }
    }
}
