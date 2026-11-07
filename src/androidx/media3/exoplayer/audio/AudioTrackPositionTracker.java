package androidx.media3.exoplayer.audio;

import android.media.AudioTrack;
import android.os.Build;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.common.base.Preconditions;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
final class AudioTrackPositionTracker {
    private AudioTimestampPoller audioTimestampPoller;
    private final AudioTrack audioTrack;
    private float audioTrackPlaybackSpeed;
    private final long bufferSizeUs;
    private final Clock clock;
    private long endPlaybackHeadPosition;
    private boolean expectRawPlaybackHeadReset;
    private long forceResetWorkaroundTimeMs;
    private Method getLatencyMethod;
    private final boolean isOutputPcm;
    private long lastLatencySampleTimeUs;
    private long lastPlayheadSampleTimeUs;
    private long lastPositionUs;
    private long lastRawPlaybackHeadPositionSampleTimeMs;
    private long lastSystemTimeUs;
    private long latencyUs;
    private final Listener listener;
    private int nextPlayheadOffsetIndex;
    private long onPositionAdvancingFromPositionUs;
    private final int outputSampleRate;
    private int playheadOffsetCount;
    private final long[] playheadOffsets;
    private long rawPlaybackHeadPosition;
    private long rawPlaybackHeadWrapCount;
    private long smoothedPlayheadOffsetUs;
    private long stopPlaybackHeadPosition;
    private long stopTimestampUs;
    private long sumRawPlaybackHeadPosition;

    public interface Listener {
        void onInvalidLatency(long j);

        void onPositionAdvancing(long j);

        void onPositionFramesMismatch(long j, long j2, long j3, long j4);

        void onSystemTimeUsMismatch(long j, long j2, long j3, long j4);
    }

