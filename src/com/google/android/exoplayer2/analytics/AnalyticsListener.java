package com.google.android.exoplayer2.analytics;

import android.util.SparseArray;
import com.google.android.exoplayer2.DeviceInfo;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.MediaMetadata;
import com.google.android.exoplayer2.PlaybackException;
import com.google.android.exoplayer2.PlaybackParameters;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.audio.AudioAttributes;
import com.google.android.exoplayer2.decoder.DecoderCounters;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.text.Cue;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.FlagSet;
import com.google.android.exoplayer2.video.VideoSize;
import com.google.common.base.Objects;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface AnalyticsListener {
    default void onAudioAttributesChanged(EventTime eventTime, AudioAttributes audioAttributes) {
    }

    default void onAudioCodecError(EventTime eventTime, Exception exc) {
    }

    @Deprecated
    default void onAudioDecoderInitialized(EventTime eventTime, String str, long j) {
    }

    default void onAudioDecoderInitialized(EventTime eventTime, String str, long j, long j2) {
    }

    default void onAudioDecoderReleased(EventTime eventTime, String str) {
    }

    default void onAudioDisabled(EventTime eventTime, DecoderCounters decoderCounters) {
    }

    default void onAudioEnabled(EventTime eventTime, DecoderCounters decoderCounters) {
    }

    @Deprecated
    default void onAudioInputFormatChanged(EventTime eventTime, Format format) {
    }

    default void onAudioInputFormatChanged(EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
    }

    default void onAudioPositionAdvancing(EventTime eventTime, long j) {
    }

    default void onAudioSinkError(EventTime eventTime, Exception exc) {
    }

    default void onAudioUnderrun(EventTime eventTime, int i, long j, long j2) {
    }

    default void onAvailableCommandsChanged(EventTime eventTime, Player.Commands commands) {
    }

    default void onBandwidthEstimate(EventTime eventTime, int i, long j, long j2) {
    }

    default void onCues(EventTime eventTime, CueGroup cueGroup) {
    }

    @Deprecated
    default void onCues(EventTime eventTime, List<Cue> list) {
    }

    @Deprecated
    default void onDecoderDisabled(EventTime eventTime, int i, DecoderCounters decoderCounters) {
    }

    @Deprecated
    default void onDecoderEnabled(EventTime eventTime, int i, DecoderCounters decoderCounters) {
    }

    @Deprecated
    default void onDecoderInitialized(EventTime eventTime, int i, String str, long j) {
    }

    @Deprecated
    default void onDecoderInputFormatChanged(EventTime eventTime, int i, Format format) {
    }

    default void onDeviceInfoChanged(EventTime eventTime, DeviceInfo deviceInfo) {
    }

    default void onDeviceVolumeChanged(EventTime eventTime, int i, boolean z) {
    }

    default void onDownstreamFormatChanged(EventTime eventTime, MediaLoadData mediaLoadData) {
    }

    default void onDrmKeysLoaded(EventTime eventTime) {
    }

    default void onDrmKeysRemoved(EventTime eventTime) {
    }

    default void onDrmKeysRestored(EventTime eventTime) {
    }

    @Deprecated
    default void onDrmSessionAcquired(EventTime eventTime) {
    }

    default void onDrmSessionAcquired(EventTime eventTime, int i) {
    }

    default void onDrmSessionManagerError(EventTime eventTime, Exception exc) {
    }

    default void onDrmSessionReleased(EventTime eventTime) {
    }

    default void onDroppedVideoFrames(EventTime eventTime, int i, long j) {
    }

    default void onEvents(Player player, Events events) {
    }

    default void onIsLoadingChanged(EventTime eventTime, boolean z) {
    }

    default void onIsPlayingChanged(EventTime eventTime, boolean z) {
    }

    default void onLoadCanceled(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    default void onLoadCompleted(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    default void onLoadError(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
    }

    default void onLoadStarted(EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
    }

    @Deprecated
    default void onLoadingChanged(EventTime eventTime, boolean z) {
    }

    default void onMediaItemTransition(EventTime eventTime, MediaItem mediaItem, int i) {
    }

    default void onMediaMetadataChanged(EventTime eventTime, MediaMetadata mediaMetadata) {
    }

    default void onMetadata(EventTime eventTime, Metadata metadata) {
    }

    default void onPlayWhenReadyChanged(EventTime eventTime, boolean z, int i) {
    }

    default void onPlaybackParametersChanged(EventTime eventTime, PlaybackParameters playbackParameters) {
    }

    default void onPlaybackStateChanged(EventTime eventTime, int i) {
    }

    default void onPlaybackSuppressionReasonChanged(EventTime eventTime, int i) {
    }

    default void onPlayerError(EventTime eventTime, PlaybackException playbackException) {
    }

    default void onPlayerErrorChanged(EventTime eventTime, PlaybackException playbackException) {
    }

    default void onPlayerReleased(EventTime eventTime) {
    }

    @Deprecated
    default void onPlayerStateChanged(EventTime eventTime, boolean z, int i) {
    }

    @Deprecated
    default void onPositionDiscontinuity(EventTime eventTime, int i) {
    }

    default void onPositionDiscontinuity(EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
    }

    default void onRenderedFirstFrame(EventTime eventTime, Object obj, long j) {
    }

    default void onRepeatModeChanged(EventTime eventTime, int i) {
    }

    @Deprecated
    default void onSeekProcessed(EventTime eventTime) {
    }

    @Deprecated
    default void onSeekStarted(EventTime eventTime) {
    }

    default void onShuffleModeChanged(EventTime eventTime, boolean z) {
    }

    default void onSkipSilenceEnabledChanged(EventTime eventTime, boolean z) {
    }

    default void onSurfaceSizeChanged(EventTime eventTime, int i, int i2) {
    }

    default void onTimelineChanged(EventTime eventTime, int i) {
    }

    default void onTracksChanged(EventTime eventTime, Tracks tracks) {
    }

    default void onUpstreamDiscarded(EventTime eventTime, MediaLoadData mediaLoadData) {
    }

    default void onVideoCodecError(EventTime eventTime, Exception exc) {
    }

    @Deprecated
    default void onVideoDecoderInitialized(EventTime eventTime, String str, long j) {
    }

    default void onVideoDecoderInitialized(EventTime eventTime, String str, long j, long j2) {
    }

    default void onVideoDecoderReleased(EventTime eventTime, String str) {
    }

    default void onVideoDisabled(EventTime eventTime, DecoderCounters decoderCounters) {
    }

    default void onVideoEnabled(EventTime eventTime, DecoderCounters decoderCounters) {
    }

    default void onVideoFrameProcessingOffset(EventTime eventTime, long j, int i) {
    }

    @Deprecated
    default void onVideoInputFormatChanged(EventTime eventTime, Format format) {
    }

    default void onVideoInputFormatChanged(EventTime eventTime, Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
    }

    @Deprecated
    default void onVideoSizeChanged(EventTime eventTime, int i, int i2, int i3, float f) {
    }

    default void onVideoSizeChanged(EventTime eventTime, VideoSize videoSize) {
    }

    default void onVolumeChanged(EventTime eventTime, float f) {
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class Events {
        private final SparseArray<EventTime> eventTimes;
        private final FlagSet flags;

        public Events(FlagSet flagSet, SparseArray<EventTime> sparseArray) {
            this.flags = flagSet;
            SparseArray<EventTime> sparseArray2 = new SparseArray<>(flagSet.size());
            for (int i = 0; i < flagSet.size(); i++) {
                int i2 = flagSet.get(i);
                sparseArray2.append(i2, (EventTime) Assertions.checkNotNull(sparseArray.get(i2)));
            }
            this.eventTimes = sparseArray2;
        }

        public EventTime getEventTime(int i) {
            return (EventTime) Assertions.checkNotNull(this.eventTimes.get(i));
        }

        public boolean contains(int i) {
            return this.flags.contains(i);
        }

        public int size() {
            return this.flags.size();
        }

        public int get(int i) {
            return this.flags.get(i);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    public static final class EventTime {
        public final MediaSource.MediaPeriodId currentMediaPeriodId;
        public final long currentPlaybackPositionMs;
        public final Timeline currentTimeline;
        public final int currentWindowIndex;
        public final long eventPlaybackPositionMs;
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final long realtimeMs;
        public final Timeline timeline;
        public final long totalBufferedDurationMs;
        public final int windowIndex;

        public EventTime(long j, Timeline timeline, int i, MediaSource.MediaPeriodId mediaPeriodId, long j2, Timeline timeline2, int i2, MediaSource.MediaPeriodId mediaPeriodId2, long j3, long j4) {
            this.realtimeMs = j;
            this.timeline = timeline;
            this.windowIndex = i;
            this.mediaPeriodId = mediaPeriodId;
            this.eventPlaybackPositionMs = j2;
            this.currentTimeline = timeline2;
            this.currentWindowIndex = i2;
            this.currentMediaPeriodId = mediaPeriodId2;
            this.currentPlaybackPositionMs = j3;
            this.totalBufferedDurationMs = j4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && EventTime.class == obj.getClass()) {
                EventTime eventTime = (EventTime) obj;
                if (this.realtimeMs == eventTime.realtimeMs && this.windowIndex == eventTime.windowIndex && this.eventPlaybackPositionMs == eventTime.eventPlaybackPositionMs && this.currentWindowIndex == eventTime.currentWindowIndex && this.currentPlaybackPositionMs == eventTime.currentPlaybackPositionMs && this.totalBufferedDurationMs == eventTime.totalBufferedDurationMs && Objects.equal(this.timeline, eventTime.timeline) && Objects.equal(this.mediaPeriodId, eventTime.mediaPeriodId) && Objects.equal(this.currentTimeline, eventTime.currentTimeline) && Objects.equal(this.currentMediaPeriodId, eventTime.currentMediaPeriodId)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(Long.valueOf(this.realtimeMs), this.timeline, Integer.valueOf(this.windowIndex), this.mediaPeriodId, Long.valueOf(this.eventPlaybackPositionMs), this.currentTimeline, Integer.valueOf(this.currentWindowIndex), this.currentMediaPeriodId, Long.valueOf(this.currentPlaybackPositionMs), Long.valueOf(this.totalBufferedDurationMs));
        }
    }
}
