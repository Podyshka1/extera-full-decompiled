package androidx.media3.exoplayer;

import androidx.media3.common.Format;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.PlayerMessage;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import com.google.android.gms.cast.framework.media.NotificationOptions;

/* JADX INFO: loaded from: classes4.dex */
public interface Renderer extends PlayerMessage.Target {

    public interface WakeupListener {
        void onSleep();

        void onWakeup();
    }

    void disable();

    void enable(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j, boolean z, boolean z2, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId);

    default void enableMayRenderStartOfStream() {
    }

    RendererCapabilities getCapabilities();

    MediaClock getMediaClock();

    String getName();

    long getReadingPositionUs();

    int getState();

    SampleStream getStream();

    int getTrackType();

    boolean hasReadStreamToEnd();

    void init(int i, PlayerId playerId, Clock clock);

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    void maybeThrowStreamError();

    void release();

    void render(long j, long j2);

    void replaceStream(Format[] formatArr, SampleStream sampleStream, long j, long j2, MediaSource.MediaPeriodId mediaPeriodId);

    void reset();

    void resetPosition(long j, boolean z);

    void setCurrentStreamFinal();

    default void setPlaybackSpeed(float f, float f2) {
    }

    void setTimeline(Timeline timeline);

    void start();

    void stop();

    default boolean supportsResetPositionWithoutKeyFrameReset(long j) {
        return false;
    }

    default long getDurationToProgressUs(long j, long j2) {
        if (getState() != 1) {
            return NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
        }
        if (isReady() || isEnded()) {
            return 1000000L;
        }
        return NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
    }
}
