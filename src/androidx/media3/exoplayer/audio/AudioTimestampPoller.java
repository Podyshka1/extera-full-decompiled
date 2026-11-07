package androidx.media3.exoplayer.audio;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioTrackPositionTracker;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
final class AudioTimestampPoller {
    private final AudioTimestampWrapper audioTimestamp;
    private final AudioTrackPositionTracker.Listener errorListener;
    private long initialTimestampPositionFrames;
    private long initialTimestampSystemTimeUs;
    private long initializeSystemTimeUs;
    private long lastTimestampSampleTimeUs;
    private long sampleIntervalUs;
    private final int sampleRate;
    private int state;

    public AudioTimestampPoller(AudioTrack audioTrack, AudioTrackPositionTracker.Listener listener) {
        this.audioTimestamp = new AudioTimestampWrapper(audioTrack);
        this.sampleRate = audioTrack.getSampleRate();
        this.errorListener = listener;
        reset();
    }

    public void maybePollTimestamp(long j, float f, long j2) {
        if (j - this.lastTimestampSampleTimeUs < this.sampleIntervalUs) {
            return;
        }
        this.lastTimestampSampleTimeUs = j;
        boolean zMaybeUpdateTimestamp = this.audioTimestamp.maybeUpdateTimestamp();
        if (zMaybeUpdateTimestamp) {
            checkTimestampIsPlausibleAndUpdateErrorState(j, f, j2);
        }
        int i = this.state;
        if (i == 0) {
            if (!zMaybeUpdateTimestamp) {
                if (j - this.initializeSystemTimeUs > 500000) {
                    updateState(3);
                    return;
                }
                return;
            } else {
                if (this.audioTimestamp.getTimestampSystemTimeUs() >= this.initializeSystemTimeUs) {
                    this.initialTimestampPositionFrames = this.audioTimestamp.getTimestampPositionFrames();
                    this.initialTimestampSystemTimeUs = this.audioTimestamp.getTimestampSystemTimeUs();
                    updateState(1);
                    return;
                }
                return;
            }
        }
        if (i == 1) {
            if (zMaybeUpdateTimestamp) {
                if (isTimestampAdvancingFromInitialTimestamp(j, f)) {
                    updateState(2);
                    return;
                } else if (j - this.initializeSystemTimeUs > 2000000) {
                    updateState(3);
                    return;
                } else {
                    this.initialTimestampPositionFrames = this.audioTimestamp.getTimestampPositionFrames();
                    this.initialTimestampSystemTimeUs = this.audioTimestamp.getTimestampSystemTimeUs();
                    return;
                }
            }
            reset();
            return;
        }
        if (i == 2) {
            if (zMaybeUpdateTimestamp) {
                return;
            }
            reset();
        } else if (i != 3) {
            if (i == 4) {
                return;
            }
            MethodWriter$$ExternalSyntheticBUOutline0.m959m();
        } else if (zMaybeUpdateTimestamp) {
            reset();
        }
    }

    public boolean hasAdvancingTimestamp() {
        return this.state == 2;
    }

    public boolean isWaitingForAdvancingTimestamp() {
        int i = this.state;
        return i == 0 || i == 1;
    }

    public void reset() {
        updateState(0);
    }

    public long getTimestampPositionUs(long j, float f) {
        return computeTimestampPositionUs(j, f);
    }

    public void expectTimestampFramePositionReset() {
        this.audioTimestamp.expectTimestampFramePositionReset();
    }

    private void updateState(int i) {
        this.state = i;
        if (i == 0) {
            this.lastTimestampSampleTimeUs = 0L;
            this.initialTimestampPositionFrames = -1L;
            this.initialTimestampSystemTimeUs = -9223372036854775807L;
            this.initializeSystemTimeUs = System.nanoTime() / 1000;
            this.sampleIntervalUs = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
            return;
        }
        if (i == 1) {
            this.sampleIntervalUs = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
            return;
        }
        if (i == 2 || i == 3) {
            this.sampleIntervalUs = 10000000L;
        } else if (i == 4) {
            this.sampleIntervalUs = 500000L;
        } else {
            MethodWriter$$ExternalSyntheticBUOutline0.m959m();
        }
    }

    private boolean isTimestampAdvancingFromInitialTimestamp(long j, float f) {
        long timestampPositionFrames = this.audioTimestamp.getTimestampPositionFrames();
        long j2 = this.initialTimestampPositionFrames;
        if (timestampPositionFrames <= j2) {
            return false;
        }
        return Math.abs(computeTimestampPositionUs(j, f) - computeTimestampPositionUs(j2, this.initialTimestampSystemTimeUs, j, f)) < 1000;
    }

    private long computeTimestampPositionUs(long j, float f) {
        return computeTimestampPositionUs(this.audioTimestamp.getTimestampPositionFrames(), this.audioTimestamp.getTimestampSystemTimeUs(), j, f);
    }

    private long computeTimestampPositionUs(long j, long j2, long j3, float f) {
        return Util.sampleCountToDurationUs(j, this.sampleRate) + Util.getMediaDurationForPlayoutDuration(j3 - j2, f);
    }

    private void checkTimestampIsPlausibleAndUpdateErrorState(long j, float f, long j2) {
        long timestampSystemTimeUs = this.audioTimestamp.getTimestampSystemTimeUs();
        long jComputeTimestampPositionUs = computeTimestampPositionUs(j, f);
        if (Math.abs(timestampSystemTimeUs - j) > 5000000) {
            this.errorListener.onSystemTimeUsMismatch(this.audioTimestamp.getTimestampPositionFrames(), timestampSystemTimeUs, j, j2);
            updateState(4);
        } else if (Math.abs(jComputeTimestampPositionUs - j2) > 5000000) {
            this.errorListener.onPositionFramesMismatch(this.audioTimestamp.getTimestampPositionFrames(), timestampSystemTimeUs, j, j2);
            updateState(4);
        } else if (this.state == 4) {
            reset();
        }
    }

    public static final class AudioTimestampWrapper {
        private long accumulatedRawTimestampFramePosition;
        private final AudioTimestamp audioTimestamp = new AudioTimestamp();
        private final AudioTrack audioTrack;
        private boolean expectTimestampFramePositionReset;
        private long lastTimestampPositionFrames;
        private long lastTimestampRawPositionFrames;
        private long rawTimestampFramePositionWrapCount;

        public AudioTimestampWrapper(AudioTrack audioTrack) {
            this.audioTrack = audioTrack;
        }

        public boolean maybeUpdateTimestamp() {
            boolean timestamp = this.audioTrack.getTimestamp(this.audioTimestamp);
            if (timestamp) {
                long j = this.audioTimestamp.framePosition;
                long j2 = this.lastTimestampRawPositionFrames;
                if (j2 > j) {
                    if (this.expectTimestampFramePositionReset) {
                        this.accumulatedRawTimestampFramePosition += j2;
                        this.expectTimestampFramePositionReset = false;
                    } else {
                        this.rawTimestampFramePositionWrapCount++;
                    }
                }
                this.lastTimestampRawPositionFrames = j;
                this.lastTimestampPositionFrames = j + this.accumulatedRawTimestampFramePosition + (this.rawTimestampFramePositionWrapCount << 32);
            }
            return timestamp;
        }

        public long getTimestampSystemTimeUs() {
            return this.audioTimestamp.nanoTime / 1000;
        }

        public long getTimestampPositionFrames() {
            return this.lastTimestampPositionFrames;
        }

        public void expectTimestampFramePositionReset() {
            this.expectTimestampFramePositionReset = true;
        }
    }
}