    public AudioTrackPositionTracker(Listener listener, Clock clock, AudioTrack audioTrack, int i, int i2, int i3) {
        this.listener = (Listener) Preconditions.checkNotNull(listener);
        this.clock = clock;
        this.audioTrack = audioTrack;
        try {
            this.getLatencyMethod = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.playheadOffsets = new long[10];
        this.lastSystemTimeUs = -9223372036854775807L;
        this.lastPositionUs = -9223372036854775807L;
        this.audioTimestampPoller = new AudioTimestampPoller(audioTrack, listener);
        int sampleRate = audioTrack.getSampleRate();
        this.outputSampleRate = sampleRate;
        boolean zIsEncodingLinearPcm = Util.isEncodingLinearPcm(i);
        this.isOutputPcm = zIsEncodingLinearPcm;
        this.bufferSizeUs = zIsEncodingLinearPcm ? Util.sampleCountToDurationUs(i3 / i2, sampleRate) : -9223372036854775807L;
        this.rawPlaybackHeadPosition = 0L;
        this.rawPlaybackHeadWrapCount = 0L;
        this.expectRawPlaybackHeadReset = false;
        this.sumRawPlaybackHeadPosition = 0L;
        this.stopTimestampUs = -9223372036854775807L;
        this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        this.lastLatencySampleTimeUs = 0L;
        this.latencyUs = 0L;
        this.audioTrackPlaybackSpeed = 1.0f;
        this.onPositionAdvancingFromPositionUs = -9223372036854775807L;
    }

    public void setAudioTrackPlaybackSpeed(float f) {
        this.audioTrackPlaybackSpeed = f;
        this.audioTimestampPoller.reset();
        resetSyncParams();
    }

    public long getCurrentPositionUs() {
        long playbackHeadPositionEstimateUs;
        AudioTrack audioTrack = (AudioTrack) Preconditions.checkNotNull(this.audioTrack);
        if (audioTrack.getPlayState() == 3) {
            maybeSampleSyncParams();
        }
        long jNanoTime = this.clock.nanoTime() / 1000;
        boolean zHasAdvancingTimestamp = this.audioTimestampPoller.hasAdvancingTimestamp();
        if (zHasAdvancingTimestamp) {
            playbackHeadPositionEstimateUs = this.audioTimestampPoller.getTimestampPositionUs(jNanoTime, this.audioTrackPlaybackSpeed);
        } else {
            playbackHeadPositionEstimateUs = getPlaybackHeadPositionEstimateUs(jNanoTime);
        }
        long jConstrainValue = playbackHeadPositionEstimateUs;
        int playState = audioTrack.getPlayState();
        if (playState != 3) {
            if (playState == 1) {
                maybeTriggerOnPositionAdvancingCallback(jConstrainValue);
            }
            return jConstrainValue;
        }
        if (zHasAdvancingTimestamp || !this.audioTimestampPoller.isWaitingForAdvancingTimestamp()) {
            maybeTriggerOnPositionAdvancingCallback(jConstrainValue);
        }
        long j = this.lastSystemTimeUs;
        if (j != -9223372036854775807L) {
            long j2 = jConstrainValue - this.lastPositionUs;
            long mediaDurationForPlayoutDuration = Util.getMediaDurationForPlayoutDuration(jNanoTime - j, this.audioTrackPlaybackSpeed);
            long j3 = this.lastPositionUs + mediaDurationForPlayoutDuration;
            long jAbs = Math.abs(j3 - jConstrainValue);
            if (j2 != 0 && jAbs < 1000000) {
                long j4 = (mediaDurationForPlayoutDuration * 10) / 100;
                jConstrainValue = Util.constrainValue(jConstrainValue, j3 - j4, j3 + j4);
            }
        }
        this.lastSystemTimeUs = jNanoTime;
        this.lastPositionUs = jConstrainValue;
        return jConstrainValue;
    }

    public void start() {
        if (this.stopTimestampUs != -9223372036854775807L) {
            this.stopTimestampUs = Util.msToUs(this.clock.elapsedRealtime());
        }
        this.onPositionAdvancingFromPositionUs = getPlaybackHeadPositionUs();
        this.audioTimestampPoller.reset();
    }

    public boolean isPlaying() {
        return ((AudioTrack) Preconditions.checkNotNull(this.audioTrack)).getPlayState() == 3;
    }

    public boolean isStalled(long j) {
        return this.forceResetWorkaroundTimeMs != -9223372036854775807L && j > 0 && this.clock.elapsedRealtime() - this.forceResetWorkaroundTimeMs >= 200;
    }

    public void handleEndOfStream(long j) {
        this.stopPlaybackHeadPosition = getPlaybackHeadPosition();
        this.stopTimestampUs = Util.msToUs(this.clock.elapsedRealtime());
        this.endPlaybackHeadPosition = j;
    }

    public void pause() {
        resetSyncParams();
        if (this.stopTimestampUs == -9223372036854775807L) {
            this.audioTimestampPoller.reset();
        }
        this.stopPlaybackHeadPosition = getPlaybackHeadPosition();
    }

    public void expectRawPlaybackHeadReset() {
        this.expectRawPlaybackHeadReset = true;
        this.audioTimestampPoller.expectTimestampFramePositionReset();
    }

    private void maybeTriggerOnPositionAdvancingCallback(long j) {
        long j2 = this.onPositionAdvancingFromPositionUs;
        if (j2 == -9223372036854775807L || j < j2) {
            return;
        }
        long jCurrentTimeMillis = this.clock.currentTimeMillis() - Util.usToMs(Util.getPlayoutDurationForMediaDuration(j - j2, this.audioTrackPlaybackSpeed));
        this.onPositionAdvancingFromPositionUs = -9223372036854775807L;
        this.listener.onPositionAdvancing(jCurrentTimeMillis);
    }

    private void maybeSampleSyncParams() {
        long jNanoTime = this.clock.nanoTime() / 1000;
        if (jNanoTime - this.lastPlayheadSampleTimeUs >= NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) {
            long playbackHeadPositionUs = getPlaybackHeadPositionUs();
            if (playbackHeadPositionUs != 0) {
                this.playheadOffsets[this.nextPlayheadOffsetIndex] = Util.getPlayoutDurationForMediaDuration(playbackHeadPositionUs, this.audioTrackPlaybackSpeed) - jNanoTime;
                this.nextPlayheadOffsetIndex = (this.nextPlayheadOffsetIndex + 1) % 10;
                int i = this.playheadOffsetCount;
                if (i < 10) {
                    this.playheadOffsetCount = i + 1;
                }
                this.lastPlayheadSampleTimeUs = jNanoTime;
                this.smoothedPlayheadOffsetUs = 0L;
                int i2 = 0;
                while (true) {
                    int i3 = this.playheadOffsetCount;
                    if (i2 >= i3) {
                        break;
                    }
                    this.smoothedPlayheadOffsetUs += this.playheadOffsets[i2] / ((long) i3);
                    i2++;
                }
            } else {
                return;
            }
        }
        this.audioTimestampPoller.maybePollTimestamp(jNanoTime, this.audioTrackPlaybackSpeed, getPlaybackHeadPositionEstimateUs(jNanoTime), maybeUpdateLatency(jNanoTime));
    }

    private boolean maybeUpdateLatency(long j) {
        Method method;
        long j2 = this.latencyUs;
        if (this.isOutputPcm && (method = this.getLatencyMethod) != null && j - this.lastLatencySampleTimeUs >= 500000) {
            try {
                long jIntValue = (((long) ((Integer) Util.castNonNull((Integer) method.invoke(Preconditions.checkNotNull(this.audioTrack), null))).intValue()) * 1000) - this.bufferSizeUs;
                this.latencyUs = jIntValue;
                long jMax = Math.max(jIntValue, 0L);
                this.latencyUs = jMax;
                if (jMax > 10000000) {
                    this.listener.onInvalidLatency(jMax);
                    this.latencyUs = 0L;
                }
            } catch (Exception unused) {
                this.getLatencyMethod = null;
            }
            this.lastLatencySampleTimeUs = j;
        }
        return j2 != this.latencyUs;
    }

    private long getPlaybackHeadPositionEstimateUs(long j) {
        long mediaDurationForPlayoutDuration;
        if (this.playheadOffsetCount != 0) {
            mediaDurationForPlayoutDuration = Util.getMediaDurationForPlayoutDuration(j + this.smoothedPlayheadOffsetUs, this.audioTrackPlaybackSpeed);
        } else if (this.stopTimestampUs != -9223372036854775807L) {
            mediaDurationForPlayoutDuration = Util.sampleCountToDurationUs(getSimulatedPlaybackHeadPositionAfterStop(), this.outputSampleRate);
        } else {
            mediaDurationForPlayoutDuration = getPlaybackHeadPositionUs();
        }
        long jMax = Math.max(0L, mediaDurationForPlayoutDuration - this.latencyUs);
        return this.stopTimestampUs != -9223372036854775807L ? Math.min(Util.sampleCountToDurationUs(this.endPlaybackHeadPosition, this.outputSampleRate), jMax) : jMax;
    }

    private void resetSyncParams() {
        this.smoothedPlayheadOffsetUs = 0L;
        this.playheadOffsetCount = 0;
        this.nextPlayheadOffsetIndex = 0;
        this.lastPlayheadSampleTimeUs = 0L;
        this.lastPositionUs = -9223372036854775807L;
        this.lastSystemTimeUs = -9223372036854775807L;
    }

    private long getPlaybackHeadPositionUs() {
        return Util.sampleCountToDurationUs(getPlaybackHeadPosition(), this.outputSampleRate);
    }

    private long getPlaybackHeadPosition() {
        if (this.stopTimestampUs != -9223372036854775807L) {
            return Math.min(this.endPlaybackHeadPosition, getSimulatedPlaybackHeadPositionAfterStop());
        }
        long jElapsedRealtime = this.clock.elapsedRealtime();
        if (jElapsedRealtime - this.lastRawPlaybackHeadPositionSampleTimeMs >= 5) {
            updateRawPlaybackHeadPosition(jElapsedRealtime);
            this.lastRawPlaybackHeadPositionSampleTimeMs = jElapsedRealtime;
        }
        return this.rawPlaybackHeadPosition + this.sumRawPlaybackHeadPosition + (this.rawPlaybackHeadWrapCount << 32);
    }

    private long getSimulatedPlaybackHeadPositionAfterStop() {
        if (((AudioTrack) Preconditions.checkNotNull(this.audioTrack)).getPlayState() == 2) {
            return this.stopPlaybackHeadPosition;
        }
        return this.stopPlaybackHeadPosition + Util.durationUsToSampleCount(Util.getMediaDurationForPlayoutDuration(Util.msToUs(this.clock.elapsedRealtime()) - this.stopTimestampUs, this.audioTrackPlaybackSpeed), this.outputSampleRate);
    }

    private void updateRawPlaybackHeadPosition(long j) {
        AudioTrack audioTrack = (AudioTrack) Preconditions.checkNotNull(this.audioTrack);
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return;
        }
        long playbackHeadPosition = ((long) audioTrack.getPlaybackHeadPosition()) & 4294967295L;
        if (Build.VERSION.SDK_INT <= 29) {
            if (playbackHeadPosition == 0 && this.rawPlaybackHeadPosition > 0 && playState == 3) {
                if (this.forceResetWorkaroundTimeMs == -9223372036854775807L) {
                    this.forceResetWorkaroundTimeMs = j;
                    return;
                }
                return;
            }
            this.forceResetWorkaroundTimeMs = -9223372036854775807L;
        }
        long j2 = this.rawPlaybackHeadPosition;
        if (j2 > playbackHeadPosition) {
            if (this.expectRawPlaybackHeadReset) {
                this.sumRawPlaybackHeadPosition += j2;
                this.expectRawPlaybackHeadReset = false;
            } else {
                this.rawPlaybackHeadWrapCount++;
            }
        }
        this.rawPlaybackHeadPosition = playbackHeadPosition;
    }
}
