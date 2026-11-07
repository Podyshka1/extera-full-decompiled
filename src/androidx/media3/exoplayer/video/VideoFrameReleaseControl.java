package androidx.media3.exoplayer.video;

import android.content.Context;
import android.view.Surface;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class VideoFrameReleaseControl {
    private final long allowedJoiningTimeMs;
    private boolean disableAdvancingTimestampChecks;
    private boolean frameReadyWithoutSurface;
    private final VideoFrameReleaseHelper frameReleaseHelper;
    private final FrameTimingEvaluator frameTimingEvaluator;
    private boolean hasOutputSurface;
    private boolean joiningRenderNextFrameImmediately;
    private long lastReleaseRealtimeUs;
    private boolean started;
    private int firstFrameState = 0;
    private long initialPositionUs = -9223372036854775807L;
    private long lastPresentationTimeUs = -9223372036854775807L;
    private long joiningDeadlineMs = -9223372036854775807L;
    private float playbackSpeed = 1.0f;
    private Clock clock = Clock.DEFAULT;

    public interface FrameTimingEvaluator {
        boolean shouldDropFrame(long j, long j2, boolean z);

        boolean shouldForceReleaseFrame(long j, long j2);

        boolean shouldIgnoreFrame(long j, long j2, long j3, boolean z, boolean z2);
    }

    public static class FrameReleaseInfo {
        private long earlyUs = -9223372036854775807L;
        private long releaseTimeNs = -9223372036854775807L;

        public long getEarlyUs() {
            return this.earlyUs;
        }

        public long getReleaseTimeNs() {
            return this.releaseTimeNs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void reset() {
            this.earlyUs = -9223372036854775807L;
            this.releaseTimeNs = -9223372036854775807L;
        }
    }

    public VideoFrameReleaseControl(Context context, FrameTimingEvaluator frameTimingEvaluator, long j) {
        this.frameTimingEvaluator = frameTimingEvaluator;
        this.allowedJoiningTimeMs = j;
        this.frameReleaseHelper = new VideoFrameReleaseHelper(context);
    }

    public void onStreamChanged(int i) {
        if (i == 0) {
            this.firstFrameState = 1;
            return;
        }
        if (i == 1) {
            this.firstFrameState = 0;
        } else if (i == 2) {
            lowerFirstFrameState(2);
        } else {
            MethodWriter$$ExternalSyntheticBUOutline0.m959m();
        }
    }

    public void onStarted() {
        this.started = true;
        this.lastReleaseRealtimeUs = Util.msToUs(this.clock.elapsedRealtime());
        this.frameReleaseHelper.onStarted();
    }

    public void onStopped() {
        this.started = false;
        this.joiningDeadlineMs = -9223372036854775807L;
        this.frameReleaseHelper.onStopped();
    }

    public void setOutputSurface(Surface surface) {
        this.hasOutputSurface = surface != null;
        this.frameReadyWithoutSurface = false;
        this.frameReleaseHelper.onSurfaceChanged(surface);
        lowerFirstFrameState(1);
    }

    public void setFrameRate(float f) {
        this.frameReleaseHelper.onFormatChanged(f);
    }

    public boolean onFrameReleasedIsFirstFrame() {
        boolean z = this.firstFrameState != 3;
        this.firstFrameState = 3;
        this.lastReleaseRealtimeUs = Util.msToUs(this.clock.elapsedRealtime());
        return z;
    }

    public void setClock(Clock clock) {
        this.clock = clock;
    }

    public void allowReleaseFirstFrameBeforeStarted() {
        if (this.firstFrameState == 0) {
            this.firstFrameState = 1;
        }
    }

    public boolean isReady(boolean z) {
        if (z && (this.firstFrameState == 3 || (!this.hasOutputSurface && this.frameReadyWithoutSurface))) {
            this.joiningDeadlineMs = -9223372036854775807L;
            return true;
        }
        if (this.joiningDeadlineMs == -9223372036854775807L) {
            return false;
        }
        if (this.clock.elapsedRealtime() < this.joiningDeadlineMs) {
            return true;
        }
        this.joiningDeadlineMs = -9223372036854775807L;
        return false;
    }

    public void join(boolean z) {
        this.joiningRenderNextFrameImmediately = z;
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? this.clock.elapsedRealtime() + this.allowedJoiningTimeMs : -9223372036854775807L;
    }

    public int getFrameReleaseAction(long j, long j2, long j3, long j4, boolean z, boolean z2, FrameReleaseInfo frameReleaseInfo) {
        frameReleaseInfo.reset();
        if (this.started && this.initialPositionUs == -9223372036854775807L) {
            this.initialPositionUs = j2;
        }
        if (this.lastPresentationTimeUs != j) {
            this.frameReleaseHelper.onNextFrame(j);
            this.lastPresentationTimeUs = j;
        }
        frameReleaseInfo.earlyUs = calculateEarlyTimeUs(j2, j3, j);
        if (z && !z2) {
            return 3;
        }
        if (this.hasOutputSurface) {
            if (shouldForceRelease(j2, frameReleaseInfo.earlyUs, j4)) {
                return 0;
            }
            if (!this.started || j2 == this.initialPositionUs) {
                return 5;
            }
            long jNanoTime = this.clock.nanoTime();
            frameReleaseInfo.releaseTimeNs = this.frameReleaseHelper.adjustReleaseTime((frameReleaseInfo.earlyUs * 1000) + jNanoTime);
            frameReleaseInfo.earlyUs = (frameReleaseInfo.releaseTimeNs - jNanoTime) / 1000;
            boolean z3 = (this.joiningDeadlineMs == -9223372036854775807L || this.joiningRenderNextFrameImmediately) ? false : true;
            if (this.frameTimingEvaluator.shouldIgnoreFrame(frameReleaseInfo.earlyUs, j2, j3, z2, z3)) {
                return 4;
            }
            return this.frameTimingEvaluator.shouldDropFrame(frameReleaseInfo.earlyUs, j3, z2) ? z3 ? 3 : 2 : frameReleaseInfo.earlyUs > 50000 ? 5 : 1;
        }
        this.frameReadyWithoutSurface = true;
        if (this.frameTimingEvaluator.shouldIgnoreFrame(frameReleaseInfo.earlyUs, j2, j3, z2, true)) {
            return 4;
        }
        return (!this.started || frameReleaseInfo.earlyUs >= NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS) ? 5 : 3;
    }

    public void reset() {
        this.frameReleaseHelper.onPositionReset();
        this.lastPresentationTimeUs = -9223372036854775807L;
        this.initialPositionUs = -9223372036854775807L;
        lowerFirstFrameState(1);
        this.joiningDeadlineMs = -9223372036854775807L;
    }

    public void setChangeFrameRateStrategy(int i) {
        this.frameReleaseHelper.setChangeFrameRateStrategy(i);
    }

    public void setPlaybackSpeed(float f) {
        Assertions.checkArgument(f > 0.0f);
        if (f == this.playbackSpeed) {
            return;
        }
        this.playbackSpeed = f;
        this.frameReleaseHelper.onPlaybackSpeed(f);
    }

    private void lowerFirstFrameState(int i) {
        this.firstFrameState = Math.min(this.firstFrameState, i);
    }

    private long calculateEarlyTimeUs(long j, long j2, long j3) {
        long j4 = (long) ((j3 - j) / ((double) this.playbackSpeed));
        return this.started ? j4 - (Util.msToUs(this.clock.elapsedRealtime()) - j2) : j4;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean shouldForceRelease(long j, long j2, long j3) {
        if (this.joiningDeadlineMs != -9223372036854775807L && !this.joiningRenderNextFrameImmediately) {
            return false;
        }
        int i = this.firstFrameState;
        if (i == 0) {
            return this.started;
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return j >= j3;
        }
        if (i == 3) {
            long jMsToUs = Util.msToUs(this.clock.elapsedRealtime()) - this.lastReleaseRealtimeUs;
            if (this.started) {
                if (!this.disableAdvancingTimestampChecks) {
                    long j4 = this.initialPositionUs;
                    if (j4 != -9223372036854775807L && j4 != j) {
                        if (this.frameTimingEvaluator.shouldForceReleaseFrame(j2, jMsToUs)) {
                            return true;
                        }
                    }
                }
            }
            return false;
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m959m();
        return false;
    }
}
