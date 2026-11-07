package androidx.media3.common.util;

import android.os.Handler;
import android.os.Message;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class StuckPlayerDetector {
    private final Callback callback;
    private final Clock clock;
    private final HandlerWrapper handler;
    private final Timeline.Period period = new Timeline.Period();
    private final Player player;
    private final Player.Listener playerListener;
    private final StuckBufferingDetector stuckBufferingDetector;
    private final StuckPlayingDetector stuckPlayingDetector;
    private final StuckPlayingNotEndingDetector stuckPlayingNotEndingDetector;
    private final StuckSuppressedDetector stuckSuppressedDetector;

    public interface Callback {
        void onStuckPlayerDetected(StuckPlayerException stuckPlayerException);
    }

    public StuckPlayerDetector(Player player, Callback callback, Clock clock, int i, int i2, int i3, int i4) {
        this.player = player;
        this.callback = callback;
        this.clock = clock;
        this.handler = clock.createHandler(player.getApplicationLooper(), new Handler.Callback() { // from class: androidx.media3.common.util.StuckPlayerDetector$$ExternalSyntheticLambda0
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f$0.handleMessage(message);
            }
        });
        this.stuckBufferingDetector = new StuckBufferingDetector(i);
        this.stuckPlayingDetector = new StuckPlayingDetector(i2);
        this.stuckPlayingNotEndingDetector = new StuckPlayingNotEndingDetector(i3);
        this.stuckSuppressedDetector = new StuckSuppressedDetector(i4);
        Player.Listener listener = new Player.Listener() { // from class: androidx.media3.common.util.StuckPlayerDetector.1
            @Override // androidx.media3.common.Player.Listener
            public void onEvents(Player player2, Player.Events events) {
                StuckPlayerDetector.this.onPlayerEvents();
            }
        };
        this.playerListener = listener;
        player.addListener(listener);
    }

    public void release() {
        this.handler.removeCallbacksAndMessages(null);
        this.player.removeListener(this.playerListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPlayerEvents() {
        this.stuckBufferingDetector.update();
        this.stuckPlayingDetector.update();
        this.stuckPlayingNotEndingDetector.update();
        this.stuckSuppressedDetector.update();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.stuckBufferingDetector.update();
            return true;
        }
        if (i == 2) {
            this.stuckPlayingDetector.update();
            return true;
        }
        if (i == 3) {
            this.stuckPlayingNotEndingDetector.update();
            return true;
        }
        if (i != 4) {
            return false;
        }
        this.stuckSuppressedDetector.update();
        return true;
    }

    public final class StuckBufferingDetector {
        private int adGroupIndex;
        private int adIndexInAdGroup;
        private long bufferedDurationInOtherPeriodsMs;
        private long bufferedPositionInPeriodMs;
        private boolean isBuffering;
        private Object periodUid;
        private long startRealtimeMs;
        private final int stuckBufferingTimeoutMs;

        public StuckBufferingDetector(int i) {
            this.stuckBufferingTimeoutMs = i;
        }

        public void update() {
            if (StuckPlayerDetector.this.player.getPlaybackState() == 2 && StuckPlayerDetector.this.player.getPlayWhenReady() && StuckPlayerDetector.this.player.getPlaybackSuppressionReason() == 0) {
                Timeline currentTimeline = StuckPlayerDetector.this.player.getCurrentTimeline();
                Object uidOfPeriod = currentTimeline.isEmpty() ? null : currentTimeline.getUidOfPeriod(StuckPlayerDetector.this.player.getCurrentPeriodIndex());
                int currentAdGroupIndex = StuckPlayerDetector.this.player.getCurrentAdGroupIndex();
                int currentAdIndexInAdGroup = StuckPlayerDetector.this.player.getCurrentAdIndexInAdGroup();
                long bufferedPosition = StuckPlayerDetector.this.player.getBufferedPosition();
                long jMax = Math.max(0L, StuckPlayerDetector.this.player.getTotalBufferedDuration() - Math.max(0L, bufferedPosition - StuckPlayerDetector.this.player.getCurrentPosition()));
                if (uidOfPeriod != null && currentAdGroupIndex == -1) {
                    bufferedPosition -= currentTimeline.getPeriodByUid(uidOfPeriod, StuckPlayerDetector.this.period).getPositionInWindowMs();
                }
                long jElapsedRealtime = StuckPlayerDetector.this.clock.elapsedRealtime();
                if (this.isBuffering && Objects.equals(uidOfPeriod, this.periodUid) && currentAdGroupIndex == this.adGroupIndex && currentAdIndexInAdGroup == this.adIndexInAdGroup && bufferedPosition == this.bufferedPositionInPeriodMs && jMax == this.bufferedDurationInOtherPeriodsMs) {
                    if (jElapsedRealtime - this.startRealtimeMs >= this.stuckBufferingTimeoutMs) {
                        StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(1, this.stuckBufferingTimeoutMs));
                        return;
                    }
                    return;
                }
                this.isBuffering = true;
                this.startRealtimeMs = jElapsedRealtime;
                this.periodUid = uidOfPeriod;
                this.adGroupIndex = currentAdGroupIndex;
                this.adIndexInAdGroup = currentAdIndexInAdGroup;
                this.bufferedPositionInPeriodMs = bufferedPosition;
                this.bufferedDurationInOtherPeriodsMs = jMax;
                StuckPlayerDetector.this.handler.removeMessages(1);
                StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(1, this.stuckBufferingTimeoutMs);
                return;
            }
            if (this.isBuffering) {
                StuckPlayerDetector.this.handler.removeMessages(1);
            }
            this.isBuffering = false;
        }
    }

    public final class StuckPlayingDetector {
        private int adGroupIndex;
        private int adIndexInAdGroup;
        private long currentPositionInPeriodMs;
        private boolean isPlaying;
        private Object periodUid;
        private long startRealtimeMs;
        private final int stuckPlayingTimeoutMs;

        public StuckPlayingDetector(int i) {
            this.stuckPlayingTimeoutMs = i;
        }

        public void update() {
            if (StuckPlayerDetector.this.player.isPlaying()) {
                Timeline currentTimeline = StuckPlayerDetector.this.player.getCurrentTimeline();
                Object uidOfPeriod = currentTimeline.isEmpty() ? null : currentTimeline.getUidOfPeriod(StuckPlayerDetector.this.player.getCurrentPeriodIndex());
                int currentAdGroupIndex = StuckPlayerDetector.this.player.getCurrentAdGroupIndex();
                int currentAdIndexInAdGroup = StuckPlayerDetector.this.player.getCurrentAdIndexInAdGroup();
                long currentPosition = StuckPlayerDetector.this.player.getCurrentPosition();
                if (uidOfPeriod != null && currentAdGroupIndex == -1) {
                    currentPosition -= currentTimeline.getPeriodByUid(uidOfPeriod, StuckPlayerDetector.this.period).getPositionInWindowMs();
                }
                long jElapsedRealtime = StuckPlayerDetector.this.clock.elapsedRealtime();
                if (this.isPlaying && Objects.equals(uidOfPeriod, this.periodUid) && currentAdGroupIndex == this.adGroupIndex && currentAdIndexInAdGroup == this.adIndexInAdGroup && currentPosition == this.currentPositionInPeriodMs) {
                    if (jElapsedRealtime - this.startRealtimeMs >= this.stuckPlayingTimeoutMs) {
                        StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(2, this.stuckPlayingTimeoutMs));
                        return;
                    }
                    return;
                }
                this.isPlaying = true;
                this.startRealtimeMs = jElapsedRealtime;
                this.periodUid = uidOfPeriod;
                this.adGroupIndex = currentAdGroupIndex;
                this.adIndexInAdGroup = currentAdIndexInAdGroup;
                this.currentPositionInPeriodMs = currentPosition;
                StuckPlayerDetector.this.handler.removeMessages(2);
                StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(2, this.stuckPlayingTimeoutMs);
                return;
            }
            if (this.isPlaying) {
                StuckPlayerDetector.this.handler.removeMessages(2);
            }
            this.isPlaying = false;
        }
    }

    public final class StuckPlayingNotEndingDetector {
        private int adGroupIndex;
        private int adIndexInAdGroup;
        private boolean isPlayingAndReachedDuration;
        private Object periodUid;
        private long startRealtimeMs;
        private final int stuckPlayingNotEndingTimeoutMs;

        public StuckPlayingNotEndingDetector(int i) {
            this.stuckPlayingNotEndingTimeoutMs = i;
        }

        public void update() {
            long duration;
            Timeline currentTimeline = StuckPlayerDetector.this.player.getCurrentTimeline();
            Object uidOfPeriod = currentTimeline.isEmpty() ? null : currentTimeline.getUidOfPeriod(StuckPlayerDetector.this.player.getCurrentPeriodIndex());
            int currentAdGroupIndex = StuckPlayerDetector.this.player.getCurrentAdGroupIndex();
            int currentAdIndexInAdGroup = StuckPlayerDetector.this.player.getCurrentAdIndexInAdGroup();
            long currentPosition = StuckPlayerDetector.this.player.getCurrentPosition();
            if (uidOfPeriod == null || currentAdGroupIndex != -1) {
                duration = currentAdGroupIndex != -1 ? StuckPlayerDetector.this.player.getDuration() : -9223372036854775807L;
            } else {
                currentTimeline.getPeriodByUid(uidOfPeriod, StuckPlayerDetector.this.period);
                currentPosition -= StuckPlayerDetector.this.period.getPositionInWindowMs();
                duration = StuckPlayerDetector.this.period.getDurationMs();
            }
            boolean zIsPlaying = StuckPlayerDetector.this.player.isPlaying();
            if (!zIsPlaying || duration == -9223372036854775807L || currentPosition < duration) {
                StuckPlayerDetector.this.handler.removeMessages(3);
                if (zIsPlaying && duration != -9223372036854775807L) {
                    StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(3, (int) Math.ceil((duration - currentPosition) / StuckPlayerDetector.this.player.getPlaybackParameters().speed));
                }
                this.isPlayingAndReachedDuration = false;
                return;
            }
            long jElapsedRealtime = StuckPlayerDetector.this.clock.elapsedRealtime();
            if (this.isPlayingAndReachedDuration && Objects.equals(uidOfPeriod, this.periodUid) && currentAdGroupIndex == this.adGroupIndex && currentAdIndexInAdGroup == this.adIndexInAdGroup) {
                if (jElapsedRealtime - this.startRealtimeMs >= this.stuckPlayingNotEndingTimeoutMs) {
                    StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(3, this.stuckPlayingNotEndingTimeoutMs));
                    return;
                }
                return;
            }
            this.isPlayingAndReachedDuration = true;
            this.startRealtimeMs = jElapsedRealtime;
            this.periodUid = uidOfPeriod;
            this.adGroupIndex = currentAdGroupIndex;
            this.adIndexInAdGroup = currentAdIndexInAdGroup;
            StuckPlayerDetector.this.handler.removeMessages(3);
            StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(3, this.stuckPlayingNotEndingTimeoutMs);
        }
    }

    public final class StuckSuppressedDetector {
        private boolean isSuppressed;
        private long startRealtimeMs;
        private final int stuckSuppressedTimeoutMs;
        private int suppressionReason;

        public StuckSuppressedDetector(int i) {
            this.stuckSuppressedTimeoutMs = i;
        }

        public void update() {
            int playbackSuppressionReason = StuckPlayerDetector.this.player.getPlaybackSuppressionReason();
            if (StuckPlayerDetector.this.player.getPlayWhenReady() && StuckPlayerDetector.this.player.getPlaybackState() != 1 && StuckPlayerDetector.this.player.getPlaybackState() != 4 && playbackSuppressionReason != 0 && playbackSuppressionReason != 1) {
                long jElapsedRealtime = StuckPlayerDetector.this.clock.elapsedRealtime();
                if (this.isSuppressed && this.suppressionReason == playbackSuppressionReason) {
                    if (jElapsedRealtime - this.startRealtimeMs >= this.stuckSuppressedTimeoutMs) {
                        StuckPlayerDetector.this.callback.onStuckPlayerDetected(new StuckPlayerException(4, this.stuckSuppressedTimeoutMs));
                        return;
                    }
                    return;
                } else {
                    this.isSuppressed = true;
                    this.startRealtimeMs = jElapsedRealtime;
                    this.suppressionReason = playbackSuppressionReason;
                    StuckPlayerDetector.this.handler.removeMessages(4);
                    StuckPlayerDetector.this.handler.sendEmptyMessageDelayed(4, this.stuckSuppressedTimeoutMs);
                    return;
                }
            }
            if (this.isSuppressed) {
                StuckPlayerDetector.this.handler.removeMessages(4);
            }
            this.isSuppressed = false;
        }
    }
}
