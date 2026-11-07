package androidx.media3.exoplayer.video;

import android.util.Range;
import androidx.media3.common.util.Assertions;

/* JADX INFO: loaded from: classes4.dex */
class VideoFrameReleaseEarlyTimeForecaster {
    private double derivativeOfEarlyTime;
    private Range<Double> derivativeOfEarlyTimeRange;
    private long lastFrameEarlyUs;
    private long lastFramePresentationTimeUs;

    public VideoFrameReleaseEarlyTimeForecaster(float f) {
        Assertions.checkArgument(f > 0.0f);
        Range<Double> range = new Range<>(Double.valueOf(0.0d), Double.valueOf(1.0d / ((double) f)));
        this.derivativeOfEarlyTimeRange = range;
        this.derivativeOfEarlyTime = ((Double) range.getUpper()).doubleValue();
        this.lastFramePresentationTimeUs = -9223372036854775807L;
        this.lastFrameEarlyUs = -9223372036854775807L;
    }

    public void onVideoFrameProcessed(long j, long j2) {
        Assertions.checkArgument(j != -9223372036854775807L);
        Assertions.checkArgument(j2 != -9223372036854775807L);
        updateDerivativeWithExponentialMovingAverage(((Double) this.derivativeOfEarlyTimeRange.clamp(Double.valueOf(calculateDerivativeFromLastFrame(j, j2)))).doubleValue());
        this.lastFramePresentationTimeUs = j;
        this.lastFrameEarlyUs = j2;
    }

    public long predictEarlyUs(long j) {
        if (this.lastFramePresentationTimeUs == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return (long) (this.lastFrameEarlyUs + ((j - r0) * this.derivativeOfEarlyTime));
    }

    public void setPlaybackSpeed(float f) {
        Assertions.checkArgument(f > 0.0f);
        this.derivativeOfEarlyTimeRange = new Range<>(Double.valueOf(0.0d), Double.valueOf(1.0d / ((double) f)));
        reset();
    }

    public void reset() {
        this.derivativeOfEarlyTime = ((Double) this.derivativeOfEarlyTimeRange.getUpper()).doubleValue();
        this.lastFramePresentationTimeUs = -9223372036854775807L;
        this.lastFrameEarlyUs = -9223372036854775807L;
    }

    private double calculateDerivativeFromLastFrame(long j, long j2) {
        long j3 = this.lastFramePresentationTimeUs;
        if (j3 != -9223372036854775807L) {
            if (this.lastFrameEarlyUs != -9223372036854775807L && j != j3) {
                return (j2 - r4) / (j - j3);
            }
        }
        return ((Double) this.derivativeOfEarlyTimeRange.getUpper()).doubleValue();
    }

    private void updateDerivativeWithExponentialMovingAverage(double d) {
        this.derivativeOfEarlyTime = (this.derivativeOfEarlyTime * 0.800000011920929d) + (d * 0.20000000298023224d);
    }
}
