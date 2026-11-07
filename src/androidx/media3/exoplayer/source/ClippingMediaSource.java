package androidx.media3.exoplayer.source;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class ClippingMediaSource extends WrappingMediaSource {
    private final boolean allowDynamicClippingUpdates;
    private final boolean allowUnseekableMedia;
    private IllegalClippingException clippingError;
    private ClippingTimeline clippingTimeline;
    private final boolean enableInitialDiscontinuity;
    private final long endUs;
    private final ArrayList<ClippingMediaPeriod> mediaPeriods;
    private long periodEndUs;
    private long periodStartUs;
    private final boolean relativeToDefaultPosition;
    private final long startUs;
    private final Timeline.Window window;

    public static final class Builder {
        private boolean allowDynamicClippingUpdates;
        private boolean allowUnseekableMedia;
        private boolean buildCalled;
        private boolean enableInitialDiscontinuity = true;
        private long endPositionUs = Long.MIN_VALUE;
        private final MediaSource mediaSource;
        private boolean relativeToDefaultPosition;
        private long startPositionUs;

        public Builder(MediaSource mediaSource) {
            this.mediaSource = (MediaSource) Assertions.checkNotNull(mediaSource);
        }

        public Builder setStartPositionUs(long j) {
            Assertions.checkArgument(j >= 0);
            Assertions.checkState(!this.buildCalled);
            this.startPositionUs = j;
            return this;
        }

        public Builder setEndPositionUs(long j) {
            Assertions.checkState(!this.buildCalled);
            this.endPositionUs = j;
            return this;
        }

        public Builder setEnableInitialDiscontinuity(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.enableInitialDiscontinuity = z;
            return this;
        }

        public Builder setAllowDynamicClippingUpdates(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.allowDynamicClippingUpdates = z;
            return this;
        }

        public Builder setRelativeToDefaultPosition(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.relativeToDefaultPosition = z;
            return this;
        }

        public Builder setAllowUnseekableMedia(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.allowUnseekableMedia = z;
            return this;
        }

        public ClippingMediaSource build() {
            this.buildCalled = true;
            return new ClippingMediaSource(this);
        }
    }

    public static final class IllegalClippingException extends IOException {
        public final int reason;

        public IllegalClippingException(int i) {
            this(i, -9223372036854775807L, -9223372036854775807L);
        }

        public IllegalClippingException(int i, long j, long j2) {
            super("Illegal clipping: " + getReasonDescription(i, j, j2));
            this.reason = i;
        }

        private static String getReasonDescription(int i, long j, long j2) {
            if (i == 0) {
                return "invalid period count";
            }
            if (i == 1) {
                return "not seekable to start";
            }
            if (i == 2) {
                Assertions.checkState((j == -9223372036854775807L || j2 == -9223372036854775807L) ? false : true);
                return "start exceeds end. Start time: " + j + ", End time: " + j2;
            }
            return "unknown";
        }
    }

    private ClippingMediaSource(Builder builder) {
        super(builder.mediaSource);
        this.startUs = builder.startPositionUs;
        this.endUs = builder.endPositionUs;
        this.enableInitialDiscontinuity = builder.enableInitialDiscontinuity;
        this.allowDynamicClippingUpdates = builder.allowDynamicClippingUpdates;
        this.relativeToDefaultPosition = builder.relativeToDefaultPosition;
        this.allowUnseekableMedia = builder.allowUnseekableMedia;
        this.mediaPeriods = new ArrayList<>();
        this.window = new Timeline.Window();
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean canUpdateMediaItem(MediaItem mediaItem) {
        return getMediaItem().clippingConfiguration.equals(mediaItem.clippingConfiguration) && this.mediaSource.canUpdateMediaItem(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IllegalClippingException {
        IllegalClippingException illegalClippingException = this.clippingError;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        ClippingMediaPeriod clippingMediaPeriod = new ClippingMediaPeriod(this.mediaSource.createPeriod(mediaPeriodId, allocator, j), this.enableInitialDiscontinuity, this.periodStartUs, this.periodEndUs);
        this.mediaPeriods.add(clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        Assertions.checkState(this.mediaPeriods.remove(mediaPeriod));
        this.mediaSource.releasePeriod(((ClippingMediaPeriod) mediaPeriod).mediaPeriod);
        if (!this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            return;
        }
        refreshClippedTimeline(((ClippingTimeline) Assertions.checkNotNull(this.clippingTimeline)).timeline);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource, androidx.media3.exoplayer.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.clippingError = null;
        this.clippingTimeline = null;
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    public void onChildSourceInfoRefreshed(Timeline timeline) {
        if (this.clippingError != null) {
            return;
        }
        refreshClippedTimeline(timeline);
    }

    private void refreshClippedTimeline(Timeline timeline) {
        long j;
        timeline.getWindow(0, this.window);
        long positionInFirstPeriodUs = this.window.getPositionInFirstPeriodUs();
        if (this.clippingTimeline == null || this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            j = this.startUs;
            long j2 = this.endUs;
            if (this.relativeToDefaultPosition) {
                long defaultPositionUs = this.window.getDefaultPositionUs();
                j += defaultPositionUs;
                j2 += defaultPositionUs;
            }
            this.periodStartUs = positionInFirstPeriodUs + j;
            this.periodEndUs = this.endUs != Long.MIN_VALUE ? positionInFirstPeriodUs + j2 : Long.MIN_VALUE;
            int size = this.mediaPeriods.size();
            for (int i = 0; i < size; i++) {
                this.mediaPeriods.get(i).updateClipping(this.periodStartUs, this.periodEndUs);
            }
            j = j2;
        } else {
            j = this.periodStartUs - positionInFirstPeriodUs;
            if (this.endUs != Long.MIN_VALUE) {
                j = this.periodEndUs - positionInFirstPeriodUs;
            }
        }
        try {
            ClippingTimeline clippingTimeline = new ClippingTimeline(timeline, j, j, this.allowUnseekableMedia);
            this.clippingTimeline = clippingTimeline;
            refreshSourceInfo(clippingTimeline);
        } catch (IllegalClippingException e) {
            this.clippingError = e;
            for (int i2 = 0; i2 < this.mediaPeriods.size(); i2++) {
                this.mediaPeriods.get(i2).setClippingError(this.clippingError);
            }
        }
    }

    public static final class ClippingTimeline extends ForwardingTimeline {
        private final long durationUs;
        private final long endUs;
        private final boolean isDynamic;
        private final long startUs;

        public ClippingTimeline(Timeline timeline, long j, long j2, boolean z) throws IllegalClippingException {
            super(timeline);
            if (j2 != Long.MIN_VALUE && j2 < j) {
                throw new IllegalClippingException(2, j, j2);
            }
            boolean z2 = false;
            if (timeline.getPeriodCount() != 1) {
                throw new IllegalClippingException(0);
            }
            Timeline.Window window = timeline.getWindow(0, new Timeline.Window());
            long jMax = Math.max(0L, j);
            if (!z && !window.isPlaceholder && jMax != 0 && !window.isSeekable) {
                throw new IllegalClippingException(1);
            }
            long jMax2 = j2 == Long.MIN_VALUE ? window.durationUs : Math.max(0L, j2);
            long j3 = window.durationUs;
            if (j3 != -9223372036854775807L) {
                jMax2 = jMax2 > j3 ? j3 : jMax2;
                if (jMax > jMax2) {
                    jMax = jMax2;
                }
            }
            this.startUs = jMax;
            this.endUs = jMax2;
            this.durationUs = jMax2 == -9223372036854775807L ? -9223372036854775807L : jMax2 - jMax;
            if (window.isDynamic && (jMax2 == -9223372036854775807L || (j3 != -9223372036854775807L && jMax2 == j3))) {
                z2 = true;
            }
            this.isDynamic = z2;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            this.timeline.getWindow(0, window, 0L);
            long j2 = window.positionInFirstPeriodUs;
            long j3 = this.startUs;
            window.positionInFirstPeriodUs = j2 + j3;
            window.durationUs = this.durationUs;
            window.isDynamic = this.isDynamic;
            long j4 = window.defaultPositionUs;
            if (j4 != -9223372036854775807L) {
                long jMax = Math.max(j4, j3);
                window.defaultPositionUs = jMax;
                long j5 = this.endUs;
                if (j5 != -9223372036854775807L) {
                    jMax = Math.min(jMax, j5);
                }
                window.defaultPositionUs = jMax - this.startUs;
            }
            long jUsToMs = Util.usToMs(this.startUs);
            long j6 = window.presentationStartTimeMs;
            if (j6 != -9223372036854775807L) {
                window.presentationStartTimeMs = j6 + jUsToMs;
            }
            long j7 = window.windowStartTimeMs;
            if (j7 != -9223372036854775807L) {
                window.windowStartTimeMs = j7 + jUsToMs;
            }
            return window;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            this.timeline.getPeriod(0, period, z);
            long positionInWindowUs = period.getPositionInWindowUs() - this.startUs;
            long j = this.durationUs;
            return period.set(period.id, period.uid, 0, j != -9223372036854775807L ? j - positionInWindowUs : -9223372036854775807L, positionInWindowUs);
        }
    }
}
